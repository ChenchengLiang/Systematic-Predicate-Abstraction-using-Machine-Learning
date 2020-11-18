(set-logic HORN)

(declare-fun |state| ( Int Bool Int Bool Int Int Int Int Int Bool ) Bool)

(assert
  (forall ( (A Int) (B Bool) (C Int) (D Bool) (E Int) (F Int) (G Int) (H Int) (I Int) (J Bool) ) 
    (=>
      (and
        (let ((a!1 (= (or (not D) (and (<= I 20) (<= 0 I))) J))
      (a!2 (or (<= E 0) (<= 0 C) (= (+ C E (* (- 1) F)) 0)))
      (a!3 (or (<= C 0) (<= 10 E) (= (+ C E (* (- 1) H)) 0)))
      (a!4 (or (and (not (<= E 0)) (not (<= 0 C))) (= F H)))
      (a!5 (or (and (not (<= C 0)) (not (<= 10 E))) (= E H))))
  (and (= F G)
       (= A 0)
       (= A E)
       a!1
       (= (and B (<= C 1) (<= (- 1) C)) D)
       a!2
       a!3
       a!4
       a!5
       (= B true)
       (= G I)))
      )
      (state A B C D E F G H I J)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Int) (D Bool) (E Int) (F Int) (G Int) (H Int) (I Int) (J Bool) (K Int) (L Bool) (M Bool) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) (T Bool) ) 
    (=>
      (and
        (state A B C D E F G H I J)
        (let ((a!1 (= (or (not M) (and (<= S 20) (<= 0 S))) T))
      (a!2 (= (or (not D) (and (<= I 20) (<= 0 I))) J))
      (a!3 (or (<= N 0) (<= 0 K) (= (+ K N (* (- 1) Q)) 0)))
      (a!4 (or (<= E 0) (<= 0 C) (= (+ C E (* (- 1) F)) 0)))
      (a!5 (or (<= C 0) (<= 10 E) (= (+ C E (* (- 1) H)) 0)))
      (a!6 (or (<= K 0) (<= 10 N) (= (+ K N (* (- 1) R)) 0)))
      (a!7 (or (and (not (<= N 0)) (not (<= 0 K))) (= Q R)))
      (a!8 (or (and (not (<= E 0)) (not (<= 0 C))) (= F H)))
      (a!9 (or (and (not (<= C 0)) (not (<= 10 E))) (= E H)))
      (a!10 (or (and (not (<= K 0)) (not (<= 10 N))) (= N R))))
  (and (= G I)
       (= G O)
       (= F G)
       (= A E)
       (= P S)
       (= P Q)
       a!1
       a!2
       (= (and B (<= C 1) (<= (- 1) C)) D)
       (= (and L (<= K 1) (<= (- 1) K)) M)
       (= D L)
       a!3
       a!4
       a!5
       a!6
       a!7
       a!8
       a!9
       a!10
       (= N O)))
      )
      (state O L K M N Q P R S T)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Int) (D Bool) (E Int) (F Int) (G Int) (H Int) (I Int) (J Bool) ) 
    (=>
      (and
        (state A B C D E F G H I J)
        true
      )
      false
    )
  )
)

(check-sat)
(exit)
