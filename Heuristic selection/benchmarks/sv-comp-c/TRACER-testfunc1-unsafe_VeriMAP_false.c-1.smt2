(set-logic HORN)
(set-info :source |
    Benchmark: C_VC
    Output by Princess (http://www.philipp.ruemmer.org/princess.shtml)
|)
(set-info :status unknown)
(declare-fun inv_main3 (Int Int Int Int) Bool)
(declare-fun inv_main4 (Int Int Int Int) Bool)
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (inv_main3 var0 var2 var3 var1 ) ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (or (not (and (inv_main3 var1 var3 var2 var0 ) (not (= var0 0 ) ) ) ) (inv_main4 var1 (+ var1 3 ) (+ (+ (+ var1 3 ) (* (- 1) var1 ) ) (- 3) ) var0 ) ) ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (or (not (and (inv_main3 var1 var3 var2 var0 ) (= var0 0 ) ) ) (inv_main4 var1 (+ var1 5 ) (+ (+ (+ var1 5 ) (* (- 1) var1 ) ) (- 5) ) var0 ) ) ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (not (and (inv_main4 var1 var3 var2 var0 ) (= var2 0 ) ) ) ) ) ) ) )
(check-sat)
