(set-logic HORN)
(set-info :source |
    Benchmark: C_VC
    Output by Princess (http://www.philipp.ruemmer.org/princess.shtml)
|)
(set-info :status unknown)
(declare-fun inv_main111 () Bool)
(declare-fun inv_main31 (Int Int Int Int Int Int Int) Bool)
(declare-fun inv_main50 (Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun inv_main56 (Int Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun inv_main62 (Int Int Int Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun inv_main65 (Int Int Int Int Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun inv_main68 (Int Int Int Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun inv_main74 (Int Int Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun inv_main80 (Int Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun inv_main86 (Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun inv_main92 (Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun inv_main98 (Int Int Int Int Int Int Int Int) Bool)
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int)) (or (not (and (inv_main62 var3 var12 var5 var9 var1 var6 var0 var11 var10 var13 var7 var4 var2) (and (not (= var2 0)) (= 1 var8)))) (inv_main65 var3 var12 var5 var9 var1 var6 var0 var11 var10 var13 var7 var4 var2 var8))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int)) (or (not (and (inv_main62 var3 var12 var5 var8 var1 var6 var0 var11 var10 var13 var7 var4 0) (and (= var2 0) (= var9 0)))) (inv_main65 var3 var12 var5 var8 var1 var6 var0 var11 var10 var13 var7 var4 var2 var9))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int)) (or (not (and (inv_main65 0 var12 var5 var8 var1 var6 var0 var11 var10 var13 var7 var4 var2 var9) (= var3 0))) (inv_main68 var3 var5 var8 var1 var6 var0 var11 var10 var13 var7 var4 var2 var9))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int)) (or (not (and (inv_main65 var3 1 var5 var8 var1 var6 var0 var12 var11 var13 var7 var4 var2 var9) (and (not (= var3 0)) (= 0 var10)))) (inv_main68 var3 var5 var8 var1 var6 var0 var12 var11 var13 var7 var4 var2 var9))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int)) (or (not (and (inv_main68 var5 0 var0 var3 var10 var2 var9 var7 var11 var12 var6 var4 var1) (= var8 0))) (inv_main74 var5 var8 var3 var10 var2 var9 var7 var11 var12 var6 var4 var1))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int)) (or (not (and (inv_main68 var5 var8 1 var3 var10 var2 var9 var7 var11 var12 var6 var4 var1) (and (not (= var8 0)) (= 0 var0)))) (inv_main74 var5 var8 var3 var10 var2 var9 var7 var11 var12 var6 var4 var1))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int)) (or (not (and (inv_main74 var4 var7 0 var9 var1 var8 var6 var10 var11 var5 var3 var0) (= var2 0))) (inv_main80 var4 var7 var2 var1 var8 var6 var10 var11 var5 var3 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int)) (or (not (and (inv_main74 var4 var7 var2 1 var1 var8 var6 var9 var10 var5 var3 var0) (and (not (= var2 0)) (= 0 var11)))) (inv_main80 var4 var7 var2 var1 var8 var6 var9 var10 var5 var3 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int)) (or (not (and (inv_main80 var4 var7 var2 0 var8 var6 var9 var10 var5 var3 var0) (= var1 0))) (inv_main86 var4 var7 var2 var1 var6 var9 var10 var5 var3 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int)) (or (not (and (inv_main80 var4 var7 var2 var1 1 var6 var9 var10 var5 var3 var0) (and (not (= var1 0)) (= 0 var8)))) (inv_main86 var4 var7 var2 var1 var6 var9 var10 var5 var3 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int)) (or (not (and (inv_main86 var4 var7 var2 var1 0 var8 var9 var5 var3 var0) (= var6 0))) (inv_main92 var4 var7 var2 var1 var6 var9 var5 var3 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int)) (or (not (and (inv_main86 var5 var8 var3 var2 var7 1 var9 var6 var4 var0) (and (not (= var7 0)) (= 0 var1)))) (inv_main92 var5 var8 var3 var2 var7 var9 var6 var4 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int)) (or (not (and (inv_main92 var4 var7 var2 var1 var6 0 var5 var3 var0) (= var8 0))) (inv_main98 var4 var7 var2 var1 var6 var8 var3 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int)) (or (not (and (inv_main92 var4 var6 var2 var1 var5 var8 1 var3 var0) (and (not (= var8 0)) (= 0 var7)))) (inv_main98 var4 var6 var2 var1 var5 var8 var3 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int)) (or (not (and (inv_main98 var4 var6 var2 var1 var5 var7 0 var0) (= var3 0))) (inv_main31 var4 var6 var2 var1 var5 var7 var3))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int)) (or (not (and (inv_main98 var3 var6 var1 var0 var5 var7 var2 1) (and (not (= var2 0)) (= 0 var4)))) (inv_main31 var3 var6 var1 var0 var5 var7 var2))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int) (var14 Int)) (or (not (and (inv_main31 var5 var7 var3 var2 var14 var9 var4) (and (and (and (and (and (and (and (and (and (not (= var7 0)) (not (= var5 0))) (not (= var1 0))) (= 1 var11)) (= 1 var10)) (= 0 var13)) (= 0 var8)) (= 0 var0)) (= 0 var12)) (= 0 var6)))) (inv_main50 var5 var11 var7 var10 var3 var2 var14 var9 var4))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int) (var14 Int)) (or (not (and (inv_main31 var6 0 var4 var3 var12 var10 var5) (and (and (and (and (and (and (and (and (and (not (= var6 0)) (not (= var2 0))) (= var9 0)) (= 1 var11)) (= 0 var8)) (= 0 var13)) (= 0 var7)) (= 0 var0)) (= 0 var14)) (= 0 var1)))) (inv_main50 var6 var11 var9 var8 var4 var3 var12 var10 var5))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int) (var14 Int)) (or (not (and (inv_main31 0 var8 var3 var2 var14 var9 var4) (and (and (and (and (and (and (and (and (and (not (= var8 0)) (not (= var1 0))) (= var5 0)) (= 0 var11)) (= 1 var7)) (= 0 var0)) (= 0 var12)) (= 0 var10)) (= 0 var6)) (= 0 var13)))) (inv_main50 var5 var11 var8 var7 var3 var2 var14 var9 var4))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int) (var14 Int)) (or (not (and (inv_main31 0 0 var3 var2 var13 var7 var4) (and (and (and (and (and (and (and (and (and (not (= var1 0)) (= var6 0)) (= var5 0)) (= 0 var8)) (= 0 var10)) (= 0 var9)) (= 0 var0)) (= 0 var14)) (= 0 var11)) (= 0 var12)))) (inv_main50 var5 var8 var6 var10 var3 var2 var13 var7 var4))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int)) (or (not (and (inv_main50 var3 var11 var6 var8 var1 var0 var10 var7 var2) (and (and (and (and (and (and (not (= var0 0)) (not (= var1 0))) (= 1 var5)) (= 1 var13)) (= var12 0)) (= var4 0)) (= var9 0)))) (inv_main56 var3 var11 var6 var8 var1 var5 var0 var13 var10 var7 var2))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int)) (or (not (and (inv_main50 var4 var12 var6 var8 var2 0 var10 var7 var3) (and (and (and (and (and (and (not (= var2 0)) (= var1 0)) (= 1 var0)) (= var11 0)) (= var13 0)) (= var5 0)) (= var9 0)))) (inv_main56 var4 var12 var6 var8 var2 var0 var1 var11 var10 var7 var3))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int)) (or (not (and (inv_main50 var3 var12 var5 var8 0 var0 var11 var7 var2) (and (and (and (and (and (and (not (= var0 0)) (= var1 0)) (= 1 var9)) (= var6 0)) (= var13 0)) (= var4 0)) (= var10 0)))) (inv_main56 var3 var12 var5 var8 var1 var6 var0 var9 var11 var7 var2))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int)) (or (not (and (inv_main50 var3 var12 var5 var8 0 0 var10 var7 var2) (and (and (and (and (and (and (= var0 0) (= var1 0)) (= var6 0)) (= var11 0)) (= var13 0)) (= var4 0)) (= var9 0)))) (inv_main56 var3 var12 var5 var8 var1 var6 var0 var11 var10 var7 var2))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int)) (or (not (and (inv_main56 var4 var13 var6 var9 var2 var7 var1 var12 var11 var8 var3) (and (and (and (and (not (= var8 0)) (not (= var11 0))) (= 1 var0)) (= 1 var5)) (= var10 0)))) (inv_main62 var4 var13 var6 var9 var2 var7 var1 var12 var11 var0 var8 var5 var3))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int)) (or (not (and (inv_main56 var4 var13 var6 var9 var2 var7 var1 var12 var11 0 var3) (and (and (and (and (not (= var11 0)) (= var8 0)) (= 1 var0)) (= var5 0)) (= var10 0)))) (inv_main62 var4 var13 var6 var9 var2 var7 var1 var12 var11 var0 var8 var5 var3))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int)) (or (not (and (inv_main56 var3 var12 var5 var8 var1 var6 var0 var11 0 var7 var2) (and (and (and (and (not (= var7 0)) (= var10 0)) (= 1 var4)) (= var13 0)) (= var9 0)))) (inv_main62 var3 var12 var5 var8 var1 var6 var0 var11 var10 var13 var7 var4 var2))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int)) (or (not (and (inv_main56 var3 var12 var5 var8 var1 var6 var0 var11 0 0 var2) (and (and (and (and (= var7 0) (= var10 0)) (= var13 0)) (= var4 0)) (= var9 0)))) (inv_main62 var3 var12 var5 var8 var1 var6 var0 var11 var10 var13 var7 var4 var2))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int)) (or (not (and (inv_main65 var3 var12 var5 var8 var1 var6 var0 var11 var10 var13 var7 var4 var2 var9) (not (or (= var12 1) (= var3 0))))) inv_main111)))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int)) (or (not (and (inv_main68 var5 var8 var0 var3 var10 var2 var9 var7 var11 var12 var6 var4 var1) (not (or (= var0 1) (= var8 0))))) inv_main111)))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int)) (or (not (and (inv_main74 var4 var7 var2 var9 var1 var8 var6 var10 var11 var5 var3 var0) (not (or (= var9 1) (= var2 0))))) inv_main111)))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int)) (or (not (and (inv_main80 var4 var7 var2 var1 var8 var6 var9 var10 var5 var3 var0) (not (or (= var8 1) (= var1 0))))) inv_main111)))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int)) (or (not (and (inv_main86 var4 var7 var2 var1 var6 var8 var9 var5 var3 var0) (not (or (= var8 1) (= var6 0))))) inv_main111)))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int)) (or (not (and (inv_main92 var4 var7 var2 var1 var6 var8 var5 var3 var0) (not (or (= var5 1) (= var8 0))))) inv_main111)))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int)) (or (not (and (inv_main98 var4 var6 var2 var1 var5 var7 var3 var0) (not (or (= var0 1) (= var3 0))))) inv_main111)))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int)) (inv_main31 var1 var5 var0 var6 var4 var2 var3)))
(assert (not inv_main111))
(check-sat)