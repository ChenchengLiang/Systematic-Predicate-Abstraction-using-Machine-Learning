(set-logic HORN)

(declare-fun |state| ( Bool Bool Bool Bool Bool Bool Int Int Int Int Int ) Bool)

(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Bool) (E Bool) (F Bool) (G Int) (H Int) (I Int) (J Int) (K Int) ) 
    (=>
      (and
        (and (not E) (not D) (not C) (= B true) (not A) (not F))
      )
      (state A B C D E F G H I J K)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Bool) (E Bool) (F Bool) (G Int) (H Int) (I Int) (J Int) (K Int) (L Bool) (M Bool) (N Bool) (O Bool) (P Bool) (Q Bool) (R Int) (S Int) (T Int) (U Int) (V Int) (W Int) ) 
    (=>
      (and
        (state A B C D E F G H I J K)
        (let ((a!1 (and M N O (not P) Q (not L) (= G R) (= H S) (= I T) (= J U) (= K V)))
      (a!3 (not (<= 0 (+ (* 2 I) (* (- 1) K)))))
      (a!4 (or A
               (not B)
               C
               (not D)
               E
               F
               (and M
                    (not N)
                    O
                    (not P)
                    (not Q)
                    (not L)
                    (= G R)
                    (= H S)
                    (= I T)
                    (= J U)
                    (= K V))
               (<= 0 (+ (* 2 I) (* (- 1) K)))))
      (a!5 (not (<= (+ (* 2 I) (* (- 1) J)) 1)))
      (a!6 (and (not M)
                N
                O
                (not P)
                (not Q)
                L
                (= G R)
                (= H S)
                (= I T)
                (= J U)
                (= K V)))
      (a!7 (not (<= (+ (* 2 I) (* (- 1) K)) 1)))
      (a!8 (or (not A)
               (not B)
               C
               (not D)
               E
               F
               (and (not M)
                    N
                    O
                    (not P)
                    (not Q)
                    (not L)
                    (= G R)
                    (= H S)
                    (= I T)
                    (= J U)
                    (= K V))
               (<= (+ (* 2 I) (* (- 1) K)) 1)))
      (a!9 (not (= (+ H (* (- 2) I)) 0)))
      (a!10 (or (not A)
                (not B)
                (not C)
                D
                E
                F
                (and (not M)
                     (not N)
                     O
                     (not P)
                     (not Q)
                     (not L)
                     (= G R)
                     (= H S)
                     (= I T)
                     (= J U)
                     (= K V))
                (= (+ H (* (- 2) I)) 0)))
      (a!11 (not (<= (+ H (* (- 1) J)) (- 1))))
      (a!12 (or (not A)
                (not B)
                (not C)
                (not D)
                E
                F
                (and (not M)
                     (not N)
                     (not O)
                     P
                     (not Q)
                     (not L)
                     (= G R)
                     (= H S)
                     (= I T)
                     (= J U)
                     (= K V))
                (<= (+ H (* (- 1) J)) (- 1))))
      (a!13 (and (not M)
                 (not N)
                 (not O)
                 (not P)
                 Q
                 (not L)
                 (= H S)
                 (= I T)
                 (= J U)
                 (= K V)
                 (= (+ R (* (- 1) I)) (- 1))))
      (a!14 (and M
                 (not N)
                 (not O)
                 P
                 (not Q)
                 (not L)
                 (= H S)
                 (= I T)
                 (= J U)
                 (= K V)
                 (= (+ R (* (- 1) H)) 1)))
      (a!15 (and M
                 (not N)
                 (not O)
                 P
                 (not Q)
                 L
                 (= G R)
                 (= I T)
                 (= J U)
                 (= K V)
                 (= (+ (* 2 H) (* (- 1) S)) (- 2))))
      (a!16 (and (not M)
                 (not N)
                 O
                 P
                 (not Q)
                 L
                 (= G R)
                 (= I T)
                 (= J U)
                 (= K V)
                 (= (+ (* 2 H) (* (- 1) S)) 0)))
      (a!17 (and (not M)
                 (not N)
                 (not O)
                 (not P)
                 Q
                 L
                 (= G R)
                 (= I T)
                 (= J U)
                 (= K V)
                 (= (+ S (* (- 2) I)) (- 2))))
      (a!18 (and M
                 (not N)
                 O
                 (not P)
                 Q
                 (not L)
                 (= G R)
                 (= I T)
                 (= J U)
                 (= K V)
                 (= (+ S (* (- 2) I)) 0)))
      (a!19 (and M
                 (not N)
                 (not O)
                 (not P)
                 Q
                 (not L)
                 (= G R)
                 (= H S)
                 (= J U)
                 (= K V)
                 (= (+ I (* (- 1) T)) 1)))
      (a!20 (and M
                 N
                 (not O)
                 (not P)
                 Q
                 (not L)
                 (= G R)
                 (= H S)
                 (= I T)
                 (= K V)
                 (= (+ J (* (- 1) U)) 1)))
      (a!21 (and (not M)
                 (not N)
                 (not O)
                 (not P)
                 (not Q)
                 (not L)
                 (= G R)
                 (= H S)
                 (= I T)
                 (= J U)
                 (= K V))))
(let ((a!2 (or (not A)
               (not B)
               C
               (not D)
               E
               (not F)
               a!1
               (<= (+ (* 2 I) (* (- 1) J)) 1))))
  (and (or A
           (not B)
           (not C)
           (not D)
           (not E)
           F
           (and M N O P (not Q) (not L) (= G R) (= H S) (= I T) (= J U) (= K V))
           (<= 2 J))
       a!2
       (or (not A)
           B
           (not C)
           (not D)
           E
           F
           (and M N O (not P) (not Q) L (= G R) (= H S) (= I T) (= J U) (= K V))
           (not (= W 0)))
       (or A
           (not B)
           (not C)
           (not D)
           E
           F
           (and M
                N
                O
                (not P)
                (not Q)
                (not L)
                (= G R)
                (= H S)
                (= I T)
                (= J U)
                (= K V))
           (not (= W 0)))
       (or A
           (not B)
           (not C)
           D
           (not E)
           F
           (and M N (not O) P (not Q) L (= G R) (= H S) (= I T) (= J U) (= K V))
           (not (<= H J)))
       (or A
           (not B)
           (not C)
           D
           (not E)
           F
           (and M
                N
                (not O)
                P
                (not Q)
                (not L)
                (= G R)
                (= H S)
                (= I T)
                (= J U)
                (= K V))
           (<= H J))
       (or (not A)
           B
           (not C)
           D
           E
           (not F)
           (and M N (not O) (not P) Q L (= G R) (= H S) (= I T) (= J U) (= K V))
           (<= 3 J))
       (or A
           (not B)
           (not C)
           D
           E
           F
           (and M
                N
                (not O)
                (not P)
                (not Q)
                L
                (= G R)
                (= H S)
                (= I T)
                (= J U)
                (= K V))
           (not (= G I)))
       (or A
           (not B)
           (not C)
           D
           E
           F
           (and M
                N
                (not O)
                (not P)
                (not Q)
                (not L)
                (= G R)
                (= H S)
                (= I T)
                (= J U)
                (= K V))
           (= G I))
       (or (not A)
           B
           C
           (not D)
           (not E)
           F
           (and M (not N) O P (not Q) L (= G R) (= H S) (= I T) (= J U) (= K V))
           (not (= W 0)))
       (or A
           B
           (not C)
           D
           (not E)
           F
           (and M
                (not N)
                O
                P
                (not Q)
                (not L)
                (= G R)
                (= H S)
                (= I T)
                (= J U)
                (= K V))
           (= W 0))
       (or A
           (not B)
           (not C)
           (not D)
           E
           F
           (and M (not N) O (not P) Q L (= G R) (= H S) (= I T) (= J U) (= K V))
           (= W 0))
       (or A
           (not B)
           C
           (not D)
           E
           F
           (and M
                (not N)
                O
                (not P)
                (not Q)
                L
                (= G R)
                (= H S)
                (= I T)
                (= J U)
                (= K V))
           a!3)
       a!4
       (or (not A)
           B
           C
           (not D)
           (not E)
           F
           (and M
                (not N)
                (not O)
                (not P)
                Q
                L
                (= G R)
                (= H S)
                (= I T)
                (= J U)
                (= K V))
           (= W 0))
       (or A
           (not B)
           C
           D
           E
           F
           (and M
                (not N)
                (not O)
                (not P)
                (not Q)
                L
                (= G R)
                (= H S)
                (= I T)
                (= J U)
                (= K V))
           (not (<= 2 K)))
       (or A
           (not B)
           C
           D
           E
           F
           (and M
                (not N)
                (not O)
                (not P)
                (not Q)
                (not L)
                (= G R)
                (= H S)
                (= I T)
                (= J U)
                (= K V))
           (<= 2 K))
       (or (not A)
           (not B)
           C
           (not D)
           (not E)
           F
           (and (not M) N O P (not Q) L (= G R) (= H S) (= I T) (= J U) (= K V))
           (not (<= 2 I)))
       (or (not A)
           (not B)
           C
           (not D)
           (not E)
           F
           (and (not M)
                N
                O
                P
                (not Q)
                (not L)
                (= G R)
                (= H S)
                (= I T)
                (= J U)
                (= K V))
           (<= 2 I))
       (or (not A)
           (not B)
           C
           (not D)
           E
           (not F)
           (and (not M)
                N
                O
                (not P)
                Q
                (not L)
                (= G R)
                (= H S)
                (= I T)
                (= J U)
                (= K V))
           a!5)
       (or (not A) (not B) C (not D) E F a!6 a!7)
       a!8
       (or A
           B
           (not C)
           D
           (not E)
           F
           (and (not M)
                N
                (not O)
                P
                (not Q)
                L
                (= G R)
                (= H S)
                (= I T)
                (= J U)
                (= K V))
           (not (= W 0)))
       (or (not A)
           B
           (not C)
           (not D)
           E
           F
           (and (not M)
                N
                (not O)
                P
                (not Q)
                (not L)
                (= G R)
                (= H S)
                (= I T)
                (= J U)
                (= K V))
           (= W 0))
       (or (not A)
           (not B)
           C
           D
           E
           (not F)
           (and (not M)
                N
                (not O)
                (not P)
                Q
                L
                (= G R)
                (= H S)
                (= I T)
                (= J U)
                (= K V))
           (not (<= I 1)))
       (or (not A)
           (not B)
           C
           D
           E
           (not F)
           (and (not M)
                N
                (not O)
                (not P)
                Q
                (not L)
                (= G R)
                (= H S)
                (= I T)
                (= J U)
                (= K V))
           (<= I 1))
       (or (not A)
           (not B)
           C
           D
           E
           F
           (and (not M)
                N
                (not O)
                (not P)
                (not Q)
                L
                (= G R)
                (= H S)
                (= I T)
                (= J U)
                (= K V))
           (not (= J K)))
       (or (not A)
           (not B)
           C
           D
           E
           F
           (and (not M)
                N
                (not O)
                (not P)
                (not Q)
                (not L)
                (= G R)
                (= H S)
                (= I T)
                (= J U)
                (= K V))
           (= J K))
       (or (not A)
           B
           (not C)
           D
           E
           (not F)
           (and (not M)
                (not N)
                O
                (not P)
                Q
                (not L)
                (= G R)
                (= H S)
                (= I T)
                (= J U)
                (= K V))
           (not (<= 3 J)))
       (or (not A)
           (not B)
           (not C)
           D
           E
           F
           (and (not M)
                (not N)
                O
                (not P)
                (not Q)
                L
                (= G R)
                (= H S)
                (= I T)
                (= J U)
                (= K V))
           a!9)
       a!10
       (or (not A)
           (not B)
           (not C)
           (not D)
           E
           F
           (and (not M)
                (not N)
                (not O)
                P
                (not Q)
                L
                (= G R)
                (= H S)
                (= I T)
                (= J U)
                (= K V))
           a!11)
       a!12
       (or (not A) (not B) (not C) (not D) (not E) F a!13)
       (or A (not B) C D (not E) F a!14)
       (or A
           B
           C
           (not D)
           E
           (not F)
           (and (not M)
                (not N)
                O
                (not P)
                Q
                L
                (= H S)
                (= I T)
                (= J U)
                (= K V)
                (= R I)))
       (or (not A)
           (not B)
           (not C)
           D
           (not E)
           F
           (and (not M)
                (not N)
                O
                P
                (not Q)
                (not L)
                (= H S)
                (= I T)
                (= J U)
                (= K V)
                (= R H)))
       (or (not A) B C D (not E) F a!15)
       (or A B C (not D) (not E) F a!16)
       (or A B C D E (not F) a!17)
       (or A (not B) C (not D) E (not F) a!18)
       (or A (not B) C D E (not F) a!19)
       (or A (not B) (not C) D E (not F) a!20)
       (or (not A) B (not C) (not D) E (not F) a!1)
       (or A
           (not B)
           C
           (not D)
           (not E)
           F
           (and M
                (not N)
                (not O)
                P
                (not Q)
                L
                (= G R)
                (= H S)
                (= I T)
                (= J U)
                (= K V)))
       (or (not A)
           B
           C
           (not D)
           E
           (not F)
           (and M
                (not N)
                (not O)
                (not P)
                Q
                (not L)
                (= G R)
                (= H S)
                (= I T)
                (= J U)
                (= K V)))
       (or A
           B
           (not C)
           (not D)
           E
           (not F)
           (and (not M) N O (not P) Q L (= G R) (= H S) (= I T) (= J U) (= K V)))
       (or (not A) (not B) C D (not E) F a!6)
       (or (not A)
           B
           C
           D
           E
           (not F)
           (and (not M)
                (not N)
                O
                P
                (not Q)
                L
                (= G R)
                (= H S)
                (= I T)
                (= J U)
                (= K V)))
       (or A B C D E F a!21)
       (or A B C D (not E) F a!21)
       (or A B C (not D) E F a!21)
       (or A B (not C) D E F a!21)
       (or A B (not C) D E (not F) a!21)
       (or A B (not C) (not D) E F a!21)
       (or A B (not C) (not D) (not E) F a!21)
       (or A (not B) (not C) (not D) E (not F) a!21)
       (or (not A) B C D E F a!21)
       (or (not A) B C (not D) E F a!21)
       (or (not A) B (not C) D E F a!21)
       (or (not A) B (not C) D (not E) F a!21)
       (or (not A) B (not C) (not D) (not E) F a!21)
       (or (not A) (not B) (not C) D E (not F) a!21)
       (or A
           (not B)
           (not C)
           (not D)
           (not E)
           F
           (and M N O P (not Q) L (= G R) (= H S) (= I T) (= J U) (= K V))
           (not (<= 2 J))))))
      )
      (state M L N O P Q R S T U V)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Bool) (E Bool) (F Bool) (G Int) (H Int) (I Int) (J Int) (K Int) ) 
    (=>
      (and
        (state A B C D E F G H I J K)
        (and (not E) (= D true) (= C true) (not B) (= A true) (= F true))
      )
      false
    )
  )
)

(check-sat)
(exit)
