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
        (inv_main26 F H D C G I B E)
        (= A 0)
      )
      (inv_main27 F H D C G I B E)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) ) 
    (=>
      (and
        (inv_main26 E I C B G J A D)
        (and (or (not (<= 1 J)) (= F 0)) (not (= H 0)))
      )
      (inv_main27 E I C B G J A D)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) ) 
    (=>
      (and
        (inv_main9 G H D E A C F)
        (or (not (<= 1 A)) (= B 0))
      )
      (inv_main8 G H D E A C F)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) ) 
    (=>
      (and
        (inv_main27 G J E D H K C F)
        (and (= B (+ (- 1) C)) (not (= I 0)) (<= 1 C) (= A (+ 2 F)))
      )
      (inv_main27 G J E D H K B A)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) ) 
    (=>
      (and
        (inv_main26 G K E D I L C F)
        (and (= B (+ (- 1) L))
     (not (= H 0))
     (not (= J 0))
     (<= 1 I)
     (<= 1 L)
     (= A (+ 1 F)))
      )
      (inv_main26 G K E D I B C A)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) ) 
    (=>
      (and
        (inv_main26 F J D C H K B E)
        (and (not (= G 0)) (not (= I 0)) (not (<= 1 H)) (<= 1 K) (= A (+ (- 1) K)))
      )
      (inv_main26 F J D C H A B E)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) ) 
    (=>
      (and
        (inv_main9 I J F G C E H)
        (and (= B (+ (- 1) C)) (not (= D 0)) (<= 1 C) (= A (+ 1 H)))
      )
      (inv_main9 I J F G B E A)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) ) 
    (=>
      (and
        (inv_main8 I J F G D E H)
        (and (= B (+ (- 1) E)) (not (= C 0)) (<= 1 E) (= A (+ 2 H)))
      )
      (inv_main8 I J F G D B A)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (v_3 Int) (v_4 Int) (v_5 Int) (v_6 Int) ) 
    (=>
      (and
        (inv_main3 B C A)
        (and (<= 1 B) (= v_3 B) (= v_4 C) (= v_5 A) (= 0 v_6))
      )
      (inv_main9 B C A v_3 v_4 v_5 v_6)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (v_3 Int) (v_4 Int) (v_5 Int) (v_6 Int) ) 
    (=>
      (and
        (inv_main3 B C A)
        (and (not (<= 1 B)) (= v_3 B) (= v_4 C) (= v_5 A) (= 0 v_6))
      )
      (inv_main8 B C A v_3 v_4 v_5 v_6)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) ) 
    (=>
      (and
        (inv_main27 F H D C G I B E)
        (or (not (<= 1 B)) (= A 0))
      )
      (inv_main42 F H D C E)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (v_8 Int) (v_9 Int) (v_10 Int) (v_11 Int) ) 
    (=>
      (and
        (inv_main8 G H D E A B F)
        (and (or (not (<= 1 B)) (= C 0)) (= v_8 G) (= v_9 H) (= v_10 D) (= 0 v_11))
      )
      (inv_main26 G H D F v_8 v_9 v_10 v_11)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) ) 
    (=>
      (and
        (inv_main42 C E B A D)
        (not (= A D))
      )
      false
    )
  )
)

(check-sat)
(exit)
