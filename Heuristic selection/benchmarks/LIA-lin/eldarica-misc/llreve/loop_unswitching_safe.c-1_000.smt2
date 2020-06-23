(set-logic HORN)

(declare-fun |inv_main10| ( Int Int Int Int Int ) Bool)
(declare-fun |inv_main9| ( Int Int Int Int Int ) Bool)
(declare-fun |inv_main34| ( Int Int Int Int ) Bool)
(declare-fun |inv_main3| ( Int Int ) Bool)
(declare-fun |inv_main23| ( Int Int Int Int Int Int ) Bool)

(assert
  (forall ( (A Int) (B Int) ) 
    (=>
      (and
        true
      )
      (inv_main3 B A)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) ) 
    (=>
      (and
        (inv_main23 J I D H E C)
        (and (= B (+ (- 1) E))
     (not (= G 0))
     (not (= F 0))
     (<= 1 E)
     (<= 1 H)
     (= A (+ 1 C)))
      )
      (inv_main23 J I D H B A)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) ) 
    (=>
      (and
        (inv_main23 J I D H E C)
        (and (= B (+ (- 1) E))
     (not (= G 0))
     (not (= F 0))
     (<= 1 E)
     (not (<= 1 H))
     (= A (+ (- 1) C)))
      )
      (inv_main23 J I D H B A)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) ) 
    (=>
      (and
        (inv_main9 H G E F C)
        (and (= A (+ 1 C)) (= B (+ (- 1) F)) (<= 1 F) (not (= D 0)))
      )
      (inv_main9 H G E B A)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) ) 
    (=>
      (and
        (inv_main10 G F D E C)
        (and (= B (+ (- 1) E)) (not (= H 0)) (<= 1 E) (= A (+ (- 1) C)))
      )
      (inv_main10 G F D B A)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (v_2 Int) (v_3 Int) (v_4 Int) ) 
    (=>
      (and
        (inv_main3 B A)
        (and (<= 1 B) (= v_2 B) (= v_3 A) (= 0 v_4))
      )
      (inv_main9 B A v_2 v_3 v_4)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (v_2 Int) (v_3 Int) (v_4 Int) ) 
    (=>
      (and
        (inv_main3 B A)
        (and (not (<= 1 B)) (= v_2 B) (= v_3 A) (= 0 v_4))
      )
      (inv_main10 B A v_2 v_3 v_4)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) ) 
    (=>
      (and
        (inv_main23 G F B E C A)
        (= D 0)
      )
      (inv_main34 G F B A)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) ) 
    (=>
      (and
        (inv_main23 H G B F C A)
        (and (or (not (<= 1 C)) (= D 0)) (not (= E 0)))
      )
      (inv_main34 H G B A)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (v_6 Int) (v_7 Int) (v_8 Int) ) 
    (=>
      (and
        (inv_main9 F E C D A)
        (and (or (not (<= 1 D)) (= B 0)) (= v_6 F) (= v_7 E) (= 0 v_8))
      )
      (inv_main23 F E A v_6 v_7 v_8)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (v_6 Int) (v_7 Int) (v_8 Int) ) 
    (=>
      (and
        (inv_main10 F E C D A)
        (and (or (not (<= 1 D)) (= B 0)) (= v_6 F) (= v_7 E) (= 0 v_8))
      )
      (inv_main23 F E A v_6 v_7 v_8)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) ) 
    (=>
      (and
        (inv_main34 D C B A)
        (not (= B A))
      )
      false
    )
  )
)

(check-sat)
(exit)
