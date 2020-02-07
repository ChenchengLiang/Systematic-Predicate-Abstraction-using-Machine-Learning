(set-logic HORN)
(set-info :source |
    Benchmark: C_VC
    Output by Princess (http://www.philipp.ruemmer.org/princess.shtml)
|)
(set-info :status unknown)
(declare-fun inv_main11 (Int Int Int Int) Bool)
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int)) (or (not (and (and (and (<= 0 (+ var1 (- 1))) (<= 0 (+ (+ var1 (* (- 1) (+ var3 1))) (- 1)))) (= 0 var0)) (= 0 var2))) (inv_main11 var0 var2 var1 var3))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int)) (or (not (and (inv_main11 var1 var3 var2 var5) (and (and (and (<= 0 (+ (+ var2 (* (- 1) (+ var1 4))) (- 1))) (not (<= 0 (+ (+ var5 (* (- 1) var3)) (- 1))))) (= (+ var1 4) var4)) (= (+ var1 4) var0)))) (inv_main11 var4 var0 var2 var5))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int)) (or (not (and (inv_main11 var0 var2 var1 var4) (and (<= 0 (+ (+ var4 (* (- 1) var2)) (- 1))) (= (+ var2 2) var3)))) (inv_main11 var0 var3 var1 var4))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int)) (not (and (inv_main11 var0 var2 var1 var3) (and (not (<= 0 (+ (+ (+ (+ var1 var2) 5) (* (- 1) var0)) (- 1)))) (<= 0 (+ (+ var3 (* (- 1) var2)) (- 1))))))))
(check-sat)
