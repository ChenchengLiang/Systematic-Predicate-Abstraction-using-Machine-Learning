(set-logic HORN)
(set-info :source |
    Benchmark: C_VC
    Output by Princess (http://www.philipp.ruemmer.org/princess.shtml)
|)
(set-info :status unknown)
(declare-fun inv_main14 (Int Int Int) Bool)
(declare-fun inv_main3 (Int Int Int) Bool)
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (inv_main3 var1 var2 var0 ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (or (not (and (inv_main14 var2 var0 var1 ) (<= 0 (+ (+ 1000000 (* (- 1) var2 ) ) (- 1) ) ) ) ) (inv_main14 (+ var2 1 ) (+ var0 var1 ) (+ var1 (- 1) ) ) ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (or (not (and (inv_main3 var3 var0 var2 ) (and (<= 0 var1 ) (<= 0 (+ 1 (* (- 1) var1 ) ) ) ) ) ) (inv_main14 2 (+ 1 var1 ) (+ var1 (- 1) ) ) ) ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (not (and (inv_main14 var2 var0 var1 ) (or (or (not (<= 0 (+ (+ var2 var1 ) (- 1) ) ) ) (not (<= 0 (+ 2 (* (- 1) (+ var2 var1 ) ) ) ) ) ) (not (<= 0 (+ var2 (- 1) ) ) ) ) ) ) ) ) ) )
(check-sat)
