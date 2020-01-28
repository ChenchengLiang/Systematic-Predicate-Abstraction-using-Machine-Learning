(set-logic HORN)
(set-info :source |
    Benchmark: C_VC
    Output by Princess (http://www.philipp.ruemmer.org/princess.shtml)
|)
(set-info :status unknown)
(declare-fun inv_main12 (Int Int Int Int) Bool)
(declare-fun inv_main17 (Int Int Int Int) Bool)
(declare-fun inv_main3 (Int Int Int Int) Bool)
(declare-fun inv_main9 (Int Int Int Int) Bool)
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (inv_main3 var1 var3 var2 var0 ) ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (or (not (and (inv_main9 var3 var1 var2 var0 ) (not (<= 0 (+ (+ var2 (* (- 1) var3 ) ) (- 1) ) ) ) ) ) (inv_main12 var0 var1 var2 var0 ) ) ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (or (not (and (inv_main9 var3 var1 var2 var0 ) (<= 0 (+ (+ var2 (* (- 1) var3 ) ) (- 1) ) ) ) ) (inv_main9 (+ var3 1 ) var1 var2 var0 ) ) ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (or (not (and (inv_main12 var3 var1 var2 var0 ) (and (not (<= 0 (+ var3 (- 1) ) ) ) (<= 0 (+ (+ var2 (* (- 1) var3 ) ) (- 1) ) ) ) ) ) (inv_main17 var3 var1 var2 var0 ) ) ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (or (not (and (inv_main3 var3 var1 var2 var0 ) (and (<= 0 (+ (+ var2 (- 1) ) (- 1) ) ) (<= 0 (+ var0 (- 1) ) ) ) ) ) (inv_main9 var0 1 var2 var0 ) ) ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (or (not (and (inv_main12 var3 var1 var2 var0 ) (and (<= 0 (+ (+ var2 (* (- 1) (+ var1 1 ) ) ) (- 1) ) ) (not (<= 0 (+ (+ var2 (* (- 1) var3 ) ) (- 1) ) ) ) ) ) ) (inv_main9 var0 (+ var1 1 ) var2 var0 ) ) ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (or (not (and (inv_main12 var3 var1 var2 var0 ) (and (<= 0 (+ var3 (- 1) ) ) (<= 0 (+ (+ var2 (* (- 1) var3 ) ) (- 1) ) ) ) ) ) (inv_main12 (+ var3 1 ) var1 var2 var0 ) ) ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (or (not (inv_main17 var3 var1 var2 var0 ) ) (inv_main12 (+ var3 1 ) var1 var2 var0 ) ) ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (not (inv_main17 var3 var1 var2 var0 ) ) ) ) ) ) )
(check-sat)
