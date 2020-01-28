(set-logic HORN)
(set-info :source |
    Benchmark: C_VC
    Output by Princess (http://www.philipp.ruemmer.org/princess.shtml)
|)
(set-info :status unknown)
(declare-fun inv_main10 (Int Int Int Int) Bool)
(declare-fun inv_main15 (Int Int Int Int) Bool)
(declare-fun inv_main3 (Int Int Int Int) Bool)
(declare-fun inv_main7 (Int Int Int Int) Bool)
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (inv_main3 var1 var2 var0 var3 ) ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (or (not (and (inv_main7 var0 var1 var3 var2 ) (<= 0 (+ (+ var2 (* (- 1) var1 ) ) (- 1) ) ) ) ) (inv_main10 var0 var1 var1 var2 ) ) ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (or (not (and (inv_main10 var0 var1 var3 var2 ) (not (<= 0 (+ (+ var2 (* (- 1) var3 ) ) (- 1) ) ) ) ) ) (inv_main7 var0 (+ var1 1 ) var3 var2 ) ) ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (or (not (and (inv_main10 var0 var1 var3 var2 ) (and (not (<= 0 (+ var3 (* (- 1) var0 ) ) ) ) (<= 0 (+ (+ var2 (* (- 1) var3 ) ) (- 1) ) ) ) ) ) (inv_main15 var0 var1 var3 var2 ) ) ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (or (not (and (inv_main3 var0 var1 var3 var2 ) (<= 0 (+ var2 (- 1) ) ) ) ) (inv_main7 0 0 var3 var2 ) ) ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (or (not (and (inv_main7 var0 var1 var3 var2 ) (and (<= 0 (+ (+ var2 (* (- 1) (+ var0 1 ) ) ) (- 1) ) ) (not (<= 0 (+ (+ var2 (* (- 1) var1 ) ) (- 1) ) ) ) ) ) ) (inv_main7 (+ var0 1 ) (+ var0 1 ) var3 var2 ) ) ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (or (not (and (inv_main10 var0 var1 var3 var2 ) (and (<= 0 (+ var3 (* (- 1) var0 ) ) ) (<= 0 (+ (+ var2 (* (- 1) var3 ) ) (- 1) ) ) ) ) ) (inv_main10 var0 var1 (+ var3 1 ) var2 ) ) ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (or (not (inv_main15 var0 var1 var3 var2 ) ) (inv_main10 var0 var1 (+ var3 1 ) var2 ) ) ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (not (inv_main15 var0 var1 var3 var2 ) ) ) ) ) ) )
(check-sat)
