(set-logic HORN)
(set-info :source |
    Benchmark: C_VC
    Output by Princess (http://www.philipp.ruemmer.org/princess.shtml)
|)
(set-info :status unknown)
(declare-fun inv_main14 (Int Int) Bool)
(declare-fun inv_main6 (Int Int Int) Bool)
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int)) (or (not (and (inv_main14 var0 var2) (and (and (<= 0 (+ (+ var2 (- 1)) (- 1))) (= (+ var0 (- 1)) var1)) (= (+ var2 (- 1)) var3)))) (inv_main14 var1 var3))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int)) (or (not (and (= 0 var1) (= 0 var2))) (inv_main6 var0 var1 var2))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int)) (or (not (and (inv_main6 var3 var0 var1) (and (and (<= 0 (+ var3 (- 1))) (not (<= 0 (+ (+ var3 (* (- 1) var1)) (- 1))))) (= var2 var3)))) (inv_main14 var0 var3))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int)) (or (not (and (inv_main6 var4 var2 var3) (and (and (<= 0 (+ (+ var4 (* (- 1) var3)) (- 1))) (= (+ var2 1) var0)) (= (+ var3 1) var1)))) (inv_main6 var4 var0 var1))))
(assert (forall ((var0 Int) (var1 Int)) (not (and (inv_main14 var0 var1) (not (<= 0 (+ var0 (- 1))))))))
(check-sat)
