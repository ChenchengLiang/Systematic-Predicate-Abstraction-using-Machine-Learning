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
      (inv_main3 B A)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) ) 
    (=>
      (and
        (inv_main21 I E C F H D)
        (and (= B (+ (- 1) H))
     (not (= G 0))
     (not (= J 0))
     (<= 1 H)
     (<= 1 F)
     (= A (+ 1 D)))
      )
      (inv_main21 I E C F B A)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) ) 
    (=>
      (and
        (inv_main21 H D B E G C)
        (and (not (= F 0)) (not (= I 0)) (<= 1 G) (not (<= 1 E)) (= A (+ (- 1) G)))
      )
      (inv_main21 H D B E A C)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) ) 
    (=>
      (and
        (inv_main9 H C G F E)
        (and (not (= D 0)) (= A (+ 1 E)) (<= 1 F) (= B (+ (- 1) F)))
      )
      (inv_main9 H C G B A)
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
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) ) 
    (=>
      (and
        (inv_main21 F C A D E B)
        (= G 0)
      )
      (inv_main32 F C A B)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) ) 
    (=>
      (and
        (inv_main21 G C A D F B)
        (and (or (not (<= 1 F)) (= E 0)) (not (= H 0)))
      )
      (inv_main32 G C A B)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (v_6 Int) (v_7 Int) (v_8 Int) ) 
    (=>
      (and
        (inv_main9 F A E D C)
        (and (or (not (<= 1 D)) (= B 0)) (= v_6 F) (= v_7 A) (= 0 v_8))
      )
      (inv_main21 F A C v_6 v_7 v_8)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (v_2 Int) (v_3 Int) (v_4 Int) (v_5 Int) ) 
    (=>
      (and
        (inv_main3 B A)
        (and (not (<= 1 B)) (= 0 v_2) (= v_3 B) (= v_4 A) (= 0 v_5))
      )
      (inv_main21 B A v_2 v_3 v_4 v_5)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) ) 
    (=>
      (and
        (inv_main32 D B A C)
        (not (= A C))
      )
      false
    )
  )
)

(check-sat)
(exit)
