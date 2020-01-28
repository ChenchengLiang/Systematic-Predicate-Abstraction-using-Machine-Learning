(set-logic HORN)
(set-info :source |
    Benchmark: C_VC
    Output by Princess (http://www.philipp.ruemmer.org/princess.shtml)
|)
(set-info :status unknown)
(declare-fun inv_main16 (Int Int Int Int) Bool)
(declare-fun inv_main5 (Int Int Int Int) Bool)
(assert (forall ((var0 Int)) (inv_main5 var0 0 0 0 ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (or (not (and (inv_main5 var0 var3 var1 var2 ) (and (forall ((var4 Int)) (or (not (and (and (and (and (<= 0 (+ (+ 2 (* (- 1) var4 ) ) (- 1) ) ) (<= 0 (+ (+ 2 (* 1 var4 ) ) (- 1) ) ) ) (or (not (<= 0 (+ var4 (- 1) ) ) ) (<= 0 (+ (+ var2 1 ) (- 1) ) ) ) ) (or (not (<= 0 (+ (* (- 1) var4 ) (- 1) ) ) ) (<= 0 (+ (* (- 1) (+ var2 1 ) ) (- 1) ) ) ) ) (exists ((var5 Int)) (= (+ var2 1 ) (+ (* 2 var5 ) var4 ) ) ) ) ) (= var4 0 ) ) ) (<= 0 (+ (+ var0 (* (- 1) var2 ) ) (- 1) ) ) ) ) ) (inv_main5 var0 (+ var3 1 ) (+ var1 1 ) (+ var2 1 ) ) ) ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (or (not (and (inv_main5 var0 var3 var1 var2 ) (and (not (exists ((var4 Int)) (and (and (and (and (and (<= 0 (+ (+ 2 (* (- 1) var4 ) ) (- 1) ) ) (<= 0 (+ (+ 2 (* 1 var4 ) ) (- 1) ) ) ) (or (not (<= 0 (+ var4 (- 1) ) ) ) (<= 0 (+ (+ var2 1 ) (- 1) ) ) ) ) (or (not (<= 0 (+ (* (- 1) var4 ) (- 1) ) ) ) (<= 0 (+ (* (- 1) (+ var2 1 ) ) (- 1) ) ) ) ) (exists ((var5 Int)) (= (+ var2 1 ) (+ (* 2 var5 ) var4 ) ) ) ) (= var4 0 ) ) ) ) (<= 0 (+ (+ var0 (* (- 1) var2 ) ) (- 1) ) ) ) ) ) (inv_main5 var0 (+ var3 1 ) var1 (+ var2 1 ) ) ) ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (or (not (and (inv_main5 var0 var3 var1 var2 ) (and (not (= (+ var3 (* (- 2) var1 ) ) 0 ) ) (and (forall ((var4 Int)) (or (not (and (and (and (and (<= 0 (+ (+ 2 (* (- 1) var4 ) ) (- 1) ) ) (<= 0 (+ (+ 2 (* 1 var4 ) ) (- 1) ) ) ) (or (not (<= 0 (+ var4 (- 1) ) ) ) (<= 0 (+ var2 (- 1) ) ) ) ) (or (not (<= 0 (+ (* (- 1) var4 ) (- 1) ) ) ) (<= 0 (+ (* (- 1) var2 ) (- 1) ) ) ) ) (exists ((var5 Int)) (= var2 (+ (* 2 var5 ) var4 ) ) ) ) ) (= var4 0 ) ) ) (not (<= 0 (+ (+ var0 (* (- 1) var2 ) ) (- 1) ) ) ) ) ) ) ) (inv_main16 var0 var3 var1 var2 ) ) ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (not (inv_main16 var0 var3 var1 var2 ) ) ) ) ) ) )
(check-sat)
