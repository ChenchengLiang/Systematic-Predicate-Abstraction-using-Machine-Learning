(set-logic HORN)
(set-info :source |
    Benchmark: C_VC
    Output by Princess (http://www.philipp.ruemmer.org/princess.shtml)
|)
(set-info :status unknown)
(declare-fun inv_main10 (Int Int Int Int) Bool)
(declare-fun inv_main14 (Int Int Int Int) Bool)
(declare-fun inv_main5 (Int Int Int) Bool)
(assert (forall ((var0 Int)) (inv_main5 var0 0 0 ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (or (not (inv_main14 var1 var2 var0 var3 ) ) (inv_main14 var1 var2 var0 var3 ) ) ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (or (not (and (inv_main10 var1 var2 var0 var3 ) (and (<= 0 (* (- 1) var0 ) ) (<= 0 (+ (+ var1 (* (- 1) var3 ) ) (- 1) ) ) ) ) ) (inv_main14 var1 var2 var0 var3 ) ) ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (or (not (and (inv_main10 var1 var2 var0 var3 ) (and (not (<= 0 (* (- 1) var0 ) ) ) (<= 0 (+ (+ var1 (* (- 1) var3 ) ) (- 1) ) ) ) ) ) (inv_main10 var1 var2 (+ var0 (- 1) ) (+ var3 2 ) ) ) ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (or (not (and (inv_main5 var1 var2 var0 ) (not (<= 0 (+ (+ var1 (* (- 1) var2 ) ) (- 1) ) ) ) ) ) (inv_main10 var1 var2 var0 0 ) ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (or (not (and (inv_main5 var1 var2 var0 ) (<= 0 (+ (+ var1 (* (- 1) var2 ) ) (- 1) ) ) ) ) (inv_main5 var1 (+ var2 1 ) (+ var0 2 ) ) ) ) ) ) )
(check-sat)
