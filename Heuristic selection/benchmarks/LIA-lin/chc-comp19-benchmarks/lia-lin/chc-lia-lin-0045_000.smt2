(set-logic HORN)

(declare-fun |main@entry| ( ) Bool)
(declare-fun |main@tailrecurse.i| ( Int Int Int Int ) Bool)
(declare-fun |main@tailrecurse.i5| ( Int Int Int Int Int ) Bool)
(declare-fun |main@tailrecurse.outer.i| ( Int Int Int Int ) Bool)
(declare-fun |main@mult.exit6.split| ( ) Bool)
(declare-fun |main@tailrecurse.outer.i3| ( Int Int Int Int Int ) Bool)

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
        (let ((a!1 (= A (or (not (<= G 46340)) (not (>= G 0)))))
      (a!2 (= B (or (not (<= H 46340)) (not (>= H 0))))))
  (and a!1
       (or (not D) (not E) (= J F))
       (or (not D) (not E) (= I C))
       (or (not D) (not E) (= F H))
       (or (not D) (not E) (= C 0))
       (or (not D) (and D E))
       (= D true)
       (not B)
       (not A)
       a!2))
      )
      (main@tailrecurse.outer.i G H I J)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) ) 
    (=>
      (and
        (main@tailrecurse.outer.i E F G A)
        (and (or (not B) (not C) (= D A))
     (or (not B) (and B C))
     (= B true)
     (or (not B) (not C) (= H D)))
      )
      (main@tailrecurse.i E F G H)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Int) (D Bool) (E Int) (F Bool) (G Bool) (H Int) (I Int) (J Int) (K Int) (L Int) (M Bool) (N Bool) (O Int) (P Int) (Q Int) (R Int) (S Int) ) 
    (=>
      (and
        (main@tailrecurse.i P Q I C)
        (and (= B (not (<= 0 C)))
     (or (not D) (not F) (= H E))
     (or (not D) (not F) (= E C))
     (or (not B) (not D) (not F))
     (or (not N) (not F) (not G))
     (or (not M) (not N) (= S O))
     (or (not M) (not N) (= R L))
     (or (not M) (not N) (= O K))
     (or (not M) (not N) (= L J))
     (or (not F) (= G (= H 0)))
     (or (not F) (and D F))
     (or (not N) (= K (+ (- 1) H)))
     (or (not N) (= J (+ I P)))
     (or (not N) (and N F))
     (or (not M) (and M N))
     (= M true)
     (= A (* (- 1) C)))
      )
      (main@tailrecurse.outer.i P Q R S)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Int) (D Bool) (E Bool) (F Int) (G Int) (H Int) (I Int) (J Int) ) 
    (=>
      (and
        (main@tailrecurse.i G H I A)
        (and (= B (not (<= 0 A)))
     (or (not D) (not E) (= J F))
     (or (not D) (not E) (= F C))
     (or B (not D) (not E))
     (or (not D) (and D E))
     (= D true)
     (= C (* (- 1) A)))
      )
      (main@tailrecurse.i G H I J)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Int) (D Bool) (E Int) (F Int) (G Bool) (H Int) (I Bool) (J Int) (K Int) (L Bool) (M Bool) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) ) 
    (=>
      (and
        (main@tailrecurse.i P Q H C)
        (and (= B (not (<= 0 C)))
     (or (not D) (not I) (= F E))
     (or (not D) (not I) (= E C))
     (or (not B) (not D) (not I))
     (or (not M) (not L) (= N P))
     (or (not M) (not L) (= K 0))
     (or (not M) (not L) (= S N))
     (or (not M) (not L) (= R K))
     (or (not M) (not I) (= J H))
     (or (not M) (not I) (= O J))
     (or (not M) G (not I))
     (or (not L) (and M L))
     (or (not I) (= G (= F 0)))
     (or (not I) (and D I))
     (or (not M) (and M I))
     (= L true)
     (= A (* (- 1) C)))
      )
      (main@tailrecurse.outer.i3 O P Q R S)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) ) 
    (=>
      (and
        (main@tailrecurse.outer.i3 E F G H A)
        (and (or (not C) (not B) (= I D))
     (or (not B) (and C B))
     (= B true)
     (or (not C) (not B) (= D A)))
      )
      (main@tailrecurse.i5 E F G H I)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Int) (D Bool) (E Int) (F Bool) (G Bool) (H Int) (I Int) (J Int) (K Int) (L Int) (M Bool) (N Bool) (O Int) (P Int) (Q Int) (R Int) (S Int) (T Int) ) 
    (=>
      (and
        (main@tailrecurse.i5 P Q R I C)
        (and (= B (not (<= 0 C)))
     (or (not D) (not F) (= H E))
     (or (not D) (not F) (= E C))
     (or (not B) (not D) (not F))
     (or (not N) (not M) (= O K))
     (or (not N) (not M) (= L J))
     (or (not N) (not M) (= T O))
     (or (not N) (not M) (= S L))
     (or (not N) (not G) (not F))
     (or (not F) (= G (= H 0)))
     (or (not F) (and D F))
     (or (not M) (and N M))
     (or (not N) (= K (+ (- 1) H)))
     (or (not N) (= J (+ I R)))
     (or (not N) (and N F))
     (= M true)
     (= A (* (- 1) C)))
      )
      (main@tailrecurse.outer.i3 P Q R S T)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Int) (D Bool) (E Bool) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) ) 
    (=>
      (and
        (main@tailrecurse.i5 G H I J A)
        (and (= B (not (<= 0 A)))
     (or (not E) (not D) (= F C))
     (or (not E) (not D) (= K F))
     (or B (not E) (not D))
     (or (not D) (and E D))
     (= D true)
     (= C (* (- 1) A)))
      )
      (main@tailrecurse.i5 G H I J K)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Int) (D Bool) (E Int) (F Int) (G Bool) (H Int) (I Bool) (J Int) (K Int) (L Int) (M Int) (N Bool) (O Bool) (P Int) (Q Bool) (R Bool) (S Bool) (T Bool) (U Bool) ) 
    (=>
      (and
        (main@tailrecurse.i5 K M P H C)
        (let ((a!1 (or (not T) (= Q (not (<= P 0)))))
      (a!2 (or (not T) (= N (not (<= M 0)))))
      (a!3 (or (not T) (= O (not (= K L))))))
  (and (= B (not (<= 0 C)))
       (or (not I) (not T) (= L J))
       (or (not I) (not T) (= J H))
       (or (not I) G (not T))
       (or (not D) (not I) (= F E))
       (or (not D) (not I) (= E C))
       (or (not D) (not I) (not B))
       (or (not U) (and T U))
       (or (not T) (= S (and Q R)))
       (or (not T) (= R (and O N)))
       a!1
       a!2
       a!3
       (or (not T) (and I T))
       (or S (not T))
       (or (not I) (= G (= F 0)))
       (or (not I) (and D I))
       (= U true)
       (= A (* (- 1) C))))
      )
      main@mult.exit6.split
    )
  )
)
(assert
  (forall ( (CHC_COMP_UNUSED Bool) ) 
    (=>
      (and
        main@mult.exit6.split
        true
      )
      false
    )
  )
)

(check-sat)
(exit)