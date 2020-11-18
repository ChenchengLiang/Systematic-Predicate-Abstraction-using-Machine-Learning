(set-logic HORN)

(declare-fun |state| ( Bool Bool Bool Bool Bool Int Int Int Int ) Bool)

(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Bool) (E Int) (F Int) (G Int) (H Int) (I Bool) ) 
    (=>
      (and
        (and (= C true) (not B) (not A) (not I) (not D))
      )
      (state D C A B I H G F E)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Bool) (E Bool) (F Bool) (G Bool) (H Bool) (I Bool) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Bool) ) 
    (=>
      (and
        (state D C A B R Q O M K)
        (let ((a!1 (and I (not H) G F E (= K J) (= M L) (= O N) (= Q P)))
      (a!2 (and I
                (not H)
                G
                (not F)
                E
                (= M L)
                (= O N)
                (= Q P)
                (= (+ K (* (- 1) J)) (- 1))))
      (a!3 (and (not I)
                H
                G
                F
                (not E)
                (= M L)
                (= O N)
                (= Q P)
                (= (+ K (* (- 1) J)) (- 1))))
      (a!4 (and (not I)
                H
                (not G)
                (not F)
                E
                (= M L)
                (= O N)
                (= Q P)
                (= (+ K (* (- 1) J)) (- 1))))
      (a!5 (and (not I)
                (not H)
                G
                (not F)
                (not E)
                (= M L)
                (= O N)
                (= Q P)
                (= (+ K (* (- 1) J)) (- 1))))
      (a!6 (and (not I)
                H
                (not G)
                F
                (not E)
                (= K J)
                (= O N)
                (= Q P)
                (= (+ M (* (- 1) L)) (- 1))))
      (a!7 (and (not I)
                (not H)
                G
                (not F)
                E
                (= K J)
                (= O N)
                (= Q P)
                (= (+ M (* (- 1) L)) (- 1))))
      (a!8 (and I
                (not H)
                G
                F
                (not E)
                (= K J)
                (= O N)
                (= Q P)
                (= (+ M (* (- 1) L)) 1)))
      (a!9 (and (not I) H G F E (= K J) (= O N) (= Q P) (= (+ M (* (- 1) L)) 1)))
      (a!10 (and (not I)
                 (not H)
                 (not G)
                 (not F)
                 (not E)
                 (= K J)
                 (= M L)
                 (= O N)
                 (= Q P))))
  (and (or A B C (not D) (not R) a!1 (not (<= M 0)))
       (or A
           B
           C
           (not D)
           (not R)
           (and I (not H) (not G) F E (= K J) (= M L) (= O N) (= Q P))
           (<= M 0))
       (or A
           B
           (not C)
           D
           (not R)
           (and I (not H) (not G) F (not E) (= K J) (= M L) (= O N) (= Q P))
           (<= Q K))
       (or (not A)
           (not B)
           C
           D
           R
           (and I
                (not H)
                (not G)
                (not F)
                (not E)
                (= K J)
                (= M L)
                (= O N)
                (= Q P))
           (not (<= O K)))
       (or (not A)
           (not B)
           C
           D
           R
           (and (not I) H G (not F) E (= K J) (= M L) (= O N) (= Q P))
           (<= O K))
       (or (not A)
           B
           (not C)
           (not D)
           R
           (and (not I) H (not G) F E (= K J) (= M L) (= O N) (= Q P))
           (not (<= O K)))
       (or (not A)
           B
           (not C)
           (not D)
           R
           (and (not I)
                H
                (not G)
                (not F)
                (not E)
                (= K J)
                (= M L)
                (= O N)
                (= Q P))
           (<= O K))
       (or A
           B
           C
           (not D)
           R
           (and (not I) (not H) G F (not E) (= K J) (= M L) (= O N) (= Q P))
           (not (<= Q K)))
       (or A
           B
           C
           (not D)
           R
           (and (not I) (not H) (not G) F E (= K J) (= M L) (= O N) (= Q P))
           (<= Q K))
       (or (not A) B C D (not R) a!2)
       (or (not A) (not B) (not C) D R a!3)
       (or A (not B) C D R a!4)
       (or A B (not C) (not D) R a!5)
       (or A (not B) (not C) D R a!6)
       (or (not A) B C D R a!7)
       (or (not A) B (not C) D (not R) a!8)
       (or (not A) (not B) C (not D) R a!9)
       (or (not A) B (not C) (not D) (not R) a!1)
       (or A
           B
           (not C)
           (not D)
           (not R)
           (and I (not H) G (not F) (not E) (= K J) (= M L) (= O N) (= Q P)))
       (or (not A)
           B
           C
           (not D)
           (not R)
           (and I (not H) (not G) (not F) E (= K J) (= M L) (= O N) (= Q P)))
       (or (not A)
           (not B)
           (not C)
           (not D)
           R
           (and (not I) H G (not F) (not E) (= K J) (= M L) (= O N) (= Q P)))
       (or A
           (not B)
           C
           (not D)
           R
           (and (not I) (not H) G F E (= K J) (= M L) (= O N) (= Q P)))
       (or (not A)
           B
           (not C)
           D
           R
           (and (not I)
                (not H)
                (not G)
                F
                (not E)
                (= K J)
                (= M L)
                (= O N)
                (= Q P)))
       (or A B C D R a!10)
       (or A (not B) C D (not R) a!10)
       (or A
           B
           C
           D
           (not R)
           (and I (not H) (not G) (not F) E (= J 0) (= M L) (= O N) (= Q P)))
       (or A
           (not B)
           (not C)
           (not D)
           R
           (and (not I) H G (not F) (not E) (= J 0) (= M L) (= O N) (= Q P)))
       (or (not A)
           B
           C
           (not D)
           R
           (and (not I) (not H) G F E (= J 0) (= M L) (= O N) (= Q P)))
       (or A
           B
           (not C)
           D
           R
           (and (not I)
                (not H)
                (not G)
                F
                (not E)
                (= L 0)
                (= J 0)
                (= O N)
                (= Q P)))
       (or A
           B
           (not C)
           D
           (not R)
           (and I H (not G) (not F) (not E) (= K J) (= M L) (= O N) (= Q P))
           (not (<= Q K)))))
      )
      (state F E G H I P N L J)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Bool) (E Int) (F Int) (G Int) (H Int) (I Bool) ) 
    (=>
      (and
        (state D C A B I H G F E)
        (and (= C true) (not B) (= A true) (= I true) (= D true))
      )
      false
    )
  )
)

(check-sat)
(exit)
