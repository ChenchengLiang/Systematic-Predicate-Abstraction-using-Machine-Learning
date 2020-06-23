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
        (let ((a!1 (and M N (not O) (not P) Q L (= G R) (= H S) (= I T) (= J U) (= K V)))
      (a!2 (and M (not N) O P (not Q) L (= G R) (= H S) (= I T) (= J U) (= K V)))
      (a!3 (and M
                (not N)
                O
                P
                (not Q)
                (not L)
                (= G R)
                (= H S)
                (= I T)
                (= J U)
                (= K V)))
      (a!4 (and M
                (not N)
                O
                (not P)
                Q
                (not L)
                (= G R)
                (= H S)
                (= I T)
                (= J U)
                (= K V)))
      (a!5 (and (not M)
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
      (a!6 (and (not M)
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
      (a!7 (and (not M)
                (not N)
                O
                P
                (not Q)
                (not L)
                (= G R)
                (= H S)
                (= I T)
                (= J U)
                (= K V)))
      (a!8 (and (not M)
                (not N)
                O
                (not P)
                Q
                L
                (= G R)
                (= H S)
                (= I T)
                (= J U)
                (= K V)))
      (a!9 (and (not M)
                (not N)
                O
                (not P)
                Q
                (not L)
                (= G R)
                (= H S)
                (= I T)
                (= J U)
                (= K V)))
      (a!10 (and M
                 (not N)
                 (not O)
                 (not P)
                 Q
                 (not L)
                 (= G R)
                 (= I T)
                 (= J U)
                 (= K V)
                 (= (+ H (* (- 1) S)) (- 1))))
      (a!11 (and M
                 (not N)
                 O
                 (not P)
                 (not Q)
                 (not L)
                 (= G R)
                 (= H S)
                 (= J U)
                 (= K V)
                 (= (+ G (* (- 1) T)) 2)))
      (a!12 (and M
                 N
                 (not O)
                 P
                 (not Q)
                 L
                 (= G R)
                 (= H S)
                 (= I T)
                 (= J U)
                 (= (+ K (* (- 1) V)) (- 1))))
      (a!13 (and M
                 (not N)
                 (not O)
                 P
                 (not Q)
                 (not L)
                 (= G R)
                 (= H S)
                 (= I T)
                 (= J U)
                 (= (+ K (* (- 1) V)) (- 1))))
      (a!14 (and (not M)
                 (not N)
                 (not O)
                 (not P)
                 Q
                 L
                 (= G R)
                 (= H S)
                 (= I T)
                 (= J U)
                 (= (+ K (* (- 1) V)) (- 1))))
      (a!15 (and (not M)
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
  (and (or A
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
           (not (<= 0 K)))
       (or A B (not C) D E (not F) a!1 (not (<= J H)))
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
           (<= J G))
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
           (not (<= J G)))
       (or A (not B) (not C) (not D) E F a!2 (<= 0 K))
       (or (not A) (not B) (not C) (not D) E F a!3 (not (<= G K)))
       (or A B (not C) (not D) (not E) F a!4 (<= 0 K))
       (or (not A)
           B
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
           (not (= W 0)))
       (or (not A)
           B
           C
           D
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
                (= K V))
           (not (<= 0 K)))
       (or (not A)
           B
           C
           D
           E
           (not F)
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
           (not (<= 0 H)))
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
           (<= G 1))
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
           (not (<= G 1)))
       (or A
           B
           (not C)
           (not D)
           (not E)
           F
           (and (not M) N O P (not Q) L (= G R) (= H S) (= I T) (= J U) (= K V))
           (not (<= 0 K)))
       (or (not A)
           (not B)
           C
           (not D)
           E
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
           (= I K))
       (or (not A) B C (not D) E F a!5 (= W 0))
       (or (not A)
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
           (not (= I K)))
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
           (<= G K))
       (or A
           B
           (not C)
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
           (<= J H))
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
           (<= J 0))
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
           (not (<= J 0)))
       (or (not A) B C D (not E) F a!6 (<= 0 K))
       (or A B (not C) D (not E) F a!7 (not (<= G K)))
       (or (not A) B (not C) (not D) (not E) F a!8 (not (<= G K)))
       (or (not A) B C D E (not F) a!9 (<= 0 H))
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
                (not L)
                (= G R)
                (= H S)
                (= I T)
                (= J U)
                (= K V))
           (<= G K))
       (or A (not B) C D E (not F) a!10)
       (or A (not B) C (not D) E F a!11)
       (or (not A) B (not C) D (not E) F a!12)
       (or A (not B) C D (not E) F a!13)
       (or A B C D E (not F) a!14)
       (or A
           (not B)
           (not C)
           (not D)
           (not E)
           F
           (and M N O P (not Q) (not L) (= G R) (= H S) (= I T) (= J U) (= K V)))
       (or (not A)
           B
           (not C)
           (not D)
           E
           F
           (and M N O (not P) (not Q) L (= G R) (= H S) (= I T) (= J U) (= K V)))
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
                (= K V)))
       (or (not A) (not B) (not C) D E (not F) a!1)
       (or A
           (not B)
           (not C)
           D
           E
           (not F)
           (and M
                N
                (not O)
                (not P)
                Q
                (not L)
                (= G R)
                (= H S)
                (= I T)
                (= J U)
                (= K V)))
       (or (not A) (not B) C (not D) (not E) F a!2)
       (or (not A) B C (not D) (not E) F a!3)
       (or (not A) B C (not D) E (not F) a!4)
       (or (not A)
           B
           (not C)
           D
           E
           (not F)
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
                (= K V)))
       (or A B (not C) (not D) E F a!5)
       (or (not A)
           (not B)
           C
           D
           (not E)
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
                (= K V)))
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
                (= K V)))
       (or A (not B) C (not D) (not E) F a!6)
       (or A B C (not D) (not E) F a!7)
       (or A (not B) C (not D) E (not F) a!8)
       (or A B C (not D) E (not F) a!9)
       (or A
           B
           C
           D
           (not E)
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
                (= K V)))
       (or (not A)
           (not B)
           (not C)
           (not D)
           (not E)
           F
           (and (not M)
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
       (or A B C D E F a!15)
       (or A B (not C) D E F a!15)
       (or (not A) B C D E F a!15)
       (or (not A) B (not C) D E F a!15)
       (or (not A) (not B) (not C) D (not E) F a!15)
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
                (not L)
                (= V 0)
                (= G R)
                (= H S)
                (= I T)
                (= J U)))
       (or A
           B
           C
           (not D)
           E
           F
           (and (not M)
                (not N)
                O
                (not P)
                (not Q)
                L
                (= S 0)
                (= G R)
                (= I T)
                (= J U)
                (= K V)))
       (or (not A)
           B
           (not C)
           (not D)
           (not E)
           F
           (and M N O P (not Q) L (= G R) (= H S) (= I T) (= J U) (= K V))
           (<= G K))))
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
        (or (and (not A) (not B) (not C) D (not E) F)
    (and (not A) (not B) (not C) D E (not F))
    (and (not A) B (not C) D (not E) F)
    (and (not A) B (not C) D E (not F))
    (and A (not B) (not C) D (not E) F)
    (and A (not B) (not C) D E (not F))
    (and A B (not C) D E (not F))
    (and A B C (not D) (not E) F))
      )
      false
    )
  )
)

(check-sat)
(exit)
