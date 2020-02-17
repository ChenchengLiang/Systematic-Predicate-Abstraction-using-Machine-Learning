(set-logic HORN)
(set-info :source |
    Benchmark: C_VC
    Output by Princess (http://www.philipp.ruemmer.org/princess.shtml)
|)
(set-info :status unknown)
(declare-fun inv_main14 (Int Int Int Int) Bool)
(declare-fun inv_main3 (Int) Bool)
(assert (inv_main3 0 ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (or (not (and (inv_main14 var0 var2 var1 var3 ) (<= 0 (+ (+ 10 (* (- 1) var3 ) ) (- 1) ) ) ) ) (inv_main14 (+ var0 2 ) var2 var1 (+ var3 1 ) ) ) ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (or (not (and (inv_main14 var0 var2 var1 var3 ) (not (<= 0 (+ (+ 10 (* (- 1) var3 ) ) (- 1) ) ) ) ) ) (inv_main14 var0 var2 var1 (+ var3 1 ) ) ) ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (or (not (and (inv_main3 var0 ) (and (<= 0 var2 ) (<= 0 var1 ) ) ) ) (inv_main14 (+ var0 2 ) var1 var2 1 ) ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (not (and (inv_main14 var0 var2 var1 var3 ) (and (not (= (+ var0 (* (- 2) var3 ) ) 0 ) ) (not (= var0 0 ) ) ) ) ) ) ) ) ) )
(check-sat)