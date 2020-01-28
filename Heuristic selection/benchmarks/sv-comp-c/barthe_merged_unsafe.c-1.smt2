(set-logic HORN)
(set-info :source |
    Benchmark: C_VC
    Output by Princess (http://www.philipp.ruemmer.org/princess.shtml)
|)
(set-info :status unknown)
(declare-fun inv_main15 (Int Int Int Int Int Int Int) Bool)
(declare-fun inv_main6 (Int Int Int Int Int Int Int) Bool)
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (forall ((var4 Int)) (forall ((var5 Int)) (forall ((var6 Int)) (inv_main6 var3 var0 var6 var2 var4 var1 var5 ) ) ) ) ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (forall ((var4 Int)) (forall ((var5 Int)) (forall ((var6 Int)) (or (not (and (inv_main6 var4 var5 var6 var1 var0 var3 var2 ) (<= 0 (+ var4 (- 1) ) ) ) ) (inv_main15 var4 var5 0 var5 var5 var5 var5 ) ) ) ) ) ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (forall ((var4 Int)) (forall ((var5 Int)) (forall ((var6 Int)) (or (not (and (inv_main15 var4 var5 var6 var1 var0 var3 var2 ) (and (<= 0 (+ (+ var4 (* (- 1) (+ var6 1 ) ) ) (- 1) ) ) (= var6 10 ) ) ) ) (inv_main15 var4 var5 (+ var6 1 ) (+ (* 5 (+ var6 1 ) ) var5 ) 10 (+ var3 (+ (* 5 (+ var6 1 ) ) var5 ) ) (+ var2 10 ) ) ) ) ) ) ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (forall ((var4 Int)) (forall ((var5 Int)) (forall ((var6 Int)) (or (not (and (inv_main15 var4 var5 var6 var1 var0 var3 var2 ) (and (<= 0 (+ (+ var4 (* (- 1) (+ var6 1 ) ) ) (- 1) ) ) (not (= var6 10 ) ) ) ) ) (inv_main15 var4 var5 (+ var6 1 ) (+ (* 5 (+ var6 1 ) ) var5 ) (+ var0 5 ) (+ var3 (+ (* 5 (+ var6 1 ) ) var5 ) ) (+ var2 (+ var0 5 ) ) ) ) ) ) ) ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (forall ((var4 Int)) (forall ((var5 Int)) (forall ((var6 Int)) (not (and (inv_main15 var4 var5 var6 var1 var0 var3 var2 ) (not (= var3 var2 ) ) ) ) ) ) ) ) ) ) ) )
(check-sat)
