(set-logic HORN)

(declare-fun |inv_main3| ( Int ) Bool)
(declare-fun |inv_main9| ( Int Int Int Int Int ) Bool)
(declare-fun |inv_main31| ( Int Int Int ) Bool)
(declare-fun |inv_main23| ( Int Int Int Int Int Int ) Bool)

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
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) ) 
    (=>
      (and
        (inv_main23 J H I D G E)
        (and (= B (+ D G)) (= C (+ (- 1) I)) (not (= F 0)) (<= 1 I) (= A (+ D G)))
      )
      (inv_main23 J H C G B A)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) ) 
    (=>
      (and
        (inv_main9 H F E D I)
        (and (= B (+ E D)) (= C (+ (- 1) F)) (not (= G 0)) (<= 1 F) (= A (+ E D)))
      )
      (inv_main9 H C D B A)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) ) 
    (=>
      (and
        (inv_main23 G E F A C B)
        (or (not (<= 1 F)) (= D 0))
      )
      (inv_main31 G E C)
    )
  )
)
(assert
  (forall ( (A Int) (v_1 Int) (v_2 Int) (v_3 Int) (v_4 Int) ) 
    (=>
      (and
        (inv_main3 A)
        (and (= v_1 A) (= 0 v_2) (= 1 v_3) (= 0 v_4))
      )
      (inv_main9 A v_1 v_2 v_3 v_4)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (v_6 Int) (v_7 Int) (v_8 Int) (v_9 Int) ) 
    (=>
      (and
        (inv_main9 D C B A E)
        (and (or (not (<= 1 C)) (= F 0)) (= v_6 D) (= 1 v_7) (= 1 v_8) (= 0 v_9))
      )
      (inv_main23 D A v_6 v_7 v_8 v_9)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) ) 
    (=>
      (and
        (inv_main31 C B A)
        (not (= B A))
      )
      false
    )
  )
)

(check-sat)
(exit)
