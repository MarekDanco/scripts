#!/usr/bin/env python3
#
# As arguments expects a filename for each solver.
# Each file has the three semicolon-separated columns: instance name, solving
# time, response

import string, sys, re, os
import os.path
from html_utils import *

SUBOPTCOL="#4682B4"
WRONGCOL="#FF0000"
TOUTCOL="#FA8072"
UNIQUECOL="#00F000"
WINCOL="#00c010"
SOLVEDCOL="#00a86b"

# def rd_prob(name:str):
#     suff = ".smt2"
#     if name.endswith(suff):
#         name1 = name[:-len(suff)] + ".txt"
#         # print(name1, os.path.isfile(name1), file=sys.stderr)
#         if os.path.isfile(name1):
#             name = name1
#     with open(name, encoding="utf-8") as f:
#         return f.read().replace('"', '_')


def get_model(lns):
    rv = None
    ap = False
    for ln in lns:
        ln = ln.strip()
        if not ln:
            continue
        ln = ln.replace('"', '_')
        if ap:
            rv.append(ln)
        elif ln.startswith('sat') or ln.startswith('== SOLVED =='):
            ap = True
            rv=[]
    return '\n'.join(rv) if rv else ""


def rf(f,inns,inn_list):
  d=dict()
  ln=0
  for line in f:
     ln=ln+1
     es=line.rsplit(';')
     if len(es) < 2: continue
#       sys.stderr.write('error on line ' + str(ln) + ': expecting at least 2 items\n')
     inn=es[0].strip()
     d[inn] = ( es[1].strip(), '' if len(es)<3 else es[2].strip() )
     if inn not in inns:
        inn_list.append(inn)
        inns.add(inn)

  return d

def common_suff(ls):
  if not ls: return None
  r=ls[0]
  for s in ls[1:]:
    pr = len(r)
    ps = len(s)
    while 0<pr and 0<ps and s[ps-1]==r[pr-1]:
      ps-=1
      pr-=1
    r = r[pr:]
  return r

def common_pref(ls):
  if not ls: return None
  r=ls[0]
  for s in ls[1:]:
    j = 0
    while j < len(s) and j < len(r) and s[j]==r[j]:
      j+=1
    r = r[:j]
  return r

def get_group(s):
    m=re.match('([0-9_]+)-.*', s)
    return m.group(1) if m else s


def print_summary(file_names):
  global wrongs,wins,solveds,uniques,ds
  rml=len(common_pref(file_names))
  rmr=len(common_suff(file_names))
  sys.stderr.write('group, solved, subopt, wrong, wins, uniques\n')
  for i in range(len(ds)):
    s=file_names[i]
    sys.stderr.write(','.join(map(str, [ s[rml:len(s)-rmr], solveds[i], subopts[i], wrongs[i], wins[i], uniques[i] ]))+'\n')

def mk_solver_names(file_names):
  rml=len(common_pref(file_names))
  rmr=len(common_suff(file_names))
  return [ s[rml:len(s)-rmr] for s in file_names ]

def print_header(file_names):
  for s in mk_solver_names(file_names):
    phc(s)

  # inm=s
  # m=re.match('([0-9_]+)-.*', inm)
  # inm = m.group(1) if m else inm
  # phc(inm)


inns=set()
inn_list=[]
ds=[]

if len(sys.argv) <= 1:
    print("Expecting tab files")
    exit(1)
for fn in sys.argv[1:]:
    # sys.stderr.write('reading ' + fn + '\n')
    f = open(fn, 'r')
    d=rf(f,inns,inn_list)
    ds.append(d)
    f.close()

header()
print('<table border="1">')
print('<tr>')
print('<td bgcolor="#FA8072"> TIME/MEM OUT/ERR  </td>')
print('<td bgcolor="#F00000"> WRONG </td>')
print('<td bgcolor="{}"> SOLVED </td>'.format(SOLVEDCOL))
print('<td bgcolor="{}"> WIN </td>'.format(WINCOL))
print('<td bgcolor="{}"> UNIQUE </td>'.format(UNIQUECOL))
print('<td bgcolor="{}"> SUBOPTIMAL </td>'.format(SUBOPTCOL))
print('<td bgcolor="black"> <font color="white">NOT-RUN</font> </td>')
print('</tr>')
print('</table>')

otable()

print('<thead>')
print('<tr>')
phc('Problem')
print_header(sys.argv[1:])
print('</tr>')
print('</thead>')
print('<tbody>')

solver_names = mk_solver_names(sys.argv[1:])
solveds = [ 0 for x in range(len(ds))]
wins    = [ 0 for x in range(len(ds))]
wrongs    = [ 0 for x in range(len(ds))]
subopts  = [ 0 for x in range(len(ds))]
uniques = [ 0 for x in range(len(ds))]
inn_names = []
inn_infos = []

inn_list.sort()

