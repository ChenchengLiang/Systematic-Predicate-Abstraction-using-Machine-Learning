(set-logic HORN)

(declare-fun |state| ( Bool Bool Bool Bool Bool Bool Int Int Int Int Int ) Bool)

(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Bool) (E Bool) (F Int) (G Int) (H Int) (I Int) (J Int) (K Bool) ) 
    (=>
      (and
        (and (= D true) (not C) (not B) (not A) (not K) (not E))
      )
      (state E D C A B K J I H G F)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Bool) (E Bool) (F Bool) (G Bool) (H Bool) (I Bool) (J Bool) (K Bool) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) (T Int) (U Int) (V Int) (W Bool) ) 
    (=>
      (and
        (state E D C A B W U S Q O M)
        (let ((a!1 (and K
                (not J)
                (not I)
                (not H)
                G
                F
                (= M L)
                (= O N)
                (= Q P)
                (= S R)
                (= U T)))
      (a!2 (and (not K) J I H G (not F) (= M L) (= O N) (= Q P) (= S R) (= U T)))
      (a!3 (and (not K)
                J
                I
                (not H)
                G
                (not F)
                (= M L)
                (= O N)
                (= Q P)
                (= S R)
                (= U T)))
      (a!4 (and (not K)
                J
                I
                (not H)
                (not G)
                F
                (= M L)
                (= O N)
                (= Q P)
                (= S R)
                (= U T)))
      (a!5 (and K
                (not J)
                (not I)
                H
                (not G)
                F
                (= O N)
                (= Q P)
                (= S R)
                (= U T)
                (= (+ M (* (- 1) L)) 1)))
      (a!6 (and K
                (not J)
                (not I)
                (not H)
                (not G)
                F
                (= M L)
                (= Q P)
                (= S R)
                (= U T)
                (= (+ O (* (- 1) N)) (- 1))))
      (a!7 (and (not K)
                J
                I
                H
                (not G)
                (not F)
                (= M L)
                (= Q P)
                (= S R)
                (= U T)
                (= (+ O (* (- 1) N)) (- 1))))
      (a!8 (and (not K)
                (not J)
                I
                (not H)
                G
                (not F)
                (= M L)
                (= Q P)
                (= S R)
                (= U T)
                (= (+ O (* (- 1) N)) (- 1))))
      (a!9 (and (not K)
                J
                I
                (not H)
                (not G)
                (not F)
                (= M L)
                (= O N)
                (= S R)
                (= U T)
                (= (+ Q (* (- 1) P)) (- 1))))
      (a!10 (and (not K)
                 J
                 (not I)
                 (not H)
                 (not G)
                 (not F)
                 (= M L)
                 (= O N)
                 (= S R)
                 (= U T)
                 (= (+ Q (* (- 1) P)) (- 1))))
      (a!11 (and (not K)
                 (not J)
                 (not I)
                 (not H)
                 (not G)
                 (not F)
                 (= M L)
                 (= O N)
                 (= Q P)
                 (= S R)
                 (= U T))))
  (and (or A B (not C) (not D) E W a!1 (not (<= U M)))
       (or (not A)
           (not B)
           (not C)
           (not D)
           (not E)
           W
           (and K
                (not J)
                (not I)
                (not H)
                G
                (not F)
                (= M L)
                (= O N)
                (= Q P)
                (= S R)
                (= U T))
           (<= O U))
       (or (not A)
           (not B)
           (not C)
           (not D)
           (not E)
           W
           (and K
                (not J)
                (not I)
                (not H)
                (not G)
                (not F)
                (= M L)
                (= O N)
                (= Q P)
                (= S R)
                (= U T))
           (not (<= O U)))
       (or A B (not C) D (not E) W a!2 (= V 0))
       (or (not A)
           B
           (not C)
           D
           E
           W
           (and (not K) J I H (not G) F (= M L) (= O N) (= Q P) (= S R) (= U T))
           (<= O U))
       (or A
           (not B)
           C
           D
           (not E)
           W
           (and (not K) J I (not H) G F (= M L) (= O N) (= Q P) (= S R) (= U T))
           (<= Q U))
       (or A (not B) C (not D) (not E) W a!3 (<= 1 M))
       (or A (not B) (not C) (not D) E W a!4 (<= M U))
       (or A
           (not B)
           (not C)
           (not D)
           E
           W
           (and (not K)
                J
                (not I)
                H
                G
                (not F)
                (= M L)
                (= O N)
                (= Q P)
                (= S R)
                (= U T))
           (not (<= M U)))
       (or A
           (not B)
           C
           (not D)
           (not E)
           W
           (and (not K)
                J
                (not I)
                H
                (not G)
                (not F)
                (= M L)
                (= O N)
                (= Q P)
                (= S R)
                (= U T))
           (not (<= 1 M)))
       (or A
           (not B)
           C
           D
           (not E)
           W
           (and (not K)
                J
                (not I)
                (not H)
                G
                F
                (= M L)
                (= O N)
                (= Q P)
                (= S R)
                (= U T))
           (not (<= Q U)))
       (or (not A)
           B
           (not C)
           D
           (not E)
           W
           (and (not K)
                J
                (not I)
                (not H)
                (not G)
                F
                (= M L)
                (= O N)
                (= Q P)
                (= S R)
                (= U T))
           (<= Q U))
       (or (not A)
           B
           (not C)
           D
           (not E)
           W
           (and (not K) (not J) I H G F (= M L) (= O N) (= Q P) (= S R) (= U T))
           (not (<= Q U)))
       (or (not A)
           B
           (not C)
           D
           E
           W
           (and (not K)
                (not J)
                I
                H
                (not G)
                F
                (= M L)
                (= O N)
                (= Q P)
                (= S R)
                (= U T))
           (not (<= O U)))
       (or (not A)
           B
           C
           D
           E
           W
           (and (not K)
                (not J)
                I
                (not H)
                G
                F
                (= M L)
                (= O N)
                (= Q P)
                (= S R)
                (= U T))
           (<= O U))
       (or (not A)
           B
           C
           D
           E
           W
           (and (not K)
                (not J)
                I
                (not H)
                (not G)
                F
                (= M L)
                (= O N)
                (= Q P)
                (= S R)
                (= U T))
           (not (<= O U)))
       (or A
           B
           (not C)
           D
           (not E)
           W
           (and (not K)
                (not J)
                (not I)
                H
                G
                F
                (= M L)
                (= O N)
                (= Q P)
                (= S R)
                (= U T))
           (not (= V 0)))
       (or A
           B
           (not C)
           (not D)
           E
           W
           (and (not K)
                (not J)
                (not I)
                H
                G
                (not F)
                (= M L)
                (= O N)
                (= Q P)
                (= S R)
                (= U T))
           (<= U M))
       (or A
           B
           (not C)
           D
           E
           W
           (and (not K)
                (not J)
                (not I)
                H
                (not G)
                F
                (= M L)
                (= O N)
                (= Q P)
                (= S R)
                (= U T))
           (not (<= 1 M)))
       (or A
           B
           C
           (not D)
           E
           W
           (and (not K)
                (not J)
                (not I)
                (not H)
                G
                F
                (= M L)
                (= O N)
                (= Q P)
                (= S R)
                (= U T))
           (<= S 0))
       (or A
           B
           C
           (not D)
           E
           W
           (and (not K)
                (not J)
                (not I)
                (not H)
                G
                (not F)
                (= M L)
                (= O N)
                (= Q P)
                (= S R)
                (= U T))
           (not (<= S 0)))
       (or A B (not C) D E (not W) a!5)
       (or A
           B
           C
           (not D)
           (not E)
           W
           (and (not K)
                (not J)
                (not I)
                H
                (not G)
                (not F)
                (= O N)
                (= Q P)
                (= S R)
                (= U T)
                (= U L)))
       (or A B C D E (not W) a!6)
       (or (not A) (not B) C (not D) (not E) W a!7)
       (or (not A) B C (not D) E W a!8)
       (or (not A)
           (not B)
           (not C)
           D
           (not E)
           W
           (and (not K) J I H G F (= M L) (= Q P) (= S R) (= S N) (= U T)))
       (or (not A)
           B
           C
           (not D)
           (not E)
           W
           (and (not K)
                (not J)
                I
                H
                (not G)
                (not F)
                (= M L)
                (= Q P)
                (= S R)
                (= S N)
                (= U T)))
       (or A
           B
           (not C)
           (not D)
           (not E)
           W
           (and (not K)
                (not J)
                I
                (not H)
                (not G)
                (not F)
                (= M L)
                (= Q P)
                (= S R)
                (= S N)
                (= U T)))
       (or A (not B) (not C) (not D) (not E) W a!9)
       (or (not A) B (not C) (not D) (not E) W a!10)
       (or A
           (not B)
           C
           (not D)
           E
           W
           (and (not K)
                J
                (not I)
                (not H)
                G
                (not F)
                (= M L)
                (= O N)
                (= S R)
                (= S P)
                (= U T)))
       (or (not A)
           B
           (not C)
           (not D)
           E
           W
           (and (not K)
                (not J)
                I
                H
                G
                (not F)
                (= M L)
                (= O N)
                (= S R)
                (= S P)
                (= U T)))
       (or A B C D (not E) (not W) a!1)
       (or A
           B
           C
           (not D)
           E
           (not W)
           (and (not K) J I H G F (= M L) (= O N) (= Q P) (= S R) (= U T)))
       (or (not A) (not B) (not C) (not D) E W a!2)
       (or (not A) (not B) C D (not E) W a!3)
       (or (not A) (not B) C (not D) E W a!4)
       (or A
           (not B)
           (not C)
           D
           (not E)
           W
           (and (not K) J (not I) H G F (= M L) (= O N) (= Q P) (= S R) (= U T)))
       (or A
           (not B)
           (not C)
           D
           E
           W
           (and (not K)
                J
                (not I)
                H
                (not G)
                F
                (= M L)
                (= O N)
                (= Q P)
                (= S R)
                (= U T)))
       (or (not A)
           (not B)
           C
           D
           E
           W
           (and (not K)
                J
                (not I)
                (not H)
                G
                (not F)
                (= M L)
                (= O N)
                (= Q P)
                (= S R)
                (= U T)))
       (or A
           (not B)
           C
           D
           E
           W
           (and (not K)
                (not J)
                I
                H
                G
                (not F)
                (= M L)
                (= O N)
                (= Q P)
                (= S R)
                (= U T)))
       (or (not A)
           (not B)
           (not C)
           D
           E
           W
           (and (not K)
                (not J)
                I
                H
                (not G)
                (not F)
                (= M L)
                (= O N)
                (= Q P)
                (= S R)
                (= U T)))
       (or (not A)
           B
           C
           D
           (not E)
           W
           (and (not K)
                (not J)
                I
                (not H)
                (not G)
                (not F)
                (= M L)
                (= O N)
                (= Q P)
                (= S R)
                (= U T)))
       (or A
           B
           (not C)
           (not D)
           E
           (not W)
           (and (not K)
                (not J)
                (not I)
                H
                (not G)
                (not F)
                (= M L)
                (= O N)
                (= Q P)
                (= S R)
                (= U T)))
       (or A B C D E W a!11)
       (or A B C D (not E) W a!11)
       (or A B (not C) D (not E) (not W) a!11)
       (or A
           B
           C
           (not D)
           (not E)
           (not W)
           (and K
                (not J)
                (not I)
                H
                (not G)
                (not F)
                (= R M)
                (= M L)
                (= O N)
                (= Q P)
                (= U T)))
       (or A
           B
           (not C)
           D
           E
           W
           (and K
                (not J)
                (not I)
                H
                G
                (not F)
                (= M L)
                (= O N)
                (= Q P)
                (= S R)
                (= U T))
           (<= 1 M))))
      )
      (state G F H I J K T R P N L)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Bool) (E Bool) (F Int) (G Int) (H Int) (I Int) (J Int) (K Bool) ) 
    (=>
      (and
        (state E D C A B K J I H G F)
        (or (and (not K) A B (not C) (not D) E) (and (not K) A B (not C) D (not E)))
      )
      false
    )
  )
)

(check-sat)
(exit)
