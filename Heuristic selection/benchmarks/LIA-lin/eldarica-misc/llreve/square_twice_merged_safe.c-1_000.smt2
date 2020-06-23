(set-logic HORN)

(declare-fun |inv_main18| ( Int Int Int Int Int ) Bool)
(declare-fun |inv_main12| ( Int Int Int Int Int ) Bool)
(declare-fun |inv_main4| ( Int Int ) Bool)
(declare-fun |inv_main5| ( Int Int Int ) Bool)

(assert
  (forall ( (A Int) (v_1 Int) ) 
    (=>
      (and
        (and true (= 0 v_1))
      )
      (inv_main4 A v_1)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (v_2 Int) ) 
    (=>
      (and
        (inv_main4 B A)
        (= v_2 B)
      )
      (inv_main5 B A v_2)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) ) 
    (=>
      (and
        (inv_main18 D C B A E)
        true
      )
      (inv_main12 D C B A E)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) ) 
    (=>
      (and
        (inv_main12 D C B A E)
        (and (not (<= 1 E)) (not (<= 1 B)))
      )
      (inv_main18 D C B A E)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) ) 
    (=>
      (and
        (inv_main12 F E D C G)
        (and (= B (+ C F)) (not (<= 1 D)) (<= 1 G) (= A (+ (- 1) G)))
      )
      (inv_main18 F E D B A)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) ) 
    (=>
      (and
        (inv_main12 F E D C G)
        (and (= B (+ E F)) (<= 1 D) (not (<= 1 G)) (= A (+ (- 1) D)))
      )
      (inv_main18 F B A C G)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) ) 
    (=>
      (and
        (inv_main12 H G F E I)
        (and (= B (+ E H))
     (= C (+ (- 1) F))
     (= D (+ G H))
     (<= 1 F)
     (<= 1 I)
     (= A (+ (- 1) I)))
      )
      (inv_main18 H D C B A)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) ) 
    (=>
      (and
        (inv_main5 E D C)
        (and (= B (+ D E)) (<= 1 C) (= A (+ (- 1) C)))
      )
      (inv_main5 E B A)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (v_3 Int) (v_4 Int) (v_5 Int) (v_6 Int) ) 
    (=>
      (and
        (inv_main5 C B A)
        (and (not (<= 1 A)) (= 0 v_3) (= v_4 C) (= 0 v_5) (= v_6 C))
      )
      (inv_main12 C v_3 v_4 v_5 v_6)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) ) 
    (=>
      (and
        (inv_main18 D C B A E)
        (not (= C A))
      )
      false
    )
  )
)

(check-sat)
(exit)
