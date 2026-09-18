; extracted from 262205_amm_Decrease_AMM_bal_2_30.lus.bmc.1.smt2, check 4 of the session (positional, not semantic)
(set-info :status sat)
(set-info :source |depth1-bmc 2026-09-16 baseline-encoding kind2-driver=cvc5 per_query=60s run=600s|)
(set-logic NIA)
(declare-fun AMM.res.oracle_62 () Int)
(declare-fun AMM.res.oracle_60 () Int)
(declare-fun AMM.res.oracle_53 () Int)
(declare-fun AMM.res.oracle_51 () Int)
(declare-fun AMM.res.oracle_45 () Int)
(declare-fun AMM.res.oracle_43 () Int)
(declare-fun AMM.res.oracle_36 () Int)
(declare-fun AMM.res.oracle_34 () Int)
(declare-fun AMM.res.gklocal_11 () Int)
(define-fun
 __node_init_AMM.any_l86c14_0
 ((AMM.any_l86c14.usr.starting_block_num Int)
  (AMM.any_l86c14.usr.block_num_tmp@0 Int)
  (AMM.any_l86c14.res.init_flag@0 Bool)
  (AMM.any_l86c14.res.glocal_1@0 Bool)
  (AMM.any_l86c14.res.sofar@0 Bool))
 Bool
 (and
  (=
   AMM.any_l86c14.res.glocal_1@0
   (>=
    AMM.any_l86c14.usr.block_num_tmp@0
    AMM.any_l86c14.usr.starting_block_num))
  (= AMM.any_l86c14.res.sofar@0 true)
  AMM.any_l86c14.res.init_flag@0
  AMM.any_l86c14.res.glocal_1@0))
(define-fun
 __node_trans_AMM.any_l86c14_0
 ((AMM.any_l86c14.usr.starting_block_num Int)
  (AMM.any_l86c14.usr.block_num_tmp@1 Int)
  (AMM.any_l86c14.res.init_flag@1 Bool)
  (AMM.any_l86c14.res.glocal_1@1 Bool)
  (AMM.any_l86c14.res.sofar@1 Bool)
  (AMM.any_l86c14.usr.block_num_tmp@0 Int)
  (AMM.any_l86c14.res.init_flag@0 Bool)
  (AMM.any_l86c14.res.glocal_1@0 Bool)
  (AMM.any_l86c14.res.sofar@0 Bool))
 Bool
 (and
  (=
   AMM.any_l86c14.res.glocal_1@1
   (>= AMM.any_l86c14.usr.block_num_tmp@1 AMM.any_l86c14.usr.block_num_tmp@0))
  (= AMM.any_l86c14.res.sofar@1 AMM.any_l86c14.res.sofar@0)
  (not AMM.any_l86c14.res.init_flag@1)
  AMM.any_l86c14.res.glocal_1@1))
(define-fun
 __node_init_AMM.any_l145c14_0
 ((AMM.any_l145c14.usr.starting_block_num Int)
  (AMM.any_l145c14.usr.block_num_tmp@0 Int)
  (AMM.any_l145c14.res.init_flag@0 Bool)
  (AMM.any_l145c14.res.glocal_3@0 Bool)
  (AMM.any_l145c14.res.sofar@0 Bool))
 Bool
 (and
  (=
   AMM.any_l145c14.res.glocal_3@0
   (>=
    AMM.any_l145c14.usr.block_num_tmp@0
    AMM.any_l145c14.usr.starting_block_num))
  (= AMM.any_l145c14.res.sofar@0 true)
  AMM.any_l145c14.res.init_flag@0
  AMM.any_l145c14.res.glocal_3@0))
(define-fun
 __node_trans_AMM.any_l145c14_0
 ((AMM.any_l145c14.usr.starting_block_num Int)
  (AMM.any_l145c14.usr.block_num_tmp@1 Int)
  (AMM.any_l145c14.res.init_flag@1 Bool)
  (AMM.any_l145c14.res.glocal_3@1 Bool)
  (AMM.any_l145c14.res.sofar@1 Bool)
  (AMM.any_l145c14.usr.block_num_tmp@0 Int)
  (AMM.any_l145c14.res.init_flag@0 Bool)
  (AMM.any_l145c14.res.glocal_3@0 Bool)
  (AMM.any_l145c14.res.sofar@0 Bool))
 Bool
 (and
  (=
   AMM.any_l145c14.res.glocal_3@1
   (>=
    AMM.any_l145c14.usr.block_num_tmp@1
    AMM.any_l145c14.usr.block_num_tmp@0))
  (= AMM.any_l145c14.res.sofar@1 AMM.any_l145c14.res.sofar@0)
  (not AMM.any_l145c14.res.init_flag@1)
  AMM.any_l145c14.res.glocal_3@1))
(define-fun
 __node_init_AMM.any_l204c14_0
 ((AMM.any_l204c14.usr.starting_block_num Int)
  (AMM.any_l204c14.usr.block_num_tmp@0 Int)
  (AMM.any_l204c14.res.init_flag@0 Bool)
  (AMM.any_l204c14.res.glocal_5@0 Bool)
  (AMM.any_l204c14.res.sofar@0 Bool))
 Bool
 (and
  (=
   AMM.any_l204c14.res.glocal_5@0
   (>=
    AMM.any_l204c14.usr.block_num_tmp@0
    AMM.any_l204c14.usr.starting_block_num))
  (= AMM.any_l204c14.res.sofar@0 true)
  AMM.any_l204c14.res.init_flag@0
  AMM.any_l204c14.res.glocal_5@0))
(define-fun
 __node_trans_AMM.any_l204c14_0
 ((AMM.any_l204c14.usr.starting_block_num Int)
  (AMM.any_l204c14.usr.block_num_tmp@1 Int)
  (AMM.any_l204c14.res.init_flag@1 Bool)
  (AMM.any_l204c14.res.glocal_5@1 Bool)
  (AMM.any_l204c14.res.sofar@1 Bool)
  (AMM.any_l204c14.usr.block_num_tmp@0 Int)
  (AMM.any_l204c14.res.init_flag@0 Bool)
  (AMM.any_l204c14.res.glocal_5@0 Bool)
  (AMM.any_l204c14.res.sofar@0 Bool))
 Bool
 (and
  (=
   AMM.any_l204c14.res.glocal_5@1
   (>=
    AMM.any_l204c14.usr.block_num_tmp@1
    AMM.any_l204c14.usr.block_num_tmp@0))
  (= AMM.any_l204c14.res.sofar@1 AMM.any_l204c14.res.sofar@0)
  (not AMM.any_l204c14.res.init_flag@1)
  AMM.any_l204c14.res.glocal_5@1))
(define-fun
 __node_init_AMM.any_l223c14_0
 ((AMM.any_l223c14.usr.starting_block_num Int)
  (AMM.any_l223c14.usr.block_num_tmp@0 Int)
  (AMM.any_l223c14.res.init_flag@0 Bool)
  (AMM.any_l223c14.res.glocal_7@0 Bool)
  (AMM.any_l223c14.res.sofar@0 Bool))
 Bool
 (and
  (=
   AMM.any_l223c14.res.glocal_7@0
   (>=
    AMM.any_l223c14.usr.block_num_tmp@0
    AMM.any_l223c14.usr.starting_block_num))
  (= AMM.any_l223c14.res.sofar@0 true)
  AMM.any_l223c14.res.init_flag@0
  AMM.any_l223c14.res.glocal_7@0))
(define-fun
 __node_trans_AMM.any_l223c14_0
 ((AMM.any_l223c14.usr.starting_block_num Int)
  (AMM.any_l223c14.usr.block_num_tmp@1 Int)
  (AMM.any_l223c14.res.init_flag@1 Bool)
  (AMM.any_l223c14.res.glocal_7@1 Bool)
  (AMM.any_l223c14.res.sofar@1 Bool)
  (AMM.any_l223c14.usr.block_num_tmp@0 Int)
  (AMM.any_l223c14.res.init_flag@0 Bool)
  (AMM.any_l223c14.res.glocal_7@0 Bool)
  (AMM.any_l223c14.res.sofar@0 Bool))
 Bool
 (and
  (=
   AMM.any_l223c14.res.glocal_7@1
   (>=
    AMM.any_l223c14.usr.block_num_tmp@1
    AMM.any_l223c14.usr.block_num_tmp@0))
  (= AMM.any_l223c14.res.sofar@1 AMM.any_l223c14.res.sofar@0)
  (not AMM.any_l223c14.res.init_flag@1)
  AMM.any_l223c14.res.glocal_7@1))
(define-fun
 __node_init_mult_0
 ((mult.usr.n1@0 Int)
  (mult.usr.n2@0 Int)
  (mult.usr.r@0 Int)
  (mult.res.init_flag@0 Bool))
 Bool
 (and (= mult.usr.r@0 (* mult.usr.n1@0 mult.usr.n2@0)) mult.res.init_flag@0))
(define-fun
 __node_trans_mult_0
 ((mult.usr.n1@1 Int)
  (mult.usr.n2@1 Int)
  (mult.usr.r@1 Int)
  (mult.res.init_flag@1 Bool)
  (mult.usr.n1@0 Int)
  (mult.usr.n2@0 Int)
  (mult.usr.r@0 Int)
  (mult.res.init_flag@0 Bool))
 Bool
 (and
  (= mult.usr.r@1 (* mult.usr.n1@1 mult.usr.n2@1))
  (not mult.res.init_flag@1)))
