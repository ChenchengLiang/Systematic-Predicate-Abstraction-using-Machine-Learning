(set-logic HORN)

(declare-fun |state| ( Bool Bool Bool Bool Bool Int Int Int ) Bool)

(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Bool) (E Int) (F Int) (G Int) (H Bool) ) 
    (=>
      (and
        (and (= C true) (not B) (not H) (not A) (not D))
      )
      (state D C A B H G F E)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Bool) (E Bool) (F Bool) (G Bool) (H Bool) (I Bool) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Bool) ) 
    (=>
      (and
        (state D C A B P O M K)
        (let ((a!1 (not (<= (+ M (* (- 1) K)) (- 1))))
      (a!2 (and I (not H) (not G) (not F) E (= K J) (= M L) (= O N)))
      (a!3 (and I (not H) (not G) (not F) (not E) (= K J) (= M L) (= O N)))
      (a!4 (and (not I) H G F E (= K J) (= M L) (= O N)))
      (a!6 (not (<= (+ (* 2 M) (* (- 1) K)) (- 3))))
      (a!7 (and (not I) (not H) G (not F) (not E) (= K J) (= M L) (= O N)))
      (a!8 (and I
                (not H)
                G
                (not F)
                (not E)
                (= M L)
                (= O N)
                (= (+ K (* (- 1) J)) (- 1))))
      (a!9 (and (not I)
                (not H)
                G
                F
                E
                (= K J)
                (= M L)
                (= (+ O (* (- 1) N)) (- 1))))
      (a!10 (and I (not H) G F E (= K J) (= M L) (= (+ O (* (- 1) N)) 1)))
      (a!11 (and I (not H) (not G) F (not E) (= K J) (= M L) (= O N)))
      (a!12 (and (not I)
                 (not H)
                 (not G)
                 (not F)
                 (not E)
                 (= K J)
                 (= M L)
                 (= O N)))
      (a!13 (or (not A)
                B
                (not C)
                D
                (not P)
                (and I H (not G) (not F) (not E) (= K J) (= M L) (= O N))
                (<= (+ M (* (- 1) K)) (- 1)))))
(let ((a!5 (or A
               (not B)
               (not C)
               (not D)
               P
               a!4
               (<= (+ (* 2 M) (* (- 1) K)) (- 3)))))
  (and (or (not A)
           B
           (not C)
           D
           (not P)
           (and I (not H) G F (not E) (= K J) (= M L) (= O N))
           a!1)
       (or (not A)
           B
           (not C)
           D
           P
           (and I (not H) G (not F) E (= K J) (= M L) (= O N))
           (<= K M))
       (or (not A)
           B
           (not C)
           (not D)
           P
           (and I (not H) (not G) F E (= K J) (= M L) (= O N))
           (not (<= 0 O)))
       (or A (not B) (not C) D P a!2 (<= 0 M))
       (or A (not B) C (not D) P a!3 (= O (- 1)))
       a!5
       (or A
           (not B)
           (not C)
           (not D)
           P
           (and (not I) H G (not F) (not E) (= K J) (= M L) (= O N))
           a!6)
       (or A
           (not B)
           C
           (not D)
           P
           (and (not I) H (not G) F E (= K J) (= M L) (= O N))
           (not (= O (- 1))))
       (or A
           (not B)
           (not C)
           D
           P
           (and (not I) H (not G) F (not E) (= K J) (= M L) (= O N))
           (not (<= 0 M)))
       (or (not A)
           B
           (not C)
           (not D)
           P
           (and (not I) H (not G) (not F) (not E) (= K J) (= M L) (= O N))
           (<= 0 O))
       (or (not A)
           B
           (not C)
           D
           P
           (and (not I) (not H) G F (not E) (= K J) (= M L) (= O N))
           (not (<= K M)))
       (or A B C (not D) P a!7 (not (<= 0 M)))
       (or A
           B
           C
           (not D)
           P
           (and (not I) (not H) (not G) F E (= K J) (= M L) (= O N))
           (<= 0 M))
       (or A B (not C) (not D) (not P) a!8)
       (or (not A) B C (not D) P a!9)
       (or (not A) B C (not D) (not P) a!10)
       (or A B C (not D) (not P) a!11)
       (or (not A) (not B) C D P a!11)
       (or A B C D (not P) a!2)
       (or (not A) (not B) (not C) (not D) P a!3)
       (or (not A) (not B) C (not D) P a!4)
       (or (not A)
           (not B)
           (not C)
           D
           P
           (and (not I) H G F (not E) (= K J) (= M L) (= O N)))
       (or A
           (not B)
           C
           D
           P
           (and (not I) H (not G) (not F) E (= K J) (= M L) (= O N)))
       (or (not A)
           B
           (not C)
           (not D)
           (not P)
           (and (not I) (not H) G F E (= K J) (= M L) (= O N)))
       (or (not A)
           B
           C
           D
           P
           (and (not I) (not H) G (not F) E (= K J) (= M L) (= O N)))
       (or (not A) B C D (not P) a!7)
       (or A B C D P a!12)
       (or A B (not C) D (not P) a!12)
       (or A B (not C) (not D) P a!12)
       (or A (not B) C D (not P) a!12)
       (or A
           B
           (not C)
           D
           P
           (and (not I) (not H) (not G) F (not E) (= N 0) (= J 0) (= M L)))
       a!13)))
      )
      (state F E G H I N L J)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Bool) (E Int) (F Int) (G Int) (H Bool) ) 
    (=>
      (and
        (state D C A B H G F E)
        (and (not C) (not B) (= H true) (not A) (= D true))
      )
      false
    )
  )
)

(check-sat)
(exit)
