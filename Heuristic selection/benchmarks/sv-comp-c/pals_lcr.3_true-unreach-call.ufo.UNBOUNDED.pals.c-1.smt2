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
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (forall ((var4 Int)) (forall ((var5 Int)) (forall ((var6 Int)) (forall ((var7 Int)) (forall ((var8 Int)) (forall ((var9 Int)) (forall ((var10 Int)) (forall ((var11 Int)) (forall ((var12 Int)) (forall ((var13 Int)) (forall ((var14 Int)) (forall ((var15 Int)) (forall ((var16 Int)) (forall ((var17 Int)) (forall ((var18 Int)) (forall ((var19 Int)) (forall ((var20 Int)) (forall ((var21 Int)) (forall ((var22 Int)) (forall ((var23 Int)) (forall ((var24 Int)) (or (not (inv_main213 var7 var14 var21 var10 var0 var22 var24 var6 var4 var1 var12 var5 var11 var2 var17 var19 var18 var23 var3 var9 var15 var13 var8 var16 var20 ) ) (inv_main113 var7 var14 var21 var10 var0 var22 var24 var6 var4 var1 var12 var5 var11 var2 var17 var19 var18 var23 var3 var9 var15 var13 var8 var16 var20 ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (forall ((var4 Int)) (forall ((var5 Int)) (forall ((var6 Int)) (forall ((var7 Int)) (forall ((var8 Int)) (forall ((var9 Int)) (forall ((var10 Int)) (forall ((var11 Int)) (forall ((var12 Int)) (forall ((var13 Int)) (forall ((var14 Int)) (forall ((var15 Int)) (forall ((var16 Int)) (forall ((var17 Int)) (forall ((var18 Int)) (forall ((var19 Int)) (forall ((var20 Int)) (forall ((var21 Int)) (forall ((var22 Int)) (forall ((var23 Int)) (forall ((var24 Int)) (forall ((var25 Int)) (or (not (and (inv_main214 var7 var14 var22 var10 var0 var23 var25 var6 var4 var1 var12 var5 var11 var2 var18 var20 var19 var24 var3 var9 var15 var13 var8 var16 var21 ) (and (<= 0 (+ var14 (- 3) ) ) (<= 0 (+ 1 (* (- 1) (+ (+ var25 var2 ) var15 ) ) ) ) ) ) ) (inv_main227 var7 var14 var22 var10 var0 var23 var25 var6 var4 var1 var12 var5 var11 var2 var18 var20 var19 var24 var3 var9 var15 var13 var8 var16 var21 var17 ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (forall ((var4 Int)) (forall ((var5 Int)) (forall ((var6 Int)) (forall ((var7 Int)) (forall ((var8 Int)) (forall ((var9 Int)) (forall ((var10 Int)) (forall ((var11 Int)) (forall ((var12 Int)) (forall ((var13 Int)) (forall ((var14 Int)) (forall ((var15 Int)) (forall ((var16 Int)) (forall ((var17 Int)) (forall ((var18 Int)) (forall ((var19 Int)) (forall ((var20 Int)) (forall ((var21 Int)) (forall ((var22 Int)) (forall ((var23 Int)) (forall ((var24 Int)) (forall ((var25 Int)) (or (not (and (inv_main214 var7 var14 var22 var10 var0 var23 var25 var6 var4 var1 var12 var5 var11 var2 var18 var20 var19 var24 var3 var9 var15 var13 var8 var16 var21 ) (and (= (+ (+ var25 var2 ) var15 ) 0 ) (and (not (<= 0 (+ var14 (- 3) ) ) ) (<= 0 (+ 1 (* (- 1) (+ (+ var25 var2 ) var15 ) ) ) ) ) ) ) ) (inv_main227 var7 var14 var22 var10 var0 var23 var25 var6 var4 var1 var12 var5 var11 var2 var18 var20 var19 var24 var3 var9 var15 var13 var8 var16 var21 var17 ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (forall ((var4 Int)) (forall ((var5 Int)) (forall ((var6 Int)) (forall ((var7 Int)) (forall ((var8 Int)) (forall ((var9 Int)) (forall ((var10 Int)) (forall ((var11 Int)) (forall ((var12 Int)) (forall ((var13 Int)) (forall ((var14 Int)) (forall ((var15 Int)) (forall ((var16 Int)) (forall ((var17 Int)) (forall ((var18 Int)) (forall ((var19 Int)) (forall ((var20 Int)) (forall ((var21 Int)) (forall ((var22 Int)) (forall ((var23 Int)) (forall ((var24 Int)) (or (not (and (inv_main214 var7 var14 var21 var10 var0 var22 var24 var6 var4 var1 var12 var5 var11 var2 var17 var19 var18 var23 var3 var9 var15 var13 var8 var16 var20 ) (not (<= 0 (+ 1 (* (- 1) (+ (+ var24 var2 ) var15 ) ) ) ) ) ) ) (inv_main213 var7 var14 var21 var10 var0 var22 var24 var6 var4 var1 var12 var5 var11 var2 var17 var19 var18 var23 var3 var9 var15 var13 var8 0 var20 ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (forall ((var4 Int)) (forall ((var5 Int)) (forall ((var6 Int)) (forall ((var7 Int)) (forall ((var8 Int)) (forall ((var9 Int)) (forall ((var10 Int)) (forall ((var11 Int)) (forall ((var12 Int)) (forall ((var13 Int)) (forall ((var14 Int)) (forall ((var15 Int)) (forall ((var16 Int)) (forall ((var17 Int)) (forall ((var18 Int)) (forall ((var19 Int)) (forall ((var20 Int)) (forall ((var21 Int)) (forall ((var22 Int)) (forall ((var23 Int)) (forall ((var24 Int)) (or (not (and (inv_main214 var7 var14 var21 var10 var0 var22 var24 var6 var4 var1 var12 var5 var11 var2 var17 var19 var18 var23 var3 var9 var15 var13 var8 var16 var20 ) (and (not (= (+ (+ var24 var2 ) var15 ) 0 ) ) (and (not (<= 0 (+ var14 (- 3) ) ) ) (<= 0 (+ 1 (* (- 1) (+ (+ var24 var2 ) var15 ) ) ) ) ) ) ) ) (inv_main213 var7 var14 var21 var10 var0 var22 var24 var6 var4 var1 var12 var5 var11 var2 var17 var19 var18 var23 var3 var9 var15 var13 var8 0 var20 ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (forall ((var4 Int)) (forall ((var5 Int)) (forall ((var6 Int)) (forall ((var7 Int)) (forall ((var8 Int)) (forall ((var9 Int)) (forall ((var10 Int)) (forall ((var11 Int)) (forall ((var12 Int)) (forall ((var13 Int)) (forall ((var14 Int)) (forall ((var15 Int)) (forall ((var16 Int)) (forall ((var17 Int)) (forall ((var18 Int)) (forall ((var19 Int)) (forall ((var20 Int)) (forall ((var21 Int)) (forall ((var22 Int)) (forall ((var23 Int)) (forall ((var24 Int)) (forall ((var25 Int)) (or (not (and (inv_main227 var7 var14 var22 var10 var0 var23 var25 var6 var4 var1 var12 var5 var11 var2 var18 var20 var19 var24 var3 var9 var15 var13 var8 var16 var21 var17 ) (<= 0 (+ (+ 3 (* (- 1) var14 ) ) (- 1) ) ) ) ) (inv_main213 var7 var14 var22 var10 var0 var23 var25 var6 var4 var1 var12 var5 var11 var2 var18 var20 var19 var24 var3 var9 var15 var13 var8 1 var21 ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (forall ((var4 Int)) (forall ((var5 Int)) (forall ((var6 Int)) (forall ((var7 Int)) (forall ((var8 Int)) (forall ((var9 Int)) (forall ((var10 Int)) (forall ((var11 Int)) (forall ((var12 Int)) (forall ((var13 Int)) (forall ((var14 Int)) (forall ((var15 Int)) (forall ((var16 Int)) (forall ((var17 Int)) (forall ((var18 Int)) (forall ((var19 Int)) (forall ((var20 Int)) (forall ((var21 Int)) (forall ((var22 Int)) (forall ((var23 Int)) (forall ((var24 Int)) (forall ((var25 Int)) (or (not (and (inv_main227 var7 var14 var22 var10 var0 var23 var25 var6 var4 var1 var12 var5 var11 var2 var18 var20 var19 var24 var3 var9 var15 var13 var8 var16 var21 var17 ) (and (= (+ (+ var25 var2 ) var15 ) 1 ) (not (<= 0 (+ (+ 3 (* (- 1) var14 ) ) (- 1) ) ) ) ) ) ) (inv_main213 var7 var14 var22 var10 var0 var23 var25 var6 var4 var1 var12 var5 var11 var2 var18 var20 var19 var24 var3 var9 var15 var13 var8 1 var21 ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (forall ((var4 Int)) (forall ((var5 Int)) (forall ((var6 Int)) (forall ((var7 Int)) (forall ((var8 Int)) (forall ((var9 Int)) (forall ((var10 Int)) (forall ((var11 Int)) (forall ((var12 Int)) (forall ((var13 Int)) (forall ((var14 Int)) (forall ((var15 Int)) (forall ((var16 Int)) (forall ((var17 Int)) (forall ((var18 Int)) (forall ((var19 Int)) (forall ((var20 Int)) (forall ((var21 Int)) (forall ((var22 Int)) (forall ((var23 Int)) (forall ((var24 Int)) (forall ((var25 Int)) (or (not (and (inv_main227 var7 var14 var22 var10 var0 var23 var25 var6 var4 var1 var12 var5 var11 var2 var18 var20 var19 var24 var3 var9 var15 var13 var8 var16 var21 var17 ) (and (not (= (+ (+ var25 var2 ) var15 ) 1 ) ) (not (<= 0 (+ (+ 3 (* (- 1) var14 ) ) (- 1) ) ) ) ) ) ) (inv_main213 var7 var14 var22 var10 var0 var23 var25 var6 var4 var1 var12 var5 var11 var2 var18 var20 var19 var24 var3 var9 var15 var13 var8 0 var21 ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (forall ((var4 Int)) (forall ((var5 Int)) (forall ((var6 Int)) (forall ((var7 Int)) (forall ((var8 Int)) (forall ((var9 Int)) (forall ((var10 Int)) (forall ((var11 Int)) (forall ((var12 Int)) (forall ((var13 Int)) (forall ((var14 Int)) (forall ((var15 Int)) (forall ((var16 Int)) (forall ((var17 Int)) (forall ((var18 Int)) (forall ((var19 Int)) (forall ((var20 Int)) (forall ((var21 Int)) (forall ((var22 Int)) (forall ((var23 Int)) (forall ((var24 Int)) (forall ((var25 Int)) (forall ((var26 Int)) (forall ((var27 Int)) (forall ((var28 Int)) (forall ((var29 Int)) (forall ((var30 Int)) (forall ((var31 Int)) (forall ((var32 Int)) (forall ((var33 Int)) (forall ((var34 Int)) (forall ((var35 Int)) (forall ((var36 Int)) (forall ((var37 Int)) (or (not (and (inv_main4 var25 var30 var36 var26 var20 var17 var19 var5 var3 var21 var28 var24 var8 var22 var32 var14 var33 var18 var2 var27 var31 var10 var7 var12 var15 ) (and (not (= var1 var34 ) ) (and (not (= var11 var34 ) ) (and (not (= var11 var1 ) ) (and (= var16 0 ) (and (= var37 var34 ) (and (= var13 0 ) (and (<= 0 var34 ) (and (= var9 0 ) (and (= var35 var1 ) (and (= var23 0 ) (and (<= 0 var1 ) (and (= var6 0 ) (and (= var4 var11 ) (and (= var0 0 ) (and (<= 0 var11 ) (= var29 0 ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) (inv_main113 var25 var29 var36 var25 var25 var11 var0 var4 var6 var21 var25 var25 var1 var23 var35 var9 var33 var25 var25 var34 var13 var37 var16 0 0 ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (forall ((var4 Int)) (forall ((var5 Int)) (forall ((var6 Int)) (forall ((var7 Int)) (forall ((var8 Int)) (forall ((var9 Int)) (forall ((var10 Int)) (forall ((var11 Int)) (forall ((var12 Int)) (forall ((var13 Int)) (forall ((var14 Int)) (forall ((var15 Int)) (forall ((var16 Int)) (forall ((var17 Int)) (forall ((var18 Int)) (forall ((var19 Int)) (forall ((var20 Int)) (forall ((var21 Int)) (forall ((var22 Int)) (forall ((var23 Int)) (forall ((var24 Int)) (or (not (and (inv_main113 var7 var14 var21 var10 var0 var22 var24 var6 var4 var1 var12 var5 var11 var2 var17 var19 var18 var23 var3 var9 var15 var13 var8 var16 var20 ) (and (= var6 var7 ) (= var4 0 ) ) ) ) (inv_main146 var7 var14 var21 var10 var0 var22 var24 var6 1 var1 var12 var5 var11 var2 var17 var19 var18 var23 var3 var9 var15 var13 var8 var16 var20 ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (forall ((var4 Int)) (forall ((var5 Int)) (forall ((var6 Int)) (forall ((var7 Int)) (forall ((var8 Int)) (forall ((var9 Int)) (forall ((var10 Int)) (forall ((var11 Int)) (forall ((var12 Int)) (forall ((var13 Int)) (forall ((var14 Int)) (forall ((var15 Int)) (forall ((var16 Int)) (forall ((var17 Int)) (forall ((var18 Int)) (forall ((var19 Int)) (forall ((var20 Int)) (forall ((var21 Int)) (forall ((var22 Int)) (forall ((var23 Int)) (forall ((var24 Int)) (or (not (and (inv_main113 var7 var14 var21 var10 var0 var22 var24 var6 var4 var1 var12 var5 var11 var2 var17 var19 var18 var23 var3 var9 var15 var13 var8 var16 var20 ) (and (and (= var0 var7 ) (not (= var6 var7 ) ) ) (= var4 0 ) ) ) ) (inv_main146 var7 var14 var21 var10 var6 var22 var24 var6 1 var1 var12 var5 var11 var2 var17 var19 var18 var23 var3 var9 var15 var13 var8 var16 var20 ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (forall ((var4 Int)) (forall ((var5 Int)) (forall ((var6 Int)) (forall ((var7 Int)) (forall ((var8 Int)) (forall ((var9 Int)) (forall ((var10 Int)) (forall ((var11 Int)) (forall ((var12 Int)) (forall ((var13 Int)) (forall ((var14 Int)) (forall ((var15 Int)) (forall ((var16 Int)) (forall ((var17 Int)) (forall ((var18 Int)) (forall ((var19 Int)) (forall ((var20 Int)) (forall ((var21 Int)) (forall ((var22 Int)) (forall ((var23 Int)) (forall ((var24 Int)) (or (not (and (inv_main113 var7 var14 var21 var10 var0 var22 var24 var6 var4 var1 var12 var5 var11 var2 var17 var19 var18 var23 var3 var9 var15 var13 var8 var16 var20 ) (and (and (not (= var0 var7 ) ) (not (= var6 var7 ) ) ) (= var4 0 ) ) ) ) (inv_main146 var7 var14 var21 var10 var0 var22 var24 var6 1 var1 var12 var5 var11 var2 var17 var19 var18 var23 var3 var9 var15 var13 var8 var16 var20 ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (forall ((var4 Int)) (forall ((var5 Int)) (forall ((var6 Int)) (forall ((var7 Int)) (forall ((var8 Int)) (forall ((var9 Int)) (forall ((var10 Int)) (forall ((var11 Int)) (forall ((var12 Int)) (forall ((var13 Int)) (forall ((var14 Int)) (forall ((var15 Int)) (forall ((var16 Int)) (forall ((var17 Int)) (forall ((var18 Int)) (forall ((var19 Int)) (forall ((var20 Int)) (forall ((var21 Int)) (forall ((var22 Int)) (forall ((var23 Int)) (forall ((var24 Int)) (or (not (and (inv_main113 var7 var14 var21 var10 var0 var22 var24 var6 var4 var1 var12 var5 var11 var2 var17 var19 var18 var23 var3 var9 var15 var13 var8 var16 var20 ) (and (= var23 var7 ) (not (= var4 0 ) ) ) ) ) (inv_main146 var7 (+ var14 1 ) var21 var10 var0 var22 var24 var6 0 var1 var12 var5 var11 var2 var17 var19 var18 var7 var3 var9 var15 var13 var8 var16 var20 ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (forall ((var4 Int)) (forall ((var5 Int)) (forall ((var6 Int)) (forall ((var7 Int)) (forall ((var8 Int)) (forall ((var9 Int)) (forall ((var10 Int)) (forall ((var11 Int)) (forall ((var12 Int)) (forall ((var13 Int)) (forall ((var14 Int)) (forall ((var15 Int)) (forall ((var16 Int)) (forall ((var17 Int)) (forall ((var18 Int)) (forall ((var19 Int)) (forall ((var20 Int)) (forall ((var21 Int)) (forall ((var22 Int)) (forall ((var23 Int)) (forall ((var24 Int)) (or (not (and (inv_main113 var7 var14 var21 var10 var0 var22 var24 var6 var4 var1 var12 var5 var11 var2 var17 var19 var18 var23 var3 var9 var15 var13 var8 var16 var20 ) (and (<= 0 (+ (+ var23 (* (- 1) var22 ) ) (- 1) ) ) (and (not (= var23 var7 ) ) (not (= var4 0 ) ) ) ) ) ) (inv_main146 var7 (+ var14 1 ) var21 var10 var0 var22 var24 var23 0 var1 var12 var5 var11 var2 var17 var19 var18 var7 var3 var9 var15 var13 var8 var16 var20 ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (forall ((var4 Int)) (forall ((var5 Int)) (forall ((var6 Int)) (forall ((var7 Int)) (forall ((var8 Int)) (forall ((var9 Int)) (forall ((var10 Int)) (forall ((var11 Int)) (forall ((var12 Int)) (forall ((var13 Int)) (forall ((var14 Int)) (forall ((var15 Int)) (forall ((var16 Int)) (forall ((var17 Int)) (forall ((var18 Int)) (forall ((var19 Int)) (forall ((var20 Int)) (forall ((var21 Int)) (forall ((var22 Int)) (forall ((var23 Int)) (forall ((var24 Int)) (or (not (and (inv_main113 var7 var14 var21 var10 var0 var22 var24 var6 var4 var1 var12 var5 var11 var2 var17 var19 var18 var23 var3 var9 var15 var13 var8 var16 var20 ) (and (= var23 var22 ) (and (not (<= 0 (+ (+ var23 (* (- 1) var22 ) ) (- 1) ) ) ) (and (not (= var23 var7 ) ) (not (= var4 0 ) ) ) ) ) ) ) (inv_main146 var7 (+ var14 1 ) var21 var10 var0 var22 1 var6 0 var1 var12 var5 var11 var2 var17 var19 var18 var7 var3 var9 var15 var13 var8 var16 var20 ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (forall ((var4 Int)) (forall ((var5 Int)) (forall ((var6 Int)) (forall ((var7 Int)) (forall ((var8 Int)) (forall ((var9 Int)) (forall ((var10 Int)) (forall ((var11 Int)) (forall ((var12 Int)) (forall ((var13 Int)) (forall ((var14 Int)) (forall ((var15 Int)) (forall ((var16 Int)) (forall ((var17 Int)) (forall ((var18 Int)) (forall ((var19 Int)) (forall ((var20 Int)) (forall ((var21 Int)) (forall ((var22 Int)) (forall ((var23 Int)) (forall ((var24 Int)) (or (not (and (inv_main113 var7 var14 var21 var10 var0 var22 var24 var6 var4 var1 var12 var5 var11 var2 var17 var19 var18 var23 var3 var9 var15 var13 var8 var16 var20 ) (and (not (= var23 var22 ) ) (and (not (<= 0 (+ (+ var23 (* (- 1) var22 ) ) (- 1) ) ) ) (and (not (= var23 var7 ) ) (not (= var4 0 ) ) ) ) ) ) ) (inv_main146 var7 (+ var14 1 ) var21 var10 var0 var22 var24 var6 0 var1 var12 var5 var11 var2 var17 var19 var18 var7 var3 var9 var15 var13 var8 var16 var20 ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (forall ((var4 Int)) (forall ((var5 Int)) (forall ((var6 Int)) (forall ((var7 Int)) (forall ((var8 Int)) (forall ((var9 Int)) (forall ((var10 Int)) (forall ((var11 Int)) (forall ((var12 Int)) (forall ((var13 Int)) (forall ((var14 Int)) (forall ((var15 Int)) (forall ((var16 Int)) (forall ((var17 Int)) (forall ((var18 Int)) (forall ((var19 Int)) (forall ((var20 Int)) (forall ((var21 Int)) (forall ((var22 Int)) (forall ((var23 Int)) (forall ((var24 Int)) (or (not (and (inv_main146 var7 var14 var21 var10 var0 var22 var24 var6 var4 var1 var12 var5 var11 var2 var17 var19 var18 var23 var3 var9 var15 var13 var8 var16 var20 ) (and (= var17 var7 ) (= var19 0 ) ) ) ) (inv_main174 var7 var14 var21 var10 var0 var22 var24 var6 var4 var1 var12 var5 var11 var2 var17 1 var18 var23 var3 var9 var15 var13 var8 var16 var20 ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (forall ((var4 Int)) (forall ((var5 Int)) (forall ((var6 Int)) (forall ((var7 Int)) (forall ((var8 Int)) (forall ((var9 Int)) (forall ((var10 Int)) (forall ((var11 Int)) (forall ((var12 Int)) (forall ((var13 Int)) (forall ((var14 Int)) (forall ((var15 Int)) (forall ((var16 Int)) (forall ((var17 Int)) (forall ((var18 Int)) (forall ((var19 Int)) (forall ((var20 Int)) (forall ((var21 Int)) (forall ((var22 Int)) (forall ((var23 Int)) (forall ((var24 Int)) (or (not (and (inv_main146 var7 var14 var21 var10 var0 var22 var24 var6 var4 var1 var12 var5 var11 var2 var17 var19 var18 var23 var3 var9 var15 var13 var8 var16 var20 ) (and (and (= var5 var7 ) (not (= var17 var7 ) ) ) (= var19 0 ) ) ) ) (inv_main174 var7 var14 var21 var10 var0 var22 var24 var6 var4 var1 var12 var17 var11 var2 var17 1 var18 var23 var3 var9 var15 var13 var8 var16 var20 ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (forall ((var4 Int)) (forall ((var5 Int)) (forall ((var6 Int)) (forall ((var7 Int)) (forall ((var8 Int)) (forall ((var9 Int)) (forall ((var10 Int)) (forall ((var11 Int)) (forall ((var12 Int)) (forall ((var13 Int)) (forall ((var14 Int)) (forall ((var15 Int)) (forall ((var16 Int)) (forall ((var17 Int)) (forall ((var18 Int)) (forall ((var19 Int)) (forall ((var20 Int)) (forall ((var21 Int)) (forall ((var22 Int)) (forall ((var23 Int)) (forall ((var24 Int)) (or (not (and (inv_main146 var7 var14 var21 var10 var0 var22 var24 var6 var4 var1 var12 var5 var11 var2 var17 var19 var18 var23 var3 var9 var15 var13 var8 var16 var20 ) (and (and (not (= var5 var7 ) ) (not (= var17 var7 ) ) ) (= var19 0 ) ) ) ) (inv_main174 var7 var14 var21 var10 var0 var22 var24 var6 var4 var1 var12 var5 var11 var2 var17 1 var18 var23 var3 var9 var15 var13 var8 var16 var20 ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (forall ((var4 Int)) (forall ((var5 Int)) (forall ((var6 Int)) (forall ((var7 Int)) (forall ((var8 Int)) (forall ((var9 Int)) (forall ((var10 Int)) (forall ((var11 Int)) (forall ((var12 Int)) (forall ((var13 Int)) (forall ((var14 Int)) (forall ((var15 Int)) (forall ((var16 Int)) (forall ((var17 Int)) (forall ((var18 Int)) (forall ((var19 Int)) (forall ((var20 Int)) (forall ((var21 Int)) (forall ((var22 Int)) (forall ((var23 Int)) (forall ((var24 Int)) (or (not (and (inv_main146 var7 var14 var21 var10 var0 var22 var24 var6 var4 var1 var12 var5 var11 var2 var17 var19 var18 var23 var3 var9 var15 var13 var8 var16 var20 ) (and (= var10 var7 ) (not (= var19 0 ) ) ) ) ) (inv_main174 var7 var14 var21 var7 var0 var22 var24 var6 var4 var1 var12 var5 var11 var2 var17 0 var18 var23 var3 var9 var15 var13 var8 var16 var20 ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (forall ((var4 Int)) (forall ((var5 Int)) (forall ((var6 Int)) (forall ((var7 Int)) (forall ((var8 Int)) (forall ((var9 Int)) (forall ((var10 Int)) (forall ((var11 Int)) (forall ((var12 Int)) (forall ((var13 Int)) (forall ((var14 Int)) (forall ((var15 Int)) (forall ((var16 Int)) (forall ((var17 Int)) (forall ((var18 Int)) (forall ((var19 Int)) (forall ((var20 Int)) (forall ((var21 Int)) (forall ((var22 Int)) (forall ((var23 Int)) (forall ((var24 Int)) (or (not (and (inv_main146 var7 var14 var21 var10 var0 var22 var24 var6 var4 var1 var12 var5 var11 var2 var17 var19 var18 var23 var3 var9 var15 var13 var8 var16 var20 ) (and (<= 0 (+ (+ var10 (* (- 1) var11 ) ) (- 1) ) ) (and (not (= var10 var7 ) ) (not (= var19 0 ) ) ) ) ) ) (inv_main174 var7 var14 var21 var7 var0 var22 var24 var6 var4 var1 var12 var5 var11 var2 var10 0 var18 var23 var3 var9 var15 var13 var8 var16 var20 ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (forall ((var4 Int)) (forall ((var5 Int)) (forall ((var6 Int)) (forall ((var7 Int)) (forall ((var8 Int)) (forall ((var9 Int)) (forall ((var10 Int)) (forall ((var11 Int)) (forall ((var12 Int)) (forall ((var13 Int)) (forall ((var14 Int)) (forall ((var15 Int)) (forall ((var16 Int)) (forall ((var17 Int)) (forall ((var18 Int)) (forall ((var19 Int)) (forall ((var20 Int)) (forall ((var21 Int)) (forall ((var22 Int)) (forall ((var23 Int)) (forall ((var24 Int)) (or (not (and (inv_main146 var7 var14 var21 var10 var0 var22 var24 var6 var4 var1 var12 var5 var11 var2 var17 var19 var18 var23 var3 var9 var15 var13 var8 var16 var20 ) (and (= var10 var11 ) (and (not (<= 0 (+ (+ var10 (* (- 1) var11 ) ) (- 1) ) ) ) (and (not (= var10 var7 ) ) (not (= var19 0 ) ) ) ) ) ) ) (inv_main174 var7 var14 var21 var7 var0 var22 var24 var6 var4 var1 var12 var5 var11 1 var17 0 var18 var23 var3 var9 var15 var13 var8 var16 var20 ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (forall ((var4 Int)) (forall ((var5 Int)) (forall ((var6 Int)) (forall ((var7 Int)) (forall ((var8 Int)) (forall ((var9 Int)) (forall ((var10 Int)) (forall ((var11 Int)) (forall ((var12 Int)) (forall ((var13 Int)) (forall ((var14 Int)) (forall ((var15 Int)) (forall ((var16 Int)) (forall ((var17 Int)) (forall ((var18 Int)) (forall ((var19 Int)) (forall ((var20 Int)) (forall ((var21 Int)) (forall ((var22 Int)) (forall ((var23 Int)) (forall ((var24 Int)) (or (not (and (inv_main146 var7 var14 var21 var10 var0 var22 var24 var6 var4 var1 var12 var5 var11 var2 var17 var19 var18 var23 var3 var9 var15 var13 var8 var16 var20 ) (and (not (= var10 var11 ) ) (and (not (<= 0 (+ (+ var10 (* (- 1) var11 ) ) (- 1) ) ) ) (and (not (= var10 var7 ) ) (not (= var19 0 ) ) ) ) ) ) ) (inv_main174 var7 var14 var21 var7 var0 var22 var24 var6 var4 var1 var12 var5 var11 var2 var17 0 var18 var23 var3 var9 var15 var13 var8 var16 var20 ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (forall ((var4 Int)) (forall ((var5 Int)) (forall ((var6 Int)) (forall ((var7 Int)) (forall ((var8 Int)) (forall ((var9 Int)) (forall ((var10 Int)) (forall ((var11 Int)) (forall ((var12 Int)) (forall ((var13 Int)) (forall ((var14 Int)) (forall ((var15 Int)) (forall ((var16 Int)) (forall ((var17 Int)) (forall ((var18 Int)) (forall ((var19 Int)) (forall ((var20 Int)) (forall ((var21 Int)) (forall ((var22 Int)) (forall ((var23 Int)) (forall ((var24 Int)) (or (not (and (inv_main174 var7 var14 var21 var10 var0 var22 var24 var6 var4 var1 var12 var5 var11 var2 var17 var19 var18 var23 var3 var9 var15 var13 var8 var16 var20 ) (and (= var13 var7 ) (= var8 0 ) ) ) ) (inv_main214 var7 var14 var21 var0 var7 var22 var24 var6 var4 var1 var5 var7 var11 var2 var17 var19 var18 var3 var7 var9 var15 var13 1 var16 var20 ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (forall ((var4 Int)) (forall ((var5 Int)) (forall ((var6 Int)) (forall ((var7 Int)) (forall ((var8 Int)) (forall ((var9 Int)) (forall ((var10 Int)) (forall ((var11 Int)) (forall ((var12 Int)) (forall ((var13 Int)) (forall ((var14 Int)) (forall ((var15 Int)) (forall ((var16 Int)) (forall ((var17 Int)) (forall ((var18 Int)) (forall ((var19 Int)) (forall ((var20 Int)) (forall ((var21 Int)) (forall ((var22 Int)) (forall ((var23 Int)) (forall ((var24 Int)) (or (not (and (inv_main174 var7 var14 var21 var10 var0 var22 var24 var6 var4 var1 var12 var5 var11 var2 var17 var19 var18 var23 var3 var9 var15 var13 var8 var16 var20 ) (and (and (= var3 var7 ) (not (= var13 var7 ) ) ) (= var8 0 ) ) ) ) (inv_main214 var7 var14 var21 var0 var7 var22 var24 var6 var4 var1 var5 var7 var11 var2 var17 var19 var18 var13 var7 var9 var15 var13 1 var16 var20 ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (forall ((var4 Int)) (forall ((var5 Int)) (forall ((var6 Int)) (forall ((var7 Int)) (forall ((var8 Int)) (forall ((var9 Int)) (forall ((var10 Int)) (forall ((var11 Int)) (forall ((var12 Int)) (forall ((var13 Int)) (forall ((var14 Int)) (forall ((var15 Int)) (forall ((var16 Int)) (forall ((var17 Int)) (forall ((var18 Int)) (forall ((var19 Int)) (forall ((var20 Int)) (forall ((var21 Int)) (forall ((var22 Int)) (forall ((var23 Int)) (forall ((var24 Int)) (or (not (and (inv_main174 var7 var14 var21 var10 var0 var22 var24 var6 var4 var1 var12 var5 var11 var2 var17 var19 var18 var23 var3 var9 var15 var13 var8 var16 var20 ) (and (and (not (= var3 var7 ) ) (not (= var13 var7 ) ) ) (= var8 0 ) ) ) ) (inv_main214 var7 var14 var21 var0 var7 var22 var24 var6 var4 var1 var5 var7 var11 var2 var17 var19 var18 var3 var7 var9 var15 var13 1 var16 var20 ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (forall ((var4 Int)) (forall ((var5 Int)) (forall ((var6 Int)) (forall ((var7 Int)) (forall ((var8 Int)) (forall ((var9 Int)) (forall ((var10 Int)) (forall ((var11 Int)) (forall ((var12 Int)) (forall ((var13 Int)) (forall ((var14 Int)) (forall ((var15 Int)) (forall ((var16 Int)) (forall ((var17 Int)) (forall ((var18 Int)) (forall ((var19 Int)) (forall ((var20 Int)) (forall ((var21 Int)) (forall ((var22 Int)) (forall ((var23 Int)) (forall ((var24 Int)) (or (not (and (inv_main174 var7 var14 var21 var10 var0 var22 var24 var6 var4 var1 var12 var5 var11 var2 var17 var19 var18 var23 var3 var9 var15 var13 var8 var16 var20 ) (and (= var12 var7 ) (not (= var8 0 ) ) ) ) ) (inv_main214 var7 var14 var21 var0 var7 var22 var24 var6 var4 var1 var5 var7 var11 var2 var17 var19 var18 var3 var7 var9 var15 var13 0 var16 var20 ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (forall ((var4 Int)) (forall ((var5 Int)) (forall ((var6 Int)) (forall ((var7 Int)) (forall ((var8 Int)) (forall ((var9 Int)) (forall ((var10 Int)) (forall ((var11 Int)) (forall ((var12 Int)) (forall ((var13 Int)) (forall ((var14 Int)) (forall ((var15 Int)) (forall ((var16 Int)) (forall ((var17 Int)) (forall ((var18 Int)) (forall ((var19 Int)) (forall ((var20 Int)) (forall ((var21 Int)) (forall ((var22 Int)) (forall ((var23 Int)) (forall ((var24 Int)) (or (not (and (inv_main174 var7 var14 var21 var10 var0 var22 var24 var6 var4 var1 var12 var5 var11 var2 var17 var19 var18 var23 var3 var9 var15 var13 var8 var16 var20 ) (and (<= 0 (+ (+ var12 (* (- 1) var9 ) ) (- 1) ) ) (and (not (= var12 var7 ) ) (not (= var8 0 ) ) ) ) ) ) (inv_main214 var7 var14 var21 var0 var7 var22 var24 var6 var4 var1 var5 var7 var11 var2 var17 var19 var18 var3 var7 var9 var15 var12 0 var16 var20 ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (forall ((var4 Int)) (forall ((var5 Int)) (forall ((var6 Int)) (forall ((var7 Int)) (forall ((var8 Int)) (forall ((var9 Int)) (forall ((var10 Int)) (forall ((var11 Int)) (forall ((var12 Int)) (forall ((var13 Int)) (forall ((var14 Int)) (forall ((var15 Int)) (forall ((var16 Int)) (forall ((var17 Int)) (forall ((var18 Int)) (forall ((var19 Int)) (forall ((var20 Int)) (forall ((var21 Int)) (forall ((var22 Int)) (forall ((var23 Int)) (forall ((var24 Int)) (or (not (and (inv_main174 var7 var14 var21 var10 var0 var22 var24 var6 var4 var1 var12 var5 var11 var2 var17 var19 var18 var23 var3 var9 var15 var13 var8 var16 var20 ) (and (= var12 var9 ) (and (not (<= 0 (+ (+ var12 (* (- 1) var9 ) ) (- 1) ) ) ) (and (not (= var12 var7 ) ) (not (= var8 0 ) ) ) ) ) ) ) (inv_main214 var7 var14 var21 var0 var7 var22 var24 var6 var4 var1 var5 var7 var11 var2 var17 var19 var18 var3 var7 var9 1 var13 0 var16 var20 ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (forall ((var4 Int)) (forall ((var5 Int)) (forall ((var6 Int)) (forall ((var7 Int)) (forall ((var8 Int)) (forall ((var9 Int)) (forall ((var10 Int)) (forall ((var11 Int)) (forall ((var12 Int)) (forall ((var13 Int)) (forall ((var14 Int)) (forall ((var15 Int)) (forall ((var16 Int)) (forall ((var17 Int)) (forall ((var18 Int)) (forall ((var19 Int)) (forall ((var20 Int)) (forall ((var21 Int)) (forall ((var22 Int)) (forall ((var23 Int)) (forall ((var24 Int)) (or (not (and (inv_main174 var7 var14 var21 var10 var0 var22 var24 var6 var4 var1 var12 var5 var11 var2 var17 var19 var18 var23 var3 var9 var15 var13 var8 var16 var20 ) (and (not (= var12 var9 ) ) (and (not (<= 0 (+ (+ var12 (* (- 1) var9 ) ) (- 1) ) ) ) (and (not (= var12 var7 ) ) (not (= var8 0 ) ) ) ) ) ) ) (inv_main214 var7 var14 var21 var0 var7 var22 var24 var6 var4 var1 var5 var7 var11 var2 var17 var19 var18 var3 var7 var9 var15 var13 0 var16 var20 ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (forall ((var4 Int)) (forall ((var5 Int)) (forall ((var6 Int)) (forall ((var7 Int)) (forall ((var8 Int)) (forall ((var9 Int)) (forall ((var10 Int)) (forall ((var11 Int)) (forall ((var12 Int)) (forall ((var13 Int)) (forall ((var14 Int)) (forall ((var15 Int)) (forall ((var16 Int)) (forall ((var17 Int)) (forall ((var18 Int)) (forall ((var19 Int)) (forall ((var20 Int)) (forall ((var21 Int)) (forall ((var22 Int)) (forall ((var23 Int)) (forall ((var24 Int)) (not (and (inv_main213 var7 var14 var21 var10 var0 var22 var24 var6 var4 var1 var12 var5 var11 var2 var17 var19 var18 var23 var3 var9 var15 var13 var8 var16 var20 ) (= var16 0 ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) )
(check-sat)
