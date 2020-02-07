(set-logic HORN)
(set-info :source |
    Benchmark: C_VC
    Output by Princess (http://www.philipp.ruemmer.org/princess.shtml)
|)
(set-info :status unknown)
(declare-fun inv_main21 (Int Int Int) Bool)
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int)) (or (not (and (and (and (and (and (and (and (<= 0 (+ (+ var0 1) (- 1))) (<= 0 (+ var0 (- 1)))) (<= 0 (+ (+ 2147483647 (* (- 1) var0)) (- 1)))) (= (+ (+ var0 1) (- 1)) var2)) (= (+ (+ var0 1) (- 1)) var3)) (= 0 var5)) (= 0 var1)) (= 0 var4))) (inv_main21 var0 var1 var3))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int)) (or (not (and (inv_main21 var1 var5 var4) (and (and (and (<= 0 (+ var4 (* (- 1) (+ var5 1)))) (= (+ var5 1) var2)) (= var0 0)) (= var3 0)))) (inv_main21 var1 var2 var4))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int)) (not (and (inv_main21 var0 var2 var1) (not (<= 0 var2))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int)) (not (and (inv_main21 var0 var2 var1) (not (<= 0 (+ (+ (+ var0 1) (* (- 1) var2)) (- 1))))))))
(check-sat)
