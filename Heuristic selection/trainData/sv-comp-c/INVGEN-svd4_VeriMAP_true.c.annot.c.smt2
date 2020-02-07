(set-logic HORN)
(set-info :source |
    Benchmark: C_VC
    Output by Princess (http://www.philipp.ruemmer.org/princess.shtml)
|)
(set-info :status unknown)
(declare-fun inv_main12 (Int Int Int Int) Bool)
(declare-fun inv_main16 (Int Int Int Int) Bool)
(declare-fun inv_main22 (Int Int Int) Bool)
(declare-fun inv_main57 (Int Int Int Int) Bool)
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int)) (or (not (inv_main12 var3 var0 var1 var2)) (inv_main16 var3 var0 var1 var2))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int)) (or (not (and (inv_main16 var4 var2 var1 var3) (and (<= 0 (+ var4 (* (- 1) var1))) (= (+ var1 1) var0)))) (inv_main16 var4 var2 var0 var3))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int)) (or (not (and (inv_main16 var4 var2 var0 var3) (and (and (<= 0 (+ var3 (* (- 1) var2))) (not (<= 0 (+ var4 (* (- 1) var0))))) (= var1 var2)))) (inv_main57 var4 var1 var2 var3))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int)) (or (not (and (inv_main16 var3 var1 var0 var2) (and (not (<= 0 (+ var2 (* (- 1) var1)))) (not (<= 0 (+ var3 (* (- 1) var0))))))) (inv_main22 var3 var1 var2))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int)) (or (not (and (inv_main57 var4 var1 var0 var2) (and (<= 0 (+ var2 (* (- 1) (+ var0 1)))) (= (+ var0 1) var3)))) (inv_main57 var4 var1 var3 var2))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int)) (or (not (and (inv_main57 var3 var1 var0 var2) (not (<= 0 (+ var2 (* (- 1) (+ var0 1))))))) (inv_main22 var3 var1 var2))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int)) (or (not (and (inv_main22 var4 var1 var3) (and (and (<= 0 (+ (+ var1 (- 1)) (- 1))) (= (+ var1 (- 1)) var0)) (= (+ (+ var1 (- 1)) 1) var2)))) (inv_main12 var4 var0 var2 var3))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int)) (or (not (and (and (and (and (<= 0 (+ var1 (- 1))) (<= 0 (+ var3 (* (- 1) var1)))) (<= 0 (+ (+ var3 (* (- 1) var1)) (- 1)))) (= (+ var1 1) var0)) (= var2 var1))) (inv_main12 var3 var2 var0 var1))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int)) (or (not (and (and (and (and (<= 0 (+ var1 (- 1))) (not (<= 0 (+ var1 (* (- 1) var2))))) (<= 0 (+ (+ var1 (* (- 1) var2)) (- 1)))) (= var3 var1)) (= (+ var1 1) var0))) (inv_main12 var3 var1 var0 var2))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int)) (not (and (inv_main12 var3 var0 var1 var2) (not (<= 0 (+ var0 (- 1))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int)) (not (and (inv_main12 var3 var0 var1 var2) (not (<= 0 (+ var3 (* (- 1) var0))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int)) (not (and (inv_main16 var3 var1 var0 var2) (and (not (<= 0 (+ var1 (- 1)))) (<= 0 (+ var3 (* (- 1) var0))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int)) (not (and (inv_main16 var3 var1 var0 var2) (and (not (<= 0 (+ var2 (* (- 1) var1)))) (<= 0 (+ var3 (* (- 1) var0))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int)) (not (and (inv_main16 var3 var1 var0 var2) (and (not (<= 0 (+ var0 (- 1)))) (<= 0 (+ var3 (* (- 1) var0))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int)) (not (and (inv_main16 var3 var1 var0 var2) (and (not (<= 0 (+ var3 (* (- 1) var0)))) (<= 0 (+ var3 (* (- 1) var0))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int)) (not (and (inv_main57 var3 var1 var0 var2) (not (<= 0 (+ var0 (- 1))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int)) (not (and (inv_main57 var3 var1 var0 var2) (not (<= 0 (+ var2 (* (- 1) var0))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int)) (not (and (inv_main57 var3 var1 var0 var2) (not (<= 0 (+ var1 (- 1))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int)) (not (and (inv_main57 var3 var1 var0 var2) (not (<= 0 (+ var3 (* (- 1) var1))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int)) (not (and (inv_main22 var2 var0 var1) (not (<= 0 (+ var0 (- 1))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int)) (not (and (inv_main22 var2 var0 var1) (not (<= 0 (+ var1 (* (- 1) var0))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int)) (not (and (inv_main22 var2 var0 var1) (not (<= 0 (+ var0 (- 1))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int)) (not (and (inv_main22 var2 var0 var1) (not (<= 0 (+ var2 (* (- 1) var0))))))))
(check-sat)
