(set-logic HORN)
(set-info :source |
    Benchmark: C_VC
    Output by Princess (http://www.philipp.ruemmer.org/princess.shtml)
|)
(set-info :status unknown)
(declare-fun inv_main11 (Int Int Int) Bool)
(declare-fun inv_main26 () Bool)
(assert (forall ((var0 Int) (var1 Int) (var2 Int)) (or (not (and (and (not (<= 0 (* (- 1) var1))) (= 1 var0)) (= 0 var2))) (inv_main11 var2 var0 var1))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int)) (or (not (and (inv_main11 var5 var3 var4) (and (and (and (not (= var2 0)) (<= 0 (+ var4 (* (- 1) var3)))) (= (+ var5 1) var0)) (= (+ var3 1) var1)))) (inv_main11 var0 var1 var4))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int)) (or (not (and (inv_main11 var2 var0 var1) (and (and (<= 0 (+ var1 (* (- 1) var0))) (= (+ var2 (- 1)) var3)) (= (+ var0 1) var4)))) (inv_main11 var3 var4 var1))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int)) (or (not (and (inv_main11 var2 var0 var1) (not (or (<= 0 (+ var1 (* (- 1) var2))) (or (not (<= 0 (+ var2 (* 1 var1)))) (<= 0 (+ var1 (* (- 1) var0)))))))) inv_main26)))
(assert (forall ((var0 Int) (var1 Int) (var2 Int)) (or (not (and (inv_main11 var2 var0 var1) (and (not (<= 0 (+ var1 (* (- 1) var2)))) (not (or (<= 0 (+ var2 (* 1 var1))) (<= 0 (+ var1 (* (- 1) var0)))))))) inv_main26)))
(assert (forall ((var0 Int) (var1 Int) (var2 Int)) (not (and (inv_main11 var2 var0 var1) (not (or (<= 0 (+ var2 (* 1 var1))) (<= 0 (+ var1 (* (- 1) var0)))))))))
(assert (not inv_main26))
(check-sat)
