(set-logic HORN)

(declare-fun |state| ( Int Bool Bool Bool Int Int Int Int Int Int Int Bool Bool Int Bool Bool Bool Bool Bool Bool Bool ) Bool)

(assert
  (forall ( (A Int) (B Int) (C Bool) (D Bool) (E Bool) (F Bool) (G Int) (H Int) (I Bool) (J Bool) (K Int) (L Int) (M Int) (N Int) (O Bool) (P Bool) (Q Bool) (R Bool) (S Bool) (T Bool) (U Int) ) 
    (=>
      (and
        (let ((a!1 (or (and (not D) (not F))
               (<= U (- 1000))
               (<= 1000 U)
               (= (+ G (* (- 1) U) (* (- 1) A)) 0)))
      (a!2 (or (and (or D F) (not (<= U (- 1000))) (not (<= 1000 U))) (= G U))))
  (and (= L K)
       (= M G)
       (= M L)
       (= N 0)
       (= N U)
       (= J T)
       (= T S)
       (= R Q)
       (= P O)
       (= I R)
       a!1
       (or D (not F) (= H 1))
       (or (not D) F (= B (- 1)))
       a!2
       (or (and D (not F)) (= B 0))
       (or (and (not D) F) (= H B))
       (not J)
       (= P true)
       (not I)
       (= H A)))
      )
      (state N I J P M G U L H A K T R B D F S Q O C E)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Bool) (E Bool) (F Bool) (G Int) (H Int) (I Bool) (J Bool) (K Int) (L Int) (M Int) (N Int) (O Int) (P Bool) (Q Bool) (R Bool) (S Bool) (T Bool) (U Bool) (V Int) (W Bool) (X Bool) (Y Bool) (Z Bool) (A1 Int) (B1 Int) (C1 Bool) (D1 Bool) (E1 Int) (F1 Int) (G1 Int) (H1 Int) (I1 Int) (J1 Bool) (K1 Bool) (L1 Bool) (M1 Bool) (N1 Bool) (O1 Bool) (P1 Int) ) 
    (=>
      (and
        (state N I J K1 M G P1 L H A K O1 M1 B D F N1 L1 J1 C E)
        (let ((a!1 (or (and (not D1) (not C1))
               (<= A1 (- 1000))
               (<= 1000 A1)
               (= (+ B1 (* (- 1) A1) (* (- 1) E1)) 0)))
      (a!2 (or (and (not D) (not F))
               (<= P1 (- 1000))
               (<= 1000 P1)
               (= (+ G (* (- 1) P1) (* (- 1) A)) 0)))
      (a!3 (or (and (or D1 C1) (not (<= A1 (- 1000))) (not (<= 1000 A1)))
               (= B1 A1)))
      (a!4 (or (and (or D F) (not (<= P1 (- 1000))) (not (<= 1000 P1)))
               (= G P1)))
      (a!5 (or (not O1) (= S (not (<= O 0)))))
      (a!6 (or (not M1) (= P (not (<= 0 O))))))
  (and (= B1 I1)
       (= E1 G1)
       (= H1 O)
       (= I1 H1)
       (= N P1)
       (= M L)
       (= M G)
       (= L V)
       (= L K)
       (= H A)
       (= O1 N1)
       (= M1 L1)
       (= K1 J1)
       (= R (or (not Q) (not L1)))
       (= T S)
       (= U P)
       (= W R)
       (= Y U)
       (= Y X)
       (= Z Q)
       (= Z T)
       (= J O1)
       (= I M1)
       a!1
       a!2
       (or (not D1) C1 (= F1 (- 1)))
       (or D1 (not C1) (= G1 1))
       (or D (not F) (= H 1))
       (or (not D) F (= B (- 1)))
       a!3
       a!4
       (or (and D1 (not C1)) (= F1 0))
       (or (and (not D1) C1) (= G1 F1))
       (or (and D (not F)) (= B 0))
       (or (and (not D) F) (= H B))
       (or O1 (= S (<= 10 O)))
       a!5
       a!6
       (or M1 (= P (<= O (- 10))))
       (= A1 V)))
      )
      (state V U T R I1 B1 A1 H1 G1 E1 O Z Y F1 D1 C1 Q X W S P)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Bool) (E Bool) (F Bool) (G Int) (H Int) (I Bool) (J Bool) (K Int) (L Int) (M Int) (N Int) (O Bool) (P Bool) (Q Bool) (R Bool) (S Bool) (T Bool) (U Int) ) 
    (=>
      (and
        (state N I J P M G U L H A K T R B D F S Q O C E)
        (not O)
      )
      false
    )
  )
)

(check-sat)
(exit)
