(set-logic HORN)
(set-info :source |
    Benchmark: C_VC
    Output by Princess (http://www.philipp.ruemmer.org/princess.shtml)
|)
(set-info :status unknown)
(declare-fun inv_main14 (Int Int Int) Bool)
(declare-fun inv_main7 (Int Int) Bool)
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int)) (or (not (and (inv_main14 var4 var0 var2) (and (and (<= 0 (+ 10 (* (- 1) var2))) (= (+ var2 1) var1)) (= var3 var4)))) (inv_main14 var4 var0 var1))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int)) (or (not (and (inv_main7 var3 var1) (and (and (<= 0 (+ 10 (* (- 1) var1))) (= (+ var1 1) var0)) (= var2 var3)))) (inv_main7 var3 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int)) (or (not (and (= var2 var0) (= 0 var1))) (inv_main7 var2 var1))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int)) (or (not (and (inv_main7 var3 var1) (and (and (and (not (<= 0 (+ 10 (* (- 1) var1)))) (= var2 var3)) (= var4 var3)) (= 1 var0)))) (inv_main14 var4 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int)) (not (and (inv_main14 var2 var0 var1) (and (not (= var0 var1)) (not (<= 0 (+ 10 (* (- 1) var1)))))))))
(check-sat)
