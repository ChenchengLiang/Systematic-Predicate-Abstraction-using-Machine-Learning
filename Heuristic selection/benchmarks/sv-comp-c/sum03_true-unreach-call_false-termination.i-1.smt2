(set-logic HORN)
(set-info :source |
    Benchmark: C_VC
    Output by Princess (http://www.philipp.ruemmer.org/princess.shtml)
|)
(set-info :status unknown)
(declare-fun inv_main12 (Int Int Int Int) Bool)
(declare-fun inv_main3 (Int) Bool)
(assert (inv_main3 0 ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (or (not (and (inv_main12 var1 var0 var2 var3 ) (<= 0 (+ (+ 1000000 (* (- 1) var3 ) ) (- 1) ) ) ) ) (inv_main12 (+ var1 2 ) var0 var2 (+ var3 1 ) ) ) ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (or (not (and (inv_main3 var0 ) (and (<= 0 var1 ) (<= 0 var2 ) ) ) ) (inv_main12 (+ var0 2 ) var2 var1 1 ) ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (not (and (inv_main12 var1 var0 var2 var3 ) (and (not (= (+ var1 (* (- 2) var3 ) ) 0 ) ) (not (= var1 0 ) ) ) ) ) ) ) ) ) )
(check-sat)
