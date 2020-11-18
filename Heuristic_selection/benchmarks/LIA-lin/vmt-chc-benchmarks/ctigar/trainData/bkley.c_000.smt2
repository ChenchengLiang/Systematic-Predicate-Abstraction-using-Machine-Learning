(set-logic HORN)

(declare-fun |state| ( Bool Bool Bool Bool Bool Bool Int Int Int Int ) Bool)

(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Bool) (I Bool) (J Bool) ) 
    (=>
      (and
        (and (= B true) (not A) (not J) (not I) (not H) (not C))
      )
      (state A B C J H I D E F G)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Bool) (E Bool) (F Bool) (G Bool) (H Bool) (I Bool) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Bool) (T Bool) (U Bool) ) 
    (=>
      (and
        (state A B C U S T K M O Q)
        (let ((a!1 (and I (not H) (not G) F (not E) D (= K J) (= M L) (= O N) (= Q P)))
      (a!2 (and I (not H) (not G) (not F) E D (= K J) (= M L) (= O N) (= Q P)))
      (a!3 (and I
                (not H)
                (not G)
                (not F)
                (not E)
                D
                (= K J)
                (= M L)
                (= O N)
                (= Q P)))
      (a!4 (or (not A)
               (not B)
               C
               (not S)
               T
               U
               (and (not I)
                    H
                    G
                    F
                    (not E)
                    (not D)
                    (= K J)
                    (= M L)
                    (= O N)
                    (= Q P))
               (not (<= 1 (+ K Q)))))
      (a!5 (and (not I)
                (not H)
                (not G)
                F
                (not E)
                D
                (= K J)
                (= M L)
                (= O N)
                (= Q P)))
      (a!6 (and (not I)
                H
                (not G)
                F
                (not E)
                (not D)
                (= M L)
                (= O N)
                (= Q P)
                (= (+ K (* (- 1) J)) (- 1))))
      (a!7 (and (not I)
                H
                G
                F
                E
                (not D)
                (= K J)
                (= O N)
                (= Q P)
                (= (+ M (* (- 1) L)) (- 1))))
      (a!8 (and I
                (not H)
                (not G)
                (not F)
                (not E)
                (not D)
                (= K J)
                (= M L)
                (= Q P)
                (= (+ K M O (* (- 1) N) Q) 1)))
      (a!9 (and (not I)
                H
                G
                (not F)
                E
                (not D)
                (= K J)
                (= M L)
                (= Q P)
                (= (+ K O (* (- 1) N) Q) 1)))
      (a!10 (and (not I)
                 H
                 (not G)
                 (not F)
                 (not E)
                 (not D)
                 (= K J)
                 (= M L)
                 (= Q P)
                 (= (+ O (* (- 1) N)) 1)))
      (a!11 (and (not I)
                 (not H)
                 G
                 (not F)
                 E
                 D
                 (= K J)
                 (= M L)
                 (= O N)
                 (= (+ M Q (* (- 1) P)) 0)))
      (a!12 (and (not I)
                 (not H)
                 (not G)
                 (not F)
                 (not E)
                 (not D)
                 (= K J)
                 (= M L)
                 (= O N)
                 (= Q P)))
      (a!13 (or A
                (not B)
                (not C)
                S
                (not T)
                U
                (and I
                     (not H)
                     G
                     (not F)
                     E
                     (not D)
                     (= K J)
                     (= M L)
                     (= O N)
                     (= Q P))
                (not (<= 1 (+ K M O Q))))))
  (and (or (not A)
           (not B)
           C
           S
           (not T)
           U
           (and I
                (not H)
                G
                (not F)
                (not E)
                (not D)
                (= K J)
                (= M L)
                (= O N)
                (= Q P))
           (not (<= 0 K)))
       (or (not A) (not B) C S (not T) U a!1 (<= 0 K))
       (or A
           (not B)
           C
           S
           T
           (not U)
           (and I
                (not H)
                (not G)
                F
                (not E)
                (not D)
                (= K J)
                (= M L)
                (= O N)
                (= Q P))
           (= R 0))
       (or A (not B) C S (not T) U a!2 (<= 0 M))
       (or A
           (not B)
           C
           S
           (not T)
           U
           (and I
                (not H)
                (not G)
                (not F)
                E
                (not D)
                (= K J)
                (= M L)
                (= O N)
                (= Q P))
           (not (<= 0 M)))
       (or A (not B) (not C) S (not T) U a!3 (<= 1 (+ K M O Q)))
       a!4
       (or (not A)
           B
           C
           (not S)
           T
           (not U)
           (and (not I) H G (not F) (not E) D (= K J) (= M L) (= O N) (= Q P))
           (not (<= 1 O)))
       (or (not A)
           (not B)
           C
           (not S)
           T
           U
           (and (not I)
                H
                G
                (not F)
                (not E)
                (not D)
                (= K J)
                (= M L)
                (= O N)
                (= Q P))
           (<= 1 (+ K Q)))
       (or (not A)
           B
           C
           (not S)
           T
           (not U)
           (and (not I) H (not G) F E D (= K J) (= M L) (= O N) (= Q P))
           (<= 1 O))
       (or (not A)
           B
           C
           (not S)
           T
           U
           (and (not I) H (not G) F E (not D) (= K J) (= M L) (= O N) (= Q P))
           (not (= R 0)))
       (or (not A)
           B
           C
           (not S)
           T
           U
           (and (not I) H (not G) (not F) E D (= K J) (= M L) (= O N) (= Q P))
           (= R 0))
       (or (not A)
           B
           C
           S
           T
           (not U)
           (and (not I)
                H
                (not G)
                (not F)
                E
                (not D)
                (= K J)
                (= M L)
                (= O N)
                (= Q P))
           (= R 0))
       (or A
           (not B)
           (not C)
           S
           T
           U
           (and (not I) (not H) G F E (not D) (= K J) (= M L) (= O N) (= Q P))
           (not (= K 0)))
       (or (not A)
           (not B)
           C
           S
           T
           (not U)
           (and (not I) (not H) G F (not E) D (= K J) (= M L) (= O N) (= Q P))
           (not (<= 1 O)))
       (or (not A)
           (not B)
           C
           S
           T
           U
           (and (not I)
                (not H)
                G
                F
                (not E)
                (not D)
                (= K J)
                (= M L)
                (= O N)
                (= Q P))
           (not (= Q 0)))
       (or A
           (not B)
           (not C)
           S
           T
           U
           (and (not I)
                (not H)
                G
                (not F)
                E
                (not D)
                (= K J)
                (= M L)
                (= O N)
                (= Q P))
           (= K 0))
       (or (not A)
           (not B)
           C
           S
           T
           (not U)
           (and (not I)
                (not H)
                G
                (not F)
                (not E)
                D
                (= K J)
                (= M L)
                (= O N)
                (= Q P))
           (<= 1 O))
       (or (not A)
           (not B)
           C
           S
           T
           U
           (and (not I)
                (not H)
                G
                (not F)
                (not E)
                (not D)
                (= K J)
                (= M L)
                (= O N)
                (= Q P))
           (= Q 0))
       (or (not A)
           B
           C
           S
           T
           (not U)
           (and (not I) (not H) (not G) F E D (= K J) (= M L) (= O N) (= Q P))
           (not (= R 0)))
       (or A
           (not B)
           C
           S
           T
           U
           (and (not I)
                (not H)
                (not G)
                F
                E
                (not D)
                (= K J)
                (= M L)
                (= O N)
                (= Q P))
           (not (= M 0)))
       (or (not A) (not B) (not C) S T U a!5 (not (<= 1 O)))
       (or A
           (not B)
           C
           S
           T
           (not U)
           (and (not I)
                (not H)
                (not G)
                (not F)
                E
                D
                (= K J)
                (= M L)
                (= O N)
                (= Q P))
           (not (= R 0)))
       (or A
           (not B)
           C
           S
           T
           U
           (and (not I)
                (not H)
                (not G)
                (not F)
                E
                (not D)
                (= K J)
                (= M L)
                (= O N)
                (= Q P))
           (= M 0))
       (or (not A)
           (not B)
           (not C)
           S
           T
           U
           (and (not I)
                (not H)
                (not G)
                (not F)
                (not E)
                D
                (= K J)
                (= M L)
                (= O N)
                (= Q P))
           (<= 1 O))
       (or A B C (not S) T U a!6)
       (or (not A) B (not C) (not S) T U a!7)
       (or (not A) (not B) (not C) (not S) T (not U) a!8)
       (or A (not B) (not C) (not S) T U a!9)
       (or (not A) (not B) (not C) S T (not U) a!10)
       (or A (not B) (not C) S T (not U) a!11)
       (or (not A)
           B
           (not C)
           S
           (not T)
           U
           (and I (not H) G F E (not D) (= K J) (= M L) (= O N) (= Q P)))
       (or A
           B
           (not C)
           S
           (not T)
           U
           (and I (not H) G F (not E) (not D) (= K J) (= M L) (= O N) (= Q P)))
       (or (not A)
           B
           C
           S
           (not T)
           U
           (and I (not H) (not G) F E (not D) (= K J) (= M L) (= O N) (= Q P)))
       (or A (not B) C S (not T) (not U) a!1)
       (or (not A) B C S (not T) (not U) a!2)
       (or A B C S (not T) (not U) a!3)
       (or A
           B
           C
           S
           (not T)
           U
           (and (not I) H (not G) F (not E) D (= K J) (= M L) (= O N) (= Q P)))
       (or A
           (not B)
           C
           (not S)
           T
           (not U)
           (and (not I)
                H
                (not G)
                F
                (not E)
                (not D)
                (= K J)
                (= M L)
                (= O N)
                (= Q P)))
       (or A (not B) C (not S) T U a!5)
       (or A B C S T U a!12)
       (or A B C S T (not U) a!12)
       (or A B (not C) S T U a!12)
       (or A B (not C) S T (not U) a!12)
       (or A B (not C) (not S) T U a!12)
       (or (not A) B C S T U a!12)
       (or (not A) B (not C) S T U a!12)
       (or (not A) (not B) C (not S) T (not U) a!12)
       (or (not A) (not B) (not C) S (not T) U a!12)
       (or A
           B
           (not C)
           (not S)
           T
           (not U)
           (and (not I) H G F (not E) D (= J 0) (= M L) (= O N) (= Q P)))
       (or (not A)
           (not B)
           (not C)
           (not S)
           T
           U
           (and (not I)
                H
                (not G)
                (not F)
                (not E)
                D
                (= J 0)
                (= M L)
                (= O N)
                (= Q P)))
       (or (not A)
           B
           (not C)
           (not S)
           T
           (not U)
           (and (not I) H G F E D (= L 1) (= K J) (= O N) (= Q P)))
       (or (not A)
           B
           (not C)
           S
           T
           (not U)
           (and (not I) (not H) G F E D (= L 0) (= K J) (= O N) (= Q P)))
       (or A
           (not B)
           (not C)
           (not S)
           T
           (not U)
           (and (not I) H G (not F) E D (= P 0) (= K J) (= M L) (= O N)))
       (or A
           B
           C
           (not S)
           T
           (not U)
           (and (not I) H (not G) F (not E) D (= P 0) (= K J) (= M L) (= O N)))
       a!13))
      )
      (state E F G D H I J L N P)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Bool) (I Bool) (J Bool) ) 
    (=>
      (and
        (state A B C J H I D E F G)
        (or (and (not H) I J (not A) (not B) (not C))
    (and (not H) I J (not A) B (not C))
    (and (not H) I J A (not B) (not C)))
      )
      false
    )
  )
)

(check-sat)
(exit)
