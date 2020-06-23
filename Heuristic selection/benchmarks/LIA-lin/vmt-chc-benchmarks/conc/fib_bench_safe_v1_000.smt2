(set-logic HORN)

(declare-fun |state| ( Int Int Int Int ) Bool)

(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) ) 
    (=>
      (and
        (and (= D 1) (= B 1) (= C 0) (= A 0))
      )
      (state D C B A)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Bool) (H Int) (I Int) (J Bool) ) 
    (=>
      (and
        (state D C B A)
        (let ((a!1 (and (= (+ C (* (- 1) H)) (- 1)) (= (+ D B (* (- 1) I)) 0)))
      (a!2 (and (= (+ A (* (- 1) E)) (- 1)) (= (+ D B (* (- 1) F)) 0))))
  (and (or (not G) (and (= A E) (= B F)) (not (<= 5 A)))
       (or (not J) a!1 (<= 5 C))
       (or (not J) (and (= C H) (= D I)) (not (<= 5 C)))
       (or G (and (= A E) (= B F)))
       (or J (and (= C H) (= D I)))
       (or (not J) (not G))
       (or (not G) a!2 (<= 5 A))))
      )
      (state I H F E)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) ) 
    (=>
      (and
        (state D C B A)
        (or (not (<= B 144)) (not (<= D 144)))
      )
      false
    )
  )
)

(check-sat)
(exit)
