(set-logic HORN)

(declare-fun |main@entry| ( ) Bool)
(declare-fun |main@addition.exit.split| ( ) Bool)
(declare-fun |main@.lr.ph.i| ( Int Int Int Int ) Bool)

(assert
  (forall ( (CHC_COMP_UNUSED Bool) ) 
    (=>
      (and
        true
      )
      main@entry
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Int) (D Bool) (E Bool) (F Int) (G Int) (H Int) (I Int) (J Int) ) 
    (=>
      (and
        main@entry
        (and (or (not D) (not E) (= J F))
     (or (not D) (not E) (= I C))
     (or (not D) (not E) (= F G))
     (or (not D) (not E) (= C H))
     (or (not A) (not B) (not E))
     (or (not E) (and A E))
     (or (not D) (and D E))
     (= D true)
     (= B (= H 0)))
      )
      (main@.lr.ph.i G H I J)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Int) (D Int) (E Int) (F Bool) (G Bool) (H Int) (I Bool) (J Bool) (K Bool) (L Bool) (M Bool) ) 
    (=>
      (and
        main@entry
        (let ((a!1 (or (not L) (= J (not (<= H 199)))))
      (a!2 (or (not L) (= F (not (<= 100 D)))))
      (a!3 (or (not L) (= G (not (<= 100 E))))))
  (and (or (not B) (not L) (= H C))
       (or (not B) (not L) (= C D))
       (or A (not B) (not L))
       (or (not M) (and L M))
       (or (not L) (= K (or I J)))
       a!1
       (or (not L) (= I (or G F)))
       a!2
       a!3
       (or (not L) (and B L))
       (or (not K) (not L))
       (= M true)
       (= A (= E 0))))
      )
      main@addition.exit.split
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Bool) (K Int) (L Int) (M Bool) (N Int) (O Bool) (P Int) (Q Int) (R Int) (S Bool) (T Bool) (U Int) (V Int) (W Int) (X Int) (Y Int) ) 
    (=>
      (and
        (main@.lr.ph.i V W D C)
        (and (or (not A) (not B) (not J))
     (or (not M) (not A) B)
     (or (not T) (and T M) (and T J))
     (or (not T) (not J) (= K F))
     (or (not T) (not J) (= I E))
     (or (not T) (not J) (= Q I))
     (or (not T) (not J) (= P K))
     (or (not T) (not M) (= N H))
     (or (not T) (not M) (= L G))
     (or (not T) (not M) (= Q L))
     (or (not T) (not M) (= P N))
     (or (not S) (not T) (= Y U))
     (or (not S) (not T) (= X R))
     (or (not S) (not T) (= U Q))
     (or (not S) (not T) (= R P))
     (or (not S) (not T) (not O))
     (or (not J) (= F (+ 1 D)))
     (or (not J) (= E (+ (- 1) C)))
     (or (not J) (and A J))
     (or (not M) (= H (+ (- 1) D)))
     (or (not M) (= G (+ 1 C)))
     (or (not M) (and M A))
     (or (not T) (= O (= P 0)))
     (or (not S) (and S T))
     (= S true)
     (= B (not (<= D 0))))
      )
      (main@.lr.ph.i V W X Y)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Bool) (K Int) (L Int) (M Bool) (N Int) (O Int) (P Bool) (Q Int) (R Bool) (S Int) (T Int) (U Bool) (V Int) (W Int) (X Int) (Y Bool) (Z Bool) (A1 Int) (B1 Bool) (C1 Bool) (D1 Bool) (E1 Bool) (F1 Bool) ) 
    (=>
      (and
        (main@.lr.ph.i W X D C)
        (let ((a!1 (or (not E1) (= C1 (not (<= A1 199)))))
      (a!2 (or (not E1) (= Y (not (<= 100 W)))))
      (a!3 (or (not E1) (= Z (not (<= 100 X))))))
  (and (or (not R) (and J R) (and M R))
       (or (not M) (not R) (= Q L))
       (or (not M) (not R) (= O N))
       (or (not M) (not R) (= N H))
       (or (not M) (not R) (= L G))
       (or (not J) (not R) (= Q I))
       (or (not J) (not R) (= I E))
       (or (not J) (not R) (= O K))
       (or (not J) (not R) (= K F))
       (or (not A) B (not M))
       (or (not A) (not B) (not J))
       (or (not U) (not R) (= T S))
       (or (not U) (not R) (= S Q))
       (or (not U) P (not R))
       (or (not U) (not E1) (= A1 V))
       (or (not U) (not E1) (= V T))
       (or (not R) (= P (= O 0)))
       (or (not M) (= H (+ (- 1) D)))
       (or (not M) (= G (+ 1 C)))
       (or (not M) (and A M))
       (or (not J) (= F (+ 1 D)))
       (or (not J) (= E (+ (- 1) C)))
       (or (not J) (and A J))
       (or (not F1) (and E1 F1))
       (or (not E1) (= D1 (or B1 C1)))
       a!1
       (or (not E1) (= B1 (or Z Y)))
       a!2
       a!3
       (or (not E1) (and U E1))
       (or (not D1) (not E1))
       (or (not U) (and U R))
       (= F1 true)
       (= B (not (<= D 0)))))
      )
      main@addition.exit.split
    )
  )
)
(assert
  (forall ( (CHC_COMP_UNUSED Bool) ) 
    (=>
      (and
        main@addition.exit.split
        true
      )
      false
    )
  )
)

(check-sat)
(exit)
