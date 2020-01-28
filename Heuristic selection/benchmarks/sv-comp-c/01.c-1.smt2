(set-logic HORN)
(set-info :source |
    Benchmark: C_VC
    Output by Princess (http://www.philipp.ruemmer.org/princess.shtml)
|)
(set-info :status unknown)
(declare-fun inv_main14 (Int Int) Bool)
(declare-fun inv_main4 (Int Int) Bool)
(assert (inv_main4 1 1 ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (or (not (and (inv_main4 var0 var1 ) (not (= var2 0 ) ) ) ) (inv_main4 (+ var0 var1 ) (+ var0 var1 ) ) ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (or (not (and (inv_main4 var0 var1 ) (and (not (<= 0 (+ var1 (- 1) ) ) ) (= var2 0 ) ) ) ) (inv_main14 var0 var1 ) ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (not (inv_main14 var0 var1 ) ) ) ) )
(check-sat)
