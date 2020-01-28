(set-logic HORN)
(set-info :source |
    Benchmark: C_VC
    Output by Princess (http://www.philipp.ruemmer.org/princess.shtml)
|)
(set-info :status unknown)
(declare-fun inv_main6 (Int Int Int Int) Bool)
(declare-fun inv_main7 (Int Int Int Int) Bool)
(assert (forall ((var0 Int)) (forall ((var1 Int)) (inv_main6 var1 var0 0 0 ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (forall ((var4 Int)) (or (not (and (inv_main6 var4 var0 var2 var3 ) (= var1 0 ) ) ) (inv_main7 var4 var0 var2 var3 ) ) ) ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (forall ((var4 Int)) (forall ((var5 Int)) (or (not (and (inv_main6 var5 var1 var3 var4 ) (and (not (= var2 0 ) ) (not (= var0 0 ) ) ) ) ) (inv_main6 (+ (+ var3 (* 2 var4 ) ) 1 ) (+ (+ (* (- 2) var3 ) var4 ) (+ (+ var3 (* 2 var4 ) ) 1 ) ) (+ (+ (+ var3 (* 2 var4 ) ) 1 ) (* (- 2) (+ (+ (* (- 2) var3 ) var4 ) (+ (+ var3 (* 2 var4 ) ) 1 ) ) ) ) (+ (* 2 (+ (+ var3 (* 2 var4 ) ) 1 ) ) (+ (+ (* (- 2) var3 ) var4 ) (+ (+ var3 (* 2 var4 ) ) 1 ) ) ) ) ) ) ) ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (forall ((var4 Int)) (forall ((var5 Int)) (or (not (and (inv_main6 var5 var1 var3 var4 ) (and (= var2 0 ) (not (= var0 0 ) ) ) ) ) (inv_main6 (+ (+ var3 (* 2 var4 ) ) 1 ) (+ (+ (* (- 2) var3 ) var4 ) (* (- 1) (+ (+ var3 (* 2 var4 ) ) 1 ) ) ) (+ (+ (+ var3 (* 2 var4 ) ) 1 ) (* (- 2) (+ (+ (* (- 2) var3 ) var4 ) (* (- 1) (+ (+ var3 (* 2 var4 ) ) 1 ) ) ) ) ) (+ (* 2 (+ (+ var3 (* 2 var4 ) ) 1 ) ) (+ (+ (* (- 2) var3 ) var4 ) (* (- 1) (+ (+ var3 (* 2 var4 ) ) 1 ) ) ) ) ) ) ) ) ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (not (and (inv_main7 var3 var0 var1 var2 ) (not (<= 0 (+ var1 (* 2 var2 ) ) ) ) ) ) ) ) ) ) )
(check-sat)
