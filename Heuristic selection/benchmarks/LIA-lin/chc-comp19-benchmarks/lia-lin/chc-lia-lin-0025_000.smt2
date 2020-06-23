(set-logic HORN)

(declare-fun |inv_main32| ( Int Int Int Int ) Bool)
(declare-fun |inv_main9| ( Int Int Int Int Int ) Bool)
(declare-fun |inv_main21| ( Int Int Int Int Int Int ) Bool)
(declare-fun |inv_main3| ( Int Int ) Bool)

(assert
  (forall ( (A Int) (B Int) ) 
    (=>
      (and
        true
      )
      (inv_main3 A B)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) ) 
    (=>
      (and
        (inv_main21 C D E F G H)
        (and (= B (+ (- 1) G))
     (not (= J 0))
     (not (= I 0))
     (<= 1 G)
     (<= 1 F)
     (= A (+ 1 H)))
      )
      (inv_main21 C D E F B A)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) ) 
    (=>
      (and
        (inv_main21 B C D E F G)
        (and (not (= I 0)) (not (= H 0)) (<= 1 F) (not (<= 1 E)) (= A (+ (- 1) F)))
      )
      (inv_main21 B C D E A G)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) ) 
    (=>
      (and
        (inv_main9 C D E F G)
        (and (= A (+ 1 G)) (not (= H 0)) (<= 1 F) (= B (+ (- 1) F)))
      )
      (inv_main9 C D E B A)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (v_2 Int) (v_3 Int) (v_4 Int) ) 
    (=>
      (and
        (inv_main3 A B)
        (and (<= 1 A) (= v_2 A) (= v_3 B) (= 0 v_4))
      )
      (inv_main9 A B v_2 v_3 v_4)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) ) 
    (=>
      (and
        (inv_main21 A B C D E F)
        (= G 0)
      )
      (inv_main32 A B C F)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) ) 
    (=>
      (and
        (inv_main21 A B C D E F)
        (and (or (not (<= 1 E)) (= G 0)) (not (= H 0)))
      )
      (inv_main32 A B C F)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (v_6 Int) (v_7 Int) (v_8 Int) ) 
    (=>
      (and
        (inv_main9 A B C D E)
        (and (or (not (<= 1 D)) (= F 0)) (= v_6 A) (= v_7 B) (= 0 v_8))
      )
      (inv_main21 A B E v_6 v_7 v_8)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (v_2 Int) (v_3 Int) (v_4 Int) (v_5 Int) ) 
    (=>
      (and
        (inv_main3 A B)
        (and (not (<= 1 A)) (= 0 v_2) (= v_3 A) (= v_4 B) (= 0 v_5))
      )
      (inv_main21 A B v_2 v_3 v_4 v_5)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) ) 
    (=>
      (and
        (inv_main32 A B C D)
        (not (= C D))
      )
      false
    )
  )
)

(check-sat)
(exit)
