(set-logic HORN)
(set-info :source |
    Benchmark: C_VC
    Output by Princess (http://www.philipp.ruemmer.org/princess.shtml)
|)
(set-info :status unknown)
(declare-fun inv_main17 (Int Int Int Int Int) Bool)
(declare-fun inv_main6 (Int Int Int Int Int) Bool)
(assert (forall ((var0 Int)) (inv_main6 var0 0 0 0 10 ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (forall ((var4 Int)) (or (not (and (inv_main6 var4 var0 var3 var2 var1 ) (and (forall ((var5 Int)) (or (not (and (and (and (and (<= 0 (+ (+ 2 (* (- 1) var5 ) ) (- 1) ) ) (<= 0 (+ (+ 2 (* 1 var5 ) ) (- 1) ) ) ) (or (not (<= 0 (+ var5 (- 1) ) ) ) (<= 0 (+ (+ var2 1 ) (- 1) ) ) ) ) (or (not (<= 0 (+ (* (- 1) var5 ) (- 1) ) ) ) (<= 0 (+ (* (- 1) (+ var2 1 ) ) (- 1) ) ) ) ) (exists ((var6 Int)) (= (+ var2 1 ) (+ (* 2 var6 ) var5 ) ) ) ) ) (= var5 0 ) ) ) (<= 0 (+ (+ var4 (* (- 1) var2 ) ) (- 1) ) ) ) ) ) (inv_main6 var4 (+ var0 1 ) (+ var3 1 ) (+ var2 1 ) var1 ) ) ) ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (forall ((var4 Int)) (or (not (and (inv_main6 var4 var0 var3 var2 var1 ) (and (not (exists ((var5 Int)) (and (and (and (and (and (<= 0 (+ (+ 2 (* (- 1) var5 ) ) (- 1) ) ) (<= 0 (+ (+ 2 (* 1 var5 ) ) (- 1) ) ) ) (or (not (<= 0 (+ var5 (- 1) ) ) ) (<= 0 (+ (+ var2 1 ) (- 1) ) ) ) ) (or (not (<= 0 (+ (* (- 1) var5 ) (- 1) ) ) ) (<= 0 (+ (* (- 1) (+ var2 1 ) ) (- 1) ) ) ) ) (exists ((var6 Int)) (= (+ var2 1 ) (+ (* 2 var6 ) var5 ) ) ) ) (= var5 0 ) ) ) ) (<= 0 (+ (+ var4 (* (- 1) var2 ) ) (- 1) ) ) ) ) ) (inv_main6 var4 (+ var0 1 ) var3 (+ var2 1 ) var1 ) ) ) ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (forall ((var4 Int)) (or (not (and (inv_main6 var4 var0 var3 var2 var1 ) (and (not (= (+ var0 (* (- 2) var3 ) ) 0 ) ) (and (= var2 var1 ) (not (<= 0 (+ (+ var4 (* (- 1) var2 ) ) (- 1) ) ) ) ) ) ) ) (inv_main17 var4 var0 var3 var2 var1 ) ) ) ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (forall ((var4 Int)) (not (inv_main17 var4 var0 var3 var2 var1 ) ) ) ) ) ) ) )
(check-sat)
