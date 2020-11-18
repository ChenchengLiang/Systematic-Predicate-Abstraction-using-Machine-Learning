(set-logic HORN)

(declare-fun |state| ( Bool Bool Bool Bool Int Int ) Bool)

(assert
  (forall ( (A Bool) (B Bool) (C Int) (D Int) (E Bool) (F Bool) ) 
    (=>
      (and
        (and (= A true) (not F) (not E) (not B))
      )
      (state B A F E C D)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Bool) (E Bool) (F Bool) (G Int) (H Int) (I Int) (J Int) (K Int) (L Bool) (M Bool) ) 
    (=>
      (and
        (state B A M L H J)
        (let ((a!1 (and (not F) E D C (= H G) (= J I)))
      (a!2 (and (not F) E D (not C) (= J I) (= (+ H (* (- 1) G)) (- 1))))
      (a!3 (and F (not E) D (not C) (= J I) (= (+ H (* (- 1) G)) 1)))
      (a!4 (and (not F) E (not D) C (= H G) (= (+ J (* (- 1) I)) (- 1))))
      (a!5 (and F (not E) (not D) C (= H G) (= (+ J (* (- 1) I)) 1)))
      (a!6 (and F E (not D) C (= H G) (= J I)))
      (a!7 (and (not F) (not E) (not D) (not C) (= H G) (= J I))))
  (and (or (not A)
           (not B)
           (not L)
           M
           (and F E (not D) (not C) (= H G) (= J I))
           (<= J (- 1)))
       (or (not A)
           (not B)
           L
           (not M)
           (and F (not E) D C (= H G) (= J I))
           (not (<= H 0)))
       (or (not A)
           (not B)
           L
           (not M)
           (and F (not E) (not D) (not C) (= H G) (= J I))
           (<= H 0))
       (or (not A) (not B) L M a!1 (= K 0))
       (or (not A)
           (not B)
           L
           M
           (and (not F) E (not D) (not C) (= H G) (= J I))
           (not (= K 0)))
       (or A B L (not M) a!2)
       (or A B (not L) M a!3)
       (or (not A) B L (not M) a!4)
       (or (not A) B (not L) M a!5)
       (or A B (not L) (not M) (and F E D (not C) (= H G) (= J I)))
       (or A (not B) (not L) (not M) a!6)
       (or A (not B) (not L) M a!1)
       (or A (not B) L (not M) (and (not F) (not E) D C (= H G) (= J I)))
       (or A B L M a!7)
       (or (not A) B (not L) (not M) a!7)
       (or (not A) B L M (and (not F) (not E) (not D) C (= G 0) (= J I)))
       (or A (not B) L M (and (not F) (not E) D C (= I 0) (= H G)))
       (or (not A) (not B) (not L) M a!6 (not (<= J (- 1))))))
      )
      (state C D E F G I)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Int) (D Int) (E Bool) (F Bool) ) 
    (=>
      (and
        (state B A F E C D)
        (and (not A) (= F true) (= E true) (= B true))
      )
      false
    )
  )
)

(check-sat)
(exit)
