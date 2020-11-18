(set-logic HORN)

(declare-fun |REC_f_| ( Int Int ) Bool)
(declare-fun |CHC_COMP_FALSE| ( ) Bool)
(declare-fun |REC__f| ( Int Int ) Bool)
(declare-fun |REC_f_f| ( Int Int Int Int ) Bool)

(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (v_5 Int) ) 
    (=>
      (and
        (REC__f D B)
        (and (= A (+ 1 D)) (not (<= A 1)) (<= E 0) (= (+ A B) C) (= v_5 E))
      )
      (REC_f_f E v_5 A C)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (v_2 Int) (v_3 Int) ) 
    (=>
      (and
        (and (<= A 1) (<= B 0) (= v_2 B) (= v_3 A))
      )
      (REC_f_f B v_2 A v_3)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) ) 
    (=>
      (and
        (REC_f_f G B H E)
        (and (= (+ D E) F)
     (= A (+ 1 G))
     (= D (+ 1 H))
     (not (<= A 0))
     (not (<= D 1))
     (= (+ A B) C))
      )
      (REC_f_f A C D F)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (v_5 Int) ) 
    (=>
      (and
        (REC_f_ D B)
        (and (= A (+ 1 D)) (not (<= A 0)) (<= E 1) (= (+ A B) C) (= v_5 E))
      )
      (REC_f_f A C E v_5)
    )
  )
)
(assert
  (forall ( (A Int) (v_1 Int) ) 
    (=>
      (and
        (and (<= A 0) (= v_1 A))
      )
      (REC_f_ A v_1)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) ) 
    (=>
      (and
        (REC_f_ D B)
        (and (= A (+ 1 D)) (not (<= A 0)) (= (+ A B) C))
      )
      (REC_f_ A C)
    )
  )
)
(assert
  (forall ( (A Int) (v_1 Int) ) 
    (=>
      (and
        (and (<= A 1) (= v_1 A))
      )
      (REC__f A v_1)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) ) 
    (=>
      (and
        (REC__f D B)
        (and (= A (+ 1 D)) (not (<= A 1)) (= (+ A B) C))
      )
      (REC__f A C)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) ) 
    (=>
      (and
        (REC_f_ D B)
        (and (= A (+ 1 D)) (= A C) (<= C 1) (not (<= A 0)) (not (= (+ A B) C)))
      )
      CHC_COMP_FALSE
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) ) 
    (=>
      (and
        (REC_f_f E B F D)
        (and (= A (+ 1 E))
     (= A C)
     (= C (+ 1 F))
     (not (<= A 0))
     (not (<= C 1))
     (not (= (+ A B) (+ C D))))
      )
      CHC_COMP_FALSE
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) ) 
    (=>
      (and
        (REC__f D C)
        (and (not (= A (+ B C))) (= A B) (not (<= B 1)) (<= A 0) (= B (+ 1 D)))
      )
      CHC_COMP_FALSE
    )
  )
)
(assert
  (forall ( (CHC_COMP_UNUSED Bool) ) 
    (=>
      (and
        CHC_COMP_FALSE
      )
      false
    )
  )
)

(check-sat)
(exit)
