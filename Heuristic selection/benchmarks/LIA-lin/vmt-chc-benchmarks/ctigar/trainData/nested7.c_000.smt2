(set-logic HORN)

(declare-fun |state| ( Bool Bool Bool Bool Bool Bool Int Int Int Int Int Int ) Bool)

(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Bool) (E Bool) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Bool) ) 
    (=>
      (and
        (and (= D true) (not C) (not B) (not A) (not L) (not E))
      )
      (state E D C A B L F G H I J K)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Bool) (E Bool) (F Bool) (G Bool) (H Bool) (I Bool) (J Bool) (K Bool) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) (T Int) (U Int) (V Int) (W Int) (X Int) (Y Bool) ) 
    (=>
      (and
        (state E D C A B Y M O Q S U W)
        (let ((a!1 (<= (+ O (* (- 1) Q) (* (- 1) W)) 0))
      (a!2 (and K
                (not J)
                (not I)
                H
                G
                F
                (= M L)
                (= O N)
                (= Q P)
                (= S R)
                (= U T)
                (= W V)))
      (a!3 (and (not K)
                J
                I
                H
                G
                (not F)
                (= M L)
                (= O N)
                (= Q P)
                (= S R)
                (= U T)
                (= W V)))
      (a!4 (<= 0 (+ O (* (- 1) Q) (* (- 1) W))))
      (a!5 (and (not K)
                (not J)
                I
                H
                G
                F
                (= M L)
                (= O N)
                (= Q P)
                (= S R)
                (= U T)
                (= W V)))
      (a!6 (and (not K)
                J
                I
                H
                G
                F
                (= O N)
                (= Q P)
                (= S R)
                (= U T)
                (= W V)
                (= (+ M (* (- 1) L)) (- 1))))
      (a!7 (and (not K)
                J
                (not I)
                (not H)
                (not G)
                (not F)
                (= O N)
                (= Q P)
                (= S R)
                (= U T)
                (= W V)
                (= (+ M (* (- 1) L)) (- 1))))
      (a!8 (and (not K)
                J
                I
                (not H)
                G
                F
                (= M L)
                (= Q P)
                (= S R)
                (= U T)
                (= W V)
                (= (+ O (* (- 1) N)) (- 1))))
      (a!9 (and (not K)
                (not J)
                I
                H
                (not G)
                (not F)
                (= M L)
                (= Q P)
                (= S R)
                (= U T)
                (= W V)
                (= (+ O (* (- 1) N)) (- 1))))
      (a!10 (and K
                 (not J)
                 (not I)
                 H
                 (not G)
                 (not F)
                 (= M L)
                 (= Q P)
                 (= S R)
                 (= U T)
                 (= W V)
                 (= (+ O (* (- 1) N)) 1)))
      (a!11 (and K
                 (not J)
                 (not I)
                 H
                 (not G)
                 F
                 (= M L)
                 (= O N)
                 (= Q P)
                 (= U T)
                 (= W V)
                 (= (+ S (* (- 1) R)) (- 1))))
      (a!12 (and (not K)
                 J
                 I
                 H
                 (not G)
                 F
                 (= M L)
                 (= O N)
                 (= Q P)
                 (= U T)
                 (= W V)
                 (= (+ S (* (- 1) R)) (- 1))))
      (a!13 (and (not K)
                 J
                 (not I)
                 H
                 (not G)
                 F
                 (= M L)
                 (= O N)
                 (= Q P)
                 (= U T)
                 (= W V)
                 (= (+ S (* (- 1) R)) (- 1))))
      (a!14 (and (not K)
                 (not J)
                 I
                 H
                 (not G)
                 F
                 (= M L)
                 (= O N)
                 (= Q P)
                 (= U T)
                 (= W V)
                 (= (+ S (* (- 1) R)) (- 1))))
      (a!15 (and K
                 (not J)
                 I
                 (not H)
                 G
                 F
                 (= M L)
                 (= O N)
                 (= Q P)
                 (= S R)
                 (= U T)
                 (= W V)))
      (a!16 (and (not K)
                 (not J)
                 (not I)
                 (not H)
                 (not G)
                 (not F)
                 (= M L)
                 (= O N)
                 (= Q P)
                 (= S R)
                 (= U T)
                 (= W V))))
  (and (or (not A)
           B
           C
           D
           E
           (not Y)
           (and K
                (not J)
                I
                (not H)
                (not G)
                F
                (= M L)
                (= O N)
                (= Q P)
                (= S R)
                (= U T)
                (= W V))
           (not a!1))
       (or A
           B
           (not C)
           D
           E
           Y
           (and K
                (not J)
                I
                (not H)
                (not G)
                (not F)
                (= M L)
                (= O N)
                (= Q P)
                (= S R)
                (= U T)
                (= W V))
           (not (<= W M)))
       (or A B C D E (not Y) a!2 (not (<= Q W)))
       (or A
           B
           C
           D
           (not E)
           (not Y)
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
                (= U T)
                (= W V))
           (not (<= W S)))
       (or A
           B
           C
           D
           (not E)
           (not Y)
           (and K
                (not J)
                (not I)
                (not H)
                G
                F
                (= M L)
                (= O N)
                (= Q P)
                (= S R)
                (= U T)
                (= W V))
           (<= W S))
       (or A
           B
           C
           D
           E
           (not Y)
           (and K
                (not J)
                (not I)
                (not H)
                (not G)
                F
                (= M L)
                (= O N)
                (= Q P)
                (= S R)
                (= U T)
                (= W V))
           (<= Q W))
       (or A
           (not B)
           C
           (not D)
           E
           Y
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
                (= U T)
                (= W V))
           (not (<= Q 5)))
       (or A (not B) (not C) (not D) (not E) Y a!3 (not (<= U S)))
       (or (not A)
           (not B)
           C
           (not D)
           E
           Y
           (and (not K)
                J
                I
                H
                (not G)
                (not F)
                (= M L)
                (= O N)
                (= Q P)
                (= S R)
                (= U T)
                (= W V))
           (not a!4))
       (or (not A)
           (not B)
           C
           (not D)
           E
           Y
           (and (not K)
                J
                I
                (not H)
                G
                (not F)
                (= M L)
                (= O N)
                (= Q P)
                (= S R)
                (= U T)
                (= W V))
           a!4)
       (or A
           (not B)
           (not C)
           (not D)
           (not E)
           Y
           (and (not K)
                J
                I
                (not H)
                (not G)
                (not F)
                (= M L)
                (= O N)
                (= Q P)
                (= S R)
                (= U T)
                (= W V))
           (<= U S))
       (or A
           (not B)
           C
           (not D)
           (not E)
           Y
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
                (= U T)
                (= W V))
           (not (<= U S)))
       (or A
           (not B)
           C
           (not D)
           (not E)
           Y
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
                (= U T)
                (= W V))
           (<= U S))
       (or A
           (not B)
           C
           (not D)
           E
           Y
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
                (= U T)
                (= W V))
           (<= Q 5))
       (or A
           B
           (not C)
           D
           (not E)
           Y
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
                (= U T)
                (= W V))
           (not (<= U M)))
       (or (not A) B C D E Y a!5 (= X 0))
       (or (not A)
           B
           C
           D
           (not E)
           Y
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
                (= U T)
                (= W V))
           (not (<= W S)))
       (or (not A)
           B
           C
           D
           (not E)
           Y
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
                (= U T)
                (= W V))
           (<= W S))
       (or (not A)
           B
           C
           D
           E
           Y
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
                (= U T)
                (= W V))
           (not (= X 0)))
       (or A
           B
           (not C)
           D
           (not E)
           Y
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
                (= U T)
                (= W V))
           (<= U M))
       (or A
           B
           (not C)
           D
           E
           Y
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
                (= U T)
                (= W V))
           (<= W M))
       (or A
           B
           C
           (not D)
           E
           Y
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
                (= U T)
                (= W V))
           (not a!1))
       (or A
           B
           C
           (not D)
           E
           Y
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
                (= U T)
                (= W V))
           a!1)
       (or (not A) (not B) (not C) D (not E) Y a!6)
       (or (not A) B (not C) (not D) (not E) Y a!7)
       (or (not A) (not B) C D (not E) Y a!8)
       (or (not A) B C (not D) (not E) Y a!9)
       (or A B C (not D) (not E) (not Y) a!10)
       (or A B (not C) D E (not Y) a!11)
       (or (not A) (not B) (not C) D E Y a!12)
       (or A (not B) (not C) D E Y a!13)
       (or (not A) B (not C) D E Y a!14)
       (or (not A) B C (not D) (not E) (not Y) a!15)
       (or (not A)
           B
           C
           (not D)
           E
           (not Y)
           (and K
                (not J)
                I
                (not H)
                G
                (not F)
                (= M L)
                (= O N)
                (= Q P)
                (= S R)
                (= U T)
                (= W V)))
       (or A B (not C) D (not E) (not Y) a!2)
       (or A
           B
           (not C)
           (not D)
           E
           (not Y)
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
                (= U T)
                (= W V)))
       (or A B (not C) (not D) (not E) (not Y) a!3)
       (or (not A)
           (not B)
           C
           (not D)
           (not E)
           Y
           (and (not K)
                J
                I
                (not H)
                (not G)
                F
                (= M L)
                (= O N)
                (= Q P)
                (= S R)
                (= U T)
                (= W V)))
       (or (not A)
           (not B)
           (not C)
           (not D)
           E
           Y
           (and (not K)
                J
                (not I)
                H
                G
                F
                (= M L)
                (= O N)
                (= Q P)
                (= S R)
                (= U T)
                (= W V)))
       (or A
           (not B)
           (not C)
           (not D)
           E
           Y
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
                (= U T)
                (= W V)))
       (or (not A) B (not C) D (not E) Y a!5)
       (or (not A)
           B
           (not C)
           (not D)
           E
           Y
           (and (not K)
                (not J)
                I
                (not H)
                G
                (not F)
                (= M L)
                (= O N)
                (= Q P)
                (= S R)
                (= U T)
                (= W V)))
       (or A
           (not B)
           C
           D
           E
           Y
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
                (= U T)
                (= W V)))
       (or (not A)
           (not B)
           (not C)
           (not D)
           (not E)
           Y
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
                (= U T)
                (= W V)))
       (or A B C D E Y a!16)
       (or A B C D (not E) Y a!16)
       (or (not A) B C D (not E) (not Y) a!16)
       (or A
           B
           (not C)
           (not D)
           E
           Y
           (and (not K)
                (not J)
                (not I)
                H
                G
                (not F)
                (= L 0)
                (= O N)
                (= Q P)
                (= S R)
                (= U T)
                (= W V)))
       (or A
           B
           C
           (not D)
           (not E)
           Y
           (and (not K)
                (not J)
                (not I)
                H
                (not G)
                (not F)
                (= L 0)
                (= O N)
                (= Q P)
                (= S R)
                (= U T)
                (= W V)))
       (or (not A)
           (not B)
           C
           D
           E
           Y
           (and (not K)
                J
                I
                (not H)
                (not G)
                F
                (= N 0)
                (= M L)
                (= Q P)
                (= S R)
                (= U T)
                (= W V)))
       (or A
           B
           (not C)
           (not D)
           (not E)
           Y
           (and (not K)
                (not J)
                I
                (not H)
                (not G)
                (not F)
                (= N Q)
                (= M L)
                (= Q P)
                (= S R)
                (= U T)
                (= W V)))
       (or A
           B
           C
           (not D)
           E
           (not Y)
           (and K
                (not J)
                (not I)
                (not H)
                G
                (not F)
                (= R 0)
                (= M L)
                (= O N)
                (= Q P)
                (= U T)
                (= W V)))
       (or A
           (not B)
           (not C)
           D
           (not E)
           Y
           (and (not K)
                J
                (not I)
                H
                G
                F
                (= R 0)
                (= M L)
                (= O N)
                (= Q P)
                (= U T)
                (= W V)))
       (or A
           (not B)
           C
           D
           (not E)
           Y
           (and (not K)
                J
                (not I)
                (not H)
                G
                F
                (= R 0)
                (= M L)
                (= O N)
                (= Q P)
                (= U T)
                (= W V)))
       (or (not A)
           B
           C
           (not D)
           E
           Y
           (and (not K)
                (not J)
                I
                (not H)
                G
                (not F)
                (= R 0)
                (= M L)
                (= O N)
                (= Q P)
                (= U T)
                (= W V)))
       (or (not A) B C D E (not Y) a!15 a!1)))
      )
      (state G F H I J K L N P R T V)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Bool) (E Bool) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Bool) ) 
    (=>
      (and
        (state E D C A B L F G H I J K)
        (and (= D true) (not C) (not B) (= A true) (= L true) (= E true))
      )
      false
    )
  )
)

(check-sat)
(exit)
