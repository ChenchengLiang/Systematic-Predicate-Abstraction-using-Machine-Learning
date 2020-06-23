(set-logic HORN)

(declare-fun |state| ( Bool Bool Bool Bool Bool Int Int Int ) Bool)

(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Bool) (E Int) (F Int) (G Int) (H Bool) ) 
    (=>
      (and
        (and (= C true) (not B) (not A) (not H) (not D))
      )
      (state D C A B H E F G)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Bool) (E Bool) (F Bool) (G Bool) (H Bool) (I Bool) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Bool) ) 
    (=>
      (and
        (state D C A B Q K M O)
        (let ((a!1 (and (not I) H (not G) F (not E) (= K J) (= M L) (= O N)))
      (a!2 (and (not I)
                (not H)
                G
                (not F)
                E
                (= M L)
                (= O N)
                (= (+ K (* (- 1) J)) (- 1))))
      (a!3 (and (not I) H G F (not E) (= M L) (= O N) (= (+ K (* (- 1) J)) 1)))
      (a!4 (and (not I)
                (not H)
                G
                F
                E
                (= K J)
                (= O N)
                (= (+ M (* (- 1) L)) (- 1))))
      (a!5 (and (not I) H G (not F) E (= K J) (= O N) (= (+ M (* (- 1) L)) 1)))
      (a!6 (and (not I)
                H
                G
                (not F)
                (not E)
                (= K J)
                (= M L)
                (= (+ O (* (- 1) N)) (- 1))))
      (a!7 (and (not I)
                H
                (not G)
                F
                E
                (= K J)
                (= M L)
                (= (+ O (* (- 1) N)) (- 1))))
      (a!8 (and (not I)
                H
                (not G)
                (not F)
                (not E)
                (= K J)
                (= M L)
                (= (+ O (* (- 1) N)) 2)))
      (a!9 (and I (not H) (not G) (not F) E (= K J) (= M L) (= O N)))
      (a!10 (and (not I)
                 (not H)
                 (not G)
                 (not F)
                 (not E)
                 (= K J)
                 (= M L)
                 (= O N))))
  (and (or (not A)
           (not B)
           (not C)
           (not D)
           Q
           (and I (not H) (not G) (not F) (not E) (= K J) (= M L) (= O N))
           (<= O (- 1)))
       (or A
           (not B)
           (not C)
           D
           Q
           (and (not I) H G F E (= K J) (= M L) (= O N))
           (not (<= K 0)))
       (or (not A) B C D Q a!1 (= P 0))
       (or A
           (not B)
           (not C)
           D
           Q
           (and (not I) H (not G) (not F) E (= K J) (= M L) (= O N))
           (<= K 0))
       (or (not A)
           B
           C
           D
           Q
           (and (not I) (not H) G F (not E) (= K J) (= M L) (= O N))
           (not (= P 0)))
       (or (not A) B (not C) D Q a!2)
       (or (not A) (not B) C D Q a!3)
       (or (not A) B C (not D) Q a!4)
       (or (not A) (not B) (not C) D Q a!5)
       (or A (not B) (not C) (not D) Q a!6)
       (or A (not B) C (not D) Q a!7)
       (or (not A) B (not C) (not D) Q a!8)
       (or A
           B
           C
           D
           (not Q)
           (and I (not H) (not G) F (not E) (= K J) (= M L) (= O N)))
       (or A B C (not D) (not Q) a!9)
       (or (not A) (not B) C (not D) Q a!1)
       (or A
           (not B)
           C
           D
           Q
           (and (not I) (not H) G (not F) (not E) (= K J) (= M L) (= O N)))
       (or A B C D Q a!10)
       (or A B (not C) D (not Q) a!10)
       (or A
           B
           (not C)
           D
           Q
           (and (not I) (not H) (not G) (not F) E (= J 0) (= M L) (= O N)))
       (or A
           B
           C
           (not D)
           Q
           (and (not I) (not H) (not G) F E (= L 0) (= K J) (= O N)))
       (or A
           B
           (not C)
           (not D)
           Q
           (and (not I) (not H) G (not F) (not E) (= N 0) (= K J) (= M L)))
       (or (not A) (not B) (not C) (not D) Q a!9 (not (<= O (- 1))))))
      )
      (state E F G H I J L N)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Bool) (E Int) (F Int) (G Int) (H Bool) ) 
    (=>
      (and
        (state D C A B H E F G)
        (and (not C) (not B) (not A) (= H true) (= D true))
      )
      false
    )
  )
)

(check-sat)
(exit)
