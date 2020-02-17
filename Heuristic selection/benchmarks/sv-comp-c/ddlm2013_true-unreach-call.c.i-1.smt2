(set-logic HORN)
(set-info :source |
    Benchmark: C_VC
    Output by Princess (http://www.philipp.ruemmer.org/princess.shtml)
|)
(set-info :status unknown)
(declare-fun inv_main10 (Int Int Int Int Int) Bool)
(declare-fun inv_main23 (Int Int Int Int Int) Bool)
(declare-fun inv_main3 (Int Int Int Int) Bool)
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (or (not (and (and (and (<= 0 var3 ) (<= 0 var2 ) ) (<= 0 var0 ) ) (<= 0 var1 ) ) ) (inv_main3 var3 var2 var0 var1 ) ) ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (forall ((var4 Int)) (forall ((var5 Int)) (or (not (and (inv_main10 var1 var0 var4 var5 var3 ) (and (not (= var3 0 ) ) (= var2 0 ) ) ) ) (inv_main23 var1 var0 var4 var5 var3 ) ) ) ) ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (forall ((var4 Int)) (forall ((var5 Int)) (or (not (and (inv_main10 var1 var0 var3 var4 var2 ) (and (forall ((var6 Int)) (or (not (and (and (and (and (<= 0 (+ (+ 2 (* (- 1) var6 ) ) (- 1) ) ) (<= 0 (+ (+ 2 (* 1 var6 ) ) (- 1) ) ) ) (or (not (<= 0 (+ var6 (- 1) ) ) ) (<= 0 (+ (+ var1 2 ) (- 1) ) ) ) ) (or (not (<= 0 (+ (* (- 1) var6 ) (- 1) ) ) ) (<= 0 (+ (* (- 1) (+ var1 2 ) ) (- 1) ) ) ) ) (exists ((var7 Int)) (= (+ var1 2 ) (+ (* 2 var7 ) var6 ) ) ) ) ) (= var6 0 ) ) ) (not (= var5 0 ) ) ) ) ) (inv_main10 (+ var1 2 ) (+ var0 2 ) (+ var3 1 ) (+ var4 (+ var0 (* (- 1) var1 ) ) ) var2 ) ) ) ) ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (forall ((var4 Int)) (forall ((var5 Int)) (or (not (and (inv_main10 var1 var0 var3 var4 var2 ) (and (not (exists ((var6 Int)) (and (and (and (and (and (<= 0 (+ (+ 2 (* (- 1) var6 ) ) (- 1) ) ) (<= 0 (+ (+ 2 (* 1 var6 ) ) (- 1) ) ) ) (or (not (<= 0 (+ var6 (- 1) ) ) ) (<= 0 (+ (+ var1 2 ) (- 1) ) ) ) ) (or (not (<= 0 (+ (* (- 1) var6 ) (- 1) ) ) ) (<= 0 (+ (* (- 1) (+ var1 2 ) ) (- 1) ) ) ) ) (exists ((var7 Int)) (= (+ var1 2 ) (+ (* 2 var7 ) var6 ) ) ) ) (= var6 0 ) ) ) ) (not (= var5 0 ) ) ) ) ) (inv_main10 (+ var1 2 ) (+ var0 1 ) (+ var3 1 ) (+ var4 (+ var0 (* (- 1) var1 ) ) ) var2 ) ) ) ) ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (forall ((var4 Int)) (or (not (and (inv_main3 var1 var0 var3 var4 ) (not (= var2 0 ) ) ) ) (inv_main10 0 1 0 0 var2 ) ) ) ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (forall ((var4 Int)) (or (not (and (inv_main3 var1 var0 var3 var4 ) (= var2 0 ) ) ) (inv_main10 1 1 0 0 var2 ) ) ) ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (forall ((var4 Int)) (not (and (inv_main23 var1 var0 var3 var4 var2 ) (not (= var3 var4 ) ) ) ) ) ) ) ) ) )
(check-sat)