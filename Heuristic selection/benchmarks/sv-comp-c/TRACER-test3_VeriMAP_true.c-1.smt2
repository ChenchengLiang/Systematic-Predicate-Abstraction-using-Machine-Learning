(set-logic HORN)
(set-info :source |
    Benchmark: C_VC
    Output by Princess (http://www.philipp.ruemmer.org/princess.shtml)
|)
(set-info :status unknown)
(declare-fun inv_main4 (Int Int) Bool)
(declare-fun inv_main5 (Int Int) Bool)
(assert (inv_main4 0 0 ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (or (not (and (inv_main4 var1 var2 ) (not (= var0 0 ) ) ) ) (inv_main5 5 var2 ) ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (or (not (and (inv_main4 var0 var1 ) (= var2 0 ) ) ) (inv_main5 var0 10 ) ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (not (and (inv_main5 var0 var1 ) (and (not (= var0 5 ) ) (not (= var1 10 ) ) ) ) ) ) ) )
(check-sat)
