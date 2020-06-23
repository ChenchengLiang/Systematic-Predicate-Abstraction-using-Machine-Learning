(set-logic HORN)

(declare-fun |state| ( Int Int Int Int ) Bool)

(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) ) 
    (=>
      (and
        (and (= C 1) (= B 0) (= A 1) (= D 0))
      )
      (state A B C D)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Bool) (H Bool) (I Int) (J Int) ) 
    (=>
      (and
        (state A B C D)
        (let ((a!1 (and (= (+ B (* (- 1) F)) (- 1)) (= (+ A C (* (- 1) E)) 0)))
      (a!2 (and (= (+ D (* (- 1) J)) (- 1)) (= (+ A C (* (- 1) I)) 0))))
  (and (or (not H) (and (= C I) (= D J)) (not (<= 5 D)))
       (or (not G) a!1 (<= 5 B))
       (or (not G) (and (= A E) (= B F)) (not (<= 5 B)))
       (or H (and (= C I) (= D J)))
       (or G (and (= A E) (= B F)))
       (or (not G) (not H))
       (or (not H) a!2 (<= 5 D))))
      )
      (state E F I J)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) ) 
    (=>
      (and
        (state A B C D)
        (or (not (<= A 144)) (not (<= C 144)))
      )
      false
    )
  )
)

(check-sat)
(exit)
