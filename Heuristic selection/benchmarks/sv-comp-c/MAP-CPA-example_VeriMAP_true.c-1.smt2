(set-logic HORN)
(set-info :source |
    Benchmark: C_VC
    Output by Princess (http://www.philipp.ruemmer.org/princess.shtml)
|)
(set-info :status unknown)
(declare-fun inv_main4 (Int Int) Bool)
(assert (inv_main4 0 0 ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (or (not (and (inv_main4 var0 var1 ) (and (= (+ var0 1 ) (+ var1 1 ) ) (not (= var0 20 ) ) ) ) ) (inv_main4 (+ var0 1 ) (+ var1 1 ) ) ) ) ) )
(check-sat)
