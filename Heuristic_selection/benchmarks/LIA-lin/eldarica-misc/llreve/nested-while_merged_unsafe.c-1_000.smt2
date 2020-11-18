(set-logic HORN)

(declare-fun |inv_main2| ( ) Bool)
(declare-fun |inv_main9| ( Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |inv_main5| ( Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |inv_main13| ( Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |inv_main16| ( Int Int Int Int Int Int Int Int ) Bool)

(assert
  (forall ( (CHC_COMP_UNUSED Bool) ) 
    (=>
      (and
        true
      )
      inv_main2
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) ) 
    (=>
      (and
        (inv_main5 G H D C E F A B)
        (not (<= 1 (+ D (* (- 1) B))))
      )
      (inv_main13 G H D C E F A B)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) ) 
    (=>
      (and
        (inv_main16 G H D C E F A B)
        (not (<= 1 (+ B (* (- 1) D))))
      )
      (inv_main5 G H D C E F A B)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) ) 
    (=>
      (and
        (inv_main9 I J F E G H C D)
        (and (= B (+ 1 J)) (<= 1 (+ C (* (- 1) J))) (= A (+ 1 G)))
      )
      (inv_main9 I B F E A H C D)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) ) 
    (=>
      (and
        (inv_main5 I J F E G H C D)
        (and (= B (+ (- 2) H)) (<= 1 (+ F (* (- 1) D))) (= A (+ 1 D)))
      )
      (inv_main16 I J F E G B C A)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) ) 
    (=>
      (and
        (inv_main16 I J F E G H C D)
        (and (= B (+ 1 F)) (<= 1 (+ D (* (- 1) F))) (= A (+ 2 H)))
      )
      (inv_main16 I J B E G A C D)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) ) 
    (=>
      (and
        (inv_main9 G H D C E F A B)
        (let ((a!1 (not (<= 1 (+ H (* (- 1) A))))) (a!2 (not (<= 1 (+ A (* (- 1) H))))))
  (and a!1 a!2))
      )
      (inv_main5 G H D C E F A B)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) ) 
    (=>
      (and
        (inv_main9 I J F E G H C D)
        (let ((a!1 (not (<= 1 (+ C (* (- 1) J))))))
  (and (= B (+ (- 1) G)) a!1 (<= 1 (+ J (* (- 1) C))) (= A (+ 1 C))))
      )
      (inv_main9 I J F E B H A D)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (v_2 Int) (v_3 Int) (v_4 Int) (v_5 Int) (v_6 Int) (v_7 Int) ) 
    (=>
      (and
        inv_main2
        (and (not (<= 1 B)) (= v_2 B) (= v_3 B) (= v_4 A) (= v_5 A) (= 0 v_6) (= 0 v_7))
      )
      (inv_main5 B v_2 v_3 A v_4 v_5 v_6 v_7)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (v_3 Int) (v_4 Int) (v_5 Int) (v_6 Int) (v_7 Int) ) 
    (=>
      (and
        inv_main2
        (and (<= 1 C)
     (= A (+ (- 1) B))
     (= v_3 C)
     (= v_4 C)
     (= v_5 B)
     (= 1 v_6)
     (= 0 v_7))
      )
      (inv_main9 C v_3 v_4 B A v_5 v_6 v_7)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) ) 
    (=>
      (and
        (inv_main13 G H D C E F A B)
        (not (= E F))
      )
      false
    )
  )
)

(check-sat)
(exit)
