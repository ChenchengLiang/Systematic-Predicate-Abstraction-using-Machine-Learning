(set-logic HORN)
(set-info :source |
    Benchmark: C_VC
    Output by Princess (http://www.philipp.ruemmer.org/princess.shtml)
|)
(set-info :status unknown)
(declare-fun inv_main113 (Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun inv_main146 (Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun inv_main174 (Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun inv_main213 (Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun inv_main214 (Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun inv_main227 (Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun inv_main4 (Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int) Bool)
(assert (forall ((var0 Int)) (forall ((var1 Int)) (inv_main4 (- 1) 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 var0 var1 ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (forall ((var4 Int)) (forall ((var5 Int)) (forall ((var6 Int)) (forall ((var7 Int)) (forall ((var8 Int)) (forall ((var9 Int)) (forall ((var10 Int)) (forall ((var11 Int)) (forall ((var12 Int)) (forall ((var13 Int)) (forall ((var14 Int)) (forall ((var15 Int)) (forall ((var16 Int)) (forall ((var17 Int)) (forall ((var18 Int)) (forall ((var19 Int)) (forall ((var20 Int)) (forall ((var21 Int)) (forall ((var22 Int)) (forall ((var23 Int)) (forall ((var24 Int)) (or (not (inv_main213 var15 var21 var10 var0 var22 var24 var7 var5 var1 var12 var6 var11 var2 var17 var20 var19 var23 var4 var9 var16 var14 var8 var18 var13 var3 ) ) (inv_main113 var15 var21 var10 var0 var22 var24 var7 var5 var1 var12 var6 var11 var2 var17 var20 var19 var23 var4 var9 var16 var14 var8 var18 var13 var3 ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (forall ((var4 Int)) (forall ((var5 Int)) (forall ((var6 Int)) (forall ((var7 Int)) (forall ((var8 Int)) (forall ((var9 Int)) (forall ((var10 Int)) (forall ((var11 Int)) (forall ((var12 Int)) (forall ((var13 Int)) (forall ((var14 Int)) (forall ((var15 Int)) (forall ((var16 Int)) (forall ((var17 Int)) (forall ((var18 Int)) (forall ((var19 Int)) (forall ((var20 Int)) (forall ((var21 Int)) (forall ((var22 Int)) (forall ((var23 Int)) (forall ((var24 Int)) (forall ((var25 Int)) (or (not (and (inv_main214 var16 var22 var11 var0 var23 var25 var7 var5 var1 var13 var6 var12 var2 var18 var21 var20 var24 var4 var10 var17 var15 var9 var19 var14 var3 ) (and (<= 0 (+ var22 (- 3) ) ) (<= 0 (+ 1 (* (- 1) (+ (+ var7 var18 ) var15 ) ) ) ) ) ) ) (inv_main227 var16 var22 var11 var0 var23 var25 var7 var5 var1 var13 var6 var12 var2 var18 var21 var20 var24 var4 var10 var17 var15 var9 var19 var14 var3 var8 ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (forall ((var4 Int)) (forall ((var5 Int)) (forall ((var6 Int)) (forall ((var7 Int)) (forall ((var8 Int)) (forall ((var9 Int)) (forall ((var10 Int)) (forall ((var11 Int)) (forall ((var12 Int)) (forall ((var13 Int)) (forall ((var14 Int)) (forall ((var15 Int)) (forall ((var16 Int)) (forall ((var17 Int)) (forall ((var18 Int)) (forall ((var19 Int)) (forall ((var20 Int)) (forall ((var21 Int)) (forall ((var22 Int)) (forall ((var23 Int)) (forall ((var24 Int)) (forall ((var25 Int)) (or (not (and (inv_main214 var16 var22 var11 var0 var23 var25 var7 var5 var1 var13 var6 var12 var2 var18 var21 var20 var24 var4 var10 var17 var15 var9 var19 var14 var3 ) (and (= (+ (+ var7 var18 ) var15 ) 0 ) (and (not (<= 0 (+ var22 (- 3) ) ) ) (<= 0 (+ 1 (* (- 1) (+ (+ var7 var18 ) var15 ) ) ) ) ) ) ) ) (inv_main227 var16 var22 var11 var0 var23 var25 var7 var5 var1 var13 var6 var12 var2 var18 var21 var20 var24 var4 var10 var17 var15 var9 var19 var14 var3 var8 ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (forall ((var4 Int)) (forall ((var5 Int)) (forall ((var6 Int)) (forall ((var7 Int)) (forall ((var8 Int)) (forall ((var9 Int)) (forall ((var10 Int)) (forall ((var11 Int)) (forall ((var12 Int)) (forall ((var13 Int)) (forall ((var14 Int)) (forall ((var15 Int)) (forall ((var16 Int)) (forall ((var17 Int)) (forall ((var18 Int)) (forall ((var19 Int)) (forall ((var20 Int)) (forall ((var21 Int)) (forall ((var22 Int)) (forall ((var23 Int)) (forall ((var24 Int)) (or (not (and (inv_main214 var15 var21 var10 var0 var22 var24 var7 var5 var1 var12 var6 var11 var2 var17 var20 var19 var23 var4 var9 var16 var14 var8 var18 var13 var3 ) (not (<= 0 (+ 1 (* (- 1) (+ (+ var7 var17 ) var14 ) ) ) ) ) ) ) (inv_main213 var15 var21 var10 var0 var22 var24 var7 var5 var1 var12 var6 var11 var2 var17 var20 var19 var23 var4 var9 var16 var14 var8 var18 0 var3 ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (forall ((var4 Int)) (forall ((var5 Int)) (forall ((var6 Int)) (forall ((var7 Int)) (forall ((var8 Int)) (forall ((var9 Int)) (forall ((var10 Int)) (forall ((var11 Int)) (forall ((var12 Int)) (forall ((var13 Int)) (forall ((var14 Int)) (forall ((var15 Int)) (forall ((var16 Int)) (forall ((var17 Int)) (forall ((var18 Int)) (forall ((var19 Int)) (forall ((var20 Int)) (forall ((var21 Int)) (forall ((var22 Int)) (forall ((var23 Int)) (forall ((var24 Int)) (or (not (and (inv_main214 var15 var21 var10 var0 var22 var24 var7 var5 var1 var12 var6 var11 var2 var17 var20 var19 var23 var4 var9 var16 var14 var8 var18 var13 var3 ) (and (not (= (+ (+ var7 var17 ) var14 ) 0 ) ) (and (not (<= 0 (+ var21 (- 3) ) ) ) (<= 0 (+ 1 (* (- 1) (+ (+ var7 var17 ) var14 ) ) ) ) ) ) ) ) (inv_main213 var15 var21 var10 var0 var22 var24 var7 var5 var1 var12 var6 var11 var2 var17 var20 var19 var23 var4 var9 var16 var14 var8 var18 0 var3 ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (forall ((var4 Int)) (forall ((var5 Int)) (forall ((var6 Int)) (forall ((var7 Int)) (forall ((var8 Int)) (forall ((var9 Int)) (forall ((var10 Int)) (forall ((var11 Int)) (forall ((var12 Int)) (forall ((var13 Int)) (forall ((var14 Int)) (forall ((var15 Int)) (forall ((var16 Int)) (forall ((var17 Int)) (forall ((var18 Int)) (forall ((var19 Int)) (forall ((var20 Int)) (forall ((var21 Int)) (forall ((var22 Int)) (forall ((var23 Int)) (forall ((var24 Int)) (forall ((var25 Int)) (or (not (and (inv_main227 var16 var22 var11 var0 var23 var25 var7 var5 var1 var13 var6 var12 var2 var18 var21 var20 var24 var4 var10 var17 var15 var9 var19 var14 var3 var8 ) (<= 0 (+ (+ 3 (* (- 1) var22 ) ) (- 1) ) ) ) ) (inv_main213 var16 var22 var11 var0 var23 var25 var7 var5 var1 var13 var6 var12 var2 var18 var21 var20 var24 var4 var10 var17 var15 var9 var19 1 var3 ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (forall ((var4 Int)) (forall ((var5 Int)) (forall ((var6 Int)) (forall ((var7 Int)) (forall ((var8 Int)) (forall ((var9 Int)) (forall ((var10 Int)) (forall ((var11 Int)) (forall ((var12 Int)) (forall ((var13 Int)) (forall ((var14 Int)) (forall ((var15 Int)) (forall ((var16 Int)) (forall ((var17 Int)) (forall ((var18 Int)) (forall ((var19 Int)) (forall ((var20 Int)) (forall ((var21 Int)) (forall ((var22 Int)) (forall ((var23 Int)) (forall ((var24 Int)) (forall ((var25 Int)) (or (not (and (inv_main227 var16 var22 var11 var0 var23 var25 var7 var5 var1 var13 var6 var12 var2 var18 var21 var20 var24 var4 var10 var17 var15 var9 var19 var14 var3 var8 ) (and (= (+ (+ var7 var18 ) var15 ) 1 ) (not (<= 0 (+ (+ 3 (* (- 1) var22 ) ) (- 1) ) ) ) ) ) ) (inv_main213 var16 var22 var11 var0 var23 var25 var7 var5 var1 var13 var6 var12 var2 var18 var21 var20 var24 var4 var10 var17 var15 var9 var19 1 var3 ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (forall ((var4 Int)) (forall ((var5 Int)) (forall ((var6 Int)) (forall ((var7 Int)) (forall ((var8 Int)) (forall ((var9 Int)) (forall ((var10 Int)) (forall ((var11 Int)) (forall ((var12 Int)) (forall ((var13 Int)) (forall ((var14 Int)) (forall ((var15 Int)) (forall ((var16 Int)) (forall ((var17 Int)) (forall ((var18 Int)) (forall ((var19 Int)) (forall ((var20 Int)) (forall ((var21 Int)) (forall ((var22 Int)) (forall ((var23 Int)) (forall ((var24 Int)) (forall ((var25 Int)) (or (not (and (inv_main227 var16 var22 var11 var0 var23 var25 var7 var5 var1 var13 var6 var12 var2 var18 var21 var20 var24 var4 var10 var17 var15 var9 var19 var14 var3 var8 ) (and (not (= (+ (+ var7 var18 ) var15 ) 1 ) ) (not (<= 0 (+ (+ 3 (* (- 1) var22 ) ) (- 1) ) ) ) ) ) ) (inv_main213 var16 var22 var11 var0 var23 var25 var7 var5 var1 var13 var6 var12 var2 var18 var21 var20 var24 var4 var10 var17 var15 var9 var19 0 var3 ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (forall ((var4 Int)) (forall ((var5 Int)) (forall ((var6 Int)) (forall ((var7 Int)) (forall ((var8 Int)) (forall ((var9 Int)) (forall ((var10 Int)) (forall ((var11 Int)) (forall ((var12 Int)) (forall ((var13 Int)) (forall ((var14 Int)) (forall ((var15 Int)) (forall ((var16 Int)) (forall ((var17 Int)) (forall ((var18 Int)) (forall ((var19 Int)) (forall ((var20 Int)) (forall ((var21 Int)) (forall ((var22 Int)) (forall ((var23 Int)) (forall ((var24 Int)) (forall ((var25 Int)) (forall ((var26 Int)) (forall ((var27 Int)) (forall ((var28 Int)) (forall ((var29 Int)) (forall ((var30 Int)) (forall ((var31 Int)) (forall ((var32 Int)) (forall ((var33 Int)) (forall ((var34 Int)) (forall ((var35 Int)) (forall ((var36 Int)) (forall ((var37 Int)) (or (not (and (inv_main4 var29 var36 var26 var20 var17 var19 var5 var3 var21 var28 var25 var8 var22 var31 var14 var33 var18 var2 var27 var30 var11 var7 var32 var10 var23 ) (and (not (= var24 var13 ) ) (and (not (= var0 var13 ) ) (and (not (= var0 var24 ) ) (and (= var15 0 ) (and (= var16 var13 ) (and (= var37 0 ) (and (<= 0 var13 ) (and (= var34 0 ) (and (= var9 var24 ) (and (= var35 0 ) (and (<= 0 var24 ) (and (= var1 0 ) (and (= var6 var0 ) (and (= var4 0 ) (and (<= 0 var0 ) (= var12 0 ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) (inv_main113 var29 var12 var26 var29 var29 var0 var4 var6 var1 var28 var29 var29 var24 var35 var9 var34 var18 var29 var29 var13 var37 var16 var15 0 0 ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (forall ((var4 Int)) (forall ((var5 Int)) (forall ((var6 Int)) (forall ((var7 Int)) (forall ((var8 Int)) (forall ((var9 Int)) (forall ((var10 Int)) (forall ((var11 Int)) (forall ((var12 Int)) (forall ((var13 Int)) (forall ((var14 Int)) (forall ((var15 Int)) (forall ((var16 Int)) (forall ((var17 Int)) (forall ((var18 Int)) (forall ((var19 Int)) (forall ((var20 Int)) (forall ((var21 Int)) (forall ((var22 Int)) (forall ((var23 Int)) (forall ((var24 Int)) (or (not (and (inv_main113 var15 var21 var10 var0 var22 var24 var7 var5 var1 var12 var6 var11 var2 var17 var20 var19 var23 var4 var9 var16 var14 var8 var18 var13 var3 ) (and (= var5 var15 ) (= var1 0 ) ) ) ) (inv_main146 var15 var21 var10 var0 var22 var24 var7 var5 1 var12 var6 var11 var2 var17 var20 var19 var23 var4 var9 var16 var14 var8 var18 var13 var3 ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (forall ((var4 Int)) (forall ((var5 Int)) (forall ((var6 Int)) (forall ((var7 Int)) (forall ((var8 Int)) (forall ((var9 Int)) (forall ((var10 Int)) (forall ((var11 Int)) (forall ((var12 Int)) (forall ((var13 Int)) (forall ((var14 Int)) (forall ((var15 Int)) (forall ((var16 Int)) (forall ((var17 Int)) (forall ((var18 Int)) (forall ((var19 Int)) (forall ((var20 Int)) (forall ((var21 Int)) (forall ((var22 Int)) (forall ((var23 Int)) (forall ((var24 Int)) (or (not (and (inv_main113 var15 var21 var10 var0 var22 var24 var7 var5 var1 var12 var6 var11 var2 var17 var20 var19 var23 var4 var9 var16 var14 var8 var18 var13 var3 ) (and (and (= var22 var15 ) (not (= var5 var15 ) ) ) (= var1 0 ) ) ) ) (inv_main146 var15 var21 var10 var0 var5 var24 var7 var5 1 var12 var6 var11 var2 var17 var20 var19 var23 var4 var9 var16 var14 var8 var18 var13 var3 ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (forall ((var4 Int)) (forall ((var5 Int)) (forall ((var6 Int)) (forall ((var7 Int)) (forall ((var8 Int)) (forall ((var9 Int)) (forall ((var10 Int)) (forall ((var11 Int)) (forall ((var12 Int)) (forall ((var13 Int)) (forall ((var14 Int)) (forall ((var15 Int)) (forall ((var16 Int)) (forall ((var17 Int)) (forall ((var18 Int)) (forall ((var19 Int)) (forall ((var20 Int)) (forall ((var21 Int)) (forall ((var22 Int)) (forall ((var23 Int)) (forall ((var24 Int)) (or (not (and (inv_main113 var15 var21 var10 var0 var22 var24 var7 var5 var1 var12 var6 var11 var2 var17 var20 var19 var23 var4 var9 var16 var14 var8 var18 var13 var3 ) (and (and (not (= var22 var15 ) ) (not (= var5 var15 ) ) ) (= var1 0 ) ) ) ) (inv_main146 var15 var21 var10 var0 var22 var24 var7 var5 1 var12 var6 var11 var2 var17 var20 var19 var23 var4 var9 var16 var14 var8 var18 var13 var3 ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (forall ((var4 Int)) (forall ((var5 Int)) (forall ((var6 Int)) (forall ((var7 Int)) (forall ((var8 Int)) (forall ((var9 Int)) (forall ((var10 Int)) (forall ((var11 Int)) (forall ((var12 Int)) (forall ((var13 Int)) (forall ((var14 Int)) (forall ((var15 Int)) (forall ((var16 Int)) (forall ((var17 Int)) (forall ((var18 Int)) (forall ((var19 Int)) (forall ((var20 Int)) (forall ((var21 Int)) (forall ((var22 Int)) (forall ((var23 Int)) (forall ((var24 Int)) (or (not (and (inv_main113 var15 var21 var10 var0 var22 var24 var7 var5 var1 var12 var6 var11 var2 var17 var20 var19 var23 var4 var9 var16 var14 var8 var18 var13 var3 ) (and (= var4 var15 ) (not (= var1 0 ) ) ) ) ) (inv_main146 var15 (+ var21 1 ) var10 var0 var22 var24 var7 var5 0 var12 var6 var11 var2 var17 var20 var19 var23 var15 var9 var16 var14 var8 var18 var13 var3 ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (forall ((var4 Int)) (forall ((var5 Int)) (forall ((var6 Int)) (forall ((var7 Int)) (forall ((var8 Int)) (forall ((var9 Int)) (forall ((var10 Int)) (forall ((var11 Int)) (forall ((var12 Int)) (forall ((var13 Int)) (forall ((var14 Int)) (forall ((var15 Int)) (forall ((var16 Int)) (forall ((var17 Int)) (forall ((var18 Int)) (forall ((var19 Int)) (forall ((var20 Int)) (forall ((var21 Int)) (forall ((var22 Int)) (forall ((var23 Int)) (forall ((var24 Int)) (or (not (and (inv_main113 var15 var21 var10 var0 var22 var24 var7 var5 var1 var12 var6 var11 var2 var17 var20 var19 var23 var4 var9 var16 var14 var8 var18 var13 var3 ) (and (<= 0 (+ (+ var4 (* (- 1) var24 ) ) (- 1) ) ) (and (not (= var4 var15 ) ) (not (= var1 0 ) ) ) ) ) ) (inv_main146 var15 (+ var21 1 ) var10 var0 var22 var24 var7 var4 0 var12 var6 var11 var2 var17 var20 var19 var23 var15 var9 var16 var14 var8 var18 var13 var3 ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (forall ((var4 Int)) (forall ((var5 Int)) (forall ((var6 Int)) (forall ((var7 Int)) (forall ((var8 Int)) (forall ((var9 Int)) (forall ((var10 Int)) (forall ((var11 Int)) (forall ((var12 Int)) (forall ((var13 Int)) (forall ((var14 Int)) (forall ((var15 Int)) (forall ((var16 Int)) (forall ((var17 Int)) (forall ((var18 Int)) (forall ((var19 Int)) (forall ((var20 Int)) (forall ((var21 Int)) (forall ((var22 Int)) (forall ((var23 Int)) (forall ((var24 Int)) (or (not (and (inv_main113 var15 var21 var10 var0 var22 var24 var7 var5 var1 var12 var6 var11 var2 var17 var20 var19 var23 var4 var9 var16 var14 var8 var18 var13 var3 ) (and (= var4 var24 ) (and (not (<= 0 (+ (+ var4 (* (- 1) var24 ) ) (- 1) ) ) ) (and (not (= var4 var15 ) ) (not (= var1 0 ) ) ) ) ) ) ) (inv_main146 var15 (+ var21 1 ) var10 var0 var22 var24 1 var5 0 var12 var6 var11 var2 var17 var20 var19 var23 var15 var9 var16 var14 var8 var18 var13 var3 ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (forall ((var4 Int)) (forall ((var5 Int)) (forall ((var6 Int)) (forall ((var7 Int)) (forall ((var8 Int)) (forall ((var9 Int)) (forall ((var10 Int)) (forall ((var11 Int)) (forall ((var12 Int)) (forall ((var13 Int)) (forall ((var14 Int)) (forall ((var15 Int)) (forall ((var16 Int)) (forall ((var17 Int)) (forall ((var18 Int)) (forall ((var19 Int)) (forall ((var20 Int)) (forall ((var21 Int)) (forall ((var22 Int)) (forall ((var23 Int)) (forall ((var24 Int)) (or (not (and (inv_main113 var15 var21 var10 var0 var22 var24 var7 var5 var1 var12 var6 var11 var2 var17 var20 var19 var23 var4 var9 var16 var14 var8 var18 var13 var3 ) (and (not (= var4 var24 ) ) (and (not (<= 0 (+ (+ var4 (* (- 1) var24 ) ) (- 1) ) ) ) (and (not (= var4 var15 ) ) (not (= var1 0 ) ) ) ) ) ) ) (inv_main146 var15 (+ var21 1 ) var10 var0 var22 var24 var7 var4 0 var12 var6 var11 var2 var17 var20 var19 var23 var15 var9 var16 var14 var8 var18 var13 var3 ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (forall ((var4 Int)) (forall ((var5 Int)) (forall ((var6 Int)) (forall ((var7 Int)) (forall ((var8 Int)) (forall ((var9 Int)) (forall ((var10 Int)) (forall ((var11 Int)) (forall ((var12 Int)) (forall ((var13 Int)) (forall ((var14 Int)) (forall ((var15 Int)) (forall ((var16 Int)) (forall ((var17 Int)) (forall ((var18 Int)) (forall ((var19 Int)) (forall ((var20 Int)) (forall ((var21 Int)) (forall ((var22 Int)) (forall ((var23 Int)) (forall ((var24 Int)) (or (not (and (inv_main146 var15 var21 var10 var0 var22 var24 var7 var5 var1 var12 var6 var11 var2 var17 var20 var19 var23 var4 var9 var16 var14 var8 var18 var13 var3 ) (and (= var20 var15 ) (= var19 0 ) ) ) ) (inv_main174 var15 var21 var10 var0 var22 var24 var7 var5 var1 var12 var6 var11 var2 var17 var20 1 var23 var4 var9 var16 var14 var8 var18 var13 var3 ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (forall ((var4 Int)) (forall ((var5 Int)) (forall ((var6 Int)) (forall ((var7 Int)) (forall ((var8 Int)) (forall ((var9 Int)) (forall ((var10 Int)) (forall ((var11 Int)) (forall ((var12 Int)) (forall ((var13 Int)) (forall ((var14 Int)) (forall ((var15 Int)) (forall ((var16 Int)) (forall ((var17 Int)) (forall ((var18 Int)) (forall ((var19 Int)) (forall ((var20 Int)) (forall ((var21 Int)) (forall ((var22 Int)) (forall ((var23 Int)) (forall ((var24 Int)) (or (not (and (inv_main146 var15 var21 var10 var0 var22 var24 var7 var5 var1 var12 var6 var11 var2 var17 var20 var19 var23 var4 var9 var16 var14 var8 var18 var13 var3 ) (and (and (= var11 var15 ) (not (= var20 var15 ) ) ) (= var19 0 ) ) ) ) (inv_main174 var15 var21 var10 var0 var22 var24 var7 var5 var1 var12 var6 var20 var2 var17 var20 1 var23 var4 var9 var16 var14 var8 var18 var13 var3 ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (forall ((var4 Int)) (forall ((var5 Int)) (forall ((var6 Int)) (forall ((var7 Int)) (forall ((var8 Int)) (forall ((var9 Int)) (forall ((var10 Int)) (forall ((var11 Int)) (forall ((var12 Int)) (forall ((var13 Int)) (forall ((var14 Int)) (forall ((var15 Int)) (forall ((var16 Int)) (forall ((var17 Int)) (forall ((var18 Int)) (forall ((var19 Int)) (forall ((var20 Int)) (forall ((var21 Int)) (forall ((var22 Int)) (forall ((var23 Int)) (forall ((var24 Int)) (or (not (and (inv_main146 var15 var21 var10 var0 var22 var24 var7 var5 var1 var12 var6 var11 var2 var17 var20 var19 var23 var4 var9 var16 var14 var8 var18 var13 var3 ) (and (and (not (= var11 var15 ) ) (not (= var20 var15 ) ) ) (= var19 0 ) ) ) ) (inv_main174 var15 var21 var10 var0 var22 var24 var7 var5 var1 var12 var6 var11 var2 var17 var20 1 var23 var4 var9 var16 var14 var8 var18 var13 var3 ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (forall ((var4 Int)) (forall ((var5 Int)) (forall ((var6 Int)) (forall ((var7 Int)) (forall ((var8 Int)) (forall ((var9 Int)) (forall ((var10 Int)) (forall ((var11 Int)) (forall ((var12 Int)) (forall ((var13 Int)) (forall ((var14 Int)) (forall ((var15 Int)) (forall ((var16 Int)) (forall ((var17 Int)) (forall ((var18 Int)) (forall ((var19 Int)) (forall ((var20 Int)) (forall ((var21 Int)) (forall ((var22 Int)) (forall ((var23 Int)) (forall ((var24 Int)) (or (not (and (inv_main146 var15 var21 var10 var0 var22 var24 var7 var5 var1 var12 var6 var11 var2 var17 var20 var19 var23 var4 var9 var16 var14 var8 var18 var13 var3 ) (and (= var0 var15 ) (not (= var19 0 ) ) ) ) ) (inv_main174 var15 var21 var10 var15 var22 var24 var7 var5 var1 var12 var6 var11 var2 var17 var20 0 var23 var4 var9 var16 var14 var8 var18 var13 var3 ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (forall ((var4 Int)) (forall ((var5 Int)) (forall ((var6 Int)) (forall ((var7 Int)) (forall ((var8 Int)) (forall ((var9 Int)) (forall ((var10 Int)) (forall ((var11 Int)) (forall ((var12 Int)) (forall ((var13 Int)) (forall ((var14 Int)) (forall ((var15 Int)) (forall ((var16 Int)) (forall ((var17 Int)) (forall ((var18 Int)) (forall ((var19 Int)) (forall ((var20 Int)) (forall ((var21 Int)) (forall ((var22 Int)) (forall ((var23 Int)) (forall ((var24 Int)) (or (not (and (inv_main146 var15 var21 var10 var0 var22 var24 var7 var5 var1 var12 var6 var11 var2 var17 var20 var19 var23 var4 var9 var16 var14 var8 var18 var13 var3 ) (and (<= 0 (+ (+ var0 (* (- 1) var2 ) ) (- 1) ) ) (and (not (= var0 var15 ) ) (not (= var19 0 ) ) ) ) ) ) (inv_main174 var15 var21 var10 var15 var22 var24 var7 var5 var1 var12 var6 var11 var2 var17 var0 0 var23 var4 var9 var16 var14 var8 var18 var13 var3 ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (forall ((var4 Int)) (forall ((var5 Int)) (forall ((var6 Int)) (forall ((var7 Int)) (forall ((var8 Int)) (forall ((var9 Int)) (forall ((var10 Int)) (forall ((var11 Int)) (forall ((var12 Int)) (forall ((var13 Int)) (forall ((var14 Int)) (forall ((var15 Int)) (forall ((var16 Int)) (forall ((var17 Int)) (forall ((var18 Int)) (forall ((var19 Int)) (forall ((var20 Int)) (forall ((var21 Int)) (forall ((var22 Int)) (forall ((var23 Int)) (forall ((var24 Int)) (or (not (and (inv_main146 var15 var21 var10 var0 var22 var24 var7 var5 var1 var12 var6 var11 var2 var17 var20 var19 var23 var4 var9 var16 var14 var8 var18 var13 var3 ) (and (= var0 var2 ) (and (not (<= 0 (+ (+ var0 (* (- 1) var2 ) ) (- 1) ) ) ) (and (not (= var0 var15 ) ) (not (= var19 0 ) ) ) ) ) ) ) (inv_main174 var15 var21 var10 var15 var22 var24 var7 var5 var1 var12 var6 var11 var2 1 var20 0 var23 var4 var9 var16 var14 var8 var18 var13 var3 ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (forall ((var4 Int)) (forall ((var5 Int)) (forall ((var6 Int)) (forall ((var7 Int)) (forall ((var8 Int)) (forall ((var9 Int)) (forall ((var10 Int)) (forall ((var11 Int)) (forall ((var12 Int)) (forall ((var13 Int)) (forall ((var14 Int)) (forall ((var15 Int)) (forall ((var16 Int)) (forall ((var17 Int)) (forall ((var18 Int)) (forall ((var19 Int)) (forall ((var20 Int)) (forall ((var21 Int)) (forall ((var22 Int)) (forall ((var23 Int)) (forall ((var24 Int)) (or (not (and (inv_main146 var15 var21 var10 var0 var22 var24 var7 var5 var1 var12 var6 var11 var2 var17 var20 var19 var23 var4 var9 var16 var14 var8 var18 var13 var3 ) (and (not (= var0 var2 ) ) (and (not (<= 0 (+ (+ var0 (* (- 1) var2 ) ) (- 1) ) ) ) (and (not (= var0 var15 ) ) (not (= var19 0 ) ) ) ) ) ) ) (inv_main174 var15 var21 var10 var15 var22 var24 var7 var5 var1 var12 var6 var11 var2 var17 var20 0 var23 var4 var9 var16 var14 var8 var18 var13 var3 ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (forall ((var4 Int)) (forall ((var5 Int)) (forall ((var6 Int)) (forall ((var7 Int)) (forall ((var8 Int)) (forall ((var9 Int)) (forall ((var10 Int)) (forall ((var11 Int)) (forall ((var12 Int)) (forall ((var13 Int)) (forall ((var14 Int)) (forall ((var15 Int)) (forall ((var16 Int)) (forall ((var17 Int)) (forall ((var18 Int)) (forall ((var19 Int)) (forall ((var20 Int)) (forall ((var21 Int)) (forall ((var22 Int)) (forall ((var23 Int)) (forall ((var24 Int)) (or (not (and (inv_main174 var15 var21 var10 var0 var22 var24 var7 var5 var1 var12 var6 var11 var2 var17 var20 var19 var23 var4 var9 var16 var14 var8 var18 var13 var3 ) (and (= var8 var15 ) (= var18 0 ) ) ) ) (inv_main214 var15 var21 var10 var22 var15 var24 var7 var5 var1 var12 var11 var15 var2 var17 var20 var19 var23 var9 var15 var16 var14 var8 1 var13 var3 ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (forall ((var4 Int)) (forall ((var5 Int)) (forall ((var6 Int)) (forall ((var7 Int)) (forall ((var8 Int)) (forall ((var9 Int)) (forall ((var10 Int)) (forall ((var11 Int)) (forall ((var12 Int)) (forall ((var13 Int)) (forall ((var14 Int)) (forall ((var15 Int)) (forall ((var16 Int)) (forall ((var17 Int)) (forall ((var18 Int)) (forall ((var19 Int)) (forall ((var20 Int)) (forall ((var21 Int)) (forall ((var22 Int)) (forall ((var23 Int)) (forall ((var24 Int)) (or (not (and (inv_main174 var15 var21 var10 var0 var22 var24 var7 var5 var1 var12 var6 var11 var2 var17 var20 var19 var23 var4 var9 var16 var14 var8 var18 var13 var3 ) (and (and (= var9 var15 ) (not (= var8 var15 ) ) ) (= var18 0 ) ) ) ) (inv_main214 var15 var21 var10 var22 var15 var24 var7 var5 var1 var12 var11 var15 var2 var17 var20 var19 var23 var8 var15 var16 var14 var8 1 var13 var3 ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (forall ((var4 Int)) (forall ((var5 Int)) (forall ((var6 Int)) (forall ((var7 Int)) (forall ((var8 Int)) (forall ((var9 Int)) (forall ((var10 Int)) (forall ((var11 Int)) (forall ((var12 Int)) (forall ((var13 Int)) (forall ((var14 Int)) (forall ((var15 Int)) (forall ((var16 Int)) (forall ((var17 Int)) (forall ((var18 Int)) (forall ((var19 Int)) (forall ((var20 Int)) (forall ((var21 Int)) (forall ((var22 Int)) (forall ((var23 Int)) (forall ((var24 Int)) (or (not (and (inv_main174 var15 var21 var10 var0 var22 var24 var7 var5 var1 var12 var6 var11 var2 var17 var20 var19 var23 var4 var9 var16 var14 var8 var18 var13 var3 ) (and (and (not (= var9 var15 ) ) (not (= var8 var15 ) ) ) (= var18 0 ) ) ) ) (inv_main214 var15 var21 var10 var22 var15 var24 var7 var5 var1 var12 var11 var15 var2 var17 var20 var19 var23 var9 var15 var16 var14 var8 1 var13 var3 ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (forall ((var4 Int)) (forall ((var5 Int)) (forall ((var6 Int)) (forall ((var7 Int)) (forall ((var8 Int)) (forall ((var9 Int)) (forall ((var10 Int)) (forall ((var11 Int)) (forall ((var12 Int)) (forall ((var13 Int)) (forall ((var14 Int)) (forall ((var15 Int)) (forall ((var16 Int)) (forall ((var17 Int)) (forall ((var18 Int)) (forall ((var19 Int)) (forall ((var20 Int)) (forall ((var21 Int)) (forall ((var22 Int)) (forall ((var23 Int)) (forall ((var24 Int)) (or (not (and (inv_main174 var15 var21 var10 var0 var22 var24 var7 var5 var1 var12 var6 var11 var2 var17 var20 var19 var23 var4 var9 var16 var14 var8 var18 var13 var3 ) (and (= var6 var15 ) (not (= var18 0 ) ) ) ) ) (inv_main214 var15 var21 var10 var22 var15 var24 var7 var5 var1 var12 var11 var15 var2 var17 var20 var19 var23 var9 var15 var16 var14 var8 0 var13 var3 ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (forall ((var4 Int)) (forall ((var5 Int)) (forall ((var6 Int)) (forall ((var7 Int)) (forall ((var8 Int)) (forall ((var9 Int)) (forall ((var10 Int)) (forall ((var11 Int)) (forall ((var12 Int)) (forall ((var13 Int)) (forall ((var14 Int)) (forall ((var15 Int)) (forall ((var16 Int)) (forall ((var17 Int)) (forall ((var18 Int)) (forall ((var19 Int)) (forall ((var20 Int)) (forall ((var21 Int)) (forall ((var22 Int)) (forall ((var23 Int)) (forall ((var24 Int)) (or (not (and (inv_main174 var15 var21 var10 var0 var22 var24 var7 var5 var1 var12 var6 var11 var2 var17 var20 var19 var23 var4 var9 var16 var14 var8 var18 var13 var3 ) (and (<= 0 (+ (+ var6 (* (- 1) var16 ) ) (- 1) ) ) (and (not (= var6 var15 ) ) (not (= var18 0 ) ) ) ) ) ) (inv_main214 var15 var21 var10 var22 var15 var24 var7 var5 var1 var12 var11 var15 var2 var17 var20 var19 var23 var9 var15 var16 var14 var6 0 var13 var3 ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (forall ((var4 Int)) (forall ((var5 Int)) (forall ((var6 Int)) (forall ((var7 Int)) (forall ((var8 Int)) (forall ((var9 Int)) (forall ((var10 Int)) (forall ((var11 Int)) (forall ((var12 Int)) (forall ((var13 Int)) (forall ((var14 Int)) (forall ((var15 Int)) (forall ((var16 Int)) (forall ((var17 Int)) (forall ((var18 Int)) (forall ((var19 Int)) (forall ((var20 Int)) (forall ((var21 Int)) (forall ((var22 Int)) (forall ((var23 Int)) (forall ((var24 Int)) (or (not (and (inv_main174 var15 var21 var10 var0 var22 var24 var7 var5 var1 var12 var6 var11 var2 var17 var20 var19 var23 var4 var9 var16 var14 var8 var18 var13 var3 ) (and (= var6 var16 ) (and (not (<= 0 (+ (+ var6 (* (- 1) var16 ) ) (- 1) ) ) ) (and (not (= var6 var15 ) ) (not (= var18 0 ) ) ) ) ) ) ) (inv_main214 var15 var21 var10 var22 var15 var24 var7 var5 var1 var12 var11 var15 var2 var17 var20 var19 var23 var9 var15 var16 1 var8 0 var13 var3 ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (forall ((var4 Int)) (forall ((var5 Int)) (forall ((var6 Int)) (forall ((var7 Int)) (forall ((var8 Int)) (forall ((var9 Int)) (forall ((var10 Int)) (forall ((var11 Int)) (forall ((var12 Int)) (forall ((var13 Int)) (forall ((var14 Int)) (forall ((var15 Int)) (forall ((var16 Int)) (forall ((var17 Int)) (forall ((var18 Int)) (forall ((var19 Int)) (forall ((var20 Int)) (forall ((var21 Int)) (forall ((var22 Int)) (forall ((var23 Int)) (forall ((var24 Int)) (or (not (and (inv_main174 var15 var21 var10 var0 var22 var24 var7 var5 var1 var12 var6 var11 var2 var17 var20 var19 var23 var4 var9 var16 var14 var8 var18 var13 var3 ) (and (not (= var6 var16 ) ) (and (not (<= 0 (+ (+ var6 (* (- 1) var16 ) ) (- 1) ) ) ) (and (not (= var6 var15 ) ) (not (= var18 0 ) ) ) ) ) ) ) (inv_main214 var15 var21 var10 var22 var15 var24 var7 var5 var1 var12 var11 var15 var2 var17 var20 var19 var23 var9 var15 var16 var14 var8 0 var13 var3 ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (forall ((var4 Int)) (forall ((var5 Int)) (forall ((var6 Int)) (forall ((var7 Int)) (forall ((var8 Int)) (forall ((var9 Int)) (forall ((var10 Int)) (forall ((var11 Int)) (forall ((var12 Int)) (forall ((var13 Int)) (forall ((var14 Int)) (forall ((var15 Int)) (forall ((var16 Int)) (forall ((var17 Int)) (forall ((var18 Int)) (forall ((var19 Int)) (forall ((var20 Int)) (forall ((var21 Int)) (forall ((var22 Int)) (forall ((var23 Int)) (forall ((var24 Int)) (not (and (inv_main213 var15 var21 var10 var0 var22 var24 var7 var5 var1 var12 var6 var11 var2 var17 var20 var19 var23 var4 var9 var16 var14 var8 var18 var13 var3 ) (= var13 0 ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) )
(check-sat)