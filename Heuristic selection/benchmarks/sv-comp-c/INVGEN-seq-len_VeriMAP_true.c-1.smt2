(set-logic HORN)
(set-info :source |
    Benchmark: C_VC
    Output by Princess (http://www.philipp.ruemmer.org/princess.shtml)
|)
(set-info :status unknown)
(declare-fun inv_main13 (Int Int Int Int Int) Bool)
(declare-fun inv_main17 (Int Int Int Int Int) Bool)
(declare-fun inv_main21 (Int Int Int Int Int) Bool)
(declare-fun inv_main27 (Int Int Int Int Int) Bool)
(declare-fun inv_main5 (Int Int Int Int Int) Bool)
(declare-fun inv_main9 (Int Int Int Int Int) Bool)
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (inv_main5 var2 var0 var1 0 0 ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (forall ((var4 Int)) (or (not (and (inv_main5 var2 var3 var1 var0 var4 ) (not (<= 0 (+ (+ var2 (* (- 1) var0 ) ) (- 1) ) ) ) ) ) (inv_main9 var2 var3 var1 0 var4 ) ) ) ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (forall ((var4 Int)) (or (not (and (inv_main5 var2 var3 var1 var0 var4 ) (<= 0 (+ (+ var2 (* (- 1) var0 ) ) (- 1) ) ) ) ) (inv_main5 var2 var3 var1 (+ var0 1 ) (+ var4 1 ) ) ) ) ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (forall ((var4 Int)) (or (not (and (inv_main9 var2 var3 var1 var0 var4 ) (not (<= 0 (+ (+ var3 (* (- 1) var0 ) ) (- 1) ) ) ) ) ) (inv_main13 var2 var3 var1 0 var4 ) ) ) ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (forall ((var4 Int)) (or (not (and (inv_main9 var2 var3 var1 var0 var4 ) (<= 0 (+ (+ var3 (* (- 1) var0 ) ) (- 1) ) ) ) ) (inv_main9 var2 var3 var1 (+ var0 1 ) (+ var4 1 ) ) ) ) ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (forall ((var4 Int)) (or (not (and (inv_main13 var2 var3 var1 var0 var4 ) (not (<= 0 (+ (+ var1 (* (- 1) var0 ) ) (- 1) ) ) ) ) ) (inv_main17 var2 var3 var1 0 var4 ) ) ) ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (forall ((var4 Int)) (or (not (and (inv_main13 var2 var3 var1 var0 var4 ) (<= 0 (+ (+ var1 (* (- 1) var0 ) ) (- 1) ) ) ) ) (inv_main13 var2 var3 var1 (+ var0 1 ) (+ var4 1 ) ) ) ) ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (forall ((var4 Int)) (or (not (and (inv_main17 var2 var3 var1 var0 var4 ) (not (<= 0 (+ (+ var1 (* (- 1) var0 ) ) (- 1) ) ) ) ) ) (inv_main21 var2 var3 var1 0 var4 ) ) ) ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (forall ((var4 Int)) (or (not (and (inv_main17 var2 var3 var1 var0 var4 ) (<= 0 (+ (+ var1 (* (- 1) var0 ) ) (- 1) ) ) ) ) (inv_main17 var2 var3 var1 (+ var0 1 ) (+ var4 (- 1) ) ) ) ) ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (forall ((var4 Int)) (or (not (and (inv_main21 var2 var3 var1 var0 var4 ) (<= 0 (+ (+ var3 (* (- 1) var0 ) ) (- 1) ) ) ) ) (inv_main21 var2 var3 var1 (+ var0 1 ) (+ var4 (- 1) ) ) ) ) ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (forall ((var4 Int)) (or (not (and (inv_main21 var2 var3 var1 var0 var4 ) (and (<= 0 (+ var2 (- 1) ) ) (not (<= 0 (+ (+ var3 (* (- 1) var0 ) ) (- 1) ) ) ) ) ) ) (inv_main27 var2 var3 var1 0 var4 ) ) ) ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (forall ((var4 Int)) (or (not (and (inv_main27 var2 var3 var1 var0 var4 ) (<= 0 (+ (+ var2 (* (- 1) (+ var0 1 ) ) ) (- 1) ) ) ) ) (inv_main27 var2 var3 var1 (+ var0 1 ) (+ var4 (- 1) ) ) ) ) ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (forall ((var4 Int)) (not (and (inv_main27 var2 var3 var1 var0 var4 ) (not (<= 0 (+ var4 (- 1) ) ) ) ) ) ) ) ) ) ) )
(check-sat)