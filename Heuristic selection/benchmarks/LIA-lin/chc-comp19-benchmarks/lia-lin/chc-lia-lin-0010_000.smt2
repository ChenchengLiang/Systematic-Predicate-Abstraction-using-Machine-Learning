(set-logic HORN)

(declare-fun |inv_main3| ( Int ) Bool)
(declare-fun |inv_main26| ( Int Int Int ) Bool)
(declare-fun |inv_main13| ( Int Int Int Int ) Bool)
(declare-fun |inv_main8| ( Int Int Int Int ) Bool)
(declare-fun |inv_main22| ( Int Int Int Int Int ) Bool)

(assert
  (forall ( (A Int) ) 
    (=>
      (and
        true
      )
      (inv_main3 A)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) ) 
    (=>
      (and
        (inv_main22 C D E F G)
        (and (= B (+ F E)) (<= 1 G) (= A (+ (- 1) G)))
      )
      (inv_main22 C D E B A)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) ) 
    (=>
      (and
        (inv_main8 C D E F)
        (and (= B (+ E D)) (<= 1 F) (= A (+ (- 1) F)))
      )
      (inv_main8 C D B A)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (v_4 Int) (v_5 Int) ) 
    (=>
      (and
        (inv_main8 A B C D)
        (and (not (<= 1 D)) (= 0 v_4) (= v_5 B))
      )
      (inv_main13 A B v_4 v_5)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) ) 
    (=>
      (and
        (inv_main13 C D E F)
        (and (= B (+ E D)) (<= 1 F) (= A (+ (- 1) F)))
      )
      (inv_main13 C D B A)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) ) 
    (=>
      (and
        (inv_main22 A B C D E)
        (not (<= 1 E))
      )
      (inv_main26 A B D)
    )
  )
)
(assert
  (forall ( (A Int) (v_1 Int) (v_2 Int) (v_3 Int) ) 
    (=>
      (and
        (inv_main3 A)
        (and (= v_1 A) (= 0 v_2) (= v_3 A))
      )
      (inv_main8 A v_1 v_2 v_3)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (v_4 Int) (v_5 Int) (v_6 Int) ) 
    (=>
      (and
        (inv_main13 A B C D)
        (and (not (<= 1 D)) (= v_4 A) (= 0 v_5) (= v_6 A))
      )
      (inv_main22 A C v_4 v_5 v_6)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) ) 
    (=>
      (and
        (inv_main26 A B C)
        (not (= B C))
      )
      false
    )
  )
)

(check-sat)
(exit)
