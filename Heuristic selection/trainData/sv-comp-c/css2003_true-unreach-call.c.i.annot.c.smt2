(set-logic HORN)
(set-info :source |
    Benchmark: C_VC
    Output by Princess (http://www.philipp.ruemmer.org/princess.shtml)
|)
(set-info :status unknown)
(declare-fun inv_main14 (Int Int Int) Bool)
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int)) (or (not (and (inv_main14 var3 var5 var2) (and (and (and (<= 0 (+ (+ 1000000 (* (- 1) var3)) (- 1))) (= (+ var2 (- 1)) var4)) (= (+ var5 var2) var0)) (= (+ var3 1) var1)))) (inv_main14 var1 var0 var4))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int)) (or (not (and (and (and (and (<= 0 var2) (<= 0 (+ 1 (* (- 1) var2)))) (= (+ var2 (- 1)) var3)) (= (+ 1 var2) var1)) (= 2 var0))) (inv_main14 var0 var1 var3))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int)) (not (and (inv_main14 var1 var2 var0) (<= 0 (+ (- 3) (+ var0 var1)))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int)) (not (and (inv_main14 var1 var2 var0) (<= 0 (+ (* (- 1) var0) (* (- 1) var1)))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int)) (not (and (inv_main14 var1 var2 var0) (<= 0 (* (- 1) var1))))))
(check-sat)
