(set-logic HORN)
(set-info :source |
    Benchmark: C_VC
    Output by Princess (http://www.philipp.ruemmer.org/princess.shtml)
|)
(set-info :status unknown)
(declare-fun inv_main13 (Int Int Int Int) Bool)
(declare-fun inv_main19 (Int Int Int Int) Bool)
(declare-fun inv_main5 (Int Int Int Int) Bool)
(declare-fun inv_main9 (Int Int Int Int) Bool)
(assert (forall ((var0 Int)) (forall ((var1 Int)) (inv_main5 var1 var0 0 0 ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (or (not (and (inv_main5 var1 var2 var3 var0 ) (not (<= 0 (+ (+ var1 (* (- 1) var3 ) ) (- 1) ) ) ) ) ) (inv_main9 var1 var2 0 var0 ) ) ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (or (not (and (inv_main5 var1 var2 var3 var0 ) (<= 0 (+ (+ var1 (* (- 1) var3 ) ) (- 1) ) ) ) ) (inv_main5 var1 var2 (+ var3 1 ) (+ var0 1 ) ) ) ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (or (not (and (inv_main9 var1 var2 var3 var0 ) (not (<= 0 (+ (+ var2 (* (- 1) var3 ) ) (- 1) ) ) ) ) ) (inv_main13 var1 var2 0 var0 ) ) ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (or (not (and (inv_main9 var1 var2 var3 var0 ) (<= 0 (+ (+ var2 (* (- 1) var3 ) ) (- 1) ) ) ) ) (inv_main9 var1 var2 (+ var3 1 ) (+ var0 1 ) ) ) ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (or (not (and (inv_main13 var1 var2 var3 var0 ) (<= 0 (+ (+ var2 (* (- 1) var3 ) ) (- 1) ) ) ) ) (inv_main13 var1 var2 (+ var3 1 ) (+ var0 (- 1) ) ) ) ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (or (not (and (inv_main13 var1 var2 var3 var0 ) (and (<= 0 (+ var1 (- 1) ) ) (not (<= 0 (+ (+ var2 (* (- 1) var3 ) ) (- 1) ) ) ) ) ) ) (inv_main19 var1 var2 0 var0 ) ) ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (or (not (and (inv_main19 var1 var2 var3 var0 ) (<= 0 (+ (+ var1 (* (- 1) (+ var3 1 ) ) ) (- 1) ) ) ) ) (inv_main19 var1 var2 (+ var3 1 ) (+ var0 (- 1) ) ) ) ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (not (and (inv_main19 var1 var2 var3 var0 ) (not (<= 0 (+ var0 (- 1) ) ) ) ) ) ) ) ) ) )
(check-sat)
