(set-logic HORN)
(set-info :source |
    Benchmark: C_VC
    Output by Princess (http://www.philipp.ruemmer.org/princess.shtml)
|)
(set-info :status unknown)
(declare-fun inv_main23 (Int Int Int Int) Bool)
(declare-fun inv_main3 (Int Int Int Int) Bool)
(declare-fun inv_main5 (Int Int Int Int) Bool)
(declare-fun inv_main8 (Int Int Int Int) Bool)
(assert (inv_main3 1 0 0 0 ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (forall ((var4 Int)) (or (not (and (inv_main3 var3 var0 var1 var4 ) (not (= var2 0 ) ) ) ) (inv_main5 var3 var0 var1 var4 ) ) ) ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (forall ((var4 Int)) (or (not (and (inv_main5 var3 var0 var1 var4 ) (= var2 0 ) ) ) (inv_main8 var3 var0 var1 var4 ) ) ) ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (forall ((var4 Int)) (or (not (and (inv_main8 var3 var0 var1 var4 ) (= var2 0 ) ) ) (inv_main3 var3 var0 var1 var4 ) ) ) ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (forall ((var4 Int)) (or (not (and (inv_main8 var2 var0 var1 var4 ) (not (= var3 0 ) ) ) ) (inv_main8 (+ (+ var1 var4 ) 1 ) (+ var1 var4 ) var1 var4 ) ) ) ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (forall ((var4 Int)) (or (not (and (inv_main3 var2 var0 var1 var3 ) (and (not (= var1 var3 ) ) (= var4 0 ) ) ) ) (inv_main23 var2 var0 var1 var3 ) ) ) ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (forall ((var4 Int)) (or (not (and (inv_main5 var3 var0 var2 var4 ) (and (forall ((var5 Int)) (or (not (and (and (and (and (<= 0 (+ (+ 2 (* (- 1) var5 ) ) (- 1) ) ) (<= 0 (+ (+ 2 (* 1 var5 ) ) (- 1) ) ) ) (or (not (<= 0 (+ var5 (- 1) ) ) ) (<= 0 (+ var0 (- 1) ) ) ) ) (or (not (<= 0 (+ (* (- 1) var5 ) (- 1) ) ) ) (<= 0 (+ (* (- 1) var0 ) (- 1) ) ) ) ) (exists ((var6 Int)) (= var0 (+ (* 2 var6 ) var5 ) ) ) ) ) (= var5 0 ) ) ) (and (forall ((var5 Int)) (or (not (and (and (and (and (<= 0 (+ (+ 2 (* (- 1) var5 ) ) (- 1) ) ) (<= 0 (+ (+ 2 (* 1 var5 ) ) (- 1) ) ) ) (or (not (<= 0 (+ var5 (- 1) ) ) ) (<= 0 (+ var3 (- 1) ) ) ) ) (or (not (<= 0 (+ (* (- 1) var5 ) (- 1) ) ) ) (<= 0 (+ (* (- 1) var3 ) (- 1) ) ) ) ) (exists ((var6 Int)) (= var3 (+ (* 2 var6 ) var5 ) ) ) ) ) (= var5 1 ) ) ) (not (= var1 0 ) ) ) ) ) ) (inv_main5 var3 var0 (+ var2 1 ) (+ var4 1 ) ) ) ) ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (forall ((var4 Int)) (or (not (and (inv_main5 var3 var0 var2 var4 ) (and (not (exists ((var5 Int)) (and (and (and (and (and (<= 0 (+ (+ 2 (* (- 1) var5 ) ) (- 1) ) ) (<= 0 (+ (+ 2 (* 1 var5 ) ) (- 1) ) ) ) (or (not (<= 0 (+ var5 (- 1) ) ) ) (<= 0 (+ var0 (- 1) ) ) ) ) (or (not (<= 0 (+ (* (- 1) var5 ) (- 1) ) ) ) (<= 0 (+ (* (- 1) var0 ) (- 1) ) ) ) ) (exists ((var6 Int)) (= var0 (+ (* 2 var6 ) var5 ) ) ) ) (= var5 0 ) ) ) ) (and (forall ((var5 Int)) (or (not (and (and (and (and (<= 0 (+ (+ 2 (* (- 1) var5 ) ) (- 1) ) ) (<= 0 (+ (+ 2 (* 1 var5 ) ) (- 1) ) ) ) (or (not (<= 0 (+ var5 (- 1) ) ) ) (<= 0 (+ var3 (- 1) ) ) ) ) (or (not (<= 0 (+ (* (- 1) var5 ) (- 1) ) ) ) (<= 0 (+ (* (- 1) var3 ) (- 1) ) ) ) ) (exists ((var6 Int)) (= var3 (+ (* 2 var6 ) var5 ) ) ) ) ) (= var5 1 ) ) ) (not (= var1 0 ) ) ) ) ) ) (inv_main5 var3 var0 (+ var2 1 ) var4 ) ) ) ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (forall ((var4 Int)) (or (not (and (inv_main5 var3 var0 var2 var4 ) (and (forall ((var5 Int)) (or (not (and (and (and (and (<= 0 (+ (+ 2 (* (- 1) var5 ) ) (- 1) ) ) (<= 0 (+ (+ 2 (* 1 var5 ) ) (- 1) ) ) ) (or (not (<= 0 (+ var5 (- 1) ) ) ) (<= 0 (+ var0 (- 1) ) ) ) ) (or (not (<= 0 (+ (* (- 1) var5 ) (- 1) ) ) ) (<= 0 (+ (* (- 1) var0 ) (- 1) ) ) ) ) (exists ((var6 Int)) (= var0 (+ (* 2 var6 ) var5 ) ) ) ) ) (= var5 0 ) ) ) (and (not (exists ((var5 Int)) (and (and (and (and (and (<= 0 (+ (+ 2 (* (- 1) var5 ) ) (- 1) ) ) (<= 0 (+ (+ 2 (* 1 var5 ) ) (- 1) ) ) ) (or (not (<= 0 (+ var5 (- 1) ) ) ) (<= 0 (+ var3 (- 1) ) ) ) ) (or (not (<= 0 (+ (* (- 1) var5 ) (- 1) ) ) ) (<= 0 (+ (* (- 1) var3 ) (- 1) ) ) ) ) (exists ((var6 Int)) (= var3 (+ (* 2 var6 ) var5 ) ) ) ) (= var5 1 ) ) ) ) (not (= var1 0 ) ) ) ) ) ) (inv_main5 var3 var0 var2 (+ var4 1 ) ) ) ) ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (forall ((var4 Int)) (or (not (and (inv_main5 var3 var0 var2 var4 ) (and (not (exists ((var5 Int)) (and (and (and (and (and (<= 0 (+ (+ 2 (* (- 1) var5 ) ) (- 1) ) ) (<= 0 (+ (+ 2 (* 1 var5 ) ) (- 1) ) ) ) (or (not (<= 0 (+ var5 (- 1) ) ) ) (<= 0 (+ var0 (- 1) ) ) ) ) (or (not (<= 0 (+ (* (- 1) var5 ) (- 1) ) ) ) (<= 0 (+ (* (- 1) var0 ) (- 1) ) ) ) ) (exists ((var6 Int)) (= var0 (+ (* 2 var6 ) var5 ) ) ) ) (= var5 0 ) ) ) ) (and (not (exists ((var5 Int)) (and (and (and (and (and (<= 0 (+ (+ 2 (* (- 1) var5 ) ) (- 1) ) ) (<= 0 (+ (+ 2 (* 1 var5 ) ) (- 1) ) ) ) (or (not (<= 0 (+ var5 (- 1) ) ) ) (<= 0 (+ var3 (- 1) ) ) ) ) (or (not (<= 0 (+ (* (- 1) var5 ) (- 1) ) ) ) (<= 0 (+ (* (- 1) var3 ) (- 1) ) ) ) ) (exists ((var6 Int)) (= var3 (+ (* 2 var6 ) var5 ) ) ) ) (= var5 1 ) ) ) ) (not (= var1 0 ) ) ) ) ) ) (inv_main5 var3 var0 var2 var4 ) ) ) ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (not (inv_main23 var2 var0 var1 var3 ) ) ) ) ) ) )
(check-sat)