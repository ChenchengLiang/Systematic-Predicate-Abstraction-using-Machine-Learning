(set-logic HORN)
(set-info :source |
    Benchmark: C_VC
    Output by Princess (http://www.philipp.ruemmer.org/princess.shtml)
|)
(set-info :status unknown)
(declare-fun inv_main4 (Int Int) Bool)
(assert (inv_main4 0 0 ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (or (not (and (inv_main4 var2 var3 ) (and (not (= var0 0 ) ) (not (= var1 0 ) ) ) ) ) (inv_main4 (+ var2 1 ) (+ var3 2 ) ) ) ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (forall ((var4 Int)) (or (not (and (inv_main4 var2 var3 ) (and (= var0 0 ) (and (= var4 0 ) (not (= var1 0 ) ) ) ) ) ) (inv_main4 var2 var3 ) ) ) ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (forall ((var4 Int)) (or (not (and (inv_main4 var1 var3 ) (and (not (<= 0 (+ var1 (- 4) ) ) ) (and (not (= var2 0 ) ) (and (= var4 0 ) (not (= var0 0 ) ) ) ) ) ) ) (inv_main4 var1 var3 ) ) ) ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (forall ((var4 Int)) (or (not (and (inv_main4 var1 var3 ) (and (<= 0 (+ var1 (- 4) ) ) (and (not (= var2 0 ) ) (and (= var4 0 ) (not (= var0 0 ) ) ) ) ) ) ) (inv_main4 (+ var1 1 ) (+ var3 3 ) ) ) ) ) ) ) ) )
(check-sat)
