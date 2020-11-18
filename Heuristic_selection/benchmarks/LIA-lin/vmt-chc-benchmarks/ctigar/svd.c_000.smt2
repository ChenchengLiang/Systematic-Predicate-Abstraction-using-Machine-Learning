(set-logic HORN)

(declare-fun |state| ( Bool Bool Bool Bool Bool Bool Bool Bool Bool Int Int Int Int Int Int Int Int Int Int ) Bool)

(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Bool) (E Bool) (F Bool) (G Bool) (H Bool) (I Bool) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) ) 
    (=>
      (and
        (and (= H true) (not G) (not F) (not E) (not D) (not C) (not B) (not A) (not I))
      )
      (state I H G F E D B C A S R Q P O N M L K J)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Bool) (E Bool) (F Bool) (G Bool) (H Bool) (I Bool) (J Bool) (K Bool) (L Bool) (M Bool) (N Bool) (O Bool) (P Bool) (Q Bool) (R Bool) (S Int) (T Int) (U Int) (V Int) (W Int) (X Int) (Y Int) (Z Int) (A1 Int) (B1 Int) (C1 Int) (D1 Int) (E1 Int) (F1 Int) (G1 Int) (H1 Int) (I1 Int) (J1 Int) (K1 Int) (L1 Int) (M1 Int) ) 
    (=>
      (and
        (state I H G F E D B C A L1 J1 H1 F1 D1 B1 Z X V T)
        (let ((a!1 (and R
                (not Q)
                P
                O
                N
                M
                L
                K
                (not J)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= H1 G1)
                (= J1 I1)
                (= L1 K1)))
      (a!2 (and R
                (not Q)
                P
                O
                N
                M
                L
                (not K)
                J
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= H1 G1)
                (= J1 I1)
                (= L1 K1)))
      (a!3 (and R
                (not Q)
                P
                O
                N
                M
                L
                (not K)
                (not J)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= H1 G1)
                (= J1 I1)
                (= L1 K1)))
      (a!4 (and R
                (not Q)
                P
                O
                N
                M
                (not L)
                K
                J
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= H1 G1)
                (= J1 I1)
                (= L1 K1)))
      (a!5 (and R
                (not Q)
                P
                O
                N
                (not M)
                (not L)
                (not K)
                J
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= H1 G1)
                (= J1 I1)
                (= L1 K1)))
      (a!6 (and R
                (not Q)
                P
                O
                (not N)
                M
                L
                K
                J
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= H1 G1)
                (= J1 I1)
                (= L1 K1)))
      (a!7 (and R
                (not Q)
                P
                O
                (not N)
                M
                L
                K
                (not J)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= H1 G1)
                (= J1 I1)
                (= L1 K1)))
      (a!8 (and R
                (not Q)
                P
                O
                (not N)
                M
                L
                (not K)
                J
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= H1 G1)
                (= J1 I1)
                (= L1 K1)))
      (a!9 (and R
                (not Q)
                P
                O
                (not N)
                M
                L
                (not K)
                (not J)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= H1 G1)
                (= J1 I1)
                (= L1 K1)))
      (a!10 (and R
                 (not Q)
                 P
                 O
                 (not N)
                 (not M)
                 (not L)
                 (not K)
                 (not J)
                 (= T S)
                 (= V U)
                 (= X W)
                 (= Z Y)
                 (= B1 A1)
                 (= D1 C1)
                 (= F1 E1)
                 (= H1 G1)
                 (= J1 I1)
                 (= L1 K1)))
      (a!11 (and R
                 (not Q)
                 P
                 (not O)
                 N
                 M
                 L
                 (not K)
                 (not J)
                 (= T S)
                 (= V U)
                 (= X W)
                 (= Z Y)
                 (= B1 A1)
                 (= D1 C1)
                 (= F1 E1)
                 (= H1 G1)
                 (= J1 I1)
                 (= L1 K1)))
      (a!12 (and R
                 (not Q)
                 P
                 (not O)
                 N
                 M
                 (not L)
                 K
                 J
                 (= T S)
                 (= V U)
                 (= X W)
                 (= Z Y)
                 (= B1 A1)
                 (= D1 C1)
                 (= F1 E1)
                 (= H1 G1)
                 (= J1 I1)
                 (= L1 K1)))
      (a!13 (and R
                 (not Q)
                 P
                 (not O)
                 N
                 M
                 (not L)
                 K
                 (not J)
                 (= T S)
                 (= V U)
                 (= X W)
                 (= Z Y)
                 (= B1 A1)
                 (= D1 C1)
                 (= F1 E1)
                 (= H1 G1)
                 (= J1 I1)
                 (= L1 K1)))
      (a!14 (and R
                 (not Q)
                 P
                 (not O)
                 N
                 M
                 (not L)
                 (not K)
                 J
                 (= T S)
                 (= V U)
                 (= X W)
                 (= Z Y)
                 (= B1 A1)
                 (= D1 C1)
                 (= F1 E1)
                 (= H1 G1)
                 (= J1 I1)
                 (= L1 K1)))
      (a!15 (and R
                 (not Q)
                 P
                 (not O)
                 N
                 M
                 (not L)
                 (not K)
                 (not J)
                 (= T S)
                 (= V U)
                 (= X W)
                 (= Z Y)
                 (= B1 A1)
                 (= D1 C1)
                 (= F1 E1)
                 (= H1 G1)
                 (= J1 I1)
                 (= L1 K1)))
      (a!16 (and R
                 (not Q)
                 P
                 (not O)
                 N
                 (not M)
                 L
                 K
                 J
                 (= T S)
                 (= V U)
                 (= X W)
                 (= Z Y)
                 (= B1 A1)
                 (= D1 C1)
                 (= F1 E1)
                 (= H1 G1)
                 (= J1 I1)
                 (= L1 K1)))
      (a!17 (and R
                 (not Q)
                 P
                 (not O)
                 (not N)
                 (not M)
                 L
                 K
                 (not J)
                 (= T S)
                 (= V U)
                 (= X W)
                 (= Z Y)
                 (= B1 A1)
                 (= D1 C1)
                 (= F1 E1)
                 (= H1 G1)
                 (= J1 I1)
                 (= L1 K1)))
      (a!18 (and R
                 (not Q)
                 P
                 (not O)
                 (not N)
                 (not M)
                 L
                 (not K)
                 J
                 (= T S)
                 (= V U)
                 (= X W)
                 (= Z Y)
                 (= B1 A1)
                 (= D1 C1)
                 (= F1 E1)
                 (= H1 G1)
                 (= J1 I1)
                 (= L1 K1)))
      (a!19 (and R
                 (not Q)
                 P
                 (not O)
                 (not N)
                 (not M)
                 L
                 (not K)
                 (not J)
                 (= T S)
                 (= V U)
                 (= X W)
                 (= Z Y)
                 (= B1 A1)
                 (= D1 C1)
                 (= F1 E1)
                 (= H1 G1)
                 (= J1 I1)
                 (= L1 K1)))
      (a!20 (and R
                 (not Q)
                 P
                 (not O)
                 (not N)
                 (not M)
                 (not L)
                 K
                 J
                 (= T S)
                 (= V U)
                 (= X W)
                 (= Z Y)
                 (= B1 A1)
                 (= D1 C1)
                 (= F1 E1)
                 (= H1 G1)
                 (= J1 I1)
                 (= L1 K1)))
      (a!21 (and R
                 (not Q)
                 (not P)
                 O
                 N
                 (not M)
                 L
                 (not K)
                 (not J)
                 (= T S)
                 (= V U)
                 (= X W)
                 (= Z Y)
                 (= B1 A1)
                 (= D1 C1)
                 (= F1 E1)
                 (= H1 G1)
                 (= J1 I1)
                 (= L1 K1)))
      (a!22 (and R
                 (not Q)
                 (not P)
                 O
                 N
                 (not M)
                 (not L)
                 K
                 J
                 (= T S)
                 (= V U)
                 (= X W)
                 (= Z Y)
                 (= B1 A1)
                 (= D1 C1)
                 (= F1 E1)
                 (= H1 G1)
                 (= J1 I1)
                 (= L1 K1)))
      (a!23 (and R
                 (not Q)
                 (not P)
                 O
                 N
                 (not M)
                 (not L)
                 K
                 (not J)
                 (= T S)
                 (= V U)
                 (= X W)
                 (= Z Y)
                 (= B1 A1)
                 (= D1 C1)
                 (= F1 E1)
                 (= H1 G1)
                 (= J1 I1)
                 (= L1 K1)))
      (a!24 (and R
                 (not Q)
                 (not P)
                 O
                 N
                 (not M)
                 (not L)
                 (not K)
                 J
                 (= T S)
                 (= V U)
                 (= X W)
                 (= Z Y)
                 (= B1 A1)
                 (= D1 C1)
                 (= F1 E1)
                 (= H1 G1)
                 (= J1 I1)
                 (= L1 K1)))
      (a!25 (and R
                 (not Q)
                 (not P)
                 O
                 N
                 (not M)
                 (not L)
                 (not K)
                 (not J)
                 (= T S)
                 (= V U)
                 (= X W)
                 (= Z Y)
                 (= B1 A1)
                 (= D1 C1)
                 (= F1 E1)
                 (= H1 G1)
                 (= J1 I1)
                 (= L1 K1)))
      (a!26 (and R
                 (not Q)
                 (not P)
                 O
                 (not N)
                 M
                 L
                 K
                 J
                 (= T S)
                 (= V U)
                 (= X W)
                 (= Z Y)
                 (= B1 A1)
                 (= D1 C1)
                 (= F1 E1)
                 (= H1 G1)
                 (= J1 I1)
                 (= L1 K1)))
      (a!27 (and R
                 (not Q)
                 (not P)
                 (not O)
                 N
                 M
                 (not L)
                 (not K)
                 J
                 (= T S)
                 (= V U)
                 (= X W)
                 (= Z Y)
                 (= B1 A1)
                 (= D1 C1)
                 (= F1 E1)
                 (= H1 G1)
                 (= J1 I1)
                 (= L1 K1)))
      (a!28 (and R
                 (not Q)
                 (not P)
                 (not O)
                 N
                 M
                 (not L)
                 (not K)
                 (not J)
                 (= T S)
                 (= V U)
                 (= X W)
                 (= Z Y)
                 (= B1 A1)
                 (= D1 C1)
                 (= F1 E1)
                 (= H1 G1)
                 (= J1 I1)
                 (= L1 K1)))
      (a!29 (and R
                 (not Q)
                 (not P)
                 (not O)
                 N
                 (not M)
                 L
                 K
                 J
                 (= T S)
                 (= V U)
                 (= X W)
                 (= Z Y)
                 (= B1 A1)
                 (= D1 C1)
                 (= F1 E1)
                 (= H1 G1)
                 (= J1 I1)
                 (= L1 K1)))
      (a!30 (and R
                 (not Q)
                 (not P)
                 (not O)
                 N
                 (not M)
                 L
                 K
                 (not J)
                 (= T S)
                 (= V U)
                 (= X W)
                 (= Z Y)
                 (= B1 A1)
                 (= D1 C1)
                 (= F1 E1)
                 (= H1 G1)
                 (= J1 I1)
                 (= L1 K1)))
      (a!31 (and R
                 (not Q)
                 (not P)
                 (not O)
                 N
                 (not M)
                 L
                 (not K)
                 J
                 (= T S)
                 (= V U)
                 (= X W)
                 (= Z Y)
                 (= B1 A1)
                 (= D1 C1)
                 (= F1 E1)
                 (= H1 G1)
                 (= J1 I1)
                 (= L1 K1)))
      (a!32 (and R
                 (not Q)
                 (not P)
                 (not O)
                 N
                 (not M)
                 L
                 (not K)
                 (not J)
                 (= T S)
                 (= V U)
                 (= X W)
                 (= Z Y)
                 (= B1 A1)
                 (= D1 C1)
                 (= F1 E1)
                 (= H1 G1)
                 (= J1 I1)
                 (= L1 K1)))
      (a!33 (and R
                 (not Q)
                 (not P)
                 (not O)
                 N
                 (not M)
                 (not L)
                 K
                 J
                 (= T S)
                 (= V U)
                 (= X W)
                 (= Z Y)
                 (= B1 A1)
                 (= D1 C1)
                 (= F1 E1)
                 (= H1 G1)
                 (= J1 I1)
                 (= L1 K1)))
      (a!34 (and R
                 (not Q)
                 (not P)
                 (not O)
                 N
                 (not M)
                 (not L)
                 K
                 (not J)
                 (= T S)
                 (= V U)
                 (= X W)
                 (= Z Y)
                 (= B1 A1)
                 (= D1 C1)
                 (= F1 E1)
                 (= H1 G1)
                 (= J1 I1)
                 (= L1 K1)))
      (a!35 (and R
                 (not Q)
                 (not P)
                 (not O)
                 N
                 (not M)
                 (not L)
                 (not K)
                 J
                 (= T S)
                 (= V U)
                 (= X W)
                 (= Z Y)
                 (= B1 A1)
                 (= D1 C1)
                 (= F1 E1)
                 (= H1 G1)
                 (= J1 I1)
                 (= L1 K1)))
      (a!36 (and R
                 (not Q)
                 (not P)
                 (not O)
                 N
                 (not M)
                 (not L)
                 (not K)
                 (not J)
                 (= T S)
                 (= V U)
                 (= X W)
                 (= Z Y)
                 (= B1 A1)
                 (= D1 C1)
                 (= F1 E1)
                 (= H1 G1)
                 (= J1 I1)
                 (= L1 K1)))
      (a!37 (and R
                 (not Q)
                 (not P)
                 (not O)
                 (not N)
                 M
                 L
                 K
                 J
                 (= T S)
                 (= V U)
                 (= X W)
                 (= Z Y)
                 (= B1 A1)
                 (= D1 C1)
                 (= F1 E1)
                 (= H1 G1)
                 (= J1 I1)
                 (= L1 K1)))
      (a!38 (and R
                 (not Q)
                 (not P)
                 (not O)
                 (not N)
                 M
                 L
                 K
                 (not J)
                 (= T S)
                 (= V U)
                 (= X W)
                 (= Z Y)
                 (= B1 A1)
                 (= D1 C1)
                 (= F1 E1)
                 (= H1 G1)
                 (= J1 I1)
                 (= L1 K1)))
      (a!39 (and R
                 (not Q)
                 (not P)
                 (not O)
                 (not N)
                 M
                 L
                 (not K)
                 J
                 (= T S)
                 (= V U)
                 (= X W)
                 (= Z Y)
                 (= B1 A1)
                 (= D1 C1)
                 (= F1 E1)
                 (= H1 G1)
                 (= J1 I1)
                 (= L1 K1)))
      (a!40 (and R
                 (not Q)
                 (not P)
                 (not O)
                 (not N)
                 M
                 L
                 (not K)
                 (not J)
                 (= T S)
                 (= V U)
                 (= X W)
                 (= Z Y)
                 (= B1 A1)
                 (= D1 C1)
                 (= F1 E1)
                 (= H1 G1)
                 (= J1 I1)
                 (= L1 K1)))
      (a!41 (and R
                 (not Q)
                 (not P)
                 (not O)
                 (not N)
                 M
                 (not L)
                 K
                 J
                 (= T S)
                 (= V U)
                 (= X W)
                 (= Z Y)
                 (= B1 A1)
                 (= D1 C1)
                 (= F1 E1)
                 (= H1 G1)
                 (= J1 I1)
                 (= L1 K1)))
      (a!42 (and R
                 (not Q)
                 (not P)
                 (not O)
                 (not N)
                 M
                 (not L)
                 K
                 (not J)
                 (= T S)
                 (= V U)
                 (= X W)
                 (= Z Y)
                 (= B1 A1)
                 (= D1 C1)
                 (= F1 E1)
                 (= H1 G1)
                 (= J1 I1)
                 (= L1 K1)))
      (a!43 (and R
                 (not Q)
                 (not P)
                 (not O)
                 (not N)
                 M
                 (not L)
                 (not K)
                 J
                 (= T S)
                 (= V U)
                 (= X W)
                 (= Z Y)
                 (= B1 A1)
                 (= D1 C1)
                 (= F1 E1)
                 (= H1 G1)
                 (= J1 I1)
                 (= L1 K1)))
      (a!44 (and R
                 (not Q)
                 (not P)
                 (not O)
                 (not N)
                 M
                 (not L)
                 (not K)
                 (not J)
                 (= T S)
                 (= V U)
                 (= X W)
                 (= Z Y)
                 (= B1 A1)
                 (= D1 C1)
                 (= F1 E1)
                 (= H1 G1)
                 (= J1 I1)
                 (= L1 K1)))
      (a!45 (and R
                 (not Q)
                 (not P)
                 (not O)
                 (not N)
                 (not M)
                 L
                 (not K)
                 J
                 (= T S)
                 (= V U)
                 (= X W)
                 (= Z Y)
                 (= B1 A1)
                 (= D1 C1)
                 (= F1 E1)
                 (= H1 G1)
                 (= J1 I1)
                 (= L1 K1)))
      (a!46 (and R
                 (not Q)
                 (not P)
                 (not O)
                 (not N)
                 (not M)
                 (not L)
                 K
                 J
                 (= T S)
                 (= V U)
                 (= X W)
                 (= Z Y)
                 (= B1 A1)
                 (= D1 C1)
                 (= F1 E1)
                 (= H1 G1)
                 (= J1 I1)
                 (= L1 K1)))
      (a!47 (and R
                 (not Q)
                 (not P)
                 (not O)
                 (not N)
                 (not M)
                 (not L)
                 K
                 (not J)
                 (= T S)
                 (= V U)
                 (= X W)
                 (= Z Y)
                 (= B1 A1)
                 (= D1 C1)
                 (= F1 E1)
                 (= H1 G1)
                 (= J1 I1)
                 (= L1 K1)))
      (a!48 (and R
                 (not Q)
                 (not P)
                 (not O)
                 (not N)
                 (not M)
                 (not L)
                 (not K)
                 J
                 (= T S)
                 (= V U)
                 (= X W)
                 (= Z Y)
                 (= B1 A1)
                 (= D1 C1)
                 (= F1 E1)
                 (= H1 G1)
                 (= J1 I1)
                 (= L1 K1)))
      (a!49 (and R
                 (not Q)
                 (not P)
                 (not O)
                 (not N)
                 (not M)
                 (not L)
                 (not K)
                 (not J)
                 (= T S)
                 (= V U)
                 (= X W)
                 (= Z Y)
                 (= B1 A1)
                 (= D1 C1)
                 (= F1 E1)
                 (= H1 G1)
                 (= J1 I1)
                 (= L1 K1)))
      (a!50 (and (not R)
                 Q
                 P
                 O
                 N
                 (not M)
                 (not L)
                 (not K)
                 J
                 (= T S)
                 (= V U)
                 (= X W)
                 (= Z Y)
                 (= B1 A1)
                 (= D1 C1)
                 (= F1 E1)
                 (= H1 G1)
                 (= J1 I1)
                 (= L1 K1)))
      (a!51 (and (not R)
                 Q
                 P
                 O
                 N
                 (not M)
                 (not L)
                 (not K)
                 (not J)
                 (= T S)
                 (= V U)
                 (= X W)
                 (= Z Y)
                 (= B1 A1)
                 (= D1 C1)
                 (= F1 E1)
                 (= H1 G1)
                 (= J1 I1)
                 (= L1 K1)))
      (a!52 (and (not R)
                 Q
                 P
                 O
                 (not N)
                 M
                 L
                 K
                 J
                 (= T S)
                 (= V U)
                 (= X W)
                 (= Z Y)
                 (= B1 A1)
                 (= D1 C1)
                 (= F1 E1)
                 (= H1 G1)
                 (= J1 I1)
                 (= L1 K1)))
      (a!53 (and (not R)
                 Q
                 P
                 O
                 (not N)
                 M
                 L
                 K
                 (not J)
                 (= T S)
                 (= V U)
                 (= X W)
                 (= Z Y)
                 (= B1 A1)
                 (= D1 C1)
                 (= F1 E1)
                 (= H1 G1)
                 (= J1 I1)
                 (= L1 K1)))
      (a!54 (and (not R)
                 Q
                 P
                 O
                 (not N)
                 (not M)
                 (not L)
                 (not K)
                 J
                 (= T S)
                 (= V U)
                 (= X W)
                 (= Z Y)
                 (= B1 A1)
                 (= D1 C1)
                 (= F1 E1)
                 (= H1 G1)
                 (= J1 I1)
                 (= L1 K1)))
      (a!55 (and (not R)
                 Q
                 P
                 O
                 (not N)
                 (not M)
                 (not L)
                 (not K)
                 (not J)
                 (= T S)
                 (= V U)
                 (= X W)
                 (= Z Y)
                 (= B1 A1)
                 (= D1 C1)
                 (= F1 E1)
                 (= H1 G1)
                 (= J1 I1)
                 (= L1 K1)))
      (a!56 (and (not R)
                 Q
                 P
                 (not O)
                 N
                 M
                 L
                 K
                 J
                 (= T S)
                 (= V U)
                 (= X W)
                 (= Z Y)
                 (= B1 A1)
                 (= D1 C1)
                 (= F1 E1)
                 (= H1 G1)
                 (= J1 I1)
                 (= L1 K1)))
      (a!57 (and (not R)
                 Q
                 P
                 (not O)
                 N
                 M
                 L
                 K
                 (not J)
                 (= T S)
                 (= V U)
                 (= X W)
                 (= Z Y)
                 (= B1 A1)
                 (= D1 C1)
                 (= F1 E1)
                 (= H1 G1)
                 (= J1 I1)
                 (= L1 K1)))
      (a!58 (and (not R)
                 Q
                 P
                 (not O)
                 N
                 M
                 L
                 (not K)
                 J
                 (= T S)
                 (= V U)
                 (= X W)
                 (= Z Y)
                 (= B1 A1)
                 (= D1 C1)
                 (= F1 E1)
                 (= H1 G1)
                 (= J1 I1)
                 (= L1 K1)))
      (a!59 (and (not R)
                 Q
                 P
                 (not O)
                 N
                 M
                 L
                 (not K)
                 (not J)
                 (= T S)
                 (= V U)
                 (= X W)
                 (= Z Y)
                 (= B1 A1)
                 (= D1 C1)
                 (= F1 E1)
                 (= H1 G1)
                 (= J1 I1)
                 (= L1 K1)))
      (a!60 (and (not R)
                 Q
                 P
                 (not O)
                 (not N)
                 M
                 (not L)
                 (not K)
                 J
                 (= T S)
                 (= V U)
                 (= X W)
                 (= Z Y)
                 (= B1 A1)
                 (= D1 C1)
                 (= F1 E1)
                 (= H1 G1)
                 (= J1 I1)
                 (= L1 K1)))
      (a!61 (and (not R)
                 Q
                 P
                 (not O)
                 (not N)
                 M
                 (not L)
                 (not K)
                 (not J)
                 (= T S)
                 (= V U)
                 (= X W)
                 (= Z Y)
                 (= B1 A1)
                 (= D1 C1)
                 (= F1 E1)
                 (= H1 G1)
                 (= J1 I1)
                 (= L1 K1)))
      (a!62 (and (not R)
                 Q
                 P
                 (not O)
                 (not N)
                 (not M)
                 L
                 K
                 J
                 (= T S)
                 (= V U)
                 (= X W)
                 (= Z Y)
                 (= B1 A1)
                 (= D1 C1)
                 (= F1 E1)
                 (= H1 G1)
                 (= J1 I1)
                 (= L1 K1)))
      (a!63 (and (not R)
                 Q
                 P
                 (not O)
                 (not N)
                 (not M)
                 L
                 K
                 (not J)
                 (= T S)
                 (= V U)
                 (= X W)
                 (= Z Y)
                 (= B1 A1)
                 (= D1 C1)
                 (= F1 E1)
                 (= H1 G1)
                 (= J1 I1)
                 (= L1 K1)))
      (a!64 (and (not R)
                 Q
                 (not P)
                 O
                 (not N)
                 M
                 (not L)
                 (not K)
                 J
                 (= T S)
                 (= V U)
                 (= X W)
                 (= Z Y)
                 (= B1 A1)
                 (= D1 C1)
                 (= F1 E1)
                 (= H1 G1)
                 (= J1 I1)
                 (= L1 K1)))
      (a!65 (and (not R)
                 Q
                 (not P)
                 O
                 (not N)
                 M
                 (not L)
                 (not K)
                 (not J)
                 (= T S)
                 (= V U)
                 (= X W)
                 (= Z Y)
                 (= B1 A1)
                 (= D1 C1)
                 (= F1 E1)
                 (= H1 G1)
                 (= J1 I1)
                 (= L1 K1)))
      (a!66 (and (not R)
                 Q
                 (not P)
                 O
                 (not N)
                 (not M)
                 L
                 K
                 J
                 (= T S)
                 (= V U)
                 (= X W)
                 (= Z Y)
                 (= B1 A1)
                 (= D1 C1)
                 (= F1 E1)
                 (= H1 G1)
                 (= J1 I1)
                 (= L1 K1)))
      (a!67 (and (not R)
                 Q
                 (not P)
                 O
                 (not N)
                 (not M)
                 L
                 K
                 (not J)
                 (= T S)
                 (= V U)
                 (= X W)
                 (= Z Y)
                 (= B1 A1)
                 (= D1 C1)
                 (= F1 E1)
                 (= H1 G1)
                 (= J1 I1)
                 (= L1 K1)))
      (a!68 (and (not R)
                 Q
                 (not P)
                 O
                 (not N)
                 (not M)
                 L
                 (not K)
                 J
                 (= T S)
                 (= V U)
                 (= X W)
                 (= Z Y)
                 (= B1 A1)
                 (= D1 C1)
                 (= F1 E1)
                 (= H1 G1)
                 (= J1 I1)
                 (= L1 K1)))
      (a!69 (and (not R)
                 Q
                 (not P)
                 O
                 (not N)
                 (not M)
                 L
                 (not K)
                 (not J)
                 (= T S)
                 (= V U)
                 (= X W)
                 (= Z Y)
                 (= B1 A1)
                 (= D1 C1)
                 (= F1 E1)
                 (= H1 G1)
                 (= J1 I1)
                 (= L1 K1)))
      (a!70 (and (not R)
                 Q
                 (not P)
                 O
                 (not N)
                 (not M)
                 (not L)
                 K
                 J
                 (= T S)
                 (= V U)
                 (= X W)
                 (= Z Y)
                 (= B1 A1)
                 (= D1 C1)
                 (= F1 E1)
                 (= H1 G1)
                 (= J1 I1)
                 (= L1 K1)))
      (a!71 (and (not R)
                 Q
                 (not P)
                 O
                 (not N)
                 (not M)
                 (not L)
                 K
                 (not J)
                 (= T S)
                 (= V U)
                 (= X W)
                 (= Z Y)
                 (= B1 A1)
                 (= D1 C1)
                 (= F1 E1)
                 (= H1 G1)
                 (= J1 I1)
                 (= L1 K1)))
      (a!72 (and (not R)
                 Q
                 (not P)
                 (not O)
                 (not N)
                 M
                 L
                 (not K)
                 (not J)
                 (= T S)
                 (= V U)
                 (= X W)
                 (= Z Y)
                 (= B1 A1)
                 (= D1 C1)
                 (= F1 E1)
                 (= H1 G1)
                 (= J1 I1)
                 (= L1 K1)))
      (a!73 (and (not R)
                 Q
                 (not P)
                 (not O)
                 (not N)
                 M
                 (not L)
                 K
                 J
                 (= T S)
                 (= V U)
                 (= X W)
                 (= Z Y)
                 (= B1 A1)
                 (= D1 C1)
                 (= F1 E1)
                 (= H1 G1)
                 (= J1 I1)
                 (= L1 K1)))
      (a!74 (and (not R)
                 Q
                 (not P)
                 (not O)
                 (not N)
                 M
                 (not L)
                 K
                 (not J)
                 (= T S)
                 (= V U)
                 (= X W)
                 (= Z Y)
                 (= B1 A1)
                 (= D1 C1)
                 (= F1 E1)
                 (= H1 G1)
                 (= J1 I1)
                 (= L1 K1)))
      (a!75 (and (not R)
                 Q
                 (not P)
                 (not O)
                 (not N)
                 M
                 (not L)
                 (not K)
                 J
                 (= T S)
                 (= V U)
                 (= X W)
                 (= Z Y)
                 (= B1 A1)
                 (= D1 C1)
                 (= F1 E1)
                 (= H1 G1)
                 (= J1 I1)
                 (= L1 K1)))
      (a!76 (and (not R)
                 (not Q)
                 P
                 O
                 N
                 M
                 L
                 (not K)
                 (not J)
                 (= T S)
                 (= V U)
                 (= X W)
                 (= Z Y)
                 (= B1 A1)
                 (= D1 C1)
                 (= F1 E1)
                 (= H1 G1)
                 (= J1 I1)
                 (= L1 K1)))
      (a!77 (and (not R)
                 (not Q)
                 P
                 O
                 N
                 M
                 (not L)
                 K
                 J
                 (= T S)
                 (= V U)
                 (= X W)
                 (= Z Y)
                 (= B1 A1)
                 (= D1 C1)
                 (= F1 E1)
                 (= H1 G1)
                 (= J1 I1)
                 (= L1 K1)))
      (a!78 (and (not R)
                 (not Q)
                 P
                 O
                 N
                 M
                 (not L)
                 (not K)
                 J
                 (= T S)
                 (= V U)
                 (= X W)
                 (= Z Y)
                 (= B1 A1)
                 (= D1 C1)
                 (= F1 E1)
                 (= H1 G1)
                 (= J1 I1)
                 (= L1 K1)))
      (a!79 (and (not R)
                 (not Q)
                 P
                 O
                 N
                 M
                 (not L)
                 (not K)
                 (not J)
                 (= T S)
                 (= V U)
                 (= X W)
                 (= Z Y)
                 (= B1 A1)
                 (= D1 C1)
                 (= F1 E1)
                 (= H1 G1)
                 (= J1 I1)
                 (= L1 K1)))
      (a!80 (and (not R)
                 (not Q)
                 P
                 O
                 N
                 (not M)
                 L
                 K
                 J
                 (= T S)
                 (= V U)
                 (= X W)
                 (= Z Y)
                 (= B1 A1)
                 (= D1 C1)
                 (= F1 E1)
                 (= H1 G1)
                 (= J1 I1)
                 (= L1 K1)))
      (a!81 (and (not R)
                 (not Q)
                 P
                 O
                 N
                 (not M)
                 L
                 K
                 (not J)
                 (= T S)
                 (= V U)
                 (= X W)
                 (= Z Y)
                 (= B1 A1)
                 (= D1 C1)
                 (= F1 E1)
                 (= H1 G1)
                 (= J1 I1)
                 (= L1 K1)))
      (a!82 (and (not R)
                 (not Q)
                 P
                 O
                 (not N)
                 (not M)
                 L
                 K
                 J
                 (= T S)
                 (= V U)
                 (= X W)
                 (= Z Y)
                 (= B1 A1)
                 (= D1 C1)
                 (= F1 E1)
                 (= H1 G1)
                 (= J1 I1)
                 (= L1 K1)))
      (a!83 (and (not R)
                 (not Q)
                 P
                 O
                 (not N)
                 (not M)
                 L
                 K
                 (not J)
                 (= T S)
                 (= V U)
                 (= X W)
                 (= Z Y)
                 (= B1 A1)
                 (= D1 C1)
                 (= F1 E1)
                 (= H1 G1)
                 (= J1 I1)
                 (= L1 K1)))
      (a!84 (and (not R)
                 (not Q)
                 P
                 O
                 (not N)
                 (not M)
                 L
                 (not K)
                 J
                 (= T S)
                 (= V U)
                 (= X W)
                 (= Z Y)
                 (= B1 A1)
                 (= D1 C1)
                 (= F1 E1)
                 (= H1 G1)
                 (= J1 I1)
                 (= L1 K1)))
      (a!85 (and (not R)
                 (not Q)
                 P
                 O
                 (not N)
                 (not M)
                 L
                 (not K)
                 (not J)
                 (= T S)
                 (= V U)
                 (= X W)
                 (= Z Y)
                 (= B1 A1)
                 (= D1 C1)
                 (= F1 E1)
                 (= H1 G1)
                 (= J1 I1)
                 (= L1 K1)))
      (a!86 (and (not R)
                 (not Q)
                 P
                 O
                 (not N)
                 (not M)
                 (not L)
                 K
                 J
                 (= T S)
                 (= V U)
                 (= X W)
                 (= Z Y)
                 (= B1 A1)
                 (= D1 C1)
                 (= F1 E1)
                 (= H1 G1)
                 (= J1 I1)
                 (= L1 K1)))
      (a!87 (and (not R)
                 (not Q)
                 P
                 O
                 (not N)
                 (not M)
                 (not L)
                 K
                 (not J)
                 (= T S)
                 (= V U)
                 (= X W)
                 (= Z Y)
                 (= B1 A1)
                 (= D1 C1)
                 (= F1 E1)
                 (= H1 G1)
                 (= J1 I1)
                 (= L1 K1)))
      (a!88 (and (not R)
                 (not Q)
                 P
                 (not O)
                 N
                 (not M)
                 (not L)
                 (not K)
                 J
                 (= T S)
                 (= V U)
                 (= X W)
                 (= Z Y)
                 (= B1 A1)
                 (= D1 C1)
                 (= F1 E1)
                 (= H1 G1)
                 (= J1 I1)
                 (= L1 K1)))
      (a!89 (and (not R)
                 (not Q)
                 P
                 (not O)
                 N
                 (not M)
                 (not L)
                 (not K)
                 (not J)
                 (= T S)
                 (= V U)
                 (= X W)
                 (= Z Y)
                 (= B1 A1)
                 (= D1 C1)
                 (= F1 E1)
                 (= H1 G1)
                 (= J1 I1)
                 (= L1 K1)))
      (a!90 (and (not R)
                 (not Q)
                 P
                 (not O)
                 (not N)
                 M
                 L
                 K
                 J
                 (= T S)
                 (= V U)
                 (= X W)
                 (= Z Y)
                 (= B1 A1)
                 (= D1 C1)
                 (= F1 E1)
                 (= H1 G1)
                 (= J1 I1)
                 (= L1 K1)))
      (a!91 (and (not R)
                 (not Q)
                 P
                 (not O)
                 (not N)
                 M
                 L
                 K
                 (not J)
                 (= T S)
                 (= V U)
                 (= X W)
                 (= Z Y)
                 (= B1 A1)
                 (= D1 C1)
                 (= F1 E1)
                 (= H1 G1)
                 (= J1 I1)
                 (= L1 K1)))
      (a!92 (and (not R)
                 (not Q)
                 P
                 (not O)
                 (not N)
                 M
                 L
                 (not K)
                 J
                 (= T S)
                 (= V U)
                 (= X W)
                 (= Z Y)
                 (= B1 A1)
                 (= D1 C1)
                 (= F1 E1)
                 (= H1 G1)
                 (= J1 I1)
                 (= L1 K1)))
      (a!93 (and (not R)
                 (not Q)
                 P
                 (not O)
                 (not N)
                 M
                 L
                 (not K)
                 (not J)
                 (= T S)
                 (= V U)
                 (= X W)
                 (= Z Y)
                 (= B1 A1)
                 (= D1 C1)
                 (= F1 E1)
                 (= H1 G1)
                 (= J1 I1)
                 (= L1 K1)))
      (a!94 (and (not R)
                 (not Q)
                 (not P)
                 O
                 (not N)
                 M
                 (not L)
                 (not K)
                 J
                 (= T S)
                 (= V U)
                 (= X W)
                 (= Z Y)
                 (= B1 A1)
                 (= D1 C1)
                 (= F1 E1)
                 (= H1 G1)
                 (= J1 I1)
                 (= L1 K1)))
      (a!95 (and (not R)
                 (not Q)
                 (not P)
                 O
                 (not N)
                 M
                 (not L)
                 (not K)
                 (not J)
                 (= T S)
                 (= V U)
                 (= X W)
                 (= Z Y)
                 (= B1 A1)
                 (= D1 C1)
                 (= F1 E1)
                 (= H1 G1)
                 (= J1 I1)
                 (= L1 K1)))
      (a!96 (and (not R)
                 (not Q)
                 (not P)
                 O
                 (not N)
                 (not M)
                 L
                 K
                 J
                 (= T S)
                 (= V U)
                 (= X W)
                 (= Z Y)
                 (= B1 A1)
                 (= D1 C1)
                 (= F1 E1)
                 (= H1 G1)
                 (= J1 I1)
                 (= L1 K1)))
      (a!97 (and (not R)
                 (not Q)
                 (not P)
                 O
                 (not N)
                 (not M)
                 L
                 K
                 (not J)
                 (= T S)
                 (= V U)
                 (= X W)
                 (= Z Y)
                 (= B1 A1)
                 (= D1 C1)
                 (= F1 E1)
                 (= H1 G1)
                 (= J1 I1)
                 (= L1 K1)))
      (a!98 (and (not R)
                 (not Q)
                 (not P)
                 (not O)
                 N
                 M
                 (not L)
                 (not K)
                 (not J)
                 (= T S)
                 (= V U)
                 (= X W)
                 (= Z Y)
                 (= B1 A1)
                 (= D1 C1)
                 (= F1 E1)
                 (= H1 G1)
                 (= J1 I1)
                 (= L1 K1)))
      (a!99 (and (not R)
                 (not Q)
                 (not P)
                 (not O)
                 N
                 (not M)
                 L
                 K
                 J
                 (= T S)
                 (= V U)
                 (= X W)
                 (= Z Y)
                 (= B1 A1)
                 (= D1 C1)
                 (= F1 E1)
                 (= H1 G1)
                 (= J1 I1)
                 (= L1 K1)))
      (a!100 (and (not R)
                  (not Q)
                  (not P)
                  (not O)
                  N
                  (not M)
                  L
                  K
                  (not J)
                  (= T S)
                  (= V U)
                  (= X W)
                  (= Z Y)
                  (= B1 A1)
                  (= D1 C1)
                  (= F1 E1)
                  (= H1 G1)
                  (= J1 I1)
                  (= L1 K1)))
      (a!101 (and (not R)
                  (not Q)
                  (not P)
                  (not O)
                  N
                  (not M)
                  L
                  (not K)
                  J
                  (= T S)
                  (= V U)
                  (= X W)
                  (= Z Y)
                  (= B1 A1)
                  (= D1 C1)
                  (= F1 E1)
                  (= H1 G1)
                  (= J1 I1)
                  (= L1 K1)))
      (a!102 (and R
                  (not Q)
                  (not P)
                  (not O)
                  (not N)
                  (not M)
                  L
                  K
                  (not J)
                  (= T S)
                  (= V U)
                  (= X W)
                  (= Z Y)
                  (= B1 A1)
                  (= D1 C1)
                  (= F1 E1)
                  (= H1 G1)
                  (= J1 I1)
                  (= L1 K1)))
      (a!104 (and R
                  (not Q)
                  (not P)
                  (not O)
                  (not N)
                  (not M)
                  L
                  K
                  J
                  (= V U)
                  (= X W)
                  (= Z Y)
                  (= B1 A1)
                  (= D1 C1)
                  (= F1 E1)
                  (= H1 G1)
                  (= J1 I1)
                  (= L1 K1)
                  (= (+ T (* (- 1) S)) (- 1))))
      (a!105 (and R
                  (not Q)
                  P
                  O
                  N
                  M
                  (not L)
                  K
                  (not J)
                  (= V U)
                  (= X W)
                  (= Z Y)
                  (= B1 A1)
                  (= D1 C1)
                  (= F1 E1)
                  (= H1 G1)
                  (= J1 I1)
                  (= L1 K1)
                  (= (+ T (* (- 1) S)) 1)))
      (a!106 (and R
                  (not Q)
                  P
                  O
                  (not N)
                  M
                  (not L)
                  K
                  J
                  (= T S)
                  (= X W)
                  (= Z Y)
                  (= B1 A1)
                  (= D1 C1)
                  (= F1 E1)
                  (= H1 G1)
                  (= J1 I1)
                  (= L1 K1)
                  (= (+ V (* (- 1) U)) (- 1))))
      (a!107 (and R
                  (not Q)
                  P
                  (not O)
                  N
                  M
                  L
                  K
                  (not J)
                  (= T S)
                  (= X W)
                  (= Z Y)
                  (= B1 A1)
                  (= D1 C1)
                  (= F1 E1)
                  (= H1 G1)
                  (= J1 I1)
                  (= L1 K1)
                  (= (+ V (* (- 1) U)) (- 1))))
      (a!108 (and R
                  (not Q)
                  (not P)
                  O
                  (not N)
                  M
                  L
                  K
                  (not J)
                  (= T S)
                  (= X W)
                  (= Z Y)
                  (= B1 A1)
                  (= D1 C1)
                  (= F1 E1)
                  (= H1 G1)
                  (= J1 I1)
                  (= L1 K1)
                  (= (+ V (* (- 1) U)) (- 1))))
      (a!109 (and (not R)
                  Q
                  P
                  O
                  N
                  (not M)
                  (not L)
                  K
                  J
                  (= T S)
                  (= X W)
                  (= Z Y)
                  (= B1 A1)
                  (= D1 C1)
                  (= F1 E1)
                  (= H1 G1)
                  (= J1 I1)
                  (= L1 K1)
                  (= (+ V (* (- 1) U)) (- 1))))
      (a!110 (and (not R)
                  (not Q)
                  P
                  O
                  (not N)
                  M
                  (not L)
                  (not K)
                  J
                  (= T S)
                  (= X W)
                  (= Z Y)
                  (= B1 A1)
                  (= D1 C1)
                  (= F1 E1)
                  (= H1 G1)
                  (= J1 I1)
                  (= L1 K1)
                  (= (+ V (* (- 1) U)) (- 1))))
      (a!111 (and R
                  (not Q)
                  P
                  (not O)
                  N
                  (not M)
                  L
                  K
                  (not J)
                  (= T S)
                  (= V U)
                  (= Z Y)
                  (= B1 A1)
                  (= D1 C1)
                  (= F1 E1)
                  (= H1 G1)
                  (= J1 I1)
                  (= L1 K1)
                  (= (+ X (* (- 1) W)) (- 1))))
      (a!112 (and R
                  (not Q)
                  P
                  (not O)
                  (not N)
                  (not M)
                  (not L)
                  K
                  (not J)
                  (= T S)
                  (= V U)
                  (= Z Y)
                  (= B1 A1)
                  (= D1 C1)
                  (= F1 E1)
                  (= H1 G1)
                  (= J1 I1)
                  (= L1 K1)
                  (= (+ X (* (- 1) W)) (- 1))))
      (a!113 (and (not R)
                  Q
                  P
                  O
                  N
                  M
                  L
                  K
                  J
                  (= T S)
                  (= V U)
                  (= Z Y)
                  (= B1 A1)
                  (= D1 C1)
                  (= F1 E1)
                  (= H1 G1)
                  (= J1 I1)
                  (= L1 K1)
                  (= (+ X (* (- 1) W)) (- 1))))
      (a!114 (and (not R)
                  Q
                  P
                  O
                  (not N)
                  M
                  L
                  (not K)
                  J
                  (= T S)
                  (= V U)
                  (= Z Y)
                  (= B1 A1)
                  (= D1 C1)
                  (= F1 E1)
                  (= H1 G1)
                  (= J1 I1)
                  (= L1 K1)
                  (= (+ X (* (- 1) W)) (- 1))))
      (a!115 (and (not R)
                  Q
                  P
                  (not O)
                  N
                  M
                  (not L)
                  K
                  J
                  (= T S)
                  (= V U)
                  (= Z Y)
                  (= B1 A1)
                  (= D1 C1)
                  (= F1 E1)
                  (= H1 G1)
                  (= J1 I1)
                  (= L1 K1)
                  (= (+ X (* (- 1) W)) (- 1))))
      (a!116 (and (not R)
                  Q
                  P
                  (not O)
                  (not N)
                  (not M)
                  L
                  (not K)
                  J
                  (= T S)
                  (= V U)
                  (= Z Y)
                  (= B1 A1)
                  (= D1 C1)
                  (= F1 E1)
                  (= H1 G1)
                  (= J1 I1)
                  (= L1 K1)
                  (= (+ X (* (- 1) W)) (- 1))))
      (a!117 (and (not R)
                  Q
                  (not P)
                  O
                  (not N)
                  (not M)
                  (not L)
                  (not K)
                  J
                  (= T S)
                  (= V U)
                  (= Z Y)
                  (= B1 A1)
                  (= D1 C1)
                  (= F1 E1)
                  (= H1 G1)
                  (= J1 I1)
                  (= L1 K1)
                  (= (+ X (* (- 1) W)) (- 1))))
      (a!118 (and (not R)
                  Q
                  (not P)
                  (not O)
                  (not N)
                  M
                  (not L)
                  (not K)
                  (not J)
                  (= T S)
                  (= V U)
                  (= Z Y)
                  (= B1 A1)
                  (= D1 C1)
                  (= F1 E1)
                  (= H1 G1)
                  (= J1 I1)
                  (= L1 K1)
                  (= (+ X (* (- 1) W)) (- 1))))
      (a!119 (and (not R)
                  (not Q)
                  P
                  O
                  N
                  (not M)
                  L
                  (not K)
                  J
                  (= T S)
                  (= V U)
                  (= Z Y)
                  (= B1 A1)
                  (= D1 C1)
                  (= F1 E1)
                  (= H1 G1)
                  (= J1 I1)
                  (= L1 K1)
                  (= (+ X (* (- 1) W)) (- 1))))
      (a!120 (and (not R)
                  (not Q)
                  P
                  O
                  (not N)
                  (not M)
                  (not L)
                  (not K)
                  J
                  (= T S)
                  (= V U)
                  (= Z Y)
                  (= B1 A1)
                  (= D1 C1)
                  (= F1 E1)
                  (= H1 G1)
                  (= J1 I1)
                  (= L1 K1)
                  (= (+ X (* (- 1) W)) (- 1))))
      (a!121 (and (not R)
                  (not Q)
                  P
                  (not O)
                  (not N)
                  M
                  (not L)
                  K
                  J
                  (= T S)
                  (= V U)
                  (= Z Y)
                  (= B1 A1)
                  (= D1 C1)
                  (= F1 E1)
                  (= H1 G1)
                  (= J1 I1)
                  (= L1 K1)
                  (= (+ X (* (- 1) W)) (- 1))))
      (a!122 (and (not R)
                  (not Q)
                  (not P)
                  O
                  (not N)
                  (not M)
                  L
                  (not K)
                  J
                  (= T S)
                  (= V U)
                  (= Z Y)
                  (= B1 A1)
                  (= D1 C1)
                  (= F1 E1)
                  (= H1 G1)
                  (= J1 I1)
                  (= L1 K1)
                  (= (+ X (* (- 1) W)) (- 1))))
      (a!123 (and (not R)
                  (not Q)
                  (not P)
                  (not O)
                  N
                  (not M)
                  L
                  (not K)
                  (not J)
                  (= T S)
                  (= V U)
                  (= Z Y)
                  (= B1 A1)
                  (= D1 C1)
                  (= F1 E1)
                  (= H1 G1)
                  (= J1 I1)
                  (= L1 K1)
                  (= (+ X (* (- 1) W)) (- 1))))
      (a!124 (and R
                  (not Q)
                  (not P)
                  (not O)
                  N
                  M
                  L
                  (not K)
                  J
                  (= T S)
                  (= V U)
                  (= X W)
                  (= B1 A1)
                  (= D1 C1)
                  (= F1 E1)
                  (= H1 G1)
                  (= J1 I1)
                  (= L1 K1)
                  (= (+ Y (* (- 1) T)) 1)))
      (a!125 (and (not R)
                  (not Q)
                  (not P)
                  (not O)
                  (not N)
                  (not M)
                  L
                  (not K)
                  (not J)
                  (= T S)
                  (= V U)
                  (= X W)
                  (= B1 A1)
                  (= D1 C1)
                  (= F1 E1)
                  (= H1 G1)
                  (= J1 I1)
                  (= L1 K1)
                  (= (+ Y (* (- 1) T)) 1)))
      (a!126 (and (not R)
                  (not Q)
                  (not P)
                  (not O)
                  (not N)
                  (not M)
                  (not L)
                  (not K)
                  (not J)
                  (= T S)
                  (= V U)
                  (= X W)
                  (= Z Y)
                  (= B1 A1)
                  (= D1 C1)
                  (= F1 E1)
                  (= H1 G1)
                  (= J1 I1)
                  (= L1 K1))))
