(set-logic HORN)
(set-info :source |
    Benchmark: C_VC
    Output by Princess (http://www.philipp.ruemmer.org/princess.shtml)
|)
(set-info :status unknown)
(declare-fun inv_main42 (Int Int Int Int Int) Bool)
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int)) (or (not (and (and (and (and (and (and (and (and (and (and (and (and (<= 0 (+ var3 (- 1))) (<= 0 (+ (+ (+ var2 (* (- 1) var4)) (- 2)) (- 1)))) (not (<= 0 (+ (+ (* 2 var3) (* (- 1) (+ var2 (* (- 1) var4)))) (- 1))))) (not (<= 0 (+ (+ var4 (* (- 1) var2)) (- 1))))) (<= 0 (+ var3 (- 1)))) (<= 0 (+ var2 (- 1)))) (<= 0 (+ var4 (- 1)))) (<= 0 (+ (+ 1000000 (* (- 1) var3)) (- 1)))) (<= 0 (+ (+ 1000000 (* (- 1) var2)) (- 1)))) (<= 0 (+ (+ 1000000 (* (- 1) var4)) (- 1)))) (= var0 var4)) (= (+ var2 (* (- 1) var4)) var5)) (= 0 var1))) (inv_main42 var0 var1 var5 var2 var3))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int)) (or (not (and (inv_main42 var4 var2 var3 var6 var5) (and (and (and (<= 0 (+ (+ var5 (* (- 1) (+ var2 1))) (- 1))) (<= 0 (+ (+ var3 (- 2)) (- 1)))) (= (+ var4 2) var0)) (= (+ var2 1) var1)))) (inv_main42 var0 var1 var3 var6 var5))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int)) (not (and (inv_main42 var2 var0 var1 var4 var3) (not (<= 0 var2))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int)) (not (and (inv_main42 var2 var0 var1 var4 var3) (not (<= 0 (+ (+ var4 (* (- 1) (+ var2 1))) (- 1))))))))
(check-sat)
