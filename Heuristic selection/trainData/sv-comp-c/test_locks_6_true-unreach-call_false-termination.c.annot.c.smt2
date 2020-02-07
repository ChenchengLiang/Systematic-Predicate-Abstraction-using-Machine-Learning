(set-logic HORN)
(set-info :source |
    Benchmark: C_VC
    Output by Princess (http://www.philipp.ruemmer.org/princess.shtml)
|)
(set-info :status unknown)
(declare-fun inv_main27 (Int Int Int Int Int Int) Bool)
(declare-fun inv_main45 (Int Int Int Int Int Int Int Int) Bool)
(declare-fun inv_main51 (Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun inv_main57 (Int Int Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun inv_main60 (Int Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun inv_main66 (Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun inv_main72 (Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun inv_main78 (Int Int Int Int Int Int Int Int) Bool)
(declare-fun inv_main84 (Int Int Int Int Int Int Int) Bool)
(declare-fun inv_main97 () Bool)
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int)) (or (not (and (inv_main57 0 var9 var6 var0 var2 var8 var1 var7 var5 var10 var11 var4) (= var3 0))) (inv_main60 var3 var6 var0 var2 var8 var1 var7 var5 var10 var11 var4))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int)) (or (not (and (inv_main57 var4 1 var7 var0 var3 var9 var2 var8 var6 var10 var11 var5) (and (not (= var4 0)) (= 0 var1)))) (inv_main60 var4 var7 var0 var3 var9 var2 var8 var6 var10 var11 var5))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int)) (or (not (and (inv_main60 var3 0 var0 var2 var8 var1 var7 var5 var9 var10 var4) (= var6 0))) (inv_main66 var3 var6 var2 var8 var1 var7 var5 var9 var10 var4))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int)) (or (not (and (inv_main60 var3 var6 1 var2 var8 var1 var7 var5 var9 var10 var4) (and (not (= var6 0)) (= 0 var0)))) (inv_main66 var3 var6 var2 var8 var1 var7 var5 var9 var10 var4))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int)) (or (not (and (inv_main66 var2 var5 0 var7 var0 var6 var4 var8 var9 var3) (= var1 0))) (inv_main72 var2 var5 var1 var0 var6 var4 var8 var9 var3))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int)) (or (not (and (inv_main66 var3 var6 var2 1 var1 var7 var5 var8 var9 var4) (and (not (= var2 0)) (= 0 var0)))) (inv_main72 var3 var6 var2 var1 var7 var5 var8 var9 var4))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int)) (or (not (and (inv_main72 var2 var5 var1 0 var6 var4 var7 var8 var3) (= var0 0))) (inv_main78 var2 var5 var1 var0 var4 var7 var8 var3))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int)) (or (not (and (inv_main72 var2 var5 var1 var0 1 var4 var7 var8 var3) (and (not (= var0 0)) (= 0 var6)))) (inv_main78 var2 var5 var1 var0 var4 var7 var8 var3))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int)) (or (not (and (inv_main78 var2 var5 var1 var0 0 var6 var7 var3) (= var4 0))) (inv_main84 var2 var5 var1 var0 var4 var7 var3))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int)) (or (not (and (inv_main78 var2 var6 var1 var0 var5 1 var7 var3) (and (not (= var5 0)) (= 0 var4)))) (inv_main84 var2 var6 var1 var0 var5 var7 var3))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int)) (or (not (and (inv_main84 var2 var5 var1 var0 var4 0 var3) (= var6 0))) (inv_main27 var2 var5 var1 var0 var4 var6))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int)) (or (not (and (inv_main84 var2 var4 var1 var0 var3 var5 1) (and (not (= var5 0)) (= 0 var6)))) (inv_main27 var2 var4 var1 var0 var3 var5))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int)) (or (not (and (inv_main27 var5 var8 var4 var3 var7 var11) (and (and (and (and (and (and (and (and (not (= var8 0)) (not (= var5 0))) (not (= var10 0))) (= 1 var6)) (= 1 var1)) (= 0 var2)) (= 0 var9)) (= 0 var0)) (= 0 var12)))) (inv_main45 var5 var6 var8 var1 var4 var3 var7 var11))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int)) (or (not (and (inv_main27 var5 0 var4 var3 var8 var12) (and (and (and (and (and (and (and (and (not (= var5 0)) (not (= var11 0))) (= var9 0)) (= 1 var2)) (= 0 var0)) (= 0 var10)) (= 0 var6)) (= 0 var1)) (= 0 var7)))) (inv_main45 var5 var2 var9 var0 var4 var3 var8 var12))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int)) (or (not (and (inv_main27 0 var8 var3 var2 var7 var12) (and (and (and (and (and (and (and (and (not (= var8 0)) (not (= var10 0))) (= var5 0)) (= 0 var4)) (= 1 var6)) (= 0 var11)) (= 0 var9)) (= 0 var1)) (= 0 var0)))) (inv_main45 var5 var4 var8 var6 var3 var2 var7 var12))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int)) (or (not (and (inv_main27 0 0 var4 var3 var7 var11) (and (and (and (and (and (and (and (and (not (= var10 0)) (= var8 0)) (= var6 0)) (= 0 var2)) (= 0 var1)) (= 0 var12)) (= 0 var0)) (= 0 var5)) (= 0 var9)))) (inv_main45 var6 var2 var8 var1 var4 var3 var7 var11))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int)) (or (not (and (inv_main45 var4 var9 var8 var1 var3 var2 var7 var11) (and (and (and (and (and (not (= var2 0)) (not (= var3 0))) (= 1 var0)) (= 1 var6)) (= var10 0)) (= var5 0)))) (inv_main51 var4 var9 var8 var1 var3 var0 var2 var6 var7 var11))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int)) (or (not (and (inv_main45 var4 var9 var7 var0 var3 0 var6 var11) (and (and (and (and (and (not (= var3 0)) (= var2 0)) (= 1 var1)) (= var8 0)) (= var10 0)) (= var5 0)))) (inv_main51 var4 var9 var7 var0 var3 var1 var2 var8 var6 var11))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int)) (or (not (and (inv_main45 var3 var8 var6 var0 0 var1 var5 var10) (and (and (and (and (and (not (= var1 0)) (= var2 0)) (= 1 var11)) (= var7 0)) (= var9 0)) (= var4 0)))) (inv_main51 var3 var8 var6 var0 var2 var7 var1 var11 var5 var10))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int)) (or (not (and (inv_main45 var3 var9 var6 var0 0 0 var5 var11) (and (and (and (and (and (= var1 0) (= var2 0)) (= var8 0)) (= var7 0)) (= var10 0)) (= var4 0)))) (inv_main51 var3 var9 var6 var0 var2 var8 var1 var7 var5 var11))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int)) (or (not (and (inv_main51 var5 var10 var7 var0 var4 var9 var3 var8 var6 var11) (and (and (and (not (= var11 0)) (not (= var6 0))) (= 1 var2)) (= 1 var1)))) (inv_main57 var5 var10 var7 var0 var4 var9 var3 var8 var6 var2 var11 var1))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int)) (or (not (and (inv_main51 var3 var9 var6 var0 var2 var8 var1 var7 var5 0) (and (and (and (not (= var5 0)) (= var11 0)) (= 1 var10)) (= var4 0)))) (inv_main57 var3 var9 var6 var0 var2 var8 var1 var7 var5 var10 var11 var4))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int)) (or (not (and (inv_main51 var3 var9 var6 var0 var2 var8 var1 var7 0 var11) (and (and (and (not (= var11 0)) (= var5 0)) (= 1 var4)) (= var10 0)))) (inv_main57 var3 var9 var6 var0 var2 var8 var1 var7 var5 var10 var11 var4))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int)) (or (not (and (inv_main51 var3 var9 var6 var0 var2 var8 var1 var7 0 0) (and (and (and (= var11 0) (= var5 0)) (= var10 0)) (= var4 0)))) (inv_main57 var3 var9 var6 var0 var2 var8 var1 var7 var5 var10 var11 var4))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int)) (or (not (and (inv_main57 var3 var9 var6 var0 var2 var8 var1 var7 var5 var10 var11 var4) (not (or (= var9 1) (= var3 0))))) inv_main97)))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int)) (or (not (and (inv_main60 var3 var6 var0 var2 var8 var1 var7 var5 var9 var10 var4) (not (or (= var0 1) (= var6 0))))) inv_main97)))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int)) (or (not (and (inv_main66 var2 var5 var1 var7 var0 var6 var4 var8 var9 var3) (not (or (= var7 1) (= var1 0))))) inv_main97)))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int)) (or (not (and (inv_main72 var2 var5 var1 var0 var6 var4 var7 var8 var3) (not (or (= var6 1) (= var0 0))))) inv_main97)))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int)) (or (not (and (inv_main78 var2 var5 var1 var0 var4 var6 var7 var3) (not (or (= var6 1) (= var4 0))))) inv_main97)))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int)) (or (not (and (inv_main84 var2 var5 var1 var0 var4 var6 var3) (not (or (= var3 1) (= var6 0))))) inv_main97)))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int)) (inv_main27 var5 var0 var2 var3 var4 var1)))
(assert (not inv_main97))
(check-sat)
