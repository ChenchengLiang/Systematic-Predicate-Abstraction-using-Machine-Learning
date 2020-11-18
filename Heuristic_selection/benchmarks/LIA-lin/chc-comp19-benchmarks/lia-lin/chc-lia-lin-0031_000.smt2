(set-logic HORN)

(declare-fun |zip$unknown:5| ( Int Int Int ) Bool)

(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) ) 
    (=>
      (and
        (|zip$unknown:5| H A C)
        (and (= (not (= 0 E)) (= B 0))
     (= 0 F)
     (= 0 E)
     (= A (+ (- 1) B))
     (= C (+ (- 1) D))
     (= G (+ 1 H))
     (= (not (= 0 F)) (= D 0)))
      )
      (|zip$unknown:5| G B D)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) ) 
    (=>
      (and
        (and (= (not (= 0 C)) (= D 0))
     (not (= 0 A))
     (not (= 0 C))
     (= E 0)
     (= (not (= 0 A)) (= B 0)))
      )
      (|zip$unknown:5| E D B)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (v_3 Int) ) 
    (=>
      (and
        (|zip$unknown:5| B C v_3)
        (and (= v_3 C) (= 0 A) (= (not (= 0 A)) (= B C)))
      )
      false
    )
  )
)

(check-sat)
(exit)
