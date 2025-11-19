"""Methods for dealing with Z3 de Bruijn indices in quantified variables"""

import z3


def _translate_var_id(var, scope):
    """
    Translate a quantified variable 'var' appearing
    within the quantifier scope 'scope'.

    The function assumes scope is a list of nested
    quantifier scopes, i.e. quantified Z3 formulas.
    """
    var_id = z3.get_var_index(var)
    var_name = None
    for quant in reversed(scope):
        num_vars = quant.num_vars()
        if num_vars - 1 < var_id:
            var_id -= num_vars
        else:
            var_name = quant.var_name(num_vars - 1 - var_id)
            break
    if var_name is None:
        assert False, f"Could not find {var} in {scope}"
    return z3.Const(var_name, var.sort())
