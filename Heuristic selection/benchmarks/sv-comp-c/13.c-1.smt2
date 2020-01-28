(set-logic HORN)
(set-info :source |
    Benchmark: C_VC
    Output by Princess (http://www.philipp.ruemmer.org/princess.shtml)
|)
(set-info :status unknown)
(declare-fun inv_main17 (Int Int Int) Bool)
(declare-fun inv_main5 (Int Int Int) Bool)
(assert (forall ((var0 Int)) (inv_main5 var0 2 0 ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (or (not (and (inv_main5 var0 var3 var1 ) (and (not (= var0 0 ) ) (not (= var2 0 ) ) ) ) ) (inv_main5 var0 (+ var3 4 ) var1 ) ) ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (or (not (and (inv_main5 var0 var3 var1 ) (and (= var0 0 ) (not (= var2 0 ) ) ) ) ) (inv_main5 var0 (+ var3 2 ) (+ var1 1 ) ) ) ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (or (not (and (inv_main5 var0 var3 var1 ) (and (not (= var3 (+ (* 2 var1 ) 2 ) ) ) (and (not (= var1 0 ) ) (= var2 0 ) ) ) ) ) (inv_main17 var0 var3 var1 ) ) ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (not (inv_main17 var0 var2 var1 ) ) ) ) ) )
(check-sat)