(let ((a!103 (or A
                 (not B)
                 C
                 (not D)
                 (not E)
                 (not F)
                 (not G)
                 H
                 I
                 (and (<= T J1) (not (= F1 T)))
                 a!102)))
  (and (or (not A)
           B
           C
           D
           (not E)
           (not F)
           G
           (not H)
           (not I)
           (and R
                (not Q)
                P
                O
                N
                M
                L
                K
                J
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= H1 G1)
                (= J1 I1)
                (= L1 K1))
           (<= 1 T))
       (or (not A) (not B) C (not D) (not E) F G (not H) I a!1 (<= 1 T))
       (or (not A) (not B) C (not D) (not E) F G (not H) (not I) a!2 (<= T F1))
       (or (not A) (not B) C (not D) (not E) F (not G) (not H) I a!3 (<= 1 T))
       (or (not A)
           (not B)
           C
           (not D)
           (not E)
           F
           (not G)
           (not H)
           (not I)
           a!4
           (<= T F1))
       (or (not A)
           (not B)
           C
           (not D)
           (not E)
           F
           (not G)
           (not H)
           (not I)
           (and R
                (not Q)
                P
                O
                N
                M
                (not L)
                (not K)
                (not J)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= H1 G1)
                (= J1 I1)
                (= L1 K1))
           (not (<= T F1)))
       (or (not A)
           (not B)
           C
           (not D)
           (not E)
           F
           (not G)
           (not H)
           I
           (and R
                (not Q)
                P
                O
                N
                (not M)
                L
                K
                (not J)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= H1 G1)
                (= J1 I1)
                (= L1 K1))
           (not (<= 1 T)))
       (or (not A)
           (not B)
           C
           (not D)
           (not E)
           F
           G
           (not H)
           (not I)
           (and R
                (not Q)
                P
                O
                N
                (not M)
                L
                (not K)
                (not J)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= H1 G1)
                (= J1 I1)
                (= L1 K1))
           (not (<= T F1)))
       (or (not A)
           (not B)
           C
           (not D)
           (not E)
           F
           G
           (not H)
           I
           (and R
                (not Q)
                P
                O
                N
                (not M)
                (not L)
                K
                (not J)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= H1 G1)
                (= J1 I1)
                (= L1 K1))
           (not (<= 1 T)))
       (or (not A) B C D (not E) (not F) (not G) (not H) I a!5 (not (<= F1 T)))
       (or (not A)
           (not B)
           C
           (not D)
           E
           F
           G
           (not H)
           I
           (and R
                (not Q)
                P
                O
                N
                (not M)
                (not L)
                (not K)
                (not J)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= H1 G1)
                (= J1 I1)
                (= L1 K1))
           (<= V F1))
       (or (not A) (not B) C (not D) E F G H (not I) a!6 (<= 1 V))
       (or (not A) (not B) C (not D) E F (not G) H I a!7 (<= V F1))
       (or (not A) (not B) C (not D) E F (not G) H (not I) a!8 (<= 1 T))
       (or (not A) (not B) C (not D) E (not F) G H I a!9 (<= T F1))
       (or (not A)
           (not B)
           C
           (not D)
           E
           (not F)
           G
           H
           I
           (and R
                (not Q)
                P
                O
                (not N)
                M
                (not L)
                (not K)
                J
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= H1 G1)
                (= J1 I1)
                (= L1 K1))
           (not (<= T F1)))
       (or (not A)
           (not B)
           C
           (not D)
           E
           F
           (not G)
           H
           (not I)
           (and R
                (not Q)
                P
                O
                (not N)
                (not M)
                L
                K
                J
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= H1 G1)
                (= J1 I1)
                (= L1 K1))
           (not (<= 1 T)))
       (or (not A)
           (not B)
           C
           (not D)
           E
           F
           (not G)
           H
           I
           (and R
                (not Q)
                P
                O
                (not N)
                (not M)
                L
                (not K)
                J
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= H1 G1)
                (= J1 I1)
                (= L1 K1))
           (not (<= V F1)))
       (or (not A)
           (not B)
           C
           (not D)
           E
           F
           G
           H
           (not I)
           (and R
                (not Q)
                P
                O
                (not N)
                (not M)
                (not L)
                K
                J
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= H1 G1)
                (= J1 I1)
                (= L1 K1))
           (not (<= 1 V)))
       (or (not A)
           (not B)
           C
           (not D)
           E
           F
           G
           (not H)
           I
           (and R
                (not Q)
                P
                O
                (not N)
                (not M)
                (not L)
                K
                (not J)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= H1 G1)
                (= J1 I1)
                (= L1 K1))
           (not (<= V F1)))
       (or (not A) B C D (not E) (not F) (not G) H (not I) a!10 (= M1 0))
       (or (not A)
           B
           C
           (not D)
           (not E)
           F
           (not G)
           H
           (not I)
           (and R
                (not Q)
                P
                (not O)
                N
                M
                L
                K
                J
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= H1 G1)
                (= J1 I1)
                (= L1 K1))
           (<= V F1))
       (or (not A)
           (not B)
           C
           D
           E
           (not F)
           G
           H
           I
           (and R
                (not Q)
                P
                (not O)
                N
                M
                L
                (not K)
                J
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= H1 G1)
                (= J1 I1)
                (= L1 K1))
           (<= X F1))
       (or (not A) (not B) C D E (not F) G (not H) I a!11 (<= 1 X))
       (or (not A) (not B) C D E (not F) G (not H) (not I) a!12 (<= X F1))
       (or (not A) (not B) C D E (not F) (not G) (not H) I a!13 (<= 1 V))
       (or (not A) (not B) C D E (not F) (not G) (not H) (not I) a!14 (<= V F1))
       (or (not A) (not B) C D (not E) F G (not H) I a!15 (<= 1 T))
       (or (not A) (not B) C D (not E) F G (not H) (not I) a!16 (<= T F1))
       (or (not A)
           (not B)
           C
           D
           (not E)
           F
           G
           (not H)
           (not I)
           (and R
                (not Q)
                P
                (not O)
                N
                (not M)
                L
                (not K)
                (not J)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= H1 G1)
                (= J1 I1)
                (= L1 K1))
           (not (<= T F1)))
       (or (not A)
           (not B)
           C
           D
           (not E)
           F
           G
           (not H)
           I
           (and R
                (not Q)
                P
                (not O)
                N
                (not M)
                (not L)
                K
                (not J)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= H1 G1)
                (= J1 I1)
                (= L1 K1))
           (not (<= 1 T)))
       (or (not A)
           (not B)
           C
           D
           E
           (not F)
           (not G)
           (not H)
           (not I)
           (and R
                (not Q)
                P
                (not O)
                N
                (not M)
                (not L)
                (not K)
                (not J)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= H1 G1)
                (= J1 I1)
                (= L1 K1))
           (not (<= V F1)))
       (or (not A)
           (not B)
           C
           D
           E
           (not F)
           (not G)
           (not H)
           I
           (and R
                (not Q)
                P
                (not O)
                (not N)
                M
                L
                K
                (not J)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= H1 G1)
                (= J1 I1)
                (= L1 K1))
           (not (<= 1 V)))
       (or (not A)
           (not B)
           C
           D
           E
           (not F)
           G
           (not H)
           (not I)
           (and R
                (not Q)
                P
                (not O)
                (not N)
                M
                L
                (not K)
                (not J)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= H1 G1)
                (= J1 I1)
                (= L1 K1))
           (not (<= X F1)))
       (or (not A)
           (not B)
           C
           D
           E
           (not F)
           G
           (not H)
           I
           (and R
                (not Q)
                P
                (not O)
                (not N)
                M
                (not L)
                K
                (not J)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= H1 G1)
                (= J1 I1)
                (= L1 K1))
           (not (<= 1 X)))
       (or (not A)
           (not B)
           C
           D
           E
           (not F)
           G
           H
           I
           (and R
                (not Q)
                P
                (not O)
                (not N)
                M
                (not L)
                (not K)
                J
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= H1 G1)
                (= J1 I1)
                (= L1 K1))
           (not (<= X F1)))
       (or (not A)
           B
           C
           (not D)
           (not E)
           (not F)
           G
           H
           I
           (and R
                (not Q)
                P
                (not O)
                (not N)
                (not M)
                L
                K
                J
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= H1 G1)
                (= J1 I1)
                (= L1 K1))
           (<= X F1))
       (or (not A) B C (not D) (not E) (not F) G (not H) I a!17 (<= 1 X))
       (or (not A) B C (not D) (not E) (not F) G (not H) (not I) a!18 (<= X F1))
       (or (not A) B C (not D) (not E) (not F) (not G) (not H) I a!19 (<= 1 V))
       (or (not A)
           B
           C
           (not D)
           (not E)
           (not F)
           (not G)
           (not H)
           (not I)
           a!20
           (<= V F1))
       (or (not A)
           B
           C
           (not D)
           (not E)
           (not F)
           (not G)
           (not H)
           (not I)
           (and R
                (not Q)
                P
                (not O)
                (not N)
                (not M)
                (not L)
                (not K)
                (not J)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= H1 G1)
                (= J1 I1)
                (= L1 K1))
           (not (<= V F1)))
       (or (not A)
           B
           C
           (not D)
           (not E)
           (not F)
           (not G)
           (not H)
           I
           (and R
                (not Q)
                (not P)
                O
                N
                M
                L
                K
                (not J)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= H1 G1)
                (= J1 I1)
                (= L1 K1))
           (not (<= 1 V)))
       (or (not A)
           B
           C
           (not D)
           (not E)
           (not F)
           G
           (not H)
           (not I)
           (and R
                (not Q)
                (not P)
                O
                N
                M
                L
                (not K)
                (not J)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= H1 G1)
                (= J1 I1)
                (= L1 K1))
           (not (<= X F1)))
       (or (not A)
           B
           C
           (not D)
           (not E)
           (not F)
           G
           (not H)
           I
           (and R
                (not Q)
                (not P)
                O
                N
                M
                (not L)
                K
                (not J)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= H1 G1)
                (= J1 I1)
                (= L1 K1))
           (not (<= 1 X)))
       (or (not A)
           B
           C
           (not D)
           (not E)
           (not F)
           G
           H
           I
           (and R
                (not Q)
                (not P)
                O
                N
                M
                (not L)
                (not K)
                J
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= H1 G1)
                (= J1 I1)
                (= L1 K1))
           (not (<= X F1)))
       (or (not A)
           B
           C
           (not D)
           (not E)
           F
           (not G)
           H
           (not I)
           (and R
                (not Q)
                (not P)
                O
                N
                (not M)
                L
                K
                J
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= H1 G1)
                (= J1 I1)
                (= L1 K1))
           (not (<= V F1)))
       (or (not A)
           B
           C
           (not D)
           E
           F
           G
           H
           I
           (and R
                (not Q)
                (not P)
                O
                N
                (not M)
                L
                (not K)
                J
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= H1 G1)
                (= J1 I1)
                (= L1 K1))
           (<= V F1))
       (or (not A) B C (not D) E F G (not H) I a!21 (<= 1 V))
       (or (not A) B C (not D) E F G (not H) (not I) a!22 (<= V F1))
       (or (not A) B C (not D) E F (not G) (not H) I a!23 (<= 1 T))
       (or (not A) B C (not D) E F (not G) (not H) (not I) a!24 (<= T F1))
       (or (not A) B C (not D) E (not F) G (not H) I a!25 (<= 1 Z))
       (or (not A) B C (not D) E (not F) G (not H) (not I) a!26 (<= Z F1))
       (or (not A)
           B
           C
           (not D)
           E
           (not F)
           G
           (not H)
           (not I)
           (and R
                (not Q)
                (not P)
                O
                (not N)
                M
                L
                (not K)
                (not J)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= H1 G1)
                (= J1 I1)
                (= L1 K1))
           (not (<= Z F1)))
       (or (not A)
           B
           C
           (not D)
           E
           (not F)
           G
           (not H)
           I
           (and R
                (not Q)
                (not P)
                O
                (not N)
                M
                (not L)
                K
                (not J)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= H1 G1)
                (= J1 I1)
                (= L1 K1))
           (not (<= 1 Z)))
       (or (not A)
           B
           C
           (not D)
           E
           F
           (not G)
           (not H)
           (not I)
           (and R
                (not Q)
                (not P)
                O
                (not N)
                M
                (not L)
                (not K)
                (not J)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= H1 G1)
                (= J1 I1)
                (= L1 K1))
           (not (<= T F1)))
       (or (not A)
           B
           C
           (not D)
           E
           F
           (not G)
           (not H)
           I
           (and R
                (not Q)
                (not P)
                O
                (not N)
                (not M)
                L
                K
                (not J)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= H1 G1)
                (= J1 I1)
                (= L1 K1))
           (not (<= 1 T)))
       (or (not A)
           B
           C
           (not D)
           E
           F
           G
           (not H)
           (not I)
           (and R
                (not Q)
                (not P)
                O
                (not N)
                (not M)
                L
                (not K)
                (not J)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= H1 G1)
                (= J1 I1)
                (= L1 K1))
           (not (<= V F1)))
       (or (not A)
           B
           C
           (not D)
           E
           F
           G
           (not H)
           I
           (and R
                (not Q)
                (not P)
                O
                (not N)
                (not M)
                (not L)
                K
                (not J)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= H1 G1)
                (= J1 I1)
                (= L1 K1))
           (not (<= 1 V)))
       (or (not A)
           B
           C
           (not D)
           E
           F
           G
           H
           I
           (and R
                (not Q)
                (not P)
                O
                (not N)
                (not M)
                (not L)
                (not K)
                J
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= H1 G1)
                (= J1 I1)
                (= L1 K1))
           (not (<= V F1)))
       (or (not A)
           B
           C
           D
           (not E)
           (not F)
           (not G)
           H
           (not I)
           (and R
                (not Q)
                (not P)
                (not O)
                N
                M
                L
                K
                J
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= H1 G1)
                (= J1 I1)
                (= L1 K1))
           (not (= M1 0)))
       (or (not A)
           B
           C
           D
           (not E)
           (not F)
           (not G)
           (not H)
           I
           (and R
                (not Q)
                (not P)
                (not O)
                N
                M
                L
                K
                (not J)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= H1 G1)
                (= J1 I1)
                (= L1 K1))
           (<= F1 T))
       (or (not A)
           B
           C
           D
           (not E)
           (not F)
           G
           (not H)
           (not I)
           (and R
                (not Q)
                (not P)
                (not O)
                N
                M
                L
                (not K)
                (not J)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= H1 G1)
                (= J1 I1)
                (= L1 K1))
           (not (<= 1 T)))
       (or A
           B
           C
           D
           E
           F
           G
           H
           (not I)
           (and R
                (not Q)
                (not P)
                (not O)
                N
                M
                (not L)
                K
                (not J)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= H1 G1)
                (= J1 I1)
                (= L1 K1))
           (<= T F1))
       (or A B C D E F (not G) H I a!27 (<= 1 T))
       (or A B C D E F (not G) H (not I) a!28 (<= T F1))
       (or A B C (not D) E (not F) G H (not I) a!29 (<= 1 T))
       (or A B C (not D) E (not F) (not G) H I a!30 (<= T J1))
       (or A B C (not D) E (not F) (not G) H (not I) a!31 (<= 1 T))
       (or A B C (not D) (not E) F G H I a!32 (<= T F1))
       (or A B C (not D) (not E) F G H (not I) a!33 (<= 1 T))
       (or A B C (not D) (not E) F (not G) H I a!34 (<= T J1))
       (or A B C (not D) (not E) F (not G) H (not I) a!35 (<= 1 T))
       (or A B C (not D) (not E) (not F) G H I a!36 (<= T F1))
       (or A B (not C) (not D) E (not F) G H (not I) a!37 (<= 1 T))
       (or A B (not C) (not D) E (not F) (not G) H I a!38 (<= T J1))
       (or A B (not C) (not D) E (not F) (not G) H (not I) a!39 (<= 1 Z))
       (or A B (not C) (not D) (not E) F G H I a!40 (<= Z F1))
       (or A B (not C) (not D) (not E) F G H (not I) a!41 (<= 1 T))
       (or A B (not C) (not D) (not E) F (not G) H I a!42 (<= T J1))
       (or A B (not C) (not D) (not E) F (not G) H (not I) a!43 (<= 1 Z))
       (or A B (not C) (not D) (not E) (not F) G H I a!44 (<= Z F1))
       (or A B (not C) D E (not F) (not G) (not H) I a!45 (= M1 0))
       (or A
           (not B)
           (not C)
           (not D)
           (not E)
           F
           (not G)
           (not H)
           I
           (and R
                (not Q)
                (not P)
                (not O)
                (not N)
                (not M)
                L
                (not K)
                (not J)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= H1 G1)
                (= J1 I1)
                (= L1 K1))
           (<= X F1))
       (or A (not B) (not C) (not D) (not E) F (not G) H (not I) a!46 (<= 1 T))
       (or A (not B) (not C) (not D) (not E) (not F) G H I a!47 (<= T J1))
       (or A (not B) (not C) (not D) (not E) (not F) G H (not I) a!48 (<= 1 X))
       (or A (not B) (not C) (not D) (not E) (not F) (not G) H I a!49 (<= X F1))
       (or A
           (not B)
           (not C)
           (not D)
           (not E)
           (not F)
           (not G)
           H
           I
           (and (not R)
                Q
                P
                O
                N
                M
                L
                (not K)
                J
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= H1 G1)
                (= J1 I1)
                (= L1 K1))
           (not (<= X F1)))
       (or A
           (not B)
           (not C)
           (not D)
           (not E)
           (not F)
           G
           H
           (not I)
           (and (not R)
                Q
                P
                O
                N
                M
                (not L)
                K
                J
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= H1 G1)
                (= J1 I1)
                (= L1 K1))
           (not (<= 1 X)))
       (or A
           (not B)
           (not C)
           (not D)
           (not E)
           (not F)
           G
           H
           I
           (and (not R)
                Q
                P
                O
                N
                M
                (not L)
                (not K)
                J
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= H1 G1)
                (= J1 I1)
                (= L1 K1))
           (not (<= T J1)))
       (or A
           (not B)
           (not C)
           (not D)
           (not E)
           F
           (not G)
           H
           (not I)
           (and (not R)
                Q
                P
                O
                N
                (not M)
                L
                K
                J
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= H1 G1)
                (= J1 I1)
                (= L1 K1))
           (not (<= 1 T)))
       (or A
           (not B)
           (not C)
           (not D)
           (not E)
           F
           (not G)
           (not H)
           I
           (and (not R)
                Q
                P
                O
                N
                (not M)
                L
                K
                (not J)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= H1 G1)
                (= J1 I1)
                (= L1 K1))
           (not (<= X F1)))
       (or A
           (not B)
           (not C)
           D
           E
           (not F)
           G
           (not H)
           (not I)
           (and (not R)
                Q
                P
                O
                N
                (not M)
                L
                (not K)
                (not J)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= H1 G1)
                (= J1 I1)
                (= L1 K1))
           (<= V J1))
       (or A
           (not B)
           (not C)
           (not D)
           E
           F
           G
           (not H)
           (not I)
           (and (not R)
                Q
                P
                O
                N
                (not M)
                (not L)
                K
                (not J)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= H1 G1)
                (= J1 I1)
                (= L1 K1))
           (<= X F1))
       (or A (not B) (not C) (not D) E F (not G) H I a!50 (<= 1 V))
       (or A (not B) (not C) (not D) E F (not G) H (not I) a!51 (<= V J1))
       (or A (not B) (not C) (not D) E (not F) G H I a!52 (<= 1 X))
       (or A (not B) (not C) (not D) E (not F) G H (not I) a!53 (<= X F1))
       (or A
           (not B)
           (not C)
           (not D)
           E
           (not F)
           G
           H
           (not I)
           (and (not R)
                Q
                P
                O
                (not N)
                M
                (not L)
                K
                J
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= H1 G1)
                (= J1 I1)
                (= L1 K1))
           (not (<= X F1)))
       (or A
           (not B)
           (not C)
           (not D)
           E
           (not F)
           G
           H
           I
           (and (not R)
                Q
                P
                O
                (not N)
                M
                (not L)
                (not K)
                J
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= H1 G1)
                (= J1 I1)
                (= L1 K1))
           (not (<= 1 X)))
       (or A
           (not B)
           (not C)
           (not D)
           E
           F
           (not G)
           H
           (not I)
           (and (not R)
                Q
                P
                O
                (not N)
                (not M)
                L
                K
                J
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= H1 G1)
                (= J1 I1)
                (= L1 K1))
           (not (<= V J1)))
       (or A
           (not B)
           (not C)
           (not D)
           E
           F
           (not G)
           H
           I
           (and (not R)
                Q
                P
                O
                (not N)
                (not M)
                L
                (not K)
                J
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= H1 G1)
                (= J1 I1)
                (= L1 K1))
           (not (<= 1 V)))
       (or A
           (not B)
           (not C)
           (not D)
           E
           F
           G
           (not H)
           (not I)
           (and (not R)
                Q
                P
                O
                (not N)
                (not M)
                L
                (not K)
                (not J)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= H1 G1)
                (= J1 I1)
                (= L1 K1))
           (not (<= X F1)))
       (or A
           (not B)
           (not C)
           D
           E
           (not F)
           (not G)
           (not H)
           I
           (and (not R)
                Q
                P
                O
                (not N)
                (not M)
                (not L)
                K
                (not J)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= H1 G1)
                (= J1 I1)
                (= L1 K1))
           (<= X F1))
       (or A (not B) (not C) D E (not F) (not G) H (not I) a!54 (<= 1 V))
       (or A (not B) (not C) D (not E) F G H I a!55 (<= V J1))
       (or A (not B) (not C) D (not E) F G H (not I) a!56 (<= 1 T))
       (or A (not B) (not C) D (not E) F (not G) H I a!57 (<= T J1))
       (or A (not B) (not C) D (not E) F (not G) H (not I) a!58 (<= 1 X))
       (or A (not B) (not C) D (not E) (not F) G H I a!59 (<= X F1))
       (or A
           (not B)
           (not C)
           D
           (not E)
           (not F)
           G
           H
           I
           (and (not R)
                Q
                P
                (not O)
                N
                M
                (not L)
                (not K)
                J
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= H1 G1)
                (= J1 I1)
                (= L1 K1))
           (not (<= X F1)))
       (or A
           (not B)
           (not C)
           D
           (not E)
           F
           (not G)
           H
           (not I)
           (and (not R)
                Q
                P
                (not O)
                N
                (not M)
                L
                K
                J
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= H1 G1)
                (= J1 I1)
                (= L1 K1))
           (not (<= 1 X)))
       (or A
           (not B)
           (not C)
           D
           (not E)
           F
           (not G)
           H
           I
           (and (not R)
                Q
                P
                (not O)
                N
                (not M)
                L
                (not K)
                J
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= H1 G1)
                (= J1 I1)
                (= L1 K1))
           (not (<= T J1)))
       (or A
           (not B)
           (not C)
           D
           (not E)
           F
           G
           H
           (not I)
           (and (not R)
                Q
                P
                (not O)
                N
                (not M)
                (not L)
                K
                J
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= H1 G1)
                (= J1 I1)
                (= L1 K1))
           (not (<= 1 T)))
       (or A
           (not B)
           (not C)
           D
           (not E)
           F
           G
           H
           I
           (and (not R)
                Q
                P
                (not O)
                N
                (not M)
                (not L)
                (not K)
                J
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= H1 G1)
                (= J1 I1)
                (= L1 K1))
           (not (<= V J1)))
       (or A
           (not B)
           (not C)
           D
           E
           (not F)
           (not G)
           H
           (not I)
           (and (not R)
                Q
                P
                (not O)
                (not N)
                M
                L
                K
                J
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= H1 G1)
                (= J1 I1)
                (= L1 K1))
           (not (<= 1 V)))
       (or A
           (not B)
           (not C)
           D
           E
           (not F)
           (not G)
           (not H)
           I
           (and (not R)
                Q
                P
                (not O)
                (not N)
                M
                L
                K
                (not J)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= H1 G1)
                (= J1 I1)
                (= L1 K1))
           (not (<= X F1)))
       (or A
           (not B)
           (not C)
           D
           E
           (not F)
           G
           (not H)
           (not I)
           (and (not R)
                Q
                P
                (not O)
                (not N)
                M
                L
                (not K)
                (not J)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= H1 G1)
                (= J1 I1)
                (= L1 K1))
           (not (<= V J1)))
       (or A
           B
           (not C)
           (not D)
           (not E)
           (not F)
           G
           (not H)
           (not I)
           (and (not R)
                Q
                P
                (not O)
                (not N)
                M
                (not L)
                K
                (not J)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= H1 G1)
                (= J1 I1)
                (= L1 K1))
           (<= X F1))
       (or A B (not C) (not D) (not E) (not F) (not G) H I a!60 (<= 1 T))
       (or A B (not C) (not D) (not E) (not F) (not G) H (not I) a!61 (<= T J1))
       (or A (not B) (not C) D E F G H I a!62 (<= 1 X))
       (or A (not B) (not C) D E F G H (not I) a!63 (<= X F1))
       (or A
           (not B)
           (not C)
           D
           E
           F
           G
           H
           (not I)
           (and (not R)
                Q
                P
                (not O)
                (not N)
                (not M)
                (not L)
                K
                J
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= H1 G1)
                (= J1 I1)
                (= L1 K1))
           (not (<= X F1)))
       (or A
           (not B)
           (not C)
           D
           E
           F
           G
           H
           I
           (and (not R)
                Q
                P
                (not O)
                (not N)
                (not M)
                (not L)
                (not K)
                J
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= H1 G1)
                (= J1 I1)
                (= L1 K1))
           (not (<= 1 X)))
       (or A
           B
           (not C)
           (not D)
           (not E)
           (not F)
           (not G)
           H
           (not I)
           (and (not R)
                Q
                (not P)
                O
                N
                M
                L
                K
                J
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= H1 G1)
                (= J1 I1)
                (= L1 K1))
           (not (<= T J1)))
       (or A
           B
           (not C)
           (not D)
           (not E)
           (not F)
           (not G)
           H
           I
           (and (not R)
                Q
                (not P)
                O
                N
                M
                L
                (not K)
                J
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= H1 G1)
                (= J1 I1)
                (= L1 K1))
           (not (<= 1 T)))
       (or A
           B
           (not C)
           (not D)
           (not E)
           (not F)
           G
           (not H)
           (not I)
           (and (not R)
                Q
                (not P)
                O
                N
                M
                L
                (not K)
                (not J)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= H1 G1)
                (= J1 I1)
                (= L1 K1))
           (not (<= X F1)))
       (or A
           B
           (not C)
           (not D)
           (not E)
           (not F)
           G
           H
           I
           (and (not R)
                Q
                (not P)
                O
                N
                M
                (not L)
                (not K)
                J
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= H1 G1)
                (= J1 I1)
                (= L1 K1))
           (not (<= Z F1)))
       (or A
           B
           (not C)
           (not D)
           (not E)
           F
           (not G)
           H
           (not I)
           (and (not R)
                Q
                (not P)
                O
                N
                (not M)
                L
                K
                J
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= H1 G1)
                (= J1 I1)
                (= L1 K1))
           (not (<= 1 Z)))
       (or A
           B
           (not C)
           (not D)
           (not E)
           F
           (not G)
           H
           I
           (and (not R)
                Q
                (not P)
                O
                N
                (not M)
                L
                (not K)
                J
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= H1 G1)
                (= J1 I1)
                (= L1 K1))
           (not (<= T J1)))
       (or A
           B
           (not C)
           (not D)
           (not E)
           F
           G
           H
           (not I)
           (and (not R)
                Q
                (not P)
                O
                N
                (not M)
                (not L)
                K
                J
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= H1 G1)
                (= J1 I1)
                (= L1 K1))
           (not (<= 1 T)))
       (or A
           B
           (not C)
           (not D)
           (not E)
           F
           G
           H
           I
           (and (not R)
                Q
                (not P)
                O
                N
                (not M)
                (not L)
                (not K)
                J
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= H1 G1)
                (= J1 I1)
                (= L1 K1))
           (not (<= Z F1)))
       (or A
           B
           (not C)
           (not D)
           E
           (not F)
           (not G)
           H
           (not I)
           (and (not R)
                Q
                (not P)
                O
                (not N)
                M
                L
                K
                J
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= H1 G1)
                (= J1 I1)
                (= L1 K1))
           (not (<= 1 Z)))
       (or A
           B
           (not C)
           (not D)
           E
           (not F)
           (not G)
           H
           I
           (and (not R)
                Q
                (not P)
                O
                (not N)
                M
                L
                (not K)
                J
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= H1 G1)
                (= J1 I1)
                (= L1 K1))
           (not (<= T J1)))
       (or A
           B
           (not C)
           (not D)
           E
           (not F)
           G
           H
           (not I)
           (and (not R)
                Q
                (not P)
                O
                (not N)
                M
                (not L)
                K
                J
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= H1 G1)
                (= J1 I1)
                (= L1 K1))
           (not (<= 1 T)))
       (or A
           B
           (not C)
           D
           E
           (not F)
           (not G)
           (not H)
           (not I)
           (and (not R)
                Q
                (not P)
                O
                (not N)
                M
                (not L)
                K
                (not J)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= H1 G1)
                (= J1 I1)
                (= L1 K1))
           (<= X F1))
       (or A B (not C) D (not E) F G H I a!64 (<= 1 T))
       (or A B (not C) D (not E) F G H (not I) a!65 (<= T J1))
       (or A B (not C) D (not E) F (not G) H I a!66 (<= 1 X))
       (or A B (not C) D (not E) F (not G) H (not I) a!67 (<= X F1))
       (or A B (not C) D (not E) (not F) G H I a!68 (<= 1 T))
       (or A B (not C) D (not E) (not F) G H (not I) a!69 (<= T J1))
       (or A B (not C) D (not E) (not F) (not G) H I a!70 (<= 1 X))
       (or A B (not C) D (not E) (not F) (not G) H (not I) a!71 (<= X F1))
       (or A
           B
           (not C)
           D
           (not E)
           (not F)
           (not G)
           H
           (not I)
           (and (not R)
                Q
                (not P)
                (not O)
                N
                M
                L
                K
                J
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= H1 G1)
                (= J1 I1)
                (= L1 K1))
           (not (<= X F1)))
       (or A
           B
           (not C)
           D
           (not E)
           (not F)
           (not G)
           H
           I
           (and (not R)
                Q
                (not P)
                (not O)
                N
                M
                L
                (not K)
                J
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= H1 G1)
                (= J1 I1)
                (= L1 K1))
           (not (<= 1 X)))
       (or A
           B
           (not C)
           D
           (not E)
           (not F)
           G
           H
           (not I)
           (and (not R)
                Q
                (not P)
                (not O)
                N
                M
                (not L)
                K
                J
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= H1 G1)
                (= J1 I1)
                (= L1 K1))
           (not (<= T J1)))
       (or A
           B
           (not C)
           D
           (not E)
           (not F)
           G
           H
           I
           (and (not R)
                Q
                (not P)
                (not O)
                N
                M
                (not L)
                (not K)
                J
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= H1 G1)
                (= J1 I1)
                (= L1 K1))
           (not (<= 1 T)))
       (or A
           B
           (not C)
           D
           (not E)
           F
           (not G)
           H
           (not I)
           (and (not R)
                Q
                (not P)
                (not O)
                N
                (not M)
                L
                K
                J
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= H1 G1)
                (= J1 I1)
                (= L1 K1))
           (not (<= X F1)))
       (or A
           B
           (not C)
           D
           (not E)
           F
           (not G)
           H
           I
           (and (not R)
                Q
                (not P)
                (not O)
                N
                (not M)
                L
                (not K)
                J
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= H1 G1)
                (= J1 I1)
                (= L1 K1))
           (not (<= 1 X)))
       (or A
           B
           (not C)
           D
           (not E)
           F
           G
           H
           (not I)
           (and (not R)
                Q
                (not P)
                (not O)
                N
                (not M)
                (not L)
                K
                J
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= H1 G1)
                (= J1 I1)
                (= L1 K1))
           (not (<= T J1)))
       (or A
           B
           (not C)
           D
           (not E)
           F
           G
           H
           I
           (and (not R)
                Q
                (not P)
                (not O)
                N
                (not M)
                (not L)
                (not K)
                J
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= H1 G1)
                (= J1 I1)
                (= L1 K1))
           (not (<= 1 T)))
       (or A
           B
           (not C)
           D
           E
           (not F)
           (not G)
           (not H)
           (not I)
           (and (not R)
                Q
                (not P)
                (not O)
                N
                (not M)
                (not L)
                (not K)
                (not J)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= H1 G1)
                (= J1 I1)
                (= L1 K1))
           (not (<= X F1)))
       (or A
           B
           (not C)
           D
           E
           (not F)
           (not G)
           (not H)
           I
           (and (not R)
                Q
                (not P)
                (not O)
                (not N)
                M
                L
                K
                (not J)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= H1 G1)
                (= J1 I1)
                (= L1 K1))
           (not (= M1 0)))
       (or A
           (not B)
           C
           (not D)
           (not E)
           (not F)
           (not G)
           H
           (not I)
           (and (not R)
                Q
                (not P)
                (not O)
                (not N)
                M
                L
                (not K)
                J
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= H1 G1)
                (= J1 I1)
                (= L1 K1))
           (<= X F1))
       (or A
           (not B)
           C
           (not D)
           (not E)
           (not F)
           (not G)
           (not H)
           (not I)
           a!72
           (<= 1 T))
       (or A B (not C) D E F G (not H) I a!73 (<= T J1))
       (or A B (not C) D E F G (not H) (not I) a!74 (<= 1 X))
       (or A B (not C) D E F (not G) (not H) I a!75 (<= X F1))
       (or A
           B
           (not C)
           D
           E
           F
           (not G)
           (not H)
           I
           (and (not R)
                Q
                (not P)
                (not O)
                (not N)
                (not M)
                L
                K
                (not J)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= H1 G1)
                (= J1 I1)
                (= L1 K1))
           (not (<= X F1)))
       (or A
           B
           (not C)
           D
           E
           F
           G
           (not H)
           (not I)
           (and (not R)
                Q
                (not P)
                (not O)
                (not N)
                (not M)
                L
                (not K)
                (not J)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= H1 G1)
                (= J1 I1)
                (= L1 K1))
           (not (<= 1 X)))
       (or A
           B
           (not C)
           D
           E
           F
           G
           (not H)
           I
           (and (not R)
                Q
                (not P)
                (not O)
                (not N)
                (not M)
                (not L)
                K
                (not J)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= H1 G1)
                (= J1 I1)
                (= L1 K1))
           (not (<= T J1)))
       (or A
           (not B)
           C
           (not D)
           (not E)
           (not F)
           (not G)
           (not H)
           (not I)
           (and (not R)
                Q
                (not P)
                (not O)
                (not N)
                (not M)
                (not L)
                (not K)
                (not J)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= H1 G1)
                (= J1 I1)
                (= L1 K1))
           (not (<= 1 T)))
       (or A
           (not B)
           C
           (not D)
           (not E)
           (not F)
           (not G)
           H
           (not I)
           (and (not R)
                (not Q)
                P
                O
                N
                M
                L
                K
                J
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= H1 G1)
                (= J1 I1)
                (= L1 K1))
           (not (<= X F1)))
       (or A B C D E (not F) G H I a!76 (<= T J1))
       (or A B C D (not E) (not F) G (not H) I a!77 (= M1 0))
       (or A
           (not B)
           C
           (not D)
           E
           (not F)
           G
           (not H)
           (not I)
           (and (not R)
                (not Q)
                P
                O
                N
                M
                (not L)
                K
                (not J)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= H1 G1)
                (= J1 I1)
                (= L1 K1))
           (<= X J1))
       (or A (not B) C (not D) E (not F) (not G) H I a!78 (<= 1 X))
       (or A (not B) C (not D) E (not F) (not G) H (not I) a!79 (<= X J1))
       (or A (not B) C (not D) (not E) F G H I a!80 (<= 1 T))
       (or A (not B) C (not D) (not E) F G H (not I) a!81 (<= T F1))
       (or A
           (not B)
           C
           (not D)
           (not E)
           F
           G
           H
           (not I)
           (and (not R)
                (not Q)
                P
                O
                N
                (not M)
                (not L)
                K
                J
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= H1 G1)
                (= J1 I1)
                (= L1 K1))
           (not (<= T F1)))
       (or A
           (not B)
           C
           (not D)
           (not E)
           F
           G
           H
           I
           (and (not R)
                (not Q)
                P
                O
                N
                (not M)
                (not L)
                (not K)
                J
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= H1 G1)
                (= J1 I1)
                (= L1 K1))
           (not (<= 1 T)))
       (or A
           (not B)
           C
           (not D)
           E
           (not F)
           (not G)
           H
           (not I)
           (and (not R)
                (not Q)
                P
                O
                (not N)
                M
                L
                K
                J
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= H1 G1)
                (= J1 I1)
                (= L1 K1))
           (not (<= X J1)))
       (or A
           (not B)
           C
           (not D)
           E
           (not F)
           (not G)
           H
           I
           (and (not R)
                (not Q)
                P
                O
                (not N)
                M
                L
                (not K)
                J
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= H1 G1)
                (= J1 I1)
                (= L1 K1))
           (not (<= 1 X)))
       (or A
           (not B)
           C
           (not D)
           E
           (not F)
           G
           (not H)
           (not I)
           (and (not R)
                (not Q)
                P
                O
                (not N)
                M
                L
                (not K)
                (not J)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= H1 G1)
                (= J1 I1)
                (= L1 K1))
           (not (<= X J1)))
       (or A
           B
           C
           (not D)
           (not E)
           (not F)
           G
           (not H)
           (not I)
           (and (not R)
                (not Q)
                P
                O
                (not N)
                M
                (not L)
                K
                (not J)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= H1 G1)
                (= J1 I1)
                (= L1 K1))
           (<= V F1))
       (or A
           (not B)
           C
           D
           (not E)
           F
           G
           (not H)
           (not I)
           (and (not R)
                (not Q)
                P
                O
                (not N)
                M
                (not L)
                (not K)
                (not J)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= H1 G1)
                (= J1 I1)
                (= L1 K1))
           (<= X J1))
       (or A (not B) C D (not E) F (not G) H I a!82 (<= 1 X))
       (or A (not B) C D (not E) F (not G) H (not I) a!83 (<= X J1))
       (or A (not B) C D (not E) (not F) G H I a!84 (<= 1 T))
       (or A (not B) C D (not E) (not F) G H (not I) a!85 (<= T F1))
       (or A (not B) C D (not E) (not F) (not G) H I a!86 (<= 1 V))
       (or A (not B) C D (not E) (not F) (not G) H (not I) a!87 (<= V F1))
       (or A
           (not B)
           C
           D
           (not E)
           (not F)
           (not G)
           H
           (not I)
           (and (not R)
                (not Q)
                P
                (not O)
                N
                M
                L
                K
                J
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= H1 G1)
                (= J1 I1)
                (= L1 K1))
           (not (<= V F1)))
       (or A
           (not B)
           C
           D
           (not E)
           (not F)
           (not G)
           H
           I
           (and (not R)
                (not Q)
                P
                (not O)
                N
                M
                L
                (not K)
                J
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= H1 G1)
                (= J1 I1)
                (= L1 K1))
           (not (<= 1 V)))
       (or A
           (not B)
           C
           D
           (not E)
           (not F)
           G
           H
           (not I)
           (and (not R)
                (not Q)
                P
                (not O)
                N
                M
                (not L)
                K
                J
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= H1 G1)
                (= J1 I1)
                (= L1 K1))
           (not (<= T F1)))
       (or A
           (not B)
           C
           D
           (not E)
           (not F)
           G
           H
           I
           (and (not R)
                (not Q)
                P
                (not O)
                N
                M
                (not L)
                (not K)
                J
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= H1 G1)
                (= J1 I1)
                (= L1 K1))
           (not (<= 1 T)))
       (or A
           (not B)
           C
           D
           (not E)
           F
           (not G)
           H
           (not I)
           (and (not R)
                (not Q)
                P
                (not O)
                N
                (not M)
                L
                K
                J
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= H1 G1)
                (= J1 I1)
                (= L1 K1))
           (not (<= X J1)))
       (or A
           (not B)
           C
           D
           (not E)
           F
           (not G)
           H
           I
           (and (not R)
                (not Q)
                P
                (not O)
                N
                (not M)
                L
                (not K)
                J
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= H1 G1)
                (= J1 I1)
                (= L1 K1))
           (not (<= 1 X)))
       (or A
           (not B)
           C
           D
           (not E)
           F
           G
           (not H)
           (not I)
           (and (not R)
                (not Q)
                P
                (not O)
                N
                (not M)
                L
                (not K)
                (not J)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= H1 G1)
                (= J1 I1)
                (= L1 K1))
           (not (<= X J1)))
       (or A
           B
           C
           (not D)
           (not E)
           (not F)
           (not G)
           (not H)
           I
           (and (not R)
                (not Q)
                P
                (not O)
                N
                (not M)
                (not L)
                K
                (not J)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= H1 G1)
                (= J1 I1)
                (= L1 K1))
           (<= X J1))
       (or A B C (not D) (not E) (not F) (not G) H (not I) a!88 (<= 1 X))
       (or A (not B) C D E F G H I a!89 (<= X J1))
       (or A (not B) C D E F G H (not I) a!90 (<= 1 T))
       (or A (not B) C D E F (not G) H I a!91 (<= T F1))
       (or A (not B) C D E F (not G) H (not I) a!92 (<= 1 V))
       (or A (not B) C D E (not F) G H I a!93 (<= V F1))
       (or A
           (not B)
           C
           D
           E
           (not F)
           G
           H
           I
           (and (not R)
                (not Q)
                P
                (not O)
                (not N)
                M
                (not L)
                (not K)
                J
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= H1 G1)
                (= J1 I1)
                (= L1 K1))
           (not (<= V F1)))
       (or A
           (not B)
           C
           D
           E
           F
           (not G)
           H
           (not I)
           (and (not R)
                (not Q)
                P
                (not O)
                (not N)
                (not M)
                L
                K
                J
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= H1 G1)
                (= J1 I1)
                (= L1 K1))
           (not (<= 1 V)))
       (or A
           (not B)
           C
           D
           E
           F
           (not G)
           H
           I
           (and (not R)
                (not Q)
                P
                (not O)
                (not N)
                (not M)
                L
                (not K)
                J
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= H1 G1)
                (= J1 I1)
                (= L1 K1))
           (not (<= T F1)))
       (or A
           (not B)
           C
           D
           E
           F
           G
           H
           (not I)
           (and (not R)
                (not Q)
                P
                (not O)
                (not N)
                (not M)
                (not L)
                K
                J
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= H1 G1)
                (= J1 I1)
                (= L1 K1))
           (not (<= 1 T)))
       (or A
           (not B)
           C
           D
           E
           F
           G
           H
           I
           (and (not R)
                (not Q)
                P
                (not O)
                (not N)
                (not M)
                (not L)
                (not K)
                J
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= H1 G1)
                (= J1 I1)
                (= L1 K1))
           (not (<= X J1)))
       (or A
           B
           C
           (not D)
           (not E)
           (not F)
           (not G)
           H
           (not I)
           (and (not R)
                (not Q)
                (not P)
                O
                N
                M
                L
                K
                J
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= H1 G1)
                (= J1 I1)
                (= L1 K1))
           (not (<= 1 X)))
       (or A
           B
           C
           (not D)
           (not E)
           (not F)
           (not G)
           (not H)
           I
           (and (not R)
                (not Q)
                (not P)
                O
                N
                M
                L
                K
                (not J)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= H1 G1)
                (= J1 I1)
                (= L1 K1))
           (not (<= X J1)))
       (or A
           B
           C
           (not D)
           (not E)
           (not F)
           G
           (not H)
           (not I)
           (and (not R)
                (not Q)
                (not P)
                O
                N
                M
                L
                (not K)
                (not J)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= H1 G1)
                (= J1 I1)
                (= L1 K1))
           (not (<= V F1)))
       (or A
           B
           C
           (not D)
           (not E)
           (not F)
           G
           H
           I
           (and (not R)
                (not Q)
                (not P)
                O
                N
                M
                (not L)
                (not K)
                J
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= H1 G1)
                (= J1 I1)
                (= L1 K1))
           (not (<= T F1)))
       (or A
           B
           C
           (not D)
           (not E)
           F
           (not G)
           H
           (not I)
           (and (not R)
                (not Q)
                (not P)
                O
                N
                (not M)
                L
                K
                J
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= H1 G1)
                (= J1 I1)
                (= L1 K1))
           (not (<= 1 T)))
       (or A
           B
           C
           (not D)
           (not E)
           F
           (not G)
           H
           I
           (and (not R)
                (not Q)
                (not P)
                O
                N
                (not M)
                L
                (not K)
                J
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= H1 G1)
                (= J1 I1)
                (= L1 K1))
           (not (<= T J1)))
       (or A
           B
           C
           (not D)
           (not E)
           F
           G
           H
           (not I)
           (and (not R)
                (not Q)
                (not P)
                O
                N
                (not M)
                (not L)
                K
                J
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= H1 G1)
                (= J1 I1)
                (= L1 K1))
           (not (<= 1 T)))
       (or A
           B
           C
           (not D)
           (not E)
           F
           G
           H
           I
           (and (not R)
                (not Q)
                (not P)
                O
                N
                (not M)
                (not L)
                (not K)
                J
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= H1 G1)
                (= J1 I1)
                (= L1 K1))
           (not (<= T F1)))
       (or A
           B
           C
           (not D)
           E
           (not F)
           (not G)
           H
           (not I)
           (and (not R)
                (not Q)
                (not P)
                O
                (not N)
                M
                L
                K
                J
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= H1 G1)
                (= J1 I1)
                (= L1 K1))
           (not (<= 1 T)))
       (or A
           B
           C
           (not D)
           E
           (not F)
           (not G)
           H
           I
           (and (not R)
                (not Q)
                (not P)
                O
                (not N)
                M
                L
                (not K)
                J
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= H1 G1)
                (= J1 I1)
                (= L1 K1))
           (not (<= T J1)))
       (or A
           B
           C
           (not D)
           E
           (not F)
           G
           H
           (not I)
           (and (not R)
                (not Q)
                (not P)
                O
                (not N)
                M
                (not L)
                K
                J
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= H1 G1)
                (= J1 I1)
                (= L1 K1))
           (not (<= 1 T)))
       (or A
           B
           C
           D
           (not E)
           (not F)
           G
           (not H)
           (not I)
           (and (not R)
                (not Q)
                (not P)
                O
                (not N)
                M
                (not L)
                K
                (not J)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= H1 G1)
                (= J1 I1)
                (= L1 K1))
           (<= X J1))
       (or A B C D (not E) (not F) (not G) H I a!94 (<= 1 X))
       (or A B C D (not E) (not F) (not G) H (not I) a!95 (<= X J1))
       (or A B C (not D) E F G H I a!96 (<= 1 T))
       (or A B C (not D) E F G H (not I) a!97 (<= T F1))
       (or A
           B
           C
           (not D)
           E
           F
           G
           H
           (not I)
           (and (not R)
                (not Q)
                (not P)
                O
                (not N)
                (not M)
                (not L)
                K
                J
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= H1 G1)
                (= J1 I1)
                (= L1 K1))
           (not (<= T F1)))
       (or A
           B
           C
           (not D)
           E
           F
           G
           H
           I
           (and (not R)
                (not Q)
                (not P)
                O
                (not N)
                (not M)
                (not L)
                (not K)
                J
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= H1 G1)
                (= J1 I1)
                (= L1 K1))
           (not (<= 1 T)))
       (or A
           B
           C
           D
           (not E)
           (not F)
           (not G)
           H
           (not I)
           (and (not R)
                (not Q)
                (not P)
                (not O)
                N
                M
                L
                K
                J
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= H1 G1)
                (= J1 I1)
                (= L1 K1))
           (not (<= X J1)))
       (or A
           B
           C
           D
           (not E)
           (not F)
           (not G)
           H
           I
           (and (not R)
                (not Q)
                (not P)
                (not O)
                N
                M
                L
                (not K)
                J
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= H1 G1)
                (= J1 I1)
                (= L1 K1))
           (not (<= 1 X)))
       (or A
           B
           C
           D
           (not E)
           (not F)
           G
           (not H)
           (not I)
           (and (not R)
                (not Q)
                (not P)
                (not O)
                N
                M
                L
                (not K)
                (not J)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= H1 G1)
                (= J1 I1)
                (= L1 K1))
           (not (<= X J1)))
       (or A
           B
           C
           D
           (not E)
           (not F)
           G
           (not H)
           I
           (and (not R)
                (not Q)
                (not P)
                (not O)
                N
                M
                (not L)
                K
                (not J)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= H1 G1)
                (= J1 I1)
                (= L1 K1))
           (not (= M1 0)))
       (or A
           B
           C
           D
           E
           (not F)
           G
           H
           (not I)
           (and (not R)
                (not Q)
                (not P)
                (not O)
                N
                M
                (not L)
                (not K)
                J
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= H1 G1)
                (= J1 I1)
                (= L1 K1))
           (<= X J1))
       (or A B C D E (not F) G (not H) (not I) a!98 (<= 1 X))
       (or A B C D E (not F) (not G) (not H) I a!99 (<= X J1))
       (or A B C D E (not F) (not G) (not H) (not I) a!100 (<= 1 T))
       (or A B C D (not E) F G (not H) I a!101 (<= T F1))
       (or A
           B
           C
           D
           (not E)
           F
           G
           (not H)
           I
           (and (not R)
                (not Q)
                (not P)
                (not O)
                N
                (not M)
                (not L)
                K
                (not J)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= H1 G1)
                (= J1 I1)
                (= L1 K1))
           (not (<= T F1)))
       (or A
           B
           C
           D
           E
           (not F)
           (not G)
           (not H)
           (not I)
           (and (not R)
                (not Q)
                (not P)
                (not O)
                N
                (not M)
                (not L)
                (not K)
                (not J)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= H1 G1)
                (= J1 I1)
                (= L1 K1))
           (not (<= 1 T)))
       (or A
           B
           C
           D
           E
           (not F)
           (not G)
           (not H)
           I
           (and (not R)
                (not Q)
                (not P)
                (not O)
                (not N)
                M
                L
                K
                (not J)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= H1 G1)
                (= J1 I1)
                (= L1 K1))
           (not (<= X J1)))
       (or A
           B
           C
           D
           E
           (not F)
           G
           (not H)
           (not I)
           (and (not R)
                (not Q)
                (not P)
                (not O)
                (not N)
                M
                L
                (not K)
                (not J)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= H1 G1)
                (= J1 I1)
                (= L1 K1))
           (not (<= 1 X)))
       (or A
           B
           C
           D
           E
           (not F)
           G
           H
           (not I)
           (and (not R)
                (not Q)
                (not P)
                (not O)
                (not N)
                M
                (not L)
                K
                J
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= H1 G1)
                (= J1 I1)
                (= L1 K1))
           (not (<= X J1)))
       (or A
           B
           C
           D
           E
           (not F)
           G
           H
           I
           (and (not R)
                (not Q)
                (not P)
                (not O)
                (not N)
                M
                (not L)
                (not K)
                J
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= H1 G1)
                (= J1 I1)
                (= L1 K1))
           (not (<= T J1)))
       (or A
           B
           C
           D
           E
           F
           (not G)
           H
           (not I)
           (and (not R)
                (not Q)
                (not P)
                (not O)
                (not N)
                (not M)
                L
                K
                J
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= H1 G1)
                (= J1 I1)
                (= L1 K1))
           (not (<= T F1)))
       (or A
           B
           C
           D
           E
           F
           (not G)
           H
           I
           (and (not R)
                (not Q)
                (not P)
                (not O)
                (not N)
                (not M)
                L
                (not K)
                J
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= H1 G1)
                (= J1 I1)
                (= L1 K1))
           (not (<= 1 T)))
       (or A
           B
           C
           D
           E
           F
           G
           H
           (not I)
           (and (not R)
                (not Q)
                (not P)
                (not O)
                (not N)
                (not M)
                (not L)
                K
                J
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= H1 G1)
                (= J1 I1)
                (= L1 K1))
           (not (<= T F1)))
       a!103
       (or (not A) B C D E F (not G) H (not I) a!104)
       (or (not A) (not B) C (not D) (not E) (not F) G (not H) I a!105)
       (or (not A)
           B
           C
           D
           (not E)
           (not F)
           G
           H
           (not I)
           (and R
                (not Q)
                (not P)
                (not O)
                N
                M
                (not L)
                K
                J
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= F1 S)
                (= H1 G1)
                (= J1 I1)
                (= L1 K1)))
       (or A
           B
           C
           D
           E
           F
           G
           (not H)
           I
           (and (not R)
                (not Q)
                (not P)
                (not O)
                (not N)
                (not M)
                (not L)
                K
                (not J)
                (= S 1)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= H1 G1)
                (= J1 I1)
                (= L1 K1)))
       (or (not A) (not B) C (not D) E (not F) G H (not I) a!106)
       (or (not A) (not B) C D (not E) (not F) (not G) (not H) I a!107)
       (or (not A) B C (not D) E (not F) (not G) (not H) I a!108)
       (or A (not B) (not C) (not D) (not E) F G H (not I) a!109)
       (or A (not B) C (not D) E (not F) G H I a!110)
       (or (not A)
           (not B)
           C
           (not D)
           E
           F
           G
           H
           I
           (and R
                (not Q)
                P
                O
                (not N)
                (not M)
                (not L)
                (not K)
                J
                (= T S)
                (= X W)
                (= Z Y)
                (= Z U)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= H1 G1)
                (= J1 I1)
                (= L1 K1)))
       (or (not A)
           B
           C
           (not D)
           (not E)
           F
           (not G)
           (not H)
           I
           (and R
                (not Q)
                (not P)
                O
                N
                (not M)
                L
                K
                (not J)
                (= T S)
                (= X W)
                (= Z Y)
                (= Z U)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= H1 G1)
                (= J1 I1)
                (= L1 K1)))
       (or (not A)
           B
           C
           D
           (not E)
           (not F)
           (not G)
           (not H)
           (not I)
           (and R
                (not Q)
                (not P)
                O
                (not N)
                (not M)
                (not L)
                (not K)
                (not J)
                (= T S)
                (= X W)
                (= Z Y)
                (= Z U)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= H1 G1)
                (= J1 I1)
                (= L1 K1)))
       (or A
           (not B)
           (not C)
           D
           E
           (not F)
           G
           H
           (not I)
           (and (not R)
                Q
                P
                (not O)
                (not N)
                M
                (not L)
                K
                J
                (= T S)
                (= X W)
                (= Z Y)
                (= Z U)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= H1 G1)
                (= J1 I1)
                (= L1 K1)))
       (or A
           B
           C
           (not D)
           (not E)
           (not F)
           G
           H
           (not I)
           (and (not R)
                (not Q)
                (not P)
                O
                N
                M
                (not L)
                K
                J
                (= T S)
                (= X W)
                (= Z Y)
                (= Z U)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= H1 G1)
                (= J1 I1)
                (= L1 K1)))
       (or (not A) (not B) C D (not E) F (not G) (not H) I a!111)
       (or (not A) (not B) C D E F G (not H) I a!112)
       (or A (not B) (not C) (not D) (not E) (not F) (not G) H (not I) a!113)
       (or A (not B) (not C) (not D) E (not F) (not G) H I a!114)
       (or A (not B) (not C) D (not E) (not F) G H (not I) a!115)
       (or A (not B) (not C) D E F (not G) H I a!116)
       (or A B (not C) (not D) E F G H I a!117)
       (or A B (not C) D E F (not G) (not H) (not I) a!118)
       (or A (not B) C (not D) (not E) F (not G) H I a!119)
       (or A (not B) C (not D) E F G H I a!120)
       (or A (not B) C D E (not F) G H (not I) a!121)
       (or A B C (not D) E F (not G) H I a!122)
       (or A B C D (not E) F G (not H) (not I) a!123)
       (or (not A)
           (not B)
           C
           D
           E
           F
           (not G)
           (not H)
           (not I)
           (and R
                (not Q)
                P
                (not O)
                (not N)
                M
                (not L)
                (not K)
                (not J)
                (= T S)
                (= V U)
                (= Z Y)
                (= Z W)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= H1 G1)
                (= J1 I1)
                (= L1 K1)))
       (or (not A)
           B
           C
           (not D)
           (not E)
           F
           (not G)
           (not H)
           (not I)
           (and R
                (not Q)
                (not P)
                O
                N
                M
                (not L)
                (not K)
                (not J)
                (= T S)
                (= V U)
                (= Z Y)
                (= Z W)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= H1 G1)
                (= J1 I1)
                (= L1 K1)))
       (or A
           (not B)
           (not C)
           (not D)
           (not E)
           F
           (not G)
           H
           I
           (and (not R)
                Q
                P
                O
                N
                (not M)
                L
                (not K)
                J
                (= T S)
                (= V U)
                (= Z Y)
                (= Z W)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= H1 G1)
                (= J1 I1)
                (= L1 K1)))
       (or A
           (not B)
           (not C)
           (not D)
           E
           F
           G
           H
           (not I)
           (and (not R)
                Q
                P
                O
                (not N)
                (not M)
                (not L)
                K
                J
                (= T S)
                (= V U)
                (= Z Y)
                (= Z W)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= H1 G1)
                (= J1 I1)
                (= L1 K1)))
       (or A
           (not B)
           (not C)
           D
           E
           (not F)
           (not G)
           H
           I
           (and (not R)
                Q
                P
                (not O)
                (not N)
                M
                L
                (not K)
                J
                (= T S)
                (= V U)
                (= Z Y)
                (= Z W)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= H1 G1)
                (= J1 I1)
                (= L1 K1)))
       (or A
           B
           (not C)
           (not D)
           (not E)
           (not F)
           G
           H
           (not I)
           (and (not R)
                Q
                (not P)
                O
                N
                M
                (not L)
                K
                J
                (= T S)
                (= V U)
                (= Z Y)
                (= Z W)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= H1 G1)
                (= J1 I1)
                (= L1 K1)))
       (or A
           B
           (not C)
           D
           E
           (not F)
           (not G)
           H
           (not I)
           (and (not R)
                Q
                (not P)
                (not O)
                (not N)
                M
                L
                K
                J
                (= T S)
                (= V U)
                (= Z Y)
                (= Z W)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= H1 G1)
                (= J1 I1)
                (= L1 K1)))
       (or A
           (not B)
           C
           (not D)
           (not E)
           (not F)
           (not G)
           (not H)
           I
           (and (not R)
                (not Q)
                P
                O
                N
                M
                L
                K
                (not J)
                (= T S)
                (= V U)
                (= Z Y)
                (= Z W)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= H1 G1)
                (= J1 I1)
                (= L1 K1)))
       (or (not A) B C D (not E) (not F) (not G) H I a!124)
       (or A B C D E F G (not H) (not I) a!125)
       (or (not A) (not B) C (not D) (not E) (not F) (not G) H (not I) a!1)
       (or (not A) (not B) C (not D) (not E) (not F) (not G) (not H) I a!2)
       (or (not A) (not B) C (not D) (not E) (not F) (not G) H I a!3)
       (or (not A) (not B) C (not D) (not E) (not F) G (not H) (not I) a!4)
       (or (not A)
           (not B)
           C
           (not D)
           (not E)
           (not F)
           G
           H
           I
           (and R
                (not Q)
                P
                O
                N
                M
                (not L)
                (not K)
                J
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= H1 G1)
                (= J1 I1)
                (= L1 K1)))
       (or (not A)
           (not B)
           C
           (not D)
           (not E)
           F
           (not G)
           H
           (not I)
           (and R
                (not Q)
                P
                O
                N
                (not M)
                L
                K
                J
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= H1 G1)
                (= J1 I1)
                (= L1 K1)))
       (or (not A)
           (not B)
           C
           (not D)
           (not E)
           F
           (not G)
           H
           I
           (and R
                (not Q)
                P
                O
                N
                (not M)
                L
                (not K)
                J
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= H1 G1)
                (= J1 I1)
                (= L1 K1)))
       (or (not A)
           (not B)
           C
           (not D)
           (not E)
           F
           G
           H
           (not I)
           (and R
                (not Q)
                P
                O
                N
                (not M)
                (not L)
                K
                J
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= H1 G1)
                (= J1 I1)
                (= L1 K1)))
       (or (not A) (not B) C (not D) (not E) F G H I a!5)
       (or (not A) (not B) C (not D) E (not F) (not G) (not H) (not I) a!6)
       (or (not A) (not B) C (not D) E (not F) (not G) H (not I) a!7)
       (or (not A) (not B) C (not D) E (not F) (not G) (not H) I a!8)
       (or (not A) (not B) C (not D) E (not F) (not G) H I a!9)
       (or (not A)
           (not B)
           C
           (not D)
           E
           (not F)
           G
           (not H)
           I
           (and R
                (not Q)
                P
                O
                (not N)
                M
                (not L)
                K
                (not J)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= H1 G1)
                (= J1 I1)
                (= L1 K1)))
       (or (not A)
           (not B)
           C
           (not D)
           E
           F
           (not G)
           (not H)
           (not I)
           (and R
                (not Q)
                P
                O
                (not N)
                M
                (not L)
                (not K)
                (not J)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= H1 G1)
                (= J1 I1)
                (= L1 K1)))
       (or (not A)
           (not B)
           C
           (not D)
           E
           F
           (not G)
           (not H)
           I
           (and R
                (not Q)
                P
                O
                (not N)
                (not M)
                L
                K
                (not J)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= H1 G1)
                (= J1 I1)
                (= L1 K1)))
       (or (not A)
           (not B)
           C
           (not D)
           E
           F
           G
           (not H)
           (not I)
           (and R
                (not Q)
                P
                O
                (not N)
                (not M)
                L
                (not K)
                (not J)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= H1 G1)
                (= J1 I1)
                (= L1 K1)))
       (or (not A)
           (not B)
           C
           (not D)
           E
           (not F)
           G
           (not H)
           (not I)
           (and R
                (not Q)
                P
                O
                (not N)
                (not M)
                (not L)
                (not K)
                J
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= H1 G1)
                (= J1 I1)
                (= L1 K1)))
       (or (not A) (not B) C D (not E) (not F) (not G) (not H) (not I) a!10)
       (or (not A) (not B) C D (not E) (not F) (not G) H I a!11)
       (or (not A) (not B) C D (not E) (not F) G (not H) (not I) a!12)
       (or (not A) (not B) C D (not E) (not F) G H (not I) a!13)
       (or (not A) (not B) C D (not E) (not F) G (not H) I a!14)
       (or (not A) (not B) C D (not E) (not F) G H I a!15)
       (or (not A) (not B) C D (not E) F (not G) (not H) (not I) a!16)
       (or (not A)
           (not B)
           C
           D
           (not E)
           F
           (not G)
           H
           I
           (and R
                (not Q)
                P
                (not O)
                N
                (not M)
                L
                (not K)
                J
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= H1 G1)
                (= J1 I1)
                (= L1 K1)))
       (or (not A)
           (not B)
           C
           D
           (not E)
           F
           G
           H
           (not I)
           (and R
                (not Q)
                P
                (not O)
                N
                (not M)
                (not L)
                K
                J
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= H1 G1)
                (= J1 I1)
                (= L1 K1)))
       (or (not A)
           (not B)
           C
           D
           (not E)
           F
           G
           H
           I
           (and R
                (not Q)
                P
                (not O)
                N
                (not M)
                (not L)
                (not K)
                J
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= H1 G1)
                (= J1 I1)
                (= L1 K1)))
       (or (not A)
           (not B)
           C
           D
           E
           (not F)
           (not G)
           H
           (not I)
           (and R
                (not Q)
                P
                (not O)
                (not N)
                M
                L
                K
                J
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= H1 G1)
                (= J1 I1)
                (= L1 K1)))
       (or (not A)
           (not B)
           C
           D
           E
           (not F)
           (not G)
           H
           I
           (and R
                (not Q)
                P
                (not O)
                (not N)
                M
                L
                (not K)
                J
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= H1 G1)
                (= J1 I1)
                (= L1 K1)))
       (or (not A)
           (not B)
           C
           D
           E
           (not F)
           G
           H
           (not I)
           (and R
                (not Q)
                P
                (not O)
                (not N)
                M
                (not L)
                K
                J
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= H1 G1)
                (= J1 I1)
                (= L1 K1)))
       (or (not A)
           (not B)
           C
           D
           (not E)
           F
           (not G)
           H
           (not I)
           (and R
                (not Q)
                P
                (not O)
                (not N)
                M
                (not L)
                (not K)
                (not J)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= H1 G1)
                (= J1 I1)
                (= L1 K1)))
       (or (not A) (not B) C D E F (not G) H (not I) a!17)
       (or (not A) (not B) C D E F (not G) (not H) I a!18)
       (or (not A) (not B) C D E F (not G) H I a!19)
       (or (not A) (not B) C D E F G (not H) (not I) a!20)
       (or (not A)
           (not B)
           C
           D
           E
           F
           G
           H
           I
           (and R
                (not Q)
                P
                (not O)
                (not N)
                (not M)
                (not L)
                (not K)
                J
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= H1 G1)
                (= J1 I1)
                (= L1 K1)))
       (or (not A)
           B
           C
           (not D)
           (not E)
           (not F)
           (not G)
           H
           (not I)
           (and R
                (not Q)
                (not P)
                O
                N
                M
                L
                K
                J
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= H1 G1)
                (= J1 I1)
                (= L1 K1)))
       (or (not A)
           B
           C
           (not D)
           (not E)
           (not F)
           (not G)
           H
           I
           (and R
                (not Q)
                (not P)
                O
                N
                M
                L
                (not K)
                J
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= H1 G1)
                (= J1 I1)
                (= L1 K1)))
       (or (not A)
           B
           C
           (not D)
           (not E)
           (not F)
           G
           H
           (not I)
           (and R
                (not Q)
                (not P)
                O
                N
                M
                (not L)
                K
                J
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= H1 G1)
                (= J1 I1)
                (= L1 K1)))
       (or (not A)
           (not B)
           C
           D
           E
           F
           G
           H
           (not I)
           (and R
                (not Q)
                (not P)
                O
                N
                M
                (not L)
                (not K)
                (not J)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= H1 G1)
                (= J1 I1)
                (= L1 K1)))
       (or (not A)
           (not B)
           C
           D
           (not E)
           (not F)
           (not G)
           H
           (not I)
           (and R
                (not Q)
                (not P)
                O
                N
                (not M)
                L
                K
                (not J)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= H1 G1)
                (= J1 I1)
                (= L1 K1)))
       (or (not A) B C (not D) (not E) F (not G) H I a!21)
       (or (not A) B C (not D) (not E) F G (not H) (not I) a!22)
       (or (not A) B C (not D) (not E) F G H (not I) a!23)
       (or (not A) B C (not D) (not E) F G (not H) I a!24)
       (or (not A) B C (not D) (not E) F G H I a!25)
       (or (not A) B C (not D) E (not F) (not G) (not H) (not I) a!26)
       (or (not A)
           B
           C
           (not D)
           E
           (not F)
           (not G)
           H
           I
           (and R
                (not Q)
                (not P)
                O
                (not N)
                M
                L
                (not K)
                J
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= H1 G1)
                (= J1 I1)
                (= L1 K1)))
       (or (not A)
           B
           C
           (not D)
           E
           (not F)
           G
           H
           (not I)
           (and R
                (not Q)
                (not P)
                O
                (not N)
                M
                (not L)
                K
                J
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= H1 G1)
                (= J1 I1)
                (= L1 K1)))
       (or (not A)
           B
           C
           (not D)
           E
           (not F)
           G
           H
           I
           (and R
                (not Q)
                (not P)
                O
                (not N)
                M
                (not L)
                (not K)
                J
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= H1 G1)
                (= J1 I1)
                (= L1 K1)))
       (or (not A)
           B
           C
           (not D)
           E
           F
           (not G)
           H
           (not I)
           (and R
                (not Q)
                (not P)
                O
                (not N)
                (not M)
                L
                K
                J
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= H1 G1)
                (= J1 I1)
                (= L1 K1)))
       (or (not A)
           B
           C
           (not D)
           E
           F
           (not G)
           H
           I
           (and R
                (not Q)
                (not P)
                O
                (not N)
                (not M)
                L
                (not K)
                J
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= H1 G1)
                (= J1 I1)
                (= L1 K1)))
       (or (not A)
           B
           C
           (not D)
           E
           F
           G
           H
           (not I)
           (and R
                (not Q)
                (not P)
                O
                (not N)
                (not M)
                (not L)
                K
                J
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= H1 G1)
                (= J1 I1)
                (= L1 K1)))
       (or (not A)
           B
           C
           (not D)
           E
           (not F)
           (not G)
           H
           (not I)
           (and R
                (not Q)
                (not P)
                O
                (not N)
                (not M)
                (not L)
                (not K)
                (not J)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= H1 G1)
                (= J1 I1)
                (= L1 K1)))
       (or (not A)
           (not B)
           C
           (not D)
           (not E)
           (not F)
           G
           H
           (not I)
           (and R
                (not Q)
                (not P)
                (not O)
                N
                M
                (not L)
                K
                J
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= H1 G1)
                (= J1 I1)
                (= L1 K1)))
       (or (not A) B C D (not E) (not F) G (not H) I a!27)
       (or (not A) B C D (not E) (not F) G H I a!28)
       (or (not A) B C D (not E) F (not G) (not H) (not I) a!29)
       (or (not A) B C D (not E) F (not G) H (not I) a!30)
       (or (not A) B C D (not E) F (not G) (not H) I a!31)
       (or (not A) B C D (not E) F (not G) H I a!32)
       (or (not A) B C D (not E) F G (not H) (not I) a!33)
       (or (not A) B C D (not E) F G H (not I) a!34)
       (or (not A) B C D (not E) F G (not H) I a!35)
       (or (not A) B C D (not E) F G H I a!36)
       (or (not A) B C D E (not F) (not G) (not H) (not I) a!37)
       (or (not A) B C D E (not F) (not G) H (not I) a!38)
       (or (not A) B C D E (not F) (not G) (not H) I a!39)
       (or (not A) B C D E (not F) (not G) H I a!40)
       (or (not A) B C D E (not F) G (not H) (not I) a!41)
       (or (not A) B C D E (not F) G H (not I) a!42)
       (or (not A) B C D E (not F) G (not H) I a!43)
       (or (not A) B C D E (not F) G H I a!44)
       (or (not A) B C D E F (not G) (not H) I a!102)
       (or (not A) B C D E F (not G) H I a!45)
       (or (not A) B C D E F G (not H) (not I) a!46)
       (or (not A) B C D E F G H (not I) a!47)
       (or (not A) B C D E F G (not H) I a!48)
       (or (not A) B C D E F G H I a!49)
       (or A
           (not B)
           (not C)
           (not D)
           (not E)
           (not F)
           (not G)
           (not H)
           I
           (and (not R)
                Q
                P
                O
                N
                M
                L
                K
                (not J)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= H1 G1)
                (= J1 I1)
                (= L1 K1)))
       (or A
           (not B)
           (not C)
           (not D)
           (not E)
           (not F)
           G
           (not H)
           (not I)
           (and (not R)
                Q
                P
                O
                N
                M
                L
                (not K)
                (not J)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= H1 G1)
                (= J1 I1)
                (= L1 K1)))
       (or A
           (not B)
           (not C)
           (not D)
           (not E)
           (not F)
           G
           (not H)
           I
           (and (not R)
                Q
                P
                O
                N
                M
                (not L)
                K
                (not J)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= H1 G1)
                (= J1 I1)
                (= L1 K1)))
       (or A
           (not B)
           (not C)
           (not D)
           (not E)
           F
           (not G)
           (not H)
           (not I)
           (and (not R)
                Q
                P
                O
                N
                M
                (not L)
                (not K)
                (not J)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= H1 G1)
                (= J1 I1)
                (= L1 K1)))
       (or A
           (not B)
           (not C)
           (not D)
           (not E)
           (not F)
           (not G)
           (not H)
           (not I)
           (and (not R)
                Q
                P
                O
                N
                (not M)
                L
                (not K)
                J
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= H1 G1)
                (= J1 I1)
                (= L1 K1)))
       (or A (not B) (not C) (not D) (not E) F G (not H) I a!50)
       (or A (not B) (not C) (not D) (not E) F G H I a!51)
       (or A (not B) (not C) (not D) E (not F) (not G) (not H) (not I) a!52)
       (or A (not B) (not C) (not D) E (not F) (not G) H (not I) a!53)
       (or A
           (not B)
           (not C)
           (not D)
           E
           (not F)
           G
           (not H)
           (not I)
           (and (not R)
                Q
                P
                O
                (not N)
                M
                L
                (not K)
                (not J)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= H1 G1)
                (= J1 I1)
                (= L1 K1)))
       (or A
           (not B)
           (not C)
           (not D)
           E
           (not F)
           G
           (not H)
           I
           (and (not R)
                Q
                P
                O
                (not N)
                M
                (not L)
                K
                (not J)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= H1 G1)
                (= J1 I1)
                (= L1 K1)))
       (or A
           (not B)
           (not C)
           (not D)
           E
           F
           (not G)
           (not H)
           (not I)
           (and (not R)
                Q
                P
                O
                (not N)
                M
                (not L)
                (not K)
                (not J)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= H1 G1)
                (= J1 I1)
                (= L1 K1)))
       (or A
           (not B)
           (not C)
           (not D)
           E
           F
           (not G)
           (not H)
           I
           (and (not R)
                Q
                P
                O
                (not N)
                (not M)
                L
                K
                (not J)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= H1 G1)
                (= J1 I1)
                (= L1 K1)))
       (or A
           (not B)
           (not C)
           (not D)
           E
           (not F)
           (not G)
           (not H)
           I
           (and (not R)
                Q
                P
                O
                (not N)
                (not M)
                (not L)
                K
                J
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= H1 G1)
                (= J1 I1)
                (= L1 K1)))
       (or A (not B) (not C) (not D) E F G (not H) I a!54)
       (or A (not B) (not C) (not D) E F G H I a!55)
       (or A (not B) (not C) D (not E) (not F) (not G) (not H) (not I) a!56)
       (or A (not B) (not C) D (not E) (not F) (not G) H (not I) a!57)
       (or A (not B) (not C) D (not E) (not F) (not G) (not H) I a!58)
       (or A (not B) (not C) D (not E) (not F) (not G) H I a!59)
       (or A
           (not B)
           (not C)
           D
           (not E)
           (not F)
           G
           (not H)
           I
           (and (not R)
                Q
                P
                (not O)
                N
                M
                (not L)
                K
                (not J)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= H1 G1)
                (= J1 I1)
                (= L1 K1)))
       (or A
           (not B)
           (not C)
           D
           (not E)
           F
           (not G)
           (not H)
           (not I)
           (and (not R)
                Q
                P
                (not O)
                N
                M
                (not L)
                (not K)
                (not J)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= H1 G1)
                (= J1 I1)
                (= L1 K1)))
       (or A
           (not B)
           (not C)
           D
           (not E)
           F
           (not G)
           (not H)
           I
           (and (not R)
                Q
                P
                (not O)
                N
                (not M)
                L
                K
                (not J)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= H1 G1)
                (= J1 I1)
                (= L1 K1)))
       (or A
           (not B)
           (not C)
           D
           (not E)
           F
           G
           (not H)
           (not I)
           (and (not R)
                Q
                P
                (not O)
                N
                (not M)
                L
                (not K)
                (not J)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= H1 G1)
                (= J1 I1)
                (= L1 K1)))
       (or A
           (not B)
           (not C)
           D
           (not E)
           F
           G
           (not H)
           I
           (and (not R)
                Q
                P
                (not O)
                N
                (not M)
                (not L)
                K
                (not J)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= H1 G1)
                (= J1 I1)
                (= L1 K1)))
       (or A
           (not B)
           (not C)
           D
           E
           (not F)
           (not G)
           (not H)
           (not I)
           (and (not R)
                Q
                P
                (not O)
                N
                (not M)
                (not L)
                (not K)
                (not J)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= H1 G1)
                (= J1 I1)
                (= L1 K1)))
       (or A
           (not B)
           (not C)
           D
           (not E)
           (not F)
           G
           (not H)
           (not I)
           (and (not R)
                Q
                P
                (not O)
                (not N)
                M
                L
                (not K)
                J
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= H1 G1)
                (= J1 I1)
                (= L1 K1)))
       (or A
           (not B)
           (not C)
           (not D)
           (not E)
           F
           G
           (not H)
           (not I)
           (and (not R)
                Q
                P
                (not O)
                (not N)
                M
                (not L)
                K
                J
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= H1 G1)
                (= J1 I1)
                (= L1 K1)))
       (or A (not B) (not C) D E (not F) G (not H) I a!60)
       (or A (not B) (not C) D E (not F) G H I a!61)
       (or A (not B) (not C) D E F (not G) (not H) (not I) a!62)
       (or A (not B) (not C) D E F (not G) H (not I) a!63)
       (or A
           (not B)
           (not C)
           D
           E
           F
           G
           (not H)
           (not I)
           (and (not R)
                Q
                P
                (not O)
                (not N)
                (not M)
                L
                (not K)
                (not J)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= H1 G1)
                (= J1 I1)
                (= L1 K1)))
       (or A
           (not B)
           (not C)
           D
           E
           F
           G
           (not H)
           I
           (and (not R)
                Q
                P
                (not O)
                (not N)
                (not M)
                (not L)
                K
                (not J)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= H1 G1)
                (= J1 I1)
                (= L1 K1)))
       (or A
           B
           (not C)
           (not D)
           (not E)
           (not F)
           (not G)
           (not H)
           (not I)
           (and (not R)
                Q
                P
                (not O)
                (not N)
                (not M)
                (not L)
                (not K)
                (not J)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= H1 G1)
                (= J1 I1)
                (= L1 K1)))
       (or A
           B
           (not C)
           (not D)
           (not E)
           (not F)
           (not G)
           (not H)
           I
           (and (not R)
                Q
                (not P)
                O
                N
                M
                L
                K
                (not J)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= H1 G1)
                (= J1 I1)
                (= L1 K1)))
       (or A
           (not B)
           (not C)
           D
           E
           F
           (not G)
           (not H)
           I
           (and (not R)
                Q
                (not P)
                O
                N
                M
                (not L)
                K
                J
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= H1 G1)
                (= J1 I1)
                (= L1 K1)))
       (or A
           B
           (not C)
           (not D)
           (not E)
           (not F)
           G
           (not H)
           I
           (and (not R)
                Q
                (not P)
                O
                N
                M
                (not L)
                K
                (not J)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= H1 G1)
                (= J1 I1)
                (= L1 K1)))
       (or A
           B
           (not C)
           (not D)
           (not E)
           F
           (not G)
           (not H)
           (not I)
           (and (not R)
                Q
                (not P)
                O
                N
                M
                (not L)
                (not K)
                (not J)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= H1 G1)
                (= J1 I1)
                (= L1 K1)))
       (or A
           B
           (not C)
           (not D)
           (not E)
           F
           (not G)
           (not H)
           I
           (and (not R)
                Q
                (not P)
                O
                N
                (not M)
                L
                K
                (not J)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= H1 G1)
                (= J1 I1)
                (= L1 K1)))
       (or A
           B
           (not C)
           (not D)
           (not E)
           F
           G
           (not H)
           (not I)
           (and (not R)
                Q
                (not P)
                O
                N
                (not M)
                L
                (not K)
                (not J)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= H1 G1)
                (= J1 I1)
                (= L1 K1)))
       (or A
           B
           (not C)
           (not D)
           (not E)
           F
           G
           (not H)
           I
           (and (not R)
                Q
                (not P)
                O
                N
                (not M)
                (not L)
                K
                (not J)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= H1 G1)
                (= J1 I1)
                (= L1 K1)))
       (or A
           B
           (not C)
           (not D)
           E
           (not F)
           (not G)
           (not H)
           (not I)
           (and (not R)
                Q
                (not P)
                O
                N
                (not M)
                (not L)
                (not K)
                (not J)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= H1 G1)
                (= J1 I1)
                (= L1 K1)))
       (or A
           B
           (not C)
           (not D)
           E
           (not F)
           (not G)
           (not H)
           I
           (and (not R)
                Q
                (not P)
                O
                (not N)
                M
                L
                K
                (not J)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= H1 G1)
                (= J1 I1)
                (= L1 K1)))
       (or A
           B
           (not C)
           (not D)
           E
           (not F)
           G
           (not H)
           (not I)
           (and (not R)
                Q
                (not P)
                O
                (not N)
                M
                L
                (not K)
                (not J)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= H1 G1)
                (= J1 I1)
                (= L1 K1)))
       (or A B (not C) (not D) E (not F) G (not H) I a!64)
       (or A B (not C) (not D) E (not F) G H I a!65)
       (or A B (not C) (not D) E F (not G) (not H) (not I) a!66)
       (or A B (not C) (not D) E F (not G) H (not I) a!67)
       (or A B (not C) (not D) E F (not G) (not H) I a!68)
       (or A B (not C) (not D) E F (not G) H I a!69)
       (or A B (not C) (not D) E F G (not H) (not I) a!70)
       (or A B (not C) (not D) E F G H (not I) a!71)
       (or A
           B
           (not C)
           D
           (not E)
           (not F)
           (not G)
           (not H)
           (not I)
           (and (not R)
                Q
                (not P)
                O
                (not N)
                (not M)
                (not L)
                (not K)
                (not J)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= H1 G1)
                (= J1 I1)
                (= L1 K1)))
       (or A
           B
           (not C)
           D
           (not E)
           (not F)
           (not G)
           (not H)
           I
           (and (not R)
                Q
                (not P)
                (not O)
                N
                M
                L
                K
                (not J)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= H1 G1)
                (= J1 I1)
                (= L1 K1)))
       (or A
           B
           (not C)
           D
           (not E)
           (not F)
           G
           (not H)
           (not I)
           (and (not R)
                Q
                (not P)
                (not O)
                N
                M
                L
                (not K)
                (not J)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= H1 G1)
                (= J1 I1)
                (= L1 K1)))
       (or A
           B
           (not C)
           D
           (not E)
           (not F)
           G
           (not H)
           I
           (and (not R)
                Q
                (not P)
                (not O)
                N
                M
                (not L)
                K
                (not J)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= H1 G1)
                (= J1 I1)
                (= L1 K1)))
       (or A
           B
           (not C)
           D
           (not E)
           F
           (not G)
           (not H)
           (not I)
           (and (not R)
                Q
                (not P)
                (not O)
                N
                M
                (not L)
                (not K)
                (not J)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= H1 G1)
                (= J1 I1)
                (= L1 K1)))
       (or A
           B
           (not C)
           D
           (not E)
           F
           (not G)
           (not H)
           I
           (and (not R)
                Q
                (not P)
                (not O)
                N
                (not M)
                L
                K
                (not J)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= H1 G1)
                (= J1 I1)
                (= L1 K1)))
       (or A
           B
           (not C)
           D
           (not E)
           F
           G
           (not H)
           (not I)
           (and (not R)
                Q
                (not P)
                (not O)
                N
                (not M)
                L
                (not K)
                (not J)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= H1 G1)
                (= J1 I1)
                (= L1 K1)))
       (or A
           B
           (not C)
           D
           (not E)
           F
           G
           (not H)
           I
           (and (not R)
                Q
                (not P)
                (not O)
                N
                (not M)
                (not L)
                K
                (not J)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= H1 G1)
                (= J1 I1)
                (= L1 K1)))
       (or A
           B
           (not C)
           (not D)
           E
           F
           G
           (not H)
           I
           (and (not R)
                Q
                (not P)
                (not O)
                (not N)
                M
                L
                K
                J
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= H1 G1)
                (= J1 I1)
                (= L1 K1)))
       (or A B (not C) D E (not F) (not G) H I a!72)
       (or A B (not C) D E (not F) G (not H) (not I) a!73)
       (or A B (not C) D E (not F) G H (not I) a!74)
       (or A B (not C) D E (not F) G (not H) I a!75)
       (or A
           B
           (not C)
           D
           E
           F
           (not G)
           H
           (not I)
           (and (not R)
                Q
                (not P)
                (not O)
                (not N)
                (not M)
                L
                K
                J
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= H1 G1)
                (= J1 I1)
                (= L1 K1)))
       (or A
           B
           (not C)
           D
           E
           F
           (not G)
           H
           I
           (and (not R)
                Q
                (not P)
                (not O)
                (not N)
                (not M)
                L
                (not K)
                J
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= H1 G1)
                (= J1 I1)
                (= L1 K1)))
       (or A
           B
           (not C)
           D
           E
           F
           G
           H
           (not I)
           (and (not R)
                Q
                (not P)
                (not O)
                (not N)
                (not M)
                (not L)
                K
                J
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= H1 G1)
                (= J1 I1)
                (= L1 K1)))
       (or A
           B
           (not C)
           D
           E
           F
           G
           H
           I
           (and (not R)
                Q
                (not P)
                (not O)
                (not N)
                (not M)
                (not L)
                (not K)
                J
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= H1 G1)
                (= J1 I1)
                (= L1 K1)))
       (or A
           B
           (not C)
           D
           E
           (not F)
           G
           H
           I
           (and (not R)
                (not Q)
                P
                O
                N
                M
                L
                K
                (not J)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= H1 G1)
                (= J1 I1)
                (= L1 K1)))
       (or A (not B) C (not D) (not E) (not F) G (not H) (not I) a!76)
       (or A (not B) C (not D) (not E) (not F) G H (not I) a!77)
       (or A (not B) C (not D) (not E) (not F) G (not H) I a!78)
       (or A (not B) C (not D) (not E) (not F) G H I a!79)
       (or A (not B) C (not D) (not E) F (not G) (not H) (not I) a!80)
       (or A (not B) C (not D) (not E) F (not G) H (not I) a!81)
       (or A
           (not B)
           C
           (not D)
           (not E)
           F
           G
           (not H)
           (not I)
           (and (not R)
                (not Q)
                P
                O
                N
                (not M)
                L
                (not K)
                (not J)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= H1 G1)
                (= J1 I1)
                (= L1 K1)))
       (or A
           (not B)
           C
           (not D)
           (not E)
           F
           G
           (not H)
           I
           (and (not R)
                (not Q)
                P
                O
                N
                (not M)
                (not L)
                K
                (not J)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= H1 G1)
                (= J1 I1)
                (= L1 K1)))
       (or A
           (not B)
           C
           (not D)
           E
           (not F)
           (not G)
           (not H)
           (not I)
           (and (not R)
                (not Q)
                P
                O
                N
                (not M)
                (not L)
                (not K)
                (not J)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= H1 G1)
                (= J1 I1)
                (= L1 K1)))
       (or A
           (not B)
           C
           (not D)
           E
           (not F)
           (not G)
           (not H)
           I
           (and (not R)
                (not Q)
                P
                O
                (not N)
                M
                L
                K
                (not J)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= H1 G1)
                (= J1 I1)
                (= L1 K1)))
       (or A
           (not B)
           C
           (not D)
           (not E)
           F
           (not G)
           (not H)
           I
           (and (not R)
                (not Q)
                P
                O
                (not N)
                M
                (not L)
                K
                J
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= H1 G1)
                (= J1 I1)
                (= L1 K1)))
       (or A (not B) C (not D) E F (not G) (not H) (not I) a!82)
       (or A (not B) C (not D) E F (not G) H (not I) a!83)
       (or A (not B) C (not D) E F (not G) (not H) I a!84)
       (or A (not B) C (not D) E F (not G) H I a!85)
       (or A (not B) C (not D) E F G (not H) (not I) a!86)
       (or A (not B) C (not D) E F G H (not I) a!87)
       (or A
           (not B)
           C
           D
           (not E)
           (not F)
           (not G)
           (not H)
           (not I)
           (and (not R)
                (not Q)
                P
                O
                (not N)
                (not M)
                (not L)
                (not K)
                (not J)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= H1 G1)
                (= J1 I1)
                (= L1 K1)))
       (or A
           (not B)
           C
           D
           (not E)
           (not F)
           (not G)
           (not H)
           I
           (and (not R)
                (not Q)
                P
                (not O)
                N
                M
                L
                K
                (not J)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= H1 G1)
                (= J1 I1)
                (= L1 K1)))
       (or A
           (not B)
           C
           D
           (not E)
           (not F)
           G
           (not H)
           (not I)
           (and (not R)
                (not Q)
                P
                (not O)
                N
                M
                L
                (not K)
                (not J)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= H1 G1)
                (= J1 I1)
                (= L1 K1)))
       (or A
           (not B)
           C
           D
           (not E)
           (not F)
           G
           (not H)
           I
           (and (not R)
                (not Q)
                P
                (not O)
                N
                M
                (not L)
                K
                (not J)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= H1 G1)
                (= J1 I1)
                (= L1 K1)))
       (or A
           (not B)
           C
           D
           (not E)
           F
           (not G)
           (not H)
           (not I)
           (and (not R)
                (not Q)
                P
                (not O)
                N
                M
                (not L)
                (not K)
                (not J)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= H1 G1)
                (= J1 I1)
                (= L1 K1)))
       (or A
           (not B)
           C
           D
           (not E)
           F
           (not G)
           (not H)
           I
           (and (not R)
                (not Q)
                P
                (not O)
                N
                (not M)
                L
                K
                (not J)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= H1 G1)
                (= J1 I1)
                (= L1 K1)))
       (or A
           (not B)
           C
           (not D)
           E
           F
           G
           (not H)
           I
           (and (not R)
                (not Q)
                P
                (not O)
                N
                (not M)
                (not L)
                K
                J
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= H1 G1)
                (= J1 I1)
                (= L1 K1)))
       (or A (not B) C D (not E) F G (not H) I a!88)
       (or A (not B) C D (not E) F G H I a!89)
       (or A (not B) C D E (not F) (not G) (not H) (not I) a!90)
       (or A (not B) C D E (not F) (not G) H (not I) a!91)
       (or A (not B) C D E (not F) (not G) (not H) I a!92)
       (or A (not B) C D E (not F) (not G) H I a!93)
       (or A
           (not B)
           C
           D
           E
           (not F)
           G
           (not H)
           I
           (and (not R)
                (not Q)
                P
                (not O)
                (not N)
                M
                (not L)
                K
                (not J)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= H1 G1)
                (= J1 I1)
                (= L1 K1)))
       (or A
           (not B)
           C
           D
           E
           F
           (not G)
           (not H)
           (not I)
           (and (not R)
                (not Q)
                P
                (not O)
                (not N)
                M
                (not L)
                (not K)
                (not J)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= H1 G1)
                (= J1 I1)
                (= L1 K1)))
       (or A
           (not B)
           C
           D
           E
           F
           (not G)
           (not H)
           I
           (and (not R)
                (not Q)
                P
                (not O)
                (not N)
                (not M)
                L
                K
                (not J)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= H1 G1)
                (= J1 I1)
                (= L1 K1)))
       (or A
           (not B)
           C
           D
           E
           F
           G
           (not H)
           (not I)
           (and (not R)
                (not Q)
                P
                (not O)
                (not N)
                (not M)
                L
                (not K)
                (not J)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= H1 G1)
                (= J1 I1)
                (= L1 K1)))
       (or A
           (not B)
           C
           D
           E
           F
           G
           (not H)
           I
           (and (not R)
                (not Q)
                P
                (not O)
                (not N)
                (not M)
                (not L)
                K
                (not J)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= H1 G1)
                (= J1 I1)
                (= L1 K1)))
       (or A
           B
           C
           (not D)
           (not E)
           (not F)
           (not G)
           (not H)
           (not I)
           (and (not R)
                (not Q)
                P
                (not O)
                (not N)
                (not M)
                (not L)
                (not K)
                (not J)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= H1 G1)
                (= J1 I1)
                (= L1 K1)))
       (or A
           (not B)
           C
           D
           E
           (not F)
           G
           (not H)
           (not I)
           (and (not R)
                (not Q)
                (not P)
                O
                N
                M
                L
                (not K)
                J
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= H1 G1)
                (= J1 I1)
                (= L1 K1)))
       (or A
           (not B)
           C
           (not D)
           E
           (not F)
           G
           (not H)
           I
           (and (not R)
                (not Q)
                (not P)
                O
                N
                M
                (not L)
                K
                J
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= H1 G1)
                (= J1 I1)
                (= L1 K1)))
       (or A
           B
           C
           (not D)
           (not E)
           (not F)
           G
           (not H)
           I
           (and (not R)
                (not Q)
                (not P)
                O
                N
                M
                (not L)
                K
                (not J)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= H1 G1)
                (= J1 I1)
                (= L1 K1)))
       (or A
           B
           C
           (not D)
           (not E)
           F
           (not G)
           (not H)
           (not I)
           (and (not R)
                (not Q)
                (not P)
                O
                N
                M
                (not L)
                (not K)
                (not J)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= H1 G1)
                (= J1 I1)
                (= L1 K1)))
       (or A
           B
           C
           (not D)
           (not E)
           F
           (not G)
           (not H)
           I
           (and (not R)
                (not Q)
                (not P)
                O
                N
                (not M)
                L
                K
                (not J)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= H1 G1)
                (= J1 I1)
                (= L1 K1)))
       (or A
           B
           C
           (not D)
           (not E)
           F
           G
           (not H)
           (not I)
           (and (not R)
                (not Q)
                (not P)
                O
                N
                (not M)
                L
                (not K)
                (not J)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= H1 G1)
                (= J1 I1)
                (= L1 K1)))
       (or A
           B
           C
           (not D)
           (not E)
           F
           G
           (not H)
           I
           (and (not R)
                (not Q)
                (not P)
                O
                N
                (not M)
                (not L)
                K
                (not J)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= H1 G1)
                (= J1 I1)
                (= L1 K1)))
       (or A
           B
           C
           (not D)
           E
           (not F)
           (not G)
           (not H)
           (not I)
           (and (not R)
                (not Q)
                (not P)
                O
                N
                (not M)
                (not L)
                (not K)
                (not J)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= H1 G1)
                (= J1 I1)
                (= L1 K1)))
       (or A
           B
           C
           (not D)
           E
           (not F)
           (not G)
           (not H)
           I
           (and (not R)
                (not Q)
                (not P)
                O
                (not N)
                M
                L
                K
                (not J)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= H1 G1)
                (= J1 I1)
                (= L1 K1)))
       (or A
           B
           C
           (not D)
           E
           (not F)
           G
           (not H)
           (not I)
           (and (not R)
                (not Q)
                (not P)
                O
                (not N)
                M
                L
                (not K)
                (not J)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= H1 G1)
                (= J1 I1)
                (= L1 K1)))
       (or A B C (not D) E (not F) G (not H) I a!94)
       (or A B C (not D) E (not F) G H I a!95)
       (or A B C (not D) E F (not G) (not H) (not I) a!96)
       (or A B C (not D) E F (not G) H (not I) a!97)
       (or A
           B
           C
           (not D)
           E
           F
           G
           (not H)
           (not I)
           (and (not R)
                (not Q)
                (not P)
                O
                (not N)
                (not M)
                L
                (not K)
                (not J)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= H1 G1)
                (= J1 I1)
                (= L1 K1)))
       (or A
           B
           C
           (not D)
           E
           F
           G
           (not H)
           I
           (and (not R)
                (not Q)
                (not P)
                O
                (not N)
                (not M)
                (not L)
                K
                (not J)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= H1 G1)
                (= J1 I1)
                (= L1 K1)))
       (or A
           B
           C
           D
           (not E)
           (not F)
           (not G)
           (not H)
           (not I)
           (and (not R)
                (not Q)
                (not P)
                O
                (not N)
                (not M)
                (not L)
                (not K)
                (not J)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= H1 G1)
                (= J1 I1)
                (= L1 K1)))
       (or A
           B
           C
           D
           (not E)
           (not F)
           (not G)
           (not H)
           I
           (and (not R)
                (not Q)
                (not P)
                (not O)
                N
                M
                L
                K
                (not J)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= H1 G1)
                (= J1 I1)
                (= L1 K1)))
       (or A
           B
           C
           (not D)
           E
           F
           (not G)
           (not H)
           I
           (and (not R)
                (not Q)
                (not P)
                (not O)
                N
                M
                (not L)
                K
                J
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= H1 G1)
                (= J1 I1)
                (= L1 K1)))
       (or A B C D (not E) (not F) G H I a!98)
       (or A B C D (not E) F (not G) (not H) (not I) a!99)
       (or A B C D (not E) F (not G) H (not I) a!100)
       (or A B C D (not E) F (not G) (not H) I a!101)
       (or A
           B
           C
           D
           (not E)
           F
           G
           H
           (not I)
           (and (not R)
                (not Q)
                (not P)
                (not O)
                N
                (not M)
                (not L)
                K
                J
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= H1 G1)
                (= J1 I1)
                (= L1 K1)))
       (or A
           B
           C
           D
           (not E)
           F
           G
           H
           I
           (and (not R)
                (not Q)
                (not P)
                (not O)
                N
                (not M)
                (not L)
                (not K)
                J
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= H1 G1)
                (= J1 I1)
                (= L1 K1)))
       (or A
           B
           C
           D
           E
           (not F)
           (not G)
           H
           (not I)
           (and (not R)
                (not Q)
                (not P)
                (not O)
                (not N)
                M
                L
                K
                J
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= H1 G1)
                (= J1 I1)
                (= L1 K1)))
       (or A
           B
           C
           D
           E
           (not F)
           (not G)
           H
           I
           (and (not R)
                (not Q)
                (not P)
                (not O)
                (not N)
                M
                L
                (not K)
                J
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= H1 G1)
                (= J1 I1)
                (= L1 K1)))
       (or A
           B
           C
           D
           (not E)
           F
           (not G)
           H
           I
           (and (not R)
                (not Q)
                (not P)
                (not O)
                (not N)
                M
                (not L)
                K
                (not J)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= H1 G1)
                (= J1 I1)
                (= L1 K1)))
       (or A
           B
           C
           D
           E
           F
           (not G)
           (not H)
           (not I)
           (and (not R)
                (not Q)
                (not P)
                (not O)
                (not N)
                M
                (not L)
                (not K)
                (not J)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= H1 G1)
                (= J1 I1)
                (= L1 K1)))
       (or A
           B
           C
           D
           E
           F
           (not G)
           (not H)
           I
           (and (not R)
                (not Q)
                (not P)
                (not O)
                (not N)
                (not M)
                L
                K
                (not J)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= H1 G1)
                (= J1 I1)
                (= L1 K1)))
       (or (not A)
           B
           C
           D
           E
           F
           (not G)
           (not H)
           (not I)
           (and (not R)
                (not Q)
                (not P)
                (not O)
                (not N)
                (not M)
                (not L)
                K
                (not J)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= H1 G1)
                (= J1 I1)
                (= L1 K1)))
       (or A B C D E F G H I a!126)
       (or (not A)
           (not B)
           C
           (not D)
           (not E)
           (not F)
           (not G)
           (not H)
           (not I)
           a!126)
       (or A
           (not B)
           C
           (not D)
           E
           (not F)
           G
           H
           (not I)
           (and (not R)
                (not Q)
                P
                O
                (not N)
                M
                (not L)
                K
                J
                (= W T)
                (= T S)
                (= V U)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= H1 G1)
                (= J1 I1)
                (= L1 K1)))
       (or A
           (not B)
           C
           D
           (not E)
           F
           G
           H
           (not I)
           (and (not R)
                (not Q)
                P
                (not O)
                N
                (not M)
                (not L)
                K
                J
                (= W T)
                (= T S)
                (= V U)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= H1 G1)
                (= J1 I1)
                (= L1 K1)))
       (or A
           B
           C
           (not D)
           (not E)
           (not F)
           (not G)
           H
           I
           (and (not R)
                (not Q)
                (not P)
                O
                N
                M
                L
                (not K)
                J
                (= W T)
                (= T S)
                (= V U)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= H1 G1)
                (= J1 I1)
                (= L1 K1)))
       (or A
           B
           C
           D
           (not E)
           (not F)
           G
           H
           (not I)
           (and (not R)
                (not Q)
                (not P)
                (not O)
                N
                M
                (not L)
                K
                J
                (= W T)
                (= T S)
                (= V U)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= H1 G1)
                (= J1 I1)
                (= L1 K1)))
       (or A
           B
           C
           D
           E
           (not F)
           G
           (not H)
           I
           (and (not R)
                (not Q)
                (not P)
                (not O)
                (not N)
                M
                (not L)
                K
                (not J)
                (= W T)
                (= T S)
                (= V U)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= H1 G1)
                (= J1 I1)
                (= L1 K1)))
       (or A
           (not B)
           C
           (not D)
           (not E)
           (not F)
           (not G)
           H
           I
           (and (not R)
                (not Q)
                P
                O
                N
                M
                L
                (not K)
                J
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= H1 G1)
                (= J1 I1)
                (= L1 K1))
           (not (<= T J1))
           (= F1 T)))))
      )
      (state K J L M N O P Q R K1 I1 G1 E1 C1 A1 Y W U S)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Bool) (E Bool) (F Bool) (G Bool) (H Bool) (I Bool) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) ) 
    (=>
      (and
        (state I H G F E D B C A S R Q P O N M L K J)
        (or (and (not A) (not B) (not C) (not D) E (not F) G (not H) I)
    (and (not A) (not B) (not C) (not D) E (not F) G H (not I))
    (and (not A) (not B) (not C) (not D) E (not F) G H I)
    (and (not A) (not B) (not C) (not D) E F (not G) (not H) (not I))
    (and (not A) (not B) (not C) D (not E) (not F) G (not H) I)
    (and (not A) (not B) (not C) D (not E) (not F) G H I)
    (and (not A) (not B) (not C) D (not E) F (not G) (not H) (not I))
    (and (not A) (not B) (not C) D (not E) F (not G) H (not I))
    (and (not A) (not B) C (not D) (not E) F (not G) (not H) I)
    (and (not A) (not B) C (not D) (not E) F (not G) H (not I))
    (and (not A) (not B) C (not D) (not E) F (not G) H I)
    (and (not A) (not B) C (not D) (not E) F G (not H) (not I))
    (and (not A) (not B) C D (not E) (not F) (not G) (not H) I)
    (and (not A) (not B) C D (not E) (not F) (not G) H I)
    (and (not A) (not B) C D (not E) (not F) G (not H) (not I))
    (and (not A) (not B) C D (not E) (not F) G (not H) I)
    (and (not A) (not B) C D (not E) (not F) G H (not I))
    (and (not A) (not B) C D (not E) (not F) G H I)
    (and (not A) (not B) C D (not E) F (not G) (not H) (not I))
    (and (not A) (not B) C D (not E) F (not G) H (not I))
    (and (not A) B (not C) (not D) (not E) F G (not H) (not I))
    (and (not A) B (not C) (not D) (not E) F G (not H) I)
    (and (not A) B (not C) (not D) (not E) F G H (not I))
    (and (not A) B (not C) (not D) (not E) F G H I)
    (and (not A) B (not C) (not D) E (not F) (not G) (not H) (not I))
    (and (not A) B (not C) (not D) E (not F) (not G) H (not I))
    (and (not A) B (not C) D (not E) (not F) (not G) (not H) I)
    (and (not A) B (not C) D (not E) (not F) (not G) H I)
    (and (not A) B (not C) D (not E) (not F) G (not H) (not I))
    (and (not A) B (not C) D (not E) (not F) G (not H) I)
    (and (not A) B (not C) D (not E) (not F) G H (not I))
    (and (not A) B (not C) D (not E) (not F) G H I)
    (and (not A) B (not C) D E (not F) G (not H) I)
    (and (not A) B (not C) D E (not F) G H I)
    (and (not A) B (not C) D E F (not G) (not H) (not I))
    (and (not A) B (not C) D E F (not G) H (not I))
    (and (not A) B C (not D) (not E) (not F) G (not H) I)
    (and (not A) B C (not D) (not E) (not F) G H I)
    (and (not A) B C (not D) (not E) F (not G) (not H) (not I))
    (and (not A) B C (not D) (not E) F (not G) H (not I))
    (and (not A) B C (not D) E F G (not H) (not I))
    (and (not A) B C (not D) E F G (not H) I)
    (and (not A) B C (not D) E F G H (not I))
    (and (not A) B C (not D) E F G H I)
    (and (not A) B C D (not E) (not F) (not G) (not H) (not I))
    (and (not A) B C D (not E) (not F) (not G) H (not I))
    (and (not A) B C D (not E) F G (not H) I)
    (and (not A) B C D (not E) F G H I)
    (and (not A) B C D E (not F) (not G) (not H) (not I))
    (and (not A) B C D E (not F) (not G) H (not I))
    (and A (not B) (not C) (not D) (not E) (not F) (not G) (not H) (not I))
    (and A (not B) (not C) (not D) (not E) (not F) (not G) (not H) I)
    (and A (not B) (not C) (not D) (not E) (not F) (not G) H (not I))
    (and A (not B) (not C) (not D) (not E) (not F) (not G) H I)
    (and A (not B) (not C) (not D) (not E) F (not G) (not H) (not I))
    (and A (not B) (not C) (not D) (not E) F (not G) (not H) I)
    (and A (not B) (not C) (not D) (not E) F (not G) H (not I))
    (and A (not B) (not C) (not D) (not E) F (not G) H I)
    (and A (not B) (not C) (not D) (not E) F G (not H) (not I))
    (and A (not B) (not C) (not D) (not E) F G (not H) I)
    (and A (not B) (not C) (not D) (not E) F G H (not I))
    (and A (not B) (not C) (not D) (not E) F G H I)
    (and A (not B) (not C) (not D) E (not F) (not G) (not H) (not I))
    (and A (not B) (not C) (not D) E (not F) (not G) (not H) I)
    (and A (not B) (not C) (not D) E (not F) (not G) H (not I))
    (and A (not B) (not C) (not D) E (not F) (not G) H I)
    (and A (not B) (not C) (not D) E (not F) G (not H) (not I))
    (and A (not B) (not C) (not D) E (not F) G (not H) I)
    (and A (not B) (not C) (not D) E (not F) G H (not I))
    (and A (not B) (not C) (not D) E (not F) G H I)
    (and A (not B) (not C) (not D) E F (not G) (not H) (not I))
    (and A (not B) (not C) (not D) E F (not G) H (not I))
    (and A (not B) (not C) D (not E) F G H I)
    (and A (not B) (not C) D E (not F) (not G) (not H) (not I))
    (and A (not B) (not C) D E (not F) (not G) (not H) I)
    (and A (not B) (not C) D E (not F) (not G) H (not I))
    (and A (not B) (not C) D E (not F) (not G) H I)
    (and A (not B) (not C) D E (not F) G (not H) (not I))
    (and A B (not C) (not D) (not E) (not F) (not G) H I)
    (and A B (not C) (not D) (not E) (not F) G (not H) (not I))
    (and A B (not C) (not D) (not E) (not F) G (not H) I)
    (and A B (not C) (not D) (not E) (not F) G H (not I))
    (and A B (not C) (not D) E (not F) G H I)
    (and A B (not C) (not D) E F (not G) (not H) (not I))
    (and A B (not C) (not D) E F (not G) (not H) I)
    (and A B (not C) (not D) E F (not G) H (not I))
    (and A B (not C) (not D) E F (not G) H I)
    (and A B (not C) (not D) E F G (not H) (not I))
    (and A B (not C) D (not E) F G (not H) (not I))
    (and A B (not C) D (not E) F G (not H) I)
    (and A B (not C) D (not E) F G H (not I))
    (and A B (not C) D (not E) F G H I)
    (and A B (not C) D E F (not G) H I)
    (and A B (not C) D E F G (not H) (not I))
    (and A B (not C) D E F G (not H) I)
    (and A B (not C) D E F G H (not I)))
      )
      false
    )
  )
)

(check-sat)
(exit)
