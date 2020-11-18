(set-logic HORN)

(declare-fun |REC_f_| ( Int Int ) Bool)
(declare-fun |CHC_COMP_FALSE| ( ) Bool)
(declare-fun |REC__f| ( Int Int ) Bool)
(declare-fun |REC_f_f| ( Int Int Int Int ) Bool)

(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (v_5 Int) ) 
    (=>
      (and
        (REC__f E D)
        (and (= B (+ 2 E)) (<= A 1) (not (<= B 1)) (= (+ (* 2 B) D) (+ 1 C)) (= v_5 A))
      )
      (REC_f_f A v_5 B C)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (v_2 Int) (v_3 Int) ) 
    (=>
      (and
        (and (<= A 1) (<= B 1) (= v_2 A) (= v_3 B))
      )
      (REC_f_f A v_2 B v_3)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (v_5 Int) ) 
    (=>
      (and
        (REC_f_ E D)
        (and (= A (+ 2 E))
     (not (<= A 2))
     (not (<= A 1))
     (<= C 1)
     (= (+ (* 2 A) D) (+ 1 B))
     (= v_5 C))
      )
      (REC_f_f A B C v_5)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) ) 
    (=>
      (and
        (REC_f_f G E H F)
        (and (= (+ (* 2 C) F) (+ 1 D))
     (= A (+ 2 G))
     (= C (+ 2 H))
     (not (<= A 2))
     (not (<= A 1))
     (not (<= C 1))
     (= (+ (* 2 A) E) (+ 1 B)))
      )
      (REC_f_f A B C D)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (v_3 Int) ) 
    (=>
      (and
        (and (<= C 1) (<= A 2) (not (<= A 1)) (= (* 2 A) (+ 1 B)) (= v_3 C))
      )
      (REC_f_f A B C v_3)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) ) 
    (=>
      (and
        (REC__f F E)
        (and (= (+ (* 2 C) E) (+ 1 D))
     (= C (+ 2 F))
     (<= A 2)
     (not (<= A 1))
     (not (<= C 1))
     (= (* 2 A) (+ 1 B)))
      )
      (REC_f_f A B C D)
    )
  )
)
(assert
  (forall ( (A Int) (v_1 Int) ) 
    (=>
      (and
        (and (<= A 1) (= v_1 A))
      )
      (REC_f_ A v_1)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) ) 
    (=>
      (and
        (REC_f_ D C)
        (and (= A (+ 2 D)) (not (<= A 2)) (not (<= A 1)) (= (+ (* 2 A) C) (+ 1 B)))
      )
      (REC_f_ A B)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) ) 
    (=>
      (and
        (and (<= A 2) (not (<= A 1)) (= (* 2 A) (+ 1 B)))
      )
      (REC_f_ A B)
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
        (REC__f D C)
        (and (= A (+ 2 D)) (not (<= A 1)) (= (+ (* 2 A) C) (+ 1 B)))
      )
      (REC__f A B)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) ) 
    (=>
      (and
        (REC__f D C)
        (let ((a!1 (not (= (* 2 A) (+ (* 2 B) C)))))
  (and (= B (+ 2 D)) (= A B) (not (<= B 1)) (<= A 2) (not (<= A 1)) a!1))
      )
      CHC_COMP_FALSE
    )
  )
)
(assert
  (forall ( (A Int) (B Int) ) 
    (=>
      (and
        (and (= A B) (<= B 1) (<= A 2) (not (<= A 1)) (not (= (* 2 A) (+ 1 B))))
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
        (let ((a!1 (not (= (+ (* 2 A) B) (+ (* 2 C) D)))))
  (and (= A (+ 2 E))
       (= A C)
       (= C (+ 2 F))
       (not (<= A 2))
       (not (<= A 1))
       (not (<= C 1))
       a!1))
      )
      CHC_COMP_FALSE
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) ) 
    (=>
      (and
        (REC_f_ D B)
        (let ((a!1 (not (= (+ (* 2 A) B) (+ 1 C)))))
  (and (= A (+ 2 D)) (= A C) (<= C 1) (not (<= A 2)) (not (<= A 1)) a!1))
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
        (let ((a!1 (not (= A (+ (- 1) (* 2 B) C)))))
  (and a!1 (= A B) (not (<= B 1)) (<= A 1) (= B (+ 2 D))))
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