(define-fun
 __node_init_divv_0
 ((divv.usr.n1@0 Int)
  (divv.usr.n2@0 Int)
  (divv.usr.r@0 Int)
  (divv.res.init_flag@0 Bool))
 Bool
 (and
  (= divv.usr.r@0 (div divv.usr.n1@0 divv.usr.n2@0))
  divv.res.init_flag@0))
(define-fun
 __node_trans_divv_0
 ((divv.usr.n1@1 Int)
  (divv.usr.n2@1 Int)
  (divv.usr.r@1 Int)
  (divv.res.init_flag@1 Bool)
  (divv.usr.n1@0 Int)
  (divv.usr.n2@0 Int)
  (divv.usr.r@0 Int)
  (divv.res.init_flag@0 Bool))
 Bool
 (and
  (= divv.usr.r@1 (div divv.usr.n1@1 divv.usr.n2@1))
  (not divv.res.init_flag@1)))
(define-fun
 __node_init_AMM.any_l219c14_0
 ((AMM.any_l219c14.usr.starting_block_num Int)
  (AMM.any_l219c14.usr.block_num_tmp@0 Int)
  (AMM.any_l219c14.res.init_flag@0 Bool)
  (AMM.any_l219c14.res.glocal_6@0 Bool)
  (AMM.any_l219c14.res.sofar@0 Bool))
 Bool
 (and
  (=
   AMM.any_l219c14.res.glocal_6@0
   (>=
    AMM.any_l219c14.usr.block_num_tmp@0
    AMM.any_l219c14.usr.starting_block_num))
  (= AMM.any_l219c14.res.sofar@0 true)
  AMM.any_l219c14.res.init_flag@0
  AMM.any_l219c14.res.glocal_6@0))
(define-fun
 __node_trans_AMM.any_l219c14_0
 ((AMM.any_l219c14.usr.starting_block_num Int)
  (AMM.any_l219c14.usr.block_num_tmp@1 Int)
  (AMM.any_l219c14.res.init_flag@1 Bool)
  (AMM.any_l219c14.res.glocal_6@1 Bool)
  (AMM.any_l219c14.res.sofar@1 Bool)
  (AMM.any_l219c14.usr.block_num_tmp@0 Int)
  (AMM.any_l219c14.res.init_flag@0 Bool)
  (AMM.any_l219c14.res.glocal_6@0 Bool)
  (AMM.any_l219c14.res.sofar@0 Bool))
 Bool
 (and
  (=
   AMM.any_l219c14.res.glocal_6@1
   (>=
    AMM.any_l219c14.usr.block_num_tmp@1
    AMM.any_l219c14.usr.block_num_tmp@0))
  (= AMM.any_l219c14.res.sofar@1 AMM.any_l219c14.res.sofar@0)
  (not AMM.any_l219c14.res.init_flag@1)
  AMM.any_l219c14.res.glocal_6@1))
(define-fun
 __node_init_AMM.any_l160c14_0
 ((AMM.any_l160c14.usr.starting_block_num Int)
  (AMM.any_l160c14.usr.block_num_tmp@0 Int)
  (AMM.any_l160c14.res.init_flag@0 Bool)
  (AMM.any_l160c14.res.glocal_4@0 Bool)
  (AMM.any_l160c14.res.sofar@0 Bool))
 Bool
 (and
  (=
   AMM.any_l160c14.res.glocal_4@0
   (>=
    AMM.any_l160c14.usr.block_num_tmp@0
    AMM.any_l160c14.usr.starting_block_num))
  (= AMM.any_l160c14.res.sofar@0 true)
  AMM.any_l160c14.res.init_flag@0
  AMM.any_l160c14.res.glocal_4@0))
(define-fun
 __node_trans_AMM.any_l160c14_0
 ((AMM.any_l160c14.usr.starting_block_num Int)
  (AMM.any_l160c14.usr.block_num_tmp@1 Int)
  (AMM.any_l160c14.res.init_flag@1 Bool)
  (AMM.any_l160c14.res.glocal_4@1 Bool)
  (AMM.any_l160c14.res.sofar@1 Bool)
  (AMM.any_l160c14.usr.block_num_tmp@0 Int)
  (AMM.any_l160c14.res.init_flag@0 Bool)
  (AMM.any_l160c14.res.glocal_4@0 Bool)
  (AMM.any_l160c14.res.sofar@0 Bool))
 Bool
 (and
  (=
   AMM.any_l160c14.res.glocal_4@1
   (>=
    AMM.any_l160c14.usr.block_num_tmp@1
    AMM.any_l160c14.usr.block_num_tmp@0))
  (= AMM.any_l160c14.res.sofar@1 AMM.any_l160c14.res.sofar@0)
  (not AMM.any_l160c14.res.init_flag@1)
  AMM.any_l160c14.res.glocal_4@1))
(define-fun
 __node_init_AMM.any_l101c14_0
 ((AMM.any_l101c14.usr.starting_block_num Int)
  (AMM.any_l101c14.usr.block_num_tmp@0 Int)
  (AMM.any_l101c14.res.init_flag@0 Bool)
  (AMM.any_l101c14.res.glocal_2@0 Bool)
  (AMM.any_l101c14.res.sofar@0 Bool))
 Bool
 (and
  (=
   AMM.any_l101c14.res.glocal_2@0
   (>=
    AMM.any_l101c14.usr.block_num_tmp@0
    AMM.any_l101c14.usr.starting_block_num))
  (= AMM.any_l101c14.res.sofar@0 true)
  AMM.any_l101c14.res.init_flag@0
  AMM.any_l101c14.res.glocal_2@0))
(define-fun
 __node_trans_AMM.any_l101c14_0
 ((AMM.any_l101c14.usr.starting_block_num Int)
  (AMM.any_l101c14.usr.block_num_tmp@1 Int)
  (AMM.any_l101c14.res.init_flag@1 Bool)
  (AMM.any_l101c14.res.glocal_2@1 Bool)
  (AMM.any_l101c14.res.sofar@1 Bool)
  (AMM.any_l101c14.usr.block_num_tmp@0 Int)
  (AMM.any_l101c14.res.init_flag@0 Bool)
  (AMM.any_l101c14.res.glocal_2@0 Bool)
  (AMM.any_l101c14.res.sofar@0 Bool))
 Bool
 (and
  (=
   AMM.any_l101c14.res.glocal_2@1
   (>=
    AMM.any_l101c14.usr.block_num_tmp@1
    AMM.any_l101c14.usr.block_num_tmp@0))
  (= AMM.any_l101c14.res.sofar@1 AMM.any_l101c14.res.sofar@0)
  (not AMM.any_l101c14.res.init_flag@1)
  AMM.any_l101c14.res.glocal_2@1))
