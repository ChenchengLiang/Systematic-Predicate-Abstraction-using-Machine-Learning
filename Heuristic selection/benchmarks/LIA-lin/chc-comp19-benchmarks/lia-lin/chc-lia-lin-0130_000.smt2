(set-logic HORN)

(declare-fun |state| ( Bool Bool Bool Bool Bool Bool Int Int Int Int Int Int Int Int Int Int Int ) Bool)

(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Bool) (E Bool) (F Bool) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) ) 
    (=>
      (and
        (and (not E) (not D) (not C) (= B true) (not A) (not F))
      )
      (state A B C D E F G H I J K L M N O P Q)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Bool) (E Bool) (F Bool) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) (T Int) (U Int) (V Int) (W Int) (X Int) (Y Int) (Z Int) (A1 Int) (B1 Int) (C1 Bool) (D1 Bool) (E1 Bool) (F1 Bool) (G1 Bool) (H1 Bool) (I1 Int) ) 
    (=>
      (and
        (state A B C D E F G H I J K L M N O P Q)
        (let ((a!1 (or A
               B
               (not C)
               D
               E
               F
               (and C1
                    (not D1)
                    (not E1)
                    F1
                    G1
                    H1
                    (= G R)
                    (= H S)
                    (= I T)
                    (= J U)
                    (= K V)
                    (= L W)
                    (= M X)
                    (= N Y)
                    (= O Z)
                    (= P A1)
                    (= Q B1))
               (<= (+ H K (* (- 1) N)) 0)))
      (a!2 (and C1
                (not D1)
                (not E1)
                F1
                G1
                (not H1)
                (= G R)
                (= H S)
                (= I T)
                (= J U)
                (= K V)
                (= L W)
                (= M X)
                (= N Y)
                (= O Z)
                (= P A1)
                (= Q B1)))
      (a!3 (and (not C1)
                D1
                E1
                F1
                (not G1)
                (not H1)
                (= G R)
                (= H S)
                (= I T)
                (= J U)
                (= K V)
                (= L W)
                (= M X)
                (= N Y)
                (= O Z)
                (= P A1)
                (= Q B1)))
      (a!4 (and (not C1)
                (not D1)
                E1
                (not F1)
                (not G1)
                H1
                (= G R)
                (= H S)
                (= I T)
                (= J U)
                (= K V)
                (= L W)
                (= M X)
                (= N Y)
                (= O Z)
                (= P A1)
                (= Q B1)))
      (a!5 (not (<= (+ H K (* (- 1) N)) 0)))
      (a!6 (or (not A)
               (not B)
               (not C)
               (not D)
               E
               F
               (and (not (<= O G)) (not (<= Q L)))
               (and (not C1)
                    D1
                    (not E1)
                    F1
                    G1
                    (not H1)
                    (= G R)
                    (= H S)
                    (= I T)
                    (= J U)
                    (= K V)
                    (= L W)
                    (= M X)
                    (= N Y)
                    (= O Z)
                    (= P A1)
                    (= Q B1))))
      (a!7 (and (not C1)
                D1
                E1
                (not F1)
                G1
                (not H1)
                (= H S)
                (= I T)
                (= J U)
                (= K V)
                (= L W)
                (= M X)
                (= N Y)
                (= O Z)
                (= P A1)
                (= Q B1)
                (= (+ G (* (- 1) R)) (- 1))))
      (a!8 (and (not C1)
                D1
                (not E1)
                (not F1)
                G1
                (not H1)
                (= H S)
                (= I T)
                (= J U)
                (= K V)
                (= L W)
                (= M X)
                (= N Y)
                (= O Z)
                (= P A1)
                (= Q B1)
                (= (+ G (* (- 1) R)) (- 1))))
      (a!9 (and C1
                (not D1)
                E1
                (not F1)
                (not G1)
                (not H1)
                (= G R)
                (= I T)
                (= J U)
                (= K V)
                (= L W)
                (= M X)
                (= N Y)
                (= O Z)
                (= P A1)
                (= Q B1)
                (= (+ (* 2 H) (* (- 1) S)) 0)))
      (a!10 (and (not C1)
                 (not D1)
                 (not E1)
                 F1
                 G1
                 (not H1)
                 (= G R)
                 (= H S)
                 (= J U)
                 (= K V)
                 (= L W)
                 (= M X)
                 (= N Y)
                 (= O Z)
                 (= P A1)
                 (= Q B1)
                 (= (+ (* 2 H) (* (- 1) T) K) 0)))
      (a!11 (and (not C1)
                 (not D1)
                 E1
                 (not F1)
                 (not G1)
                 (not H1)
                 (= G R)
                 (= H S)
                 (= J U)
                 (= K V)
                 (= L W)
                 (= M X)
                 (= N Y)
                 (= O Z)
                 (= P A1)
                 (= Q B1)
                 (= (+ T (* (- 1) N)) 1)))
      (a!12 (and C1
                 (not D1)
                 (not E1)
                 (not F1)
                 G1
                 H1
                 (= G R)
                 (= H S)
                 (= I T)
                 (= K V)
                 (= L W)
                 (= M X)
                 (= N Y)
                 (= O Z)
                 (= P A1)
                 (= Q B1)
                 (= (+ J (* (- 1) U)) (- 1))))
      (a!13 (and (not C1)
                 D1
                 E1
                 F1
                 G1
                 H1
                 (= G R)
                 (= H S)
                 (= I T)
                 (= K V)
                 (= L W)
                 (= M X)
                 (= N Y)
                 (= O Z)
                 (= P A1)
                 (= Q B1)
                 (= (+ J (* (- 1) U)) (- 1))))
      (a!14 (and (not C1)
                 D1
                 E1
                 (not F1)
                 G1
                 H1
                 (= G R)
                 (= H S)
                 (= I T)
                 (= K V)
                 (= L W)
                 (= M X)
                 (= N Y)
                 (= O Z)
                 (= P A1)
                 (= Q B1)
                 (= (+ J (* (- 1) U)) (- 1))))
      (a!15 (and (not C1)
                 D1
                 (not E1)
                 (not F1)
                 G1
                 H1
                 (= G R)
                 (= H S)
                 (= I T)
                 (= K V)
                 (= L W)
                 (= M X)
                 (= N Y)
                 (= O Z)
                 (= P A1)
                 (= Q B1)
                 (= (+ J (* (- 1) U)) (- 1))))
      (a!16 (and C1
                 (not D1)
                 (not E1)
                 F1
                 (not G1)
                 H1
                 (= G R)
                 (= H S)
                 (= I T)
                 (= J U)
                 (= L W)
                 (= M X)
                 (= N Y)
                 (= O Z)
                 (= P A1)
                 (= Q B1)
                 (= (+ (* 2 H) K (* (- 1) V)) 0)))
      (a!17 (and (not C1)
                 D1
                 E1
                 F1
                 G1
                 (not H1)
                 (= G R)
                 (= H S)
                 (= I T)
                 (= J U)
                 (= K V)
                 (= M X)
                 (= N Y)
                 (= O Z)
                 (= P A1)
                 (= Q B1)
                 (= (+ L (* (- 1) W)) (- 1))))
      (a!18 (and (not C1)
                 D1
                 (not E1)
                 F1
                 (not G1)
                 H1
                 (= G R)
                 (= H S)
                 (= I T)
                 (= J U)
                 (= K V)
                 (= M X)
                 (= N Y)
                 (= O Z)
                 (= P A1)
                 (= Q B1)
                 (= (+ L (* (- 1) W)) (- 1))))
      (a!19 (and (not C1)
                 (not D1)
                 E1
                 (not F1)
                 G1
                 H1
                 (= G R)
                 (= H S)
                 (= I T)
                 (= J U)
                 (= K V)
                 (= L W)
                 (= M X)
                 (= N Y)
                 (= P A1)
                 (= Q B1)
                 (= (+ H K (* (- 1) Z)) 0)))
      (a!20 (and (not C1)
                 D1
                 E1
                 (not F1)
                 (not G1)
                 (not H1)
                 (= G R)
                 (= H S)
                 (= I T)
                 (= J U)
                 (= K V)
                 (= L W)
                 (= M X)
                 (= N Y)
                 (= O Z)
                 (= P A1)
                 (= Q B1)))
      (a!21 (and (not C1)
                 (not D1)
                 (not E1)
                 (not F1)
                 (not G1)
                 (not H1)
                 (= G R)
                 (= H S)
                 (= I T)
                 (= J U)
                 (= K V)
                 (= L W)
                 (= M X)
                 (= N Y)
                 (= O Z)
                 (= P A1)
                 (= Q B1))))
  (and (or (not A)
           B
           C
           D
           E
           F
           (and C1
                (not D1)
                E1
                (not F1)
                (not G1)
                H1
                (= G R)
                (= H S)
                (= I T)
                (= J U)
                (= K V)
                (= L W)
                (= M X)
                (= N Y)
                (= O Z)
                (= P A1)
                (= Q B1))
           (not (<= N H)))
       a!1
       (or (not A) B (not C) D (not E) F a!2 (<= J N))
       (or A
           (not B)
           C
           D
           E
           (not F)
           (and C1
                (not D1)
                (not E1)
                F1
                (not G1)
                (not H1)
                (= G R)
                (= H S)
                (= I T)
                (= J U)
                (= K V)
                (= L W)
                (= M X)
                (= N Y)
                (= O Z)
                (= P A1)
                (= Q B1))
           (not (<= Q J)))
       (or A
           (not B)
           C
           D
           E
           (not F)
           (and C1
                (not D1)
                (not E1)
                (not F1)
                G1
                (not H1)
                (= G R)
                (= H S)
                (= I T)
                (= J U)
                (= K V)
                (= L W)
                (= M X)
                (= N Y)
                (= O Z)
                (= P A1)
                (= Q B1))
           (<= Q J))
       (or A
           B
           (not C)
           (not D)
           (not E)
           F
           (and C1
                (not D1)
                (not E1)
                (not F1)
                (not G1)
                (not H1)
                (= G R)
                (= H S)
                (= I T)
                (= J U)
                (= K V)
                (= L W)
                (= M X)
                (= N Y)
                (= O Z)
                (= P A1)
                (= Q B1))
           (not (<= Q L)))
       (or A
           B
           (not C)
           (not D)
           (not E)
           F
           (and (not C1)
                D1
                E1
                F1
                (not G1)
                H1
                (= G R)
                (= H S)
                (= I T)
                (= J U)
                (= K V)
                (= L W)
                (= M X)
                (= N Y)
                (= O Z)
                (= P A1)
                (= Q B1))
           (<= Q L))
       (or A B C (not D) (not E) F a!3 (not (<= O G)))
       (or A
           B
           C
           (not D)
           (not E)
           F
           (and (not C1)
                D1
                E1
                (not F1)
                (not G1)
                H1
                (= G R)
                (= H S)
                (= I T)
                (= J U)
                (= K V)
                (= L W)
                (= M X)
                (= N Y)
                (= O Z)
                (= P A1)
                (= Q B1))
           (<= O G))
       (or (not A)
           B
           (not C)
           D
           (not E)
           F
           (and (not C1)
                D1
                (not E1)
                F1
                G1
                H1
                (= G R)
                (= H S)
                (= I T)
                (= J U)
                (= K V)
                (= L W)
                (= M X)
                (= N Y)
                (= O Z)
                (= P A1)
                (= Q B1))
           (not (<= J N)))
       (or A
           B
           C
           D
           (not E)
           F
           (and (not C1)
                D1
                (not E1)
                F1
                (not G1)
                (not H1)
                (= G R)
                (= H S)
                (= I T)
                (= J U)
                (= K V)
                (= L W)
                (= M X)
                (= N Y)
                (= O Z)
                (= P A1)
                (= Q B1))
           (= I1 0))
       (or A
           B
           C
           D
           (not E)
           F
           (and (not C1)
                D1
                (not E1)
                (not F1)
                (not G1)
                H1
                (= G R)
                (= H S)
                (= I T)
                (= J U)
                (= K V)
                (= L W)
                (= M X)
                (= N Y)
                (= O Z)
                (= P A1)
                (= Q B1))
           (not (= I1 0)))
       (or (not A) B (not C) D E F a!4 (not (<= I N)))
       (or (not A)
           B
           (not C)
           D
           E
           F
           (and (not C1)
                (not D1)
                (not E1)
                F1
                G1
                H1
                (= G R)
                (= H S)
                (= I T)
                (= J U)
                (= K V)
                (= L W)
                (= M X)
                (= N Y)
                (= O Z)
                (= P A1)
                (= Q B1))
           (<= I N))
       (or A
           B
           (not C)
           D
           E
           F
           (and (not C1)
                (not D1)
                (not E1)
                F1
                (not G1)
                H1
                (= G R)
                (= H S)
                (= I T)
                (= J U)
                (= K V)
                (= L W)
                (= M X)
                (= N Y)
                (= O Z)
                (= P A1)
                (= Q B1))
           a!5)
       (or (not A)
           B
           C
           D
           E
           F
           (and (not C1)
                (not D1)
                (not E1)
                (not F1)
                G1
                H1
                (= G R)
                (= H S)
                (= I T)
                (= J U)
                (= K V)
                (= L W)
                (= M X)
                (= N Y)
                (= O Z)
                (= P A1)
                (= Q B1))
           (<= N H))
       a!6
       (or A (not B) C (not D) (not E) F a!7)
       (or A (not B) C D (not E) F a!8)
       (or A
           B
           (not C)
           (not D)
           E
           F
           (and (not C1)
                (not D1)
                E1
                F1
                (not G1)
                H1
                (= H S)
                (= I T)
                (= J U)
                (= K V)
                (= L W)
                (= M X)
                (= N Y)
                (= O Z)
                (= P A1)
                (= Q B1)
                (= R M)))
       (or (not A) (not B) (not C) D E (not F) a!9)
       (or A
           (not B)
           C
           D
           E
           F
           (and (not C1)
                (not D1)
                (not E1)
                (not F1)
                G1
                (not H1)
                (= G R)
                (= I T)
                (= J U)
                (= K V)
                (= L W)
                (= M X)
                (= N Y)
                (= O Z)
                (= P A1)
                (= Q B1)
                (= S 1)))
       (or A (not B) (not C) D E F a!10)
       (or (not A) (not B) (not C) D E F a!11)
       (or (not A) B C D E (not F) a!12)
       (or (not A) B (not C) (not D) (not E) F a!13)
       (or (not A) B C (not D) (not E) F a!14)
       (or (not A) B C D (not E) F a!15)
       (or A
           B
           C
           D
           E
           (not F)
           (and C1
                (not D1)
                (not E1)
                (not F1)
                (not G1)
                H1
                (= G R)
                (= H S)
                (= I T)
                (= K V)
                (= L W)
                (= M X)
                (= N Y)
                (= O Z)
                (= P A1)
                (= Q B1)
                (= U M)))
       (or (not A)
           B
           (not C)
           (not D)
           E
           F
           (and (not C1)
                (not D1)
                E1
                F1
                G1
                H1
                (= G R)
                (= H S)
                (= I T)
                (= K V)
                (= L W)
                (= M X)
                (= N Y)
                (= O Z)
                (= P A1)
                (= Q B1)
                (= U M)))
       (or A B (not C) D E (not F) a!16)
       (or (not A)
           (not B)
           C
           D
           E
           F
           (and (not C1)
                (not D1)
                (not E1)
                F1
                (not G1)
                (not H1)
                (= G R)
                (= H S)
                (= I T)
                (= J U)
                (= L W)
                (= M X)
                (= N Y)
                (= O Z)
                (= P A1)
                (= Q B1)
                (= V 1)))
       (or A (not B) (not C) (not D) (not E) F a!17)
       (or A B (not C) D (not E) F a!18)
       (or A
           (not B)
           (not C)
           (not D)
           E
           F
           (and (not C1)
                (not D1)
                E1
                F1
                G1
                (not H1)
                (= G R)
                (= H S)
                (= I T)
                (= J U)
                (= K V)
                (= M X)
                (= N Y)
                (= O Z)
                (= P A1)
                (= Q B1)
                (= W O)))
       (or (not A) B C (not D) E F a!19)
       (or (not A) B (not C) D E (not F) a!2)
       (or (not A)
           (not B)
           C
           D
           E
           (not F)
           (and C1
                (not D1)
                (not E1)
                (not F1)
                (not G1)
                H1
                (= G R)
                (= H S)
                (= I T)
                (= J U)
                (= K V)
                (= L W)
                (= M X)
                (= N Y)
                (= O Z)
                (= P A1)
                (= Q B1)))
       (or (not A) (not B) (not C) (not D) (not E) F a!3)
       (or (not A) (not B) C (not D) (not E) F a!20)
       (or (not A) (not B) (not C) D (not E) F a!20)
       (or A
           (not B)
           (not C)
           D
           (not E)
           F
           (and (not C1)
                D1
                (not E1)
                (not F1)
                G1
                (not H1)
                (= G R)
                (= H S)
                (= I T)
                (= J U)
                (= K V)
                (= L W)
                (= M X)
                (= N Y)
                (= O Z)
                (= P A1)
                (= Q B1)))
       (or (not A)
           (not B)
           C
           D
           (not E)
           F
           (and (not C1)
                (not D1)
                E1
                F1
                G1
                H1
                (= G R)
                (= H S)
                (= I T)
                (= J U)
                (= K V)
                (= L W)
                (= M X)
                (= N Y)
                (= O Z)
                (= P A1)
                (= Q B1)))
       (or A B C (not D) E F a!4)
       (or A
           (not B)
           (not C)
           D
           E
           (not F)
           (and (not C1)
                (not D1)
                (not E1)
                F1
                (not G1)
                (not H1)
                (= G R)
                (= H S)
                (= I T)
                (= J U)
                (= K V)
                (= L W)
                (= M X)
                (= N Y)
                (= O Z)
                (= P A1)
                (= Q B1)))
       (or A
           B
           C
           (not D)
           E
           (not F)
           (and (not C1)
                (not D1)
                (not E1)
                (not F1)
                G1
                (not H1)
                (= G R)
                (= H S)
                (= I T)
                (= J U)
                (= K V)
                (= L W)
                (= M X)
                (= N Y)
                (= O Z)
                (= P A1)
                (= Q B1)))
       (or A B C D E F a!21)
       (or A (not B) C (not D) E (not F) a!21)
       (or A
           (not B)
           C
           (not D)
           E
           F
           (and (not C1)
                (not D1)
                E1
                (not F1)
                G1
                (not H1)
                (= G R)
                (= H S)
                (= I T)
                (= J U)
                (= K V)
                (= K X)
                (= L W)
                (= N Y)
                (= O Z)
                (= P A1)
                (= Q B1)))
       (or (not A)
           (not B)
           C
           (not D)
           E
           F
           (and (not C1)
                (not D1)
                E1
                F1
                (not G1)
                (not H1)
                (= G R)
                (= H S)
                (= I B1)
                (= I T)
                (= J U)
                (= K V)
                (= L W)
                (= M X)
                (= N Y)
                (= O Z)
                (= P A1)))
       (or (not A)
           (not B)
           (not C)
           (not D)
           E
           F
           (and (not C1)
                D1
                (not E1)
                (not F1)
                (not G1)
                (not H1)
                (= G R)
                (= H S)
                (= I T)
                (= J U)
                (= K V)
                (= L W)
                (= M X)
                (= N Y)
                (= O Z)
                (= P A1)
                (= Q B1))
           (<= O G)
           (<= Q L))))
      )
      (state G1 H1 F1 E1 D1 C1 R S T U V W X Y Z A1 B1)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Bool) (E Bool) (F Bool) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) ) 
    (=>
      (and
        (state A B C D E F G H I J K L M N O P Q)
        (and (not E) (not D) (= C true) (not B) (= A true) (= F true))
      )
      false
    )
  )
)

(check-sat)
(exit)
