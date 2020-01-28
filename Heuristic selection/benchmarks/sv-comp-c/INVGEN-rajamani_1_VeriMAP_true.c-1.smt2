(set-logic HORN)
(set-info :source |
    Benchmark: C_VC
    Output by Princess (http://www.philipp.ruemmer.org/princess.shtml)
|)
(set-info :status unknown)
(declare-fun inv_main23 (Int Int Int Int Int) Bool)
(declare-fun inv_main6 (Int Int Int Int Int) Bool)
(assert (inv_main6 0 0 0 0 0 ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (forall ((var4 Int)) (or (not (and (inv_main6 var2 var1 var4 var0 var3 ) (and (<= 0 (+ var1 (- 4) ) ) (= var2 0 ) ) ) ) (inv_main23 var2 var1 var4 var0 var3 ) ) ) ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (forall ((var4 Int)) (or (not (and (inv_main6 var2 var1 var4 var0 var3 ) (and (not (= var2 0 ) ) (not (= var2 0 ) ) ) ) ) (inv_main6 var2 (+ var1 1 ) (+ var4 100 ) (+ var0 10 ) (+ var3 1 ) ) ) ) ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (forall ((var4 Int)) (or (not (and (inv_main6 var2 var1 var4 var0 var3 ) (and (not (<= 0 (+ var1 (- 4) ) ) ) (and (not (= var2 0 ) ) (and (= var2 0 ) (not (= var2 0 ) ) ) ) ) ) ) (inv_main6 var2 var1 var4 (+ var0 10 ) (+ var3 1 ) ) ) ) ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (forall ((var4 Int)) (or (not (and (inv_main6 var2 var1 var4 var0 var3 ) (and (<= 0 (+ var1 (- 4) ) ) (and (not (= var2 0 ) ) (and (= var2 0 ) (not (= var2 0 ) ) ) ) ) ) ) (inv_main6 var2 (+ var1 1 ) (+ var4 1 ) (+ var0 10 ) (+ var3 1 ) ) ) ) ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (forall ((var4 Int)) (or (not (and (inv_main6 var2 var1 var4 var0 var3 ) (and (not (<= 0 (+ (+ var4 (* (- 10) var3 ) ) (- 1) ) ) ) (and (= var2 0 ) (and (= var2 0 ) (not (= var2 0 ) ) ) ) ) ) ) (inv_main6 var2 var1 var4 (+ var0 10 ) (+ var3 1 ) ) ) ) ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (forall ((var4 Int)) (or (not (and (inv_main6 var2 var1 var4 var0 var3 ) (and (<= 0 (+ var0 (* (- 100) var1 ) ) ) (and (<= 0 (+ (+ var4 (* (- 10) var3 ) ) (- 1) ) ) (and (= var2 0 ) (and (= var2 0 ) (not (= var2 0 ) ) ) ) ) ) ) ) (inv_main6 var2 var1 (* (- 1) var4 ) (+ var0 10 ) (+ var3 1 ) ) ) ) ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (forall ((var4 Int)) (or (not (and (inv_main6 var2 var1 var4 var0 var3 ) (and (not (<= 0 (+ var0 (* (- 100) var1 ) ) ) ) (and (<= 0 (+ (+ var4 (* (- 10) var3 ) ) (- 1) ) ) (and (= var2 0 ) (and (= var2 0 ) (not (= var2 0 ) ) ) ) ) ) ) ) (inv_main6 var2 var1 var4 (+ var0 10 ) (+ var3 1 ) ) ) ) ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (forall ((var4 Int)) (not (and (inv_main23 var2 var1 var4 var0 var3 ) (not (<= 0 (+ (+ var4 (- 2) ) (- 1) ) ) ) ) ) ) ) ) ) ) )
(check-sat)
