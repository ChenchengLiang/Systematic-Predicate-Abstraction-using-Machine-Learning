(set-logic HORN)

(declare-fun |inv_main27| ( Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |inv_main3| ( Int Int Int ) Bool)
(declare-fun |inv_main42| ( Int Int Int Int Int ) Bool)
(declare-fun |inv_main8| ( Int Int Int Int Int Int Int ) Bool)
(declare-fun |inv_main26| ( Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |inv_main9| ( Int Int Int Int Int Int Int ) Bool)

(assert
  (forall ( (A Int) (B Int) (C Int) ) 
    (=>
      (and
        true
      )
      (inv_main3 A B C)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) ) 
    (=>
      (and
        (inv_main26 A B C D E F G H)
        (= I 0)
      )
      (inv_main27 A B C D E F G H)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) ) 
    (=>
      (and
        (inv_main26 A B C D E F G H)
        (and (or (not (<= 1 F)) (= I 0)) (not (= J 0)))
      )
      (inv_main27 A B C D E F G H)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) ) 
    (=>
      (and
        (inv_main9 A B C D E F G)
        (or (not (<= 1 E)) (= H 0))
      )
      (inv_main8 A B C D E F G)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) ) 
    (=>
      (and
        (inv_main27 C D E F G H I J)
        (and (= B (+ (- 1) I)) (not (= K 0)) (<= 1 I) (= A (+ 2 J)))
      )
      (inv_main27 C D E F G H B A)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) ) 
    (=>
      (and
        (inv_main26 C D E F G H I J)
        (and (= B (+ (- 1) H))
     (not (= L 0))
     (not (= K 0))
     (<= 1 H)
     (<= 1 G)
     (= A (+ 1 J)))
      )
      (inv_main26 C D E F G B I A)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) ) 
    (=>
      (and
        (inv_main26 B C D E F G H I)
        (and (not (= K 0)) (not (= J 0)) (<= 1 G) (not (<= 1 F)) (= A (+ (- 1) G)))
      )
      (inv_main26 B C D E F A H I)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) ) 
    (=>
      (and
        (inv_main9 C D E F G H I)
        (and (= B (+ (- 1) G)) (not (= J 0)) (<= 1 G) (= A (+ 1 I)))
      )
      (inv_main9 C D E F B H A)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) ) 
    (=>
      (and
        (inv_main8 C D E F G H I)
        (and (= B (+ (- 1) H)) (not (= J 0)) (<= 1 H) (= A (+ 2 I)))
      )
      (inv_main8 C D E F G B A)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (v_3 Int) (v_4 Int) (v_5 Int) (v_6 Int) ) 
    (=>
      (and
        (inv_main3 A B C)
        (and (<= 1 A) (= v_3 A) (= v_4 B) (= v_5 C) (= 0 v_6))
      )
      (inv_main9 A B C v_3 v_4 v_5 v_6)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (v_3 Int) (v_4 Int) (v_5 Int) (v_6 Int) ) 
    (=>
      (and
        (inv_main3 A B C)
        (and (not (<= 1 A)) (= v_3 A) (= v_4 B) (= v_5 C) (= 0 v_6))
      )
      (inv_main8 A B C v_3 v_4 v_5 v_6)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) ) 
    (=>
      (and
        (inv_main27 A B C D E F G H)
        (or (not (<= 1 G)) (= I 0))
      )
      (inv_main42 A B C D H)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (v_8 Int) (v_9 Int) (v_10 Int) (v_11 Int) ) 
    (=>
      (and
        (inv_main8 A B C D E F G)
        (and (or (not (<= 1 F)) (= H 0)) (= v_8 A) (= v_9 B) (= v_10 C) (= 0 v_11))
      )
      (inv_main26 A B C G v_8 v_9 v_10 v_11)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) ) 
    (=>
      (and
        (inv_main42 A B C D E)
        (not (= D E))
      )
      false
    )
  )
)

(check-sat)
(exit)
