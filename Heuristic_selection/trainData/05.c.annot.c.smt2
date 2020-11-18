(set-logic HORN)
(set-info :source |
    Benchmark: C_VC
    Output by Princess (http://www.philipp.ruemmer.org/princess.shtml)
|)
(set-info :status unknown)
(declare-fun inv_main6 (Int Int Int Int Int) Bool)
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int)) (or (not (and (and (and (= 0 var0) (= 0 var4)) (= 0 var2)) (= 0 var1))) (inv_main6 var3 var0 var4 var2 var1))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int)) (or (not (and (inv_main6 var2 (+ var1 (- 1)) (+ var3 (- 1)) var4 var7) (and (and (and (not (= var2 0)) (not (= var6 0))) (= (+ (+ var4 (+ (+ var3 (- 1)) 1)) 1) var5)) (= (+ var7 (+ (+ var1 (- 1)) 1)) var0)))) (inv_main6 var2 var1 var3 var5 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int)) (or (not (and (inv_main6 0 (+ var2 (- 1)) (+ var5 (- 1)) var3 var7) (and (and (and (not (= var6 0)) (= (+ var3 (+ (+ var5 (- 1)) 1)) var4)) (= (+ var7 (+ (+ var2 (- 1)) 1)) var1)) (= var0 0)))) (inv_main6 var0 var2 var5 var4 var1))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int)) (not (and (inv_main6 var1 var0 var4 var2 var3) (not (<= 0 (+ var2 (* (- 1) var3))))))))
(check-sat)
