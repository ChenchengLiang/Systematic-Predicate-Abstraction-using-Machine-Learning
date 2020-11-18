(set-logic HORN)

(declare-fun |state| ( Int Bool Int Bool Int Int Int Int Int Bool ) Bool)

(assert
  (forall ( (A Int) (B Bool) (C Bool) (D Bool) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) ) 
    (=>
      (and
        (let ((a!1 (= (or B (and (<= I 1) (<= (- 1) I))) D))
      (a!2 (= (or (not D) (and (<= E 20) (<= 0 E))) C))
      (a!3 (or (<= I 0) (<= 10 H) (= (+ I H (* (- 1) G)) 0)))
      (a!4 (or (<= H 0) (<= 0 I) (= (+ I H (* (- 1) J)) 0)))
      (a!5 (or (and (not (<= I 0)) (not (<= 10 H))) (= H G)))
      (a!6 (or (and (not (<= H 0)) (not (<= 0 I))) (= J G))))
  (and (= F E) (= A 0) (= A H) a!1 a!2 a!3 a!4 a!5 a!6 (= B true) (= J F)))
      )
      (state A B I D H J F G E C)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Int) (D Bool) (E Bool) (F Bool) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Bool) (N Bool) (O Int) (P Int) (Q Int) (R Int) (S Int) (T Int) ) 
    (=>
      (and
        (state A B S N R T P Q O M)
        (let ((a!1 (= (or (not N) (and (<= O 20) (<= 0 O))) M))
      (a!2 (= (or D (and (<= K 1) (<= (- 1) K))) F))
      (a!3 (= (or (not F) (and (<= G 20) (<= 0 G))) E))
      (a!4 (= (or B (and (<= S 1) (<= (- 1) S))) N))
      (a!5 (or (<= S 0) (<= 10 R) (= (+ S R (* (- 1) Q)) 0)))
      (a!6 (or (<= R 0) (<= 0 S) (= (+ S R (* (- 1) T)) 0)))
      (a!7 (or (<= J 0) (<= 0 K) (= (+ K J (* (- 1) L)) 0)))
      (a!8 (or (<= K 0) (<= 10 J) (= (+ K J (* (- 1) I)) 0)))
      (a!9 (or (and (not (<= S 0)) (not (<= 10 R))) (= R Q)))
      (a!10 (or (and (not (<= R 0)) (not (<= 0 S))) (= T Q)))
      (a!11 (or (and (not (<= J 0)) (not (<= 0 K))) (= L I)))
      (a!12 (or (and (not (<= K 0)) (not (<= 10 J))) (= J I))))
  (and (= P O)
       (= P C)
       (= H G)
       (= H L)
       (= J C)
       (= A R)
       a!1
       a!2
       a!3
       a!4
       (= N D)
       a!5
       a!6
       a!7
       a!8
       a!9
       a!10
       a!11
       a!12
       (= T P)))
      )
      (state C D K F J L H I G E)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Bool) (D Bool) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) ) 
    (=>
      (and
        (state A B I D H J F G E C)
        (not C)
      )
      false
    )
  )
)

(check-sat)
(exit)