(declare-fun %f39@0 () Int)
(declare-fun %f40@0 () Int)
(declare-fun %f41@0 () Int)
(declare-fun %f44@0 () Int)
(declare-fun %f45@0 () Bool)
(declare-fun %f46@0 () Int)
(declare-fun %f47@0 () Int)
(declare-fun %f48@0 () Bool)
(declare-fun %f49@0 () Int)
(declare-fun %f50@0 () Int)
(declare-fun %f51@0 () Int)
(declare-fun %f52@0 () Int)
(declare-fun %f38@0 () Bool)
(declare-fun %f77@0 () Bool)
(declare-fun %f78@0 () Int)
(declare-fun %f79@0 () Int)
(declare-fun %f80@0 () Int)
(declare-fun %f81@0 () Bool)
(declare-fun %f89@0 () Int)
(declare-fun %f91@0 () Int)
(declare-fun %f93@0 () Int)
(declare-fun %f95@0 () Int)
(declare-fun %f97@0 () Int)
(declare-fun %f99@0 () Int)
(declare-fun %f101@0 () Int)
(declare-fun %f103@0 () Bool)
(declare-fun %f105@0 () Int)
(declare-fun %f107@0 () Bool)
(declare-fun %f108@0 () Bool)
(declare-fun %f109@0 () Bool)
(declare-fun %f110@0 () Int)
(declare-fun %f111@0 () Int)
(declare-fun %f112@0 () Int)
(declare-fun %f113@0 () Int)
(declare-fun %f114@0 () Int)
(declare-fun %f115@0 () Int)
(declare-fun %f116@0 () Int)
(declare-fun %f117@0 () Int)
(declare-fun %f118@0 () Bool)
(declare-fun %f119@0 () Int)
(declare-fun %f120@0 () Int)
(declare-fun %f121@0 () Int)
(declare-fun %f122@0 () Int)
(declare-fun %f123@0 () Int)
(declare-fun %f124@0 () Int)
(declare-fun %f125@0 () Int)
(declare-fun %f126@0 () Int)
(declare-fun %f127@0 () Int)
(declare-fun %f128@0 () Int)
(declare-fun %f129@0 () Int)
(declare-fun %f130@0 () Int)
(declare-fun %f131@0 () Int)
(declare-fun %f132@0 () Int)
(declare-fun %f133@0 () Int)
(declare-fun %f134@0 () Int)
(declare-fun %f135@0 () Int)
(declare-fun %f136@0 () Int)
(declare-fun %f137@0 () Int)
(declare-fun %f138@0 () Int)
(declare-fun %f139@0 () Int)
(declare-fun %f140@0 () Int)
(declare-fun %f141@0 () Int)
(declare-fun %f142@0 () Int)
(declare-fun %f143@0 () Int)
(declare-fun %f144@0 () Int)
(declare-fun %f145@0 () Int)
(declare-fun %f146@0 () Int)
(declare-fun %f147@0 () Int)
(declare-fun %f148@0 () Int)
(declare-fun %f149@0 () Int)
(declare-fun %f150@0 () Int)
(declare-fun %f151@0 () Int)
(declare-fun %f152@0 () Int)
(declare-fun %f153@0 () Int)
(declare-fun %f154@0 () Int)
(declare-fun %f155@0 () Int)
(declare-fun %f156@0 () Int)
(declare-fun %f157@0 () Int)
(declare-fun %f158@0 () Int)
(declare-fun %f159@0 () Bool)
(declare-fun %f160@0 () Bool)
(declare-fun %f161@0 () Int)
(declare-fun %f162@0 () Bool)
(declare-fun %f163@0 () Bool)
(declare-fun %f164@0 () Bool)
(declare-fun %f165@0 () Bool)
(declare-fun %f166@0 () Int)
(declare-fun %f167@0 () Int)
(declare-fun %f168@0 () Int)
(declare-fun %f169@0 () Bool)
(declare-fun %f170@0 () Int)
(declare-fun %f171@0 () Bool)
(declare-fun %f172@0 () Bool)
(declare-fun %f173@0 () Bool)
(declare-fun %f174@0 () Bool)
(declare-fun %f175@0 () Bool)
(declare-fun %f176@0 () Bool)
(declare-fun %f177@0 () Int)
(declare-fun %f178@0 () Int)
(declare-fun %f179@0 () Int)
(declare-fun %f180@0 () Int)
(declare-fun %f181@0 () Int)
(declare-fun %f182@0 () Bool)
(declare-fun %f223@0 () Bool)
(declare-fun %f222@0 () Bool)
(declare-fun %f221@0 () Bool)
(declare-fun %f220@0 () Bool)
(declare-fun %f219@0 () Bool)
(declare-fun %f218@0 () Bool)
(declare-fun %f217@0 () Bool)
(declare-fun %f216@0 () Bool)
(declare-fun %f215@0 () Bool)
(declare-fun %f214@0 () Bool)
(declare-fun %f213@0 () Bool)
(declare-fun %f212@0 () Bool)
(declare-fun %f211@0 () Bool)
(declare-fun %f210@0 () Bool)
(declare-fun %f209@0 () Bool)
(declare-fun %f208@0 () Bool)
(declare-fun %f207@0 () Bool)
(declare-fun %f206@0 () Bool)
(declare-fun %f205@0 () Bool)
(declare-fun %f204@0 () Bool)
(declare-fun %f203@0 () Bool)
(declare-fun %f202@0 () Bool)
(declare-fun %f201@0 () Bool)
(declare-fun %f200@0 () Bool)
(declare-fun %f199@0 () Bool)
(declare-fun %f198@0 () Bool)
(declare-fun %f197@0 () Bool)
(declare-fun %f196@0 () Bool)
(declare-fun %f195@0 () Bool)
(declare-fun %f194@0 () Bool)
(declare-fun %f193@0 () Bool)
(declare-fun %f192@0 () Bool)
(declare-fun %f191@0 () Bool)
(declare-fun %f190@0 () Bool)
(declare-fun %f189@0 () Bool)
(declare-fun %f188@0 () Bool)
(declare-fun %f187@0 () Bool)
(declare-fun %f186@0 () Bool)
(declare-fun %f185@0 () Bool)
(declare-fun %f184@0 () Bool)
(declare-fun %f183@0 () Bool)
(assert
 (let
 ((X1 (ite (= %f41@0 4) 100 %f167@0)))
 (let
  ((X2 (ite (= %f41@0 4) (ite (not (not (= %f39@0 0))) true false) %f169@0)))
  (let
   ((X3 (ite (= %f41@0 4) 100 %f179@0)))
   (let
    ((X4 (ite (= %f41@0 4) 20 %f158@0)))
    (let
     ((X5 (ite (= %f41@0 4) 10 %f161@0)))
     (let
      ((X6 (ite (= %f41@0 4) 40 %f177@0)))
      (let
       ((X7 (ite (= %f41@0 4) 60 %f168@0)))
       (let
        ((X8 (ite (= %f41@0 4) 0 %f170@0)))
        (let
         ((X9 (ite (= %f41@0 4) (ite %f81@0 %f151@0 %f152@0) %f157@0)))
         (let
          ((X10 (ite (= %f41@0 4) %f173@0 %f174@0)))
          (let
           ((X11 (ite (= %f41@0 4) %f162@0 %f163@0)))
           (let
            ((X12 (ite (= %f41@0 4) %f159@0 %f160@0)))
            (let
             ((X13 (ite (= %f41@0 4) %f164@0 %f165@0)))
             (let
              ((X14 (ite (= %f41@0 4) %f180@0 %f181@0)))
              (let
               ((X15 (ite (= %f41@0 4) %f175@0 %f176@0)))
               (let
                ((X16 (ite (= %f41@0 4) %f171@0 %f172@0)))
                (and
                 (= %f107@0 (>= %f52@0 0))
                 (= %f108@0 (>= %f51@0 0))
                 (= %f109@0 (>= %f50@0 0))
                 (= %f105@0 0)
                 (= %f103@0 false)
                 (= %f81@0 (ite (= %f41@0 4) X2 false))
                 (= %f101@0 (ite (= %f41@0 4) (ite %f81@0 0 X1) 0))
                 (= %f99@0 (ite (= %f41@0 4) (ite %f81@0 0 X3) 0))
                 (= %f97@0 (ite (= %f41@0 4) (ite %f81@0 0 X4) 0))
                 (= %f95@0 (ite (= %f41@0 4) (ite %f81@0 0 X5) 0))
                 (= %f93@0 (ite (= %f41@0 4) (ite %f81@0 0 X6) 0))
                 (= %f91@0 (ite (= %f41@0 4) (ite %f81@0 0 X7) 0))
                 (= %f89@0 (ite (= %f41@0 4) (ite %f81@0 0 X8) 0))
                 (= %f80@0 %f52@0)
                 (= %f79@0 %f51@0)
                 (= %f78@0 %f50@0)
                 (= %f77@0 (ite (= %f41@0 4) (ite %f81@0 true false) true))
                 (=
                  %f118@0
                  (or
                   %f77@0
                   (exists
                    ((X17 Int))
                     (and
                      (or (or (or (= X17 0) (= X17 1)) (= X17 2)) (= X17 3))
                      (exists
                       ((X18 Int)
                        (X19 Bool)
                        (X20 Int)
                        (X21 Int)
                        (X22 Bool)
                        (X23 Int)
                        (X24 Int)
                        (X25 Int))
                        (exists
                         ((X26 Int))
                          (and
                           (or (or (= X26 4) (= X26 5)) (= X26 6))
                           (exists
                            ((X27 Int)
                             (X28 Int)
                             (X29 Int)
                             (X30 Bool)
                             (X31 Bool)
                             (X32 Bool)
                             (X33 Int)
                             (X34 Int)
                             (X35 Int)
                             (X36 Int)
                             (X37 Int)
                             (X38 Int)
                             (X39 Int)
                             (X40 Int)
                             (X41 Int)
                             (X42 Int)
                             (X43 Int)
                             (X44 Int)
                             (X45 Int)
                             (X46 Int)
                             (X47 Int)
                             (X48 Int)
                             (X49 Int)
                             (X50 Int)
                             (X51 Int)
                             (X52 Int)
                             (X53 Int)
                             (X54 Int)
                             (X55 Int)
                             (X56 Bool)
                             (X57 Bool)
                             (X58 Bool)
                             (X59 Bool)
                             (X60 Bool)
                             (X61 Bool)
                             (X62 Bool)
                             (X63 Bool)
                             (X64 Bool)
                             (X65 Int)
                             (X66 Int)
                             (X67 Int)
                             (X68 Int)
                             (X69 Int)
                             (X70 Bool)
                             (X71 Int)
                             (X72 Int)
                             (X73 Bool)
                             (X74 Int)
                             (X75 Int)
                             (X76 Int)
                             (X77 Int)
                             (X78 Int))
                             (and
                              (and
                               (or
                                (or (or (= X78 0) (= X78 1)) (= X78 2))
                                (= X78 3))
                               (or (or (= X77 4) (= X77 5)) (= X77 6)))
                              (and
                               (< X50 %f91@0)
                               (and
                                (and
                                 (and
                                  (and
                                   (and
                                    (and
                                     (and
                                      (and
                                       (and
                                        (and
                                         (and (= X78 X17) (= X77 X26))
                                         (= X68 0))
                                        (= X76 X25))
                                       (= X75 X24))
                                      (= X74 X23))
                                     (= X73 X22))
                                    (= X72 X21))
                                   (= X71 X20))
                                  (= X70 X19))
                                 (= X69 X18))
                                (ite
                                 (= X77 5)
                                 (and
                                  (and
                                   (and
                                    (and
                                     (and
                                      (and
                                       (and
                                        (and
                                         (and
                                          (ite
                                           (not (not (= X78 0)))
                                           X63
                                           (not X63))
                                          (ite
                                           (not (not (= X78 1)))
                                           X62
                                           (not X62)))
                                         (ite (not (= X68 0)) X61 (not X61)))
                                        (ite
                                         (not
                                          (and (> %f91@0 0) (> %f93@0 0)))
                                         X60
                                         (not X60)))
                                       (ite (not (> X74 0)) X59 (not X59)))
                                      (= X31 (not X73)))
                                     (= X52 (+ %f89@0 1)))
                                    (ite
                                     X31
                                     (and
                                      (and
                                       (and
                                        (and
                                         (and
                                          (=
                                           X28
                                           (*
                                            X74
                                            (div %f93@0 (+ %f91@0 X74))))
                                          (ite
                                           (not
                                            (and (>= X28 X72) (< X28 %f93@0)))
                                           X58
                                           (not X58)))
                                         (= X49 (+ %f91@0 X74)))
                                        (= X43 (- %f95@0 X74)))
                                       (= X46 (- %f93@0 X28)))
                                      (= X40 (+ %f97@0 X28)))
                                     (and
                                      (and
                                       (and
                                        (and
                                         (and
                                          (=
                                           X28
                                           (div
                                            (* X74 %f91@0)
                                            (+ %f93@0 X74)))
                                          (ite
                                           (not
                                            (and (>= X28 X72) (< X28 %f91@0)))
                                           X58
                                           (not X58)))
                                         (= X46 (+ %f93@0 X74)))
                                        (= X40 (- %f97@0 X74)))
                                       (= X49 (- %f91@0 X28)))
                                      (= X43 (+ %f95@0 X28)))))
                                   (=
                                    X64
                                    (or
                                     (or (or (or (or X63 X62) X61) X60) X59)
                                     X58)))
                                  (ite
                                   X64
                                   (and
                                    (and
                                     (and
                                      (and
                                       (and
                                        (and
                                         (and
                                          (and
                                           (and
                                            (and
                                             (and
                                              (and
                                               (= X67 %f78@0)
                                               (= X66 %f79@0))
                                              (= X65 %f80@0))
                                             (= X53 %f89@0))
                                            (= X50 %f91@0))
                                           (= X47 %f93@0))
                                          (= X44 %f95@0))
                                         (= X41 %f97@0))
                                        (= X38 %f99@0))
                                       (= X35 %f101@0))
                                      (= X32 %f103@0))
                                     (= X29 %f105@0))
                                    (>= X55 X9))
                                   (and
                                    (and
                                     (and
                                      (and
                                       (and
                                        (and
                                         (and
                                          (and
                                           (and
                                            (and
                                             (and
                                              (and
                                               (= X67 %f78@0)
                                               (= X66 %f79@0))
                                              (= X65 %f80@0))
                                             (= X53 X52))
                                            (= X50 X49))
                                           (= X47 X46))
                                          (= X44 X43))
                                         (= X41 X40))
                                        (= X38 %f99@0))
                                       (= X35 %f101@0))
                                      (= X32 X31))
                                     (= X29 X28))
                                    (>= X55 X9))))
                                 (ite
                                  (= X77 6)
                                  (and
                                   (and
                                    (and
                                     (and
                                      (and
                                       (and
                                        (and
                                         (and
                                          (and
                                           (ite
                                            (not (not (= X78 0)))
                                            X63
                                            (not X63))
                                           (ite
                                            (not (not (= X78 1)))
                                            X62
                                            (not X62)))
                                          (ite (not (= X68 0)) X61 (not X61)))
                                         (ite
                                          (not
                                           (and (> %f91@0 0) (> %f93@0 0)))
                                          X60
                                          (not X60)))
                                        (ite (not (> X71 0)) X59 (not X59)))
                                       (= X31 (not X70)))
                                      (= X52 (+ %f89@0 1)))
                                     (ite
                                      X31
                                      (and
                                       (and
                                        (and
                                         (and
                                          (and
                                           (=
                                            X28
                                            (*
                                             X71
                                             (div %f93@0 (+ %f91@0 X71))))
                                           (ite
                                            (not
                                             (and
                                              (>= X28 X69)
                                              (< X28 %f93@0)))
                                            X58
                                            (not X58)))
                                          (= X49 (+ %f91@0 X71)))
                                         (= X37 (- %f99@0 X71)))
                                        (= X46 (- %f93@0 X28)))
                                       (= X34 (+ %f101@0 X28)))
                                      (and
                                       (and
                                        (and
                                         (and
                                          (and
                                           (=
                                            X28
                                            (div
                                             (* X71 %f91@0)
                                             (+ %f93@0 X71)))
                                           (ite
                                            (not
                                             (and
                                              (>= X28 X69)
                                              (< X28 %f91@0)))
                                            X58
                                            (not X58)))
                                          (= X46 (+ %f93@0 X71)))
                                         (= X34 (- %f101@0 X71)))
                                        (= X49 (- %f91@0 X28)))
                                       (= X37 (+ %f99@0 X28)))))
                                    (=
                                     X64
                                     (or
                                      (or (or (or (or X63 X62) X61) X60) X59)
                                      X58)))
                                   (ite
                                    X64
                                    (and
                                     (and
                                      (and
                                       (and
                                        (and
                                         (and
                                          (and
                                           (and
                                            (and
                                             (and
                                              (and
                                               (and
                                                (= X67 %f78@0)
                                                (= X66 %f79@0))
                                               (= X65 %f80@0))
                                              (= X53 %f89@0))
                                             (= X50 %f91@0))
                                            (= X47 %f93@0))
                                           (= X44 %f95@0))
                                          (= X41 %f97@0))
                                         (= X38 %f99@0))
                                        (= X35 %f101@0))
                                       (= X32 %f103@0))
                                      (= X29 %f105@0))
                                     (>= X55 X9))
                                    (and
                                     (and
                                      (and
                                       (and
                                        (and
                                         (and
                                          (and
                                           (and
                                            (and
                                             (and
                                              (and
                                               (and
                                                (= X67 %f78@0)
                                                (= X66 %f79@0))
                                               (= X65 %f80@0))
                                              (= X53 X52))
                                             (= X50 X49))
                                            (= X47 X46))
                                           (= X44 %f95@0))
                                          (= X41 %f97@0))
                                         (= X38 X37))
                                        (= X35 X34))
                                       (= X32 X31))
                                      (= X29 X28))
                                     (>= X55 X9))))
                                  (and
                                   (and
                                    (and
                                     (and
                                      (and
                                       (and
                                        (and
                                         (and
                                          (and
                                           (and
                                            (and
                                             (and
                                              (and
                                               (and
                                                (>= X55 X9)
                                                (= X67 %f78@0))
                                               (= X66 %f79@0))
                                              (= X65 %f80@0))
                                             (= X64 %f81@0))
                                            (= X55 X9))
                                           (= X53 %f89@0))
                                          (= X50 %f91@0))
                                         (= X47 %f93@0))
                                        (= X44 %f95@0))
                                       (= X41 %f97@0))
                                      (= X38 %f99@0))
                                     (= X35 %f101@0))
                                    (= X32 %f103@0))
                                   (= X29 %f105@0)))))))))))))))
                 (= %f126@0 0)
                 (= %f125@0 (+ 0 %f44@0))
                 (= %f128@0 0)
                 (= %f127@0 (+ 0 %f44@0))
                 (= %f129@0 (+ 0 %f47@0))
                 (= %f130@0 (+ 0 %f47@0))
                 (= AMM.res.gklocal_11 0)
                 (= %f111@0 AMM.res.oracle_36)
                 (= %f119@0 (+ %f91@0 %f111@0))
                 (= %f110@0 AMM.res.oracle_34)
                 (= %f120@0 (+ %f91@0 %f110@0))
                 (= %f113@0 AMM.res.oracle_45)
                 (= %f112@0 AMM.res.oracle_43)
                 (= %f121@0 (+ %f93@0 %f112@0))
                 (= %f115@0 AMM.res.oracle_53)
                 (= %f122@0 (+ %f91@0 %f115@0))
                 (= %f114@0 AMM.res.oracle_51)
                 (= %f123@0 (+ %f91@0 %f114@0))
                 (= %f117@0 AMM.res.oracle_62)
                 (= %f116@0 AMM.res.oracle_60)
                 (= %f124@0 (+ %f93@0 %f116@0))
                 (= %f182@0 (and (and %f109@0 %f108@0) %f107@0))
                 (__node_init_mult_0 %f44@0 %f143@0 %f144@0 %f223@0)
                 (__node_init_divv_0 %f126@0 %f125@0 %f143@0 %f222@0)
                 (__node_init_divv_0 %f145@0 %f127@0 %f146@0 %f221@0)
                 (__node_init_mult_0 %f44@0 %f128@0 %f145@0 %f220@0)
                 (__node_init_mult_0 %f47@0 %f147@0 %f148@0 %f219@0)
                 (__node_init_divv_0 %f126@0 %f129@0 %f147@0 %f218@0)
                 (__node_init_divv_0 %f149@0 %f130@0 %f150@0 %f217@0)
                 (__node_init_mult_0 %f47@0 %f128@0 %f149@0 %f216@0)
                 (__node_init_AMM.any_l86c14_0
                  AMM.res.gklocal_11
                  %f151@0
                  %f215@0
                  %f214@0
                  %f213@0)
                 (__node_init_AMM.any_l101c14_0
                  AMM.res.gklocal_11
                  %f152@0
                  %f212@0
                  %f211@0
                  %f210@0)
                 (__node_init_AMM.any_l145c14_0
                  AMM.res.gklocal_11
                  %f153@0
                  %f209@0
                  %f208@0
                  %f207@0)
                 (__node_init_AMM.any_l160c14_0
                  AMM.res.gklocal_11
                  %f154@0
                  %f206@0
                  %f205@0
                  %f204@0)
                 (__node_init_AMM.any_l204c14_0
                  AMM.res.gklocal_11
                  %f155@0
                  %f203@0
                  %f202@0
                  %f201@0)
                 (__node_init_AMM.any_l219c14_0
                  AMM.res.gklocal_11
                  %f156@0
                  %f200@0
                  %f199@0
                  %f198@0)
                 (__node_init_AMM.any_l223c14_0
                  AMM.res.gklocal_11
                  %f157@0
                  %f197@0
                  %f196@0
                  %f195@0)
                 (__node_init_divv_0 %f93@0 %f119@0 %f131@0 %f194@0)
                 (__node_init_mult_0 %f110@0 %f132@0 %f133@0 %f193@0)
                 (__node_init_divv_0 %f93@0 %f120@0 %f132@0 %f192@0)
                 (__node_init_mult_0 %f113@0 %f91@0 %f134@0 %f191@0)
                 (__node_init_divv_0 %f135@0 %f121@0 %f136@0 %f190@0)
                 (__node_init_mult_0 %f112@0 %f91@0 %f135@0 %f189@0)
                 (__node_init_divv_0 %f93@0 %f122@0 %f137@0 %f188@0)
                 (__node_init_mult_0 %f114@0 %f138@0 %f139@0 %f187@0)
                 (__node_init_divv_0 %f93@0 %f123@0 %f138@0 %f186@0)
                 (__node_init_mult_0 %f117@0 %f91@0 %f140@0 %f185@0)
                 (__node_init_divv_0 %f141@0 %f124@0 %f142@0 %f184@0)
                 (__node_init_mult_0 %f116@0 %f91@0 %f141@0 %f183@0)
                 (<= 4 %f41@0 6)
                 (<= 0 %f39@0 3)
                 %f38@0
                 (and (and %f109@0 %f108@0) %f107@0)))))))))))))))))))
