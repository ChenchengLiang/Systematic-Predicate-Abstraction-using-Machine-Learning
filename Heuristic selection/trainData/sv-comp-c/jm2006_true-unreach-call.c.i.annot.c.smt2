(set-logic HORN)
(set-info :source |
    Benchmark: C_VC
    Output by Princess (http://www.philipp.ruemmer.org/princess.shtml)
|)
(set-info :status unknown)
(declare-fun inv_main12 (Int Int Int Int) Bool)
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int)) (or (not (and (inv_main12 var3 var4 var2 var0) (and (and (not (= var2 0)) (= (+ var2 (- 1)) var5)) (= (+ var0 (- 1)) var1)))) (inv_main12 var3 var4 var5 var1))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int)) (or (not (and (and (and (<= 0 var1) (<= 0 var3)) (= var0 var1)) (= var2 var3))) (inv_main12 var0 var2 var1 var3))))
(assert (forall ((var0 Int) (var1 Int)) (not (and (inv_main12 var1 var1 0 var0) (not (= var0 0))))))
(check-sat)
