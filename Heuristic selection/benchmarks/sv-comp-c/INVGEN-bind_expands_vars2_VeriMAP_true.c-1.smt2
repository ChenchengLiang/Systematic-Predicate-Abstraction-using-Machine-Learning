(set-logic HORN)
(set-info :source |
    Benchmark: C_VC
    Output by Princess (http://www.philipp.ruemmer.org/princess.shtml)
|)
(set-info :status unknown)
(declare-fun inv_main19 (Int Int Int Int Int) Bool)
(declare-fun inv_main4 (Int Int Int Int Int) Bool)
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (forall ((var4 Int)) (inv_main4 var4 var3 var1 var2 var0 ) ) ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (forall ((var4 Int)) (or (not (and (inv_main4 var1 var2 var4 var0 var3 ) (and (<= 0 (+ var4 (- 1) ) ) (and (<= 0 (+ (+ (* 2 var3 ) (* (- 1) var2 ) ) (* (- 1) var4 ) ) ) (and (<= 0 (+ var2 (* (- 1) var1 ) ) ) (and (<= 0 (+ (* 2 var3 ) (* (- 1) var2 ) ) ) (<= 0 (+ var3 (- 1) ) ) ) ) ) ) ) ) (inv_main19 var1 var2 var4 0 var3 ) ) ) ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (forall ((var4 Int)) (or (not (and (inv_main19 var1 var2 var4 var0 var3 ) (<= 0 (+ (+ var4 (* (- 1) (+ var0 1 ) ) ) (- 1) ) ) ) ) (inv_main19 var1 var2 var4 (+ var0 1 ) var3 ) ) ) ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (forall ((var4 Int)) (not (and (inv_main19 var1 var2 var4 var0 var3 ) (not (<= 0 (+ (+ (* 2 var3 ) (* (- 1) (+ var1 var0 ) ) ) (- 1) ) ) ) ) ) ) ) ) ) ) )
(check-sat)