(declare-fun %fresh_actlit_1 () Bool)
(assert (=> %fresh_actlit_1 (not %f118@0)))
(assert (not %fresh_actlit_1))
(declare-fun %f39@1 () Int)
(declare-fun %f40@1 () Int)
(declare-fun %f41@1 () Int)
(declare-fun %f44@1 () Int)
(declare-fun %f45@1 () Bool)
(declare-fun %f46@1 () Int)
(declare-fun %f47@1 () Int)
(declare-fun %f48@1 () Bool)
(declare-fun %f49@1 () Int)
(declare-fun %f50@1 () Int)
(declare-fun %f51@1 () Int)
(declare-fun %f52@1 () Int)
(declare-fun %f38@1 () Bool)
(declare-fun %f77@1 () Bool)
(declare-fun %f78@1 () Int)
(declare-fun %f79@1 () Int)
(declare-fun %f80@1 () Int)
(declare-fun %f81@1 () Bool)
(declare-fun %f89@1 () Int)
(declare-fun %f91@1 () Int)
(declare-fun %f93@1 () Int)
(declare-fun %f95@1 () Int)
(declare-fun %f97@1 () Int)
(declare-fun %f99@1 () Int)
(declare-fun %f101@1 () Int)
(declare-fun %f103@1 () Bool)
(declare-fun %f105@1 () Int)
(declare-fun %f107@1 () Bool)
(declare-fun %f108@1 () Bool)
(declare-fun %f109@1 () Bool)
(declare-fun %f110@1 () Int)
(declare-fun %f111@1 () Int)
(declare-fun %f112@1 () Int)
(declare-fun %f113@1 () Int)
(declare-fun %f114@1 () Int)
(declare-fun %f115@1 () Int)
(declare-fun %f116@1 () Int)
(declare-fun %f117@1 () Int)
(declare-fun %f118@1 () Bool)
(declare-fun %f119@1 () Int)
(declare-fun %f120@1 () Int)
(declare-fun %f121@1 () Int)
(declare-fun %f122@1 () Int)
(declare-fun %f123@1 () Int)
(declare-fun %f124@1 () Int)
(declare-fun %f125@1 () Int)
(declare-fun %f126@1 () Int)
(declare-fun %f127@1 () Int)
(declare-fun %f128@1 () Int)
(declare-fun %f129@1 () Int)
(declare-fun %f130@1 () Int)
(declare-fun %f131@1 () Int)
(declare-fun %f132@1 () Int)
(declare-fun %f133@1 () Int)
(declare-fun %f134@1 () Int)
(declare-fun %f135@1 () Int)
(declare-fun %f136@1 () Int)
(declare-fun %f137@1 () Int)
(declare-fun %f138@1 () Int)
(declare-fun %f139@1 () Int)
(declare-fun %f140@1 () Int)
(declare-fun %f141@1 () Int)
(declare-fun %f142@1 () Int)
(declare-fun %f143@1 () Int)
(declare-fun %f144@1 () Int)
(declare-fun %f145@1 () Int)
(declare-fun %f146@1 () Int)
(declare-fun %f147@1 () Int)
(declare-fun %f148@1 () Int)
(declare-fun %f149@1 () Int)
(declare-fun %f150@1 () Int)
(declare-fun %f151@1 () Int)
(declare-fun %f152@1 () Int)
(declare-fun %f153@1 () Int)
(declare-fun %f154@1 () Int)
(declare-fun %f155@1 () Int)
(declare-fun %f156@1 () Int)
(declare-fun %f157@1 () Int)
(declare-fun %f158@1 () Int)
(declare-fun %f159@1 () Bool)
(declare-fun %f160@1 () Bool)
(declare-fun %f161@1 () Int)
(declare-fun %f162@1 () Bool)
(declare-fun %f163@1 () Bool)
(declare-fun %f164@1 () Bool)
(declare-fun %f165@1 () Bool)
(declare-fun %f166@1 () Int)
(declare-fun %f167@1 () Int)
(declare-fun %f168@1 () Int)
(declare-fun %f169@1 () Bool)
(declare-fun %f170@1 () Int)
(declare-fun %f171@1 () Bool)
(declare-fun %f172@1 () Bool)
(declare-fun %f173@1 () Bool)
(declare-fun %f174@1 () Bool)
(declare-fun %f175@1 () Bool)
(declare-fun %f176@1 () Bool)
(declare-fun %f177@1 () Int)
(declare-fun %f178@1 () Int)
(declare-fun %f179@1 () Int)
(declare-fun %f180@1 () Int)
(declare-fun %f181@1 () Int)
(declare-fun %f182@1 () Bool)
(declare-fun %f223@1 () Bool)
(declare-fun %f222@1 () Bool)
(declare-fun %f221@1 () Bool)
(declare-fun %f220@1 () Bool)
(declare-fun %f219@1 () Bool)
(declare-fun %f218@1 () Bool)
(declare-fun %f217@1 () Bool)
(declare-fun %f216@1 () Bool)
(declare-fun %f215@1 () Bool)
(declare-fun %f214@1 () Bool)
(declare-fun %f213@1 () Bool)
(declare-fun %f212@1 () Bool)
(declare-fun %f211@1 () Bool)
(declare-fun %f210@1 () Bool)
(declare-fun %f209@1 () Bool)
(declare-fun %f208@1 () Bool)
(declare-fun %f207@1 () Bool)
(declare-fun %f206@1 () Bool)
(declare-fun %f205@1 () Bool)
(declare-fun %f204@1 () Bool)
(declare-fun %f203@1 () Bool)
(declare-fun %f202@1 () Bool)
(declare-fun %f201@1 () Bool)
(declare-fun %f200@1 () Bool)
(declare-fun %f199@1 () Bool)
(declare-fun %f198@1 () Bool)
(declare-fun %f197@1 () Bool)
(declare-fun %f196@1 () Bool)
(declare-fun %f195@1 () Bool)
(declare-fun %f194@1 () Bool)
(declare-fun %f193@1 () Bool)
(declare-fun %f192@1 () Bool)
(declare-fun %f191@1 () Bool)
(declare-fun %f190@1 () Bool)
(declare-fun %f189@1 () Bool)
(declare-fun %f188@1 () Bool)
(declare-fun %f187@1 () Bool)
(declare-fun %f186@1 () Bool)
(declare-fun %f185@1 () Bool)
(declare-fun %f184@1 () Bool)
(declare-fun %f183@1 () Bool)
(assert
 (let
 ((X1
   (ite
    (and %f77@0 (= %f41@1 4))
    %f164@1
    (ite
     (and (not %f77@0) (= %f41@1 5))
     (not %f45@1)
     (ite (and (not %f77@0) (= %f41@1 6)) (not %f48@1) %f165@1)))))
 (let
  ((X2
    (ite
     (and %f77@0 (= %f41@1 4))
     %f180@1
     (ite
      (and (not %f77@0) (= %f41@1 5))
      (ite X1 %f144@1 %f146@1)
      (ite (and (not %f77@0) (= %f41@1 6)) (ite X1 %f148@1 %f150@1) %f181@1)))))
  (let
   ((X3
     (ite
      (and %f77@0 (= %f41@1 4))
      %f171@1
      (ite
       (and (not %f77@0) (= %f41@1 5))
       (ite (not (and (>= X2 %f46@1) (< X2 %f93@0))) true false)
       (ite
        (and (not %f77@0) (= %f41@1 6))
        (ite (not (and (>= X2 %f49@1) (< X2 %f93@0))) true false)
        %f172@1)))))
   (let
    ((X4
      (ite
       (and %f77@0 (= %f41@1 4))
       %f175@1
       (ite
        (and (not %f77@0) (= %f41@1 5))
        (ite (not (> %f44@1 0)) true false)
        (ite
         (and (not %f77@0) (= %f41@1 6))
         (ite (not (> %f47@1 0)) true false)
         %f176@1)))))
    (let
     ((X5
       (ite
        (and %f77@0 (= %f41@1 4))
        %f159@1
        (ite
         (and (not %f77@0) (= %f41@1 5))
         (ite (not (and (> %f91@0 0) (> %f93@0 0))) true false)
         (ite
          (and (not %f77@0) (= %f41@1 6))
          (ite (not (and (> %f91@0 0) (> %f93@0 0))) true false)
          %f160@1)))))
     (let
      ((X6
        (ite
         (and %f77@0 (= %f41@1 4))
         %f162@1
         (ite
          (and (not %f77@0) (= %f41@1 5))
          (ite (not (= %f40@1 0)) true false)
          (ite
           (and (not %f77@0) (= %f41@1 6))
           (ite (not (= %f40@1 0)) true false)
           %f163@1)))))
      (let
       ((X7
         (ite
          (and %f77@0 (= %f41@1 4))
          %f173@1
          (ite
           (and (not %f77@0) (= %f41@1 5))
           (ite (not (not (= %f39@1 1))) true false)
           (ite
            (and (not %f77@0) (= %f41@1 6))
            (ite (not (not (= %f39@1 1))) true false)
            %f174@1)))))
       (let
        ((X8
          (ite
           (and %f77@0 (= %f41@1 4))
           (ite (not (not (= %f39@1 0))) true false)
           (ite
            (and (not %f77@0) (= %f41@1 5))
            (ite (not (not (= %f39@1 0))) true false)
            (ite
             (and (not %f77@0) (= %f41@1 6))
             (ite (not (not (= %f39@1 0))) true false)
             %f169@1)))))
        (let
         ((X9
           (ite
            (and %f77@0 (= %f41@1 4))
            100
            (ite
             (and (not %f77@0) (= %f41@1 5))
             %f166@1
             (ite
              (and (not %f77@0) (= %f41@1 6))
              (ite X1 (+ %f101@0 X2) (- %f101@0 %f47@1))
              %f167@1)))))
         (let
          ((X10
            (ite
             (and %f77@0 (= %f41@1 4))
             100
             (ite
              (and (not %f77@0) (= %f41@1 5))
              %f178@1
              (ite
               (and (not %f77@0) (= %f41@1 6))
               (ite X1 (- %f99@0 %f47@1) (+ %f99@0 X2))
               %f179@1)))))
          (let
           ((X11
             (ite
              (and %f77@0 (= %f41@1 4))
              20
              (ite
               (and (not %f77@0) (= %f41@1 5))
               (ite X1 (+ %f97@0 X2) (- %f97@0 %f44@1))
               %f158@1))))
           (let
            ((X12
              (ite
               (and %f77@0 (= %f41@1 4))
               10
               (ite
                (and (not %f77@0) (= %f41@1 5))
                (ite X1 (- %f95@0 %f44@1) (+ %f95@0 X2))
                %f161@1))))
            (let
             ((X13
               (ite
                (and %f77@0 (= %f41@1 4))
                40
                (ite
                 (and (not %f77@0) (= %f41@1 5))
                 (ite X1 (- %f93@0 X2) (+ %f93@0 %f44@1))
                 (ite
                  (and (not %f77@0) (= %f41@1 6))
                  (ite X1 (- %f93@0 X2) (+ %f93@0 %f47@1))
                  %f177@1)))))
             (let
              ((X14
                (ite
                 (and %f77@0 (= %f41@1 4))
                 60
                 (ite
                  (and (not %f77@0) (= %f41@1 5))
                  (ite X1 (+ %f91@0 %f44@1) (- %f91@0 X2))
                  (ite
                   (and (not %f77@0) (= %f41@1 6))
                   (ite X1 (+ %f91@0 %f47@1) (- %f91@0 X2))
                   %f168@1)))))
              (let
               ((X15
                 (ite
                  (and %f77@0 (= %f41@1 4))
                  0
                  (ite
                   (and (not %f77@0) (= %f41@1 5))
                   (+ %f89@0 1)
                   (ite (and (not %f77@0) (= %f41@1 6)) (+ %f89@0 1) %f170@1)))))
               (let
                ((X16
                  (ite
                   (and %f77@0 (= %f41@1 4))
                   (ite %f81@1 %f151@1 %f152@1)
                   (ite
                    (and (not %f77@0) (= %f41@1 5))
                    (ite %f81@1 %f153@1 %f154@1)
                    (ite
                     (and (not %f77@0) (= %f41@1 6))
                     (ite %f81@1 %f155@1 %f156@1)
                     %f157@1)))))
                (and
                 (= %f107@1 (>= %f52@1 0))
                 (= %f108@1 (>= %f51@1 0))
                 (= %f109@1 (>= %f50@1 0))
                 (= %f128@1 %f91@0)
                 (= %f130@1 (+ %f93@0 %f47@1))
                 (= %f129@1 (+ %f91@0 %f47@1))
                 (= %f126@1 %f93@0)
                 (= %f127@1 (+ %f93@0 %f44@1))
                 (= %f125@1 (+ %f91@0 %f44@1))
                 (=
                  %f81@1
                  (ite
                   (and %f77@0 (= %f41@1 4))
                   X8
                   (ite
                    (and (not %f77@0) (= %f41@1 5))
                    (or (or (or (or (or X8 X7) X6) X5) X4) X3)
                    (ite
                     (and (not %f77@0) (= %f41@1 6))
                     (or (or (or (or (or X8 X7) X6) X5) X4) X3)
                     %f81@0))))
                 (=
                  %f105@1
                  (ite
                   (and %f77@0 (= %f41@1 4))
                   %f105@0
                   (ite
                    (and (not %f77@0) (= %f41@1 5))
                    (ite %f81@1 %f105@0 X2)
                    (ite
                     (and (not %f77@0) (= %f41@1 6))
                     (ite %f81@1 %f105@0 X2)
                     %f105@0))))
                 (=
                  %f103@1
                  (ite
                   (and %f77@0 (= %f41@1 4))
                   %f103@0
                   (ite
                    (and (not %f77@0) (= %f41@1 5))
                    (ite %f81@1 %f103@0 X1)
                    (ite
                     (and (not %f77@0) (= %f41@1 6))
                     (ite %f81@1 %f103@0 X1)
                     %f103@0))))
                 (=
                  %f101@1
                  (ite
                   (and %f77@0 (= %f41@1 4))
                   (ite %f81@1 %f101@0 X9)
                   (ite
                    (and (not %f77@0) (= %f41@1 5))
                    %f101@0
                    (ite
                     (and (not %f77@0) (= %f41@1 6))
                     (ite %f81@1 %f101@0 X9)
                     %f101@0))))
                 (=
                  %f99@1
                  (ite
                   (and %f77@0 (= %f41@1 4))
                   (ite %f81@1 %f99@0 X10)
                   (ite
                    (and (not %f77@0) (= %f41@1 5))
                    %f99@0
                    (ite
                     (and (not %f77@0) (= %f41@1 6))
                     (ite %f81@1 %f99@0 X10)
                     %f99@0))))
                 (=
                  %f97@1
                  (ite
                   (and %f77@0 (= %f41@1 4))
                   (ite %f81@1 %f97@0 X11)
                   (ite
                    (and (not %f77@0) (= %f41@1 5))
                    (ite %f81@1 %f97@0 X11)
                    %f97@0)))
                 (=
                  %f95@1
                  (ite
                   (and %f77@0 (= %f41@1 4))
                   (ite %f81@1 %f95@0 X12)
                   (ite
                    (and (not %f77@0) (= %f41@1 5))
                    (ite %f81@1 %f95@0 X12)
                    %f95@0)))
                 (=
                  %f93@1
                  (ite
                   (and %f77@0 (= %f41@1 4))
                   (ite %f81@1 %f93@0 X13)
                   (ite
                    (and (not %f77@0) (= %f41@1 5))
                    (ite %f81@1 %f93@0 X13)
                    (ite
                     (and (not %f77@0) (= %f41@1 6))
                     (ite %f81@1 %f93@0 X13)
                     %f93@0))))
                 (=
                  %f91@1
                  (ite
                   (and %f77@0 (= %f41@1 4))
                   (ite %f81@1 %f91@0 X14)
                   (ite
                    (and (not %f77@0) (= %f41@1 5))
                    (ite %f81@1 %f91@0 X14)
                    (ite
                     (and (not %f77@0) (= %f41@1 6))
                     (ite %f81@1 %f91@0 X14)
                     %f91@0))))
                 (=
                  %f89@1
                  (ite
                   (and %f77@0 (= %f41@1 4))
                   (ite %f81@1 %f89@0 X15)
                   (ite
                    (and (not %f77@0) (= %f41@1 5))
                    (ite %f81@1 %f89@0 X15)
                    (ite
                     (and (not %f77@0) (= %f41@1 6))
                     (ite %f81@1 %f89@0 X15)
                     %f89@0))))
                 (= %f80@1 %f80@0)
                 (= %f79@1 %f79@0)
                 (= %f78@1 %f78@0)
                 (=
                  %f77@1
                  (ite
                   (and %f77@0 (= %f41@1 4))
                   (ite %f81@1 true false)
                   %f77@0))
                 (=
                  %f118@1
                  (or
                   %f77@1
                   (exists
                    ((X17 Int))
                     (and
                      (or (or (or (= X17 0) (= X17 1)) (= X17 2)) (= X17 3))
                      (exists
                       ((X18 Int)
                        (X19 Bool)
                        (X20 Int)
                        (X21 Int)
                        (X22 Bool)
                        (X23 Int)
                        (X24 Int)
                        (X25 Int))
                        (exists
                         ((X26 Int))
                          (and
                           (or (or (= X26 4) (= X26 5)) (= X26 6))
                           (exists
                            ((X27 Int)
                             (X28 Int)
                             (X29 Int)
                             (X30 Bool)
                             (X31 Bool)
                             (X32 Bool)
                             (X33 Int)
                             (X34 Int)
                             (X35 Int)
                             (X36 Int)
                             (X37 Int)
                             (X38 Int)
                             (X39 Int)
                             (X40 Int)
                             (X41 Int)
                             (X42 Int)
                             (X43 Int)
                             (X44 Int)
                             (X45 Int)
                             (X46 Int)
                             (X47 Int)
                             (X48 Int)
                             (X49 Int)
                             (X50 Int)
                             (X51 Int)
                             (X52 Int)
                             (X53 Int)
                             (X54 Int)
                             (X55 Int)
                             (X56 Bool)
                             (X57 Bool)
                             (X58 Bool)
                             (X59 Bool)
                             (X60 Bool)
                             (X61 Bool)
                             (X62 Bool)
                             (X63 Bool)
                             (X64 Bool)
                             (X65 Int)
                             (X66 Int)
                             (X67 Int)
                             (X68 Int)
                             (X69 Int)
                             (X70 Bool)
                             (X71 Int)
                             (X72 Int)
                             (X73 Bool)
                             (X74 Int)
                             (X75 Int)
                             (X76 Int)
                             (X77 Int)
                             (X78 Int))
                             (and
                              (and
                               (or
                                (or (or (= X78 0) (= X78 1)) (= X78 2))
                                (= X78 3))
                               (or (or (= X77 4) (= X77 5)) (= X77 6)))
                              (and
                               (< X50 %f91@1)
                               (and
                                (and
                                 (and
                                  (and
                                   (and
                                    (and
                                     (and
                                      (and
                                       (and
                                        (and
                                         (and (= X78 X17) (= X77 X26))
                                         (= X68 0))
                                        (= X76 X25))
                                       (= X75 X24))
                                      (= X74 X23))
                                     (= X73 X22))
                                    (= X72 X21))
                                   (= X71 X20))
                                  (= X70 X19))
                                 (= X69 X18))
                                (ite
                                 (= X77 5)
                                 (and
                                  (and
                                   (and
                                    (and
                                     (and
                                      (and
                                       (and
                                        (and
                                         (and
                                          (ite
                                           (not (not (= X78 0)))
                                           X63
                                           (not X63))
                                          (ite
                                           (not (not (= X78 1)))
                                           X62
                                           (not X62)))
                                         (ite (not (= X68 0)) X61 (not X61)))
                                        (ite
                                         (not
                                          (and (> %f91@1 0) (> %f93@1 0)))
                                         X60
                                         (not X60)))
                                       (ite (not (> X74 0)) X59 (not X59)))
                                      (= X31 (not X73)))
                                     (= X52 (+ %f89@1 1)))
                                    (ite
                                     X31
                                     (and
                                      (and
                                       (and
                                        (and
                                         (and
                                          (=
                                           X28
                                           (*
                                            X74
                                            (div %f93@1 (+ %f91@1 X74))))
                                          (ite
                                           (not
                                            (and (>= X28 X72) (< X28 %f93@1)))
                                           X58
                                           (not X58)))
                                         (= X49 (+ %f91@1 X74)))
                                        (= X43 (- %f95@1 X74)))
                                       (= X46 (- %f93@1 X28)))
                                      (= X40 (+ %f97@1 X28)))
                                     (and
                                      (and
                                       (and
                                        (and
                                         (and
                                          (=
                                           X28
                                           (div
                                            (* X74 %f91@1)
                                            (+ %f93@1 X74)))
                                          (ite
                                           (not
                                            (and (>= X28 X72) (< X28 %f91@1)))
                                           X58
                                           (not X58)))
                                         (= X46 (+ %f93@1 X74)))
                                        (= X40 (- %f97@1 X74)))
                                       (= X49 (- %f91@1 X28)))
                                      (= X43 (+ %f95@1 X28)))))
                                   (=
                                    X64
                                    (or
                                     (or (or (or (or X63 X62) X61) X60) X59)
                                     X58)))
                                  (ite
                                   X64
                                   (and
                                    (and
                                     (and
                                      (and
                                       (and
                                        (and
                                         (and
                                          (and
                                           (and
                                            (and
                                             (and
                                              (and
                                               (= X67 %f78@1)
                                               (= X66 %f79@1))
                                              (= X65 %f80@1))
                                             (= X53 %f89@1))
                                            (= X50 %f91@1))
                                           (= X47 %f93@1))
                                          (= X44 %f95@1))
                                         (= X41 %f97@1))
                                        (= X38 %f99@1))
                                       (= X35 %f101@1))
                                      (= X32 %f103@1))
                                     (= X29 %f105@1))
                                    (>= X55 X16))
                                   (and
                                    (and
                                     (and
                                      (and
                                       (and
                                        (and
                                         (and
                                          (and
                                           (and
                                            (and
                                             (and
                                              (and
                                               (= X67 %f78@1)
                                               (= X66 %f79@1))
                                              (= X65 %f80@1))
                                             (= X53 X52))
                                            (= X50 X49))
                                           (= X47 X46))
                                          (= X44 X43))
                                         (= X41 X40))
                                        (= X38 %f99@1))
                                       (= X35 %f101@1))
                                      (= X32 X31))
                                     (= X29 X28))
                                    (>= X55 X16))))
                                 (ite
                                  (= X77 6)
                                  (and
                                   (and
                                    (and
                                     (and
                                      (and
                                       (and
                                        (and
                                         (and
                                          (and
                                           (ite
                                            (not (not (= X78 0)))
                                            X63
                                            (not X63))
                                           (ite
                                            (not (not (= X78 1)))
                                            X62
                                            (not X62)))
                                          (ite (not (= X68 0)) X61 (not X61)))
                                         (ite
                                          (not
                                           (and (> %f91@1 0) (> %f93@1 0)))
                                          X60
                                          (not X60)))
                                        (ite (not (> X71 0)) X59 (not X59)))
                                       (= X31 (not X70)))
                                      (= X52 (+ %f89@1 1)))
                                     (ite
                                      X31
                                      (and
                                       (and
                                        (and
                                         (and
                                          (and
                                           (=
                                            X28
                                            (*
                                             X71
                                             (div %f93@1 (+ %f91@1 X71))))
                                           (ite
                                            (not
                                             (and
                                              (>= X28 X69)
                                              (< X28 %f93@1)))
                                            X58
                                            (not X58)))
                                          (= X49 (+ %f91@1 X71)))
                                         (= X37 (- %f99@1 X71)))
                                        (= X46 (- %f93@1 X28)))
                                       (= X34 (+ %f101@1 X28)))
                                      (and
                                       (and
                                        (and
                                         (and
                                          (and
                                           (=
                                            X28
                                            (div
                                             (* X71 %f91@1)
                                             (+ %f93@1 X71)))
                                           (ite
                                            (not
                                             (and
                                              (>= X28 X69)
                                              (< X28 %f91@1)))
                                            X58
                                            (not X58)))
                                          (= X46 (+ %f93@1 X71)))
                                         (= X34 (- %f101@1 X71)))
                                        (= X49 (- %f91@1 X28)))
                                       (= X37 (+ %f99@1 X28)))))
                                    (=
                                     X64
                                     (or
                                      (or (or (or (or X63 X62) X61) X60) X59)
                                      X58)))
                                   (ite
                                    X64
                                    (and
                                     (and
                                      (and
                                       (and
                                        (and
                                         (and
                                          (and
                                           (and
                                            (and
                                             (and
                                              (and
                                               (and
                                                (= X67 %f78@1)
                                                (= X66 %f79@1))
                                               (= X65 %f80@1))
                                              (= X53 %f89@1))
                                             (= X50 %f91@1))
                                            (= X47 %f93@1))
                                           (= X44 %f95@1))
                                          (= X41 %f97@1))
                                         (= X38 %f99@1))
                                        (= X35 %f101@1))
                                       (= X32 %f103@1))
                                      (= X29 %f105@1))
                                     (>= X55 X16))
                                    (and
                                     (and
                                      (and
                                       (and
                                        (and
                                         (and
                                          (and
                                           (and
                                            (and
                                             (and
                                              (and
                                               (and
                                                (= X67 %f78@1)
                                                (= X66 %f79@1))
                                               (= X65 %f80@1))
                                              (= X53 X52))
                                             (= X50 X49))
                                            (= X47 X46))
                                           (= X44 %f95@1))
                                          (= X41 %f97@1))
                                         (= X38 X37))
                                        (= X35 X34))
                                       (= X32 X31))
                                      (= X29 X28))
                                     (>= X55 X16))))
                                  (and
                                   (and
                                    (and
                                     (and
                                      (and
                                       (and
                                        (and
                                         (and
                                          (and
                                           (and
                                            (and
                                             (and
                                              (and
                                               (and
                                                (>= X55 X16)
                                                (= X67 %f78@1))
                                               (= X66 %f79@1))
                                              (= X65 %f80@1))
                                             (= X64 %f81@1))
                                            (= X55 X16))
                                           (= X53 %f89@1))
                                          (= X50 %f91@1))
                                         (= X47 %f93@1))
                                        (= X44 %f95@1))
                                       (= X41 %f97@1))
                                      (= X38 %f99@1))
                                     (= X35 %f101@1))
                                    (= X32 %f103@1))
                                   (= X29 %f105@1)))))))))))))))
                 (= AMM.res.gklocal_11 0)
                 (= %f111@1 %f111@0)
                 (= %f119@1 (+ %f91@1 %f111@1))
                 (= %f110@1 %f110@0)
                 (= %f120@1 (+ %f91@1 %f110@1))
                 (= %f113@1 %f113@0)
                 (= %f112@1 %f112@0)
                 (= %f121@1 (+ %f93@1 %f112@1))
                 (= %f115@1 %f115@0)
                 (= %f122@1 (+ %f91@1 %f115@1))
                 (= %f114@1 %f114@0)
                 (= %f123@1 (+ %f91@1 %f114@1))
                 (= %f117@1 %f117@0)
                 (= %f116@1 %f116@0)
                 (= %f124@1 (+ %f93@1 %f116@1))
                 (=
                  %f182@1
                  (and (and (and %f109@1 %f108@1) %f107@1) %f182@0))
                 (__node_trans_mult_0
                  %f44@1
                  %f143@1
                  %f144@1
                  %f223@1
                  %f44@0
                  %f143@0
                  %f144@0
                  %f223@0)
                 (__node_trans_divv_0
                  %f126@1
                  %f125@1
                  %f143@1
                  %f222@1
                  %f126@0
                  %f125@0
                  %f143@0
                  %f222@0)
                 (__node_trans_divv_0
                  %f145@1
                  %f127@1
                  %f146@1
                  %f221@1
                  %f145@0
                  %f127@0
                  %f146@0
                  %f221@0)
                 (__node_trans_mult_0
                  %f44@1
                  %f128@1
                  %f145@1
                  %f220@1
                  %f44@0
                  %f128@0
                  %f145@0
                  %f220@0)
                 (__node_trans_mult_0
                  %f47@1
                  %f147@1
                  %f148@1
                  %f219@1
                  %f47@0
                  %f147@0
                  %f148@0
                  %f219@0)
                 (__node_trans_divv_0
                  %f126@1
                  %f129@1
                  %f147@1
                  %f218@1
                  %f126@0
                  %f129@0
                  %f147@0
                  %f218@0)
                 (__node_trans_divv_0
                  %f149@1
                  %f130@1
                  %f150@1
                  %f217@1
                  %f149@0
                  %f130@0
                  %f150@0
                  %f217@0)
                 (__node_trans_mult_0
                  %f47@1
                  %f128@1
                  %f149@1
                  %f216@1
                  %f47@0
                  %f128@0
                  %f149@0
                  %f216@0)
                 (__node_trans_AMM.any_l86c14_0
                  AMM.res.gklocal_11
                  %f151@1
                  %f215@1
                  %f214@1
                  %f213@1
                  %f151@0
                  %f215@0
                  %f214@0
                  %f213@0)
                 (__node_trans_AMM.any_l101c14_0
                  AMM.res.gklocal_11
                  %f152@1
                  %f212@1
                  %f211@1
                  %f210@1
                  %f152@0
                  %f212@0
                  %f211@0
                  %f210@0)
                 (__node_trans_AMM.any_l145c14_0
                  AMM.res.gklocal_11
                  %f153@1
                  %f209@1
                  %f208@1
                  %f207@1
                  %f153@0
                  %f209@0
                  %f208@0
                  %f207@0)
                 (__node_trans_AMM.any_l160c14_0
                  AMM.res.gklocal_11
                  %f154@1
                  %f206@1
                  %f205@1
                  %f204@1
                  %f154@0
                  %f206@0
                  %f205@0
                  %f204@0)
                 (__node_trans_AMM.any_l204c14_0
                  AMM.res.gklocal_11
                  %f155@1
                  %f203@1
                  %f202@1
                  %f201@1
                  %f155@0
                  %f203@0
                  %f202@0
                  %f201@0)
                 (__node_trans_AMM.any_l219c14_0
                  AMM.res.gklocal_11
                  %f156@1
                  %f200@1
                  %f199@1
                  %f198@1
                  %f156@0
                  %f200@0
                  %f199@0
                  %f198@0)
                 (__node_trans_AMM.any_l223c14_0
                  AMM.res.gklocal_11
                  %f157@1
                  %f197@1
                  %f196@1
                  %f195@1
                  %f157@0
                  %f197@0
                  %f196@0
                  %f195@0)
                 (__node_trans_divv_0
                  %f93@1
                  %f119@1
                  %f131@1
                  %f194@1
                  %f93@0
                  %f119@0
                  %f131@0
                  %f194@0)
                 (__node_trans_mult_0
                  %f110@1
                  %f132@1
                  %f133@1
                  %f193@1
                  %f110@0
                  %f132@0
                  %f133@0
                  %f193@0)
                 (__node_trans_divv_0
                  %f93@1
                  %f120@1
                  %f132@1
                  %f192@1
                  %f93@0
                  %f120@0
                  %f132@0
                  %f192@0)
                 (__node_trans_mult_0
                  %f113@1
                  %f91@1
                  %f134@1
                  %f191@1
                  %f113@0
                  %f91@0
                  %f134@0
                  %f191@0)
                 (__node_trans_divv_0
                  %f135@1
                  %f121@1
                  %f136@1
                  %f190@1
                  %f135@0
                  %f121@0
                  %f136@0
                  %f190@0)
                 (__node_trans_mult_0
                  %f112@1
                  %f91@1
                  %f135@1
                  %f189@1
                  %f112@0
                  %f91@0
                  %f135@0
                  %f189@0)
                 (__node_trans_divv_0
                  %f93@1
                  %f122@1
                  %f137@1
                  %f188@1
                  %f93@0
                  %f122@0
                  %f137@0
                  %f188@0)
                 (__node_trans_mult_0
                  %f114@1
                  %f138@1
                  %f139@1
                  %f187@1
                  %f114@0
                  %f138@0
                  %f139@0
                  %f187@0)
                 (__node_trans_divv_0
                  %f93@1
                  %f123@1
                  %f138@1
                  %f186@1
                  %f93@0
                  %f123@0
                  %f138@0
                  %f186@0)
                 (__node_trans_mult_0
                  %f117@1
                  %f91@1
                  %f140@1
                  %f185@1
                  %f117@0
                  %f91@0
                  %f140@0
                  %f185@0)
                 (__node_trans_divv_0
                  %f141@1
                  %f124@1
                  %f142@1
                  %f184@1
                  %f141@0
                  %f124@0
                  %f142@0
                  %f184@0)
                 (__node_trans_mult_0
                  %f116@1
                  %f91@1
                  %f141@1
                  %f183@1
                  %f116@0
                  %f91@0
                  %f141@0
                  %f183@0)
                 (<= 4 %f41@1 6)
                 (<= 0 %f39@1 3)
                 (not %f38@1)
                 (and (and %f109@1 %f108@1) %f107@1)))))))))))))))))))
(assert %f118@0)
(check-sat)
