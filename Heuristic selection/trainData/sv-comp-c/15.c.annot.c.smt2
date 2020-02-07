(set-logic HORN)
(set-info :source |
    Benchmark: C_VC
    Output by Princess (http://www.philipp.ruemmer.org/princess.shtml)
|)
(set-info :status unknown)
(declare-fun inv_main10 (Int Int Int) Bool)
(assert (forall ((var0 Int) (var1 Int) (var2 Int)) (or (not (and (and (<= 0 (+ (+ var0 (* (- 1) var2)) (- 1))) (<= 0 (+ var2 (- 1)))) (= 0 var1))) (inv_main10 var2 var0 var1))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int)) (or (not (and (inv_main10 var3 var4 var2) (and (and (<= 0 (+ (+ var3 (* (- 1) var2)) (- 1))) (= (+ var4 (- 1)) var1)) (= (+ var2 1) var0)))) (inv_main10 var3 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int)) (not (and (inv_main10 var1 var2 var0) (not (or (<= 0 var2) (<= 0 (+ (+ var1 (* (- 1) var0)) (- 1)))))))))
(check-sat)
