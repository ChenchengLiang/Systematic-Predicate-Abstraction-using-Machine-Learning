(set-logic HORN)
(set-info :source |
    Benchmark: C_VC
    Output by Princess (http://www.philipp.ruemmer.org/princess.shtml)
|)
(set-info :status unknown)
(declare-fun inv_main12 (Int Int Int Int) Bool)
(declare-fun inv_main4 (Int Int) Bool)
(declare-fun inv_main6 (Int Int Int Int) Bool)
(assert (forall ((var0 Int)) (forall ((var1 Int)) (inv_main4 var0 var1 ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (or (not (inv_main12 var0 var2 var3 var1 ) ) (inv_main12 var0 var2 var3 var1 ) ) ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (or (not (and (inv_main6 var0 var2 var3 var1 ) (not (= var3 0 ) ) ) ) (inv_main6 var0 var2 (+ var3 (- 1) ) (+ var1 (- 1) ) ) ) ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (or (not (and (inv_main6 var0 var2 var3 var1 ) (and (not (= var1 0 ) ) (and (= var0 var2 ) (= var3 0 ) ) ) ) ) (inv_main12 var0 var2 var3 var1 ) ) ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (or (not (inv_main4 var0 var1 ) ) (inv_main6 var0 var1 var0 var1 ) ) ) ) )
(check-sat)