SAT_string = "s sat"
UNSAT_string = "s unsat"
def is_solved(s):
    good = ["s sat", "s unsat", "s Unsatisfiable", "s Theorem", "s Satisfiable"]
    return any(s.startswith(gs) for gs in good)

for inn in inn_list:
  spl = inn.find('(')
  inn_names.append((inn[:spl] if spl >= 0 else inn).strip())
  inn_infos.append((inn[spl:] if spl >= 0 else '').strip())
inst_common_pref = common_pref(inn_names)
inst_common_suff = common_suff(inn_names)
for inn_pos in range(len(inn_list)):
   inn = inn_list[inn_pos]
   inn_name = inn_names[inn_pos]
   _inn_name = os.path.basename(inn_name)
   inn_info = inn_infos[inn_pos]
   #file_cont = rd_prob(inn_name) #open(inn_name).read().replace('"', '_')
   #inn_cell_string = '<span title="{}">{}</span>'.format(file_cont,
   #                                                      inn_name[len(inst_common_pref):len(inn_name)-len(inst_common_suff)]+' '+inn_info)
   inn_cell_string = inn_name[len(inst_common_pref):len(inn_name)-len(inst_common_suff)]+' '+inn_info
   print(inn_cell_string, file=sys.stderr)
   print('<tr>')
   pc('bgcolor="#F1F1F1"',inn_cell_string)
   ts=[]
   tsn=[]
   ads=[]
   # moves=[]
   availabe=[]
   sol_vals=[None for _ in ds]
   for solver_index in range(len(ds)):
     table_name=sys.argv[solver_index+1]
     print("tabn", table_name, file=sys.stderr)
     tnm = re.match(r"tables/([^/]+)/([^/]+).tab", table_name)
     if tnm:
         solvfnm = f"logs/{tnm.group(1)}_{tnm.group(2)}/{_inn_name}.sol"
         if os.path.isfile(solvfnm):
            with open(solvfnm, encoding="utf-8") as solvf:
                sol_vals[solver_index] = get_model(solvf.readlines())
     d=ds[solver_index]
     if inn in d:
       (tstr,a)=d[inn]
       availabe.append(True)
     else:
       tstr='1000000'
       a='N/A'
       availabe.append(False)
     ts.append(tstr)
     ads.append(a)
   if a and is_solved(a):
         tsn.append( float(tstr.split()[0]) )
   # valid_tms = [ int(ts[i].split()[0]) for i in range(len(ts)) if availabe[i] and ads[i][0]=='s' ]
   valid_tms = [ int(ts[i].split()[0]) for i in range(len(ts))
           if availabe[i]
           and is_solved(ads[i])
           and 'VBS' not in solver_names[i]
           ]
   mint=min(valid_tms) if valid_tms else 1000000
   unique=len(valid_tms)==1
   for i in range(len(ts)):
     tstr=ts[i]
     ad=ads[i]
     # sys.stderr.write('"{}" "{}"\n'.format(SAT_string, ad))
     tout=not ad or not is_solved(ad)
     wrong=ad and ad[0]=='w'
     t=float(tstr.split()[0]) if tstr else -1

     subopt = False
     win=not tout and (t-mint)<2 and not subopt
     assert not tout or not win

     if wrong: wrongs[i]=wrongs[i]+1
     if win: wins[i]=wins[i]+1
     if subopt: subopts[i]=subopts[i]+1
     if win and unique: uniques[i]=uniques[i]+1
     if not tout: solveds[i]=solveds[i]+1
     if availabe[i]:
         if subopt          : cell_style='bgcolor="{}"'.format(SUBOPTCOL)
         elif wrong         : cell_style='bgcolor="{}"'.format(WRONGCOL)
         elif tout          : cell_style='bgcolor="{}"'.format(TOUTCOL)
         elif win and unique: cell_style='bgcolor="{}"'.format(UNIQUECOL)
         elif win           : cell_style='bgcolor="{}"'.format(WINCOL)
         else               : cell_style='bgcolor="{}"'.format(SOLVEDCOL)
     else:
       cell_style = 'bgcolor="#000000"'
     cell_string=tstr + ('' if len(ad)==0 else '<br>'+ad )
     #cell_string = '<span title="{}">{}</span>'.format(sol_vals[i],cell_string)
     pc(cell_style, cell_string)
   print('</tr>')
   # if len(rvs)>1: print >>sys.stderr, 'varying retv for', inn

print('<tr>')
pc('bgcolor="#F1F1F1"', 'TOTAL ('+str(len(inns))+')')
for i in range(len(ds)):
  pc('bgcolor="#F1F1F1"','solved:'+str(solveds[i])+'<br>wins:'+str(wins[i])+'<br>subopts:'+str(subopts[i])+'<br>wrongs:'+str(wrongs[i])+'<br>uniq:'+str(uniques[i]))
print('</tr>')

print('<tr>')
phc('')
print_header(sys.argv[1:])
print('</tr>')

print('</tbody>')

ctable()
cheader()
print_summary(sys.argv[1:])
