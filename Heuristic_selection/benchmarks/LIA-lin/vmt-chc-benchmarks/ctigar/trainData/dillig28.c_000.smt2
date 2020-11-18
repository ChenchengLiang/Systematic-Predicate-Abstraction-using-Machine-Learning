(set-logic HORN)

(declare-fun |state| ( Bool Bool Bool Bool Int Int Int ) Bool)

(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Int) (E Int) (F Int) (G Bool) ) 
    (=>
      (and
        (and (not B) (= A true) (not G) (not C))
      )
      (state C A B G D E F)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Bool) (E Bool) (F Bool) (G Bool) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Bool) ) 
    (=>
      (and
        (state C A B O I K M)
        (let ((a!1 (and G F E D (= I H) (= K J) (= M L)))
      (a!2 (and (not G) F E (not D) (= I H) (= K J) (= M L)))
      (a!3 (not (<= (+ I (* (- 1) K)) (- 1))))
      (a!4 (not (<= 1 (+ I (* (- 1) K)))))
      (a!5 (and (not G)
                F
                (not E)
                (not D)
                (= K J)
                (= M L)
                (= (+ I (* (- 1) H)) (- 1))))
      (a!6 (and G
                (not F)
                (not E)
                (not D)
                (= K J)
                (= M L)
                (= (+ I (* (- 1) H)) 1)))
      (a!7 (and (not G) F (not E) D (= I H) (= K J) (= (+ M (* (- 1) L)) (- 1))))
      (a!8 (and G (not F) (not E) D (= I H) (= K J) (= (+ M (* (- 1) L)) 1)))
      (a!9 (and (not G) (not F) (not E) (not D) (= I H) (= K J) (= M L)))
      (a!10 (or A
                (not B)
                (not C)
                O
                (and G (not F) E (not D) (= I H) (= K J) (= M L))
                (<= (+ I (* (- 1) K)) (- 1))
                (<= 1 (+ I (* (- 1) K))))))
  (and (or A (not B) C (not O) a!1 (= K M))
       (or A
           (not B)
           C
           (not O)
           (and G F (not E) D (= I H) (= K J) (= M L))
           (not (= K M)))
       (or A
           B
           (not C)
           (not O)
           (and G F (not E) (not D) (= I H) (= K J) (= M L))
           (not (= I K)))
       (or A
           B
           (not C)
           (not O)
           (and G (not F) E D (= I H) (= K J) (= M L))
           (= I K))
       (or A B (not C) O a!2 (= N 0))
       (or A
           B
           (not C)
           O
           (and (not G) (not F) E D (= I H) (= K J) (= M L))
           (not (= N 0)))
       (or A
           (not B)
           (not C)
           O
           (and a!3 a!4)
           (and (not G) F E D (= I H) (= K J) (= M L)))
       (or (not A) B (not C) O a!5)
       (or (not A) (not B) (not C) O a!6)
       (or A (not B) C O a!7)
       (or A B C (not O) a!8)
       (or (not A) (not B) (not C) (not O) a!1)
       (or (not A)
           (not B)
           C
           (not O)
           (and G F E (not D) (= I H) (= K J) (= M L)))
       (or (not A) B C (not O) a!2)
       (or (not A)
           (not B)
           C
           O
           (and (not G) (not F) E (not D) (= I H) (= K J) (= M L)))
       (or A B C O a!9)
       (or A (not B) (not C) (not O) a!9)
       (or (not A) B (not C) (not O) a!9)
       (or (not A)
           B
           C
           O
           (and (not G) (not F) E (not D) (= L 0) (= J 0) (= H 0)))
       a!10))
      )
      (state E D F G H J L)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Int) (E Int) (F Int) (G Bool) ) 
    (=>
      (and
        (state C A B G D E F)
        (and (= B true) (= A true) (= G true) (= C true))
      )
      false
    )
  )
)

(check-sat)
(exit)
