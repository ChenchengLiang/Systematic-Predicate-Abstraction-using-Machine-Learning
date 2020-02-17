(set-logic HORN)
(set-info :source |
    Benchmark: C_VC
    Output by Princess (http://www.philipp.ruemmer.org/princess.shtml)
|)
(set-info :status unknown)
(declare-fun inv_main4 (Int) Bool)
(declare-fun inv_main7 (Int Int) Bool)
(assert (forall ((var0 Int) (var1 Int)) (or (not (and (<= 0 var1) (<= 0 var0))) (or (not (and (= 0 var0) (= 0 var1))) (inv_main4 var0)))))
(assert (forall ((var0 Int) (var1 Int)) (or (not (and (<= 0 var1) (<= 0 var0))) (or (not (and (inv_main4 var0) (and (<= 0 (+ (+ 268435455 (* (- 1) var0)) (- 1))) (= 0 var1)))) (inv_main7 var0 var1)))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int)) (or (not (and (and (<= 0 var2) (<= 0 var1)) (<= 0 var0))) (or (not (and (inv_main7 var1 var2) (and (<= 0 (+ (+ 10 (* (- 1) var2)) (- 1))) (= (+ var2 1) var0)))) (inv_main7 var1 var0)))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int)) (or (not (and (and (<= 0 var2) (<= 0 var1)) (<= 0 var0))) (or (not (and (inv_main7 var1 var2) (and (not (<= 0 (+ (+ 10 (* (- 1) var2)) (- 1)))) (= (+ var1 1) var0)))) (inv_main4 var0)))))
(assert (forall ((var0 Int)) (not (and (inv_main4 (* 2 var0)) (not (<= 0 (+ (+ 268435455 (* (- 2) var0)) (- 1))))))))
(check-sat)
