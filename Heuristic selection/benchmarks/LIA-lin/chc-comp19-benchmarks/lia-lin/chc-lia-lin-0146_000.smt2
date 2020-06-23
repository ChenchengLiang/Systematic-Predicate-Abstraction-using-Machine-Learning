(set-logic HORN)

(declare-fun |state| ( Bool Bool Bool Bool Bool Bool Bool Int Int Int Int Int Int Int ) Bool)

(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Bool) (E Bool) (F Bool) (G Bool) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) ) 
    (=>
      (and
        (and (not F) (not E) (not D) (not C) (= B true) (not A) (not G))
      )
      (state A B C D E F G H I J K L M N)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Bool) (E Bool) (F Bool) (G Bool) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Bool) (P Bool) (Q Bool) (R Bool) (S Bool) (T Bool) (U Bool) (V Int) (W Int) (X Int) (Y Int) (Z Int) (A1 Int) (B1 Int) (C1 Int) ) 
    (=>
      (and
        (state A B C D E F G H I J K L M N)
        (let ((a!1 (and P
                Q
                R
                S
                T
                (not U)
                (not O)
                (= H V)
                (= I W)
                (= J X)
                (= K Y)
                (= L Z)
                (= M A1)
                (= N B1)))
      (a!2 (<= 0 (+ H I (* (- 2) K) (* 2 M))))
      (a!3 (and P
                (not Q)
                R
                S
                T
                (not U)
                O
                (= H V)
                (= I W)
                (= J X)
                (= K Y)
                (= L Z)
                (= M A1)
                (= N B1)))
      (a!4 (and P
                (not Q)
                R
                S
                T
                (not U)
                (not O)
                (= H V)
                (= I W)
                (= J X)
                (= K Y)
                (= L Z)
                (= M A1)
                (= N B1)))
      (a!5 (<= (+ H I (* (- 2) K) (* (- 2) M)) 0))
      (a!6 (or (not A)
               B
               C
               (not D)
               E
               F
               G
               (and P
                    (not Q)
                    R
                    (not S)
                    (not T)
                    (not U)
                    O
                    (= H V)
                    (= I W)
                    (= J X)
                    (= K Y)
                    (= L Z)
                    (= M A1)
                    (= N B1))
               (= (+ H I (* (- 2) K)) 0)))
      (a!7 (and P
                (not Q)
                (not R)
                (not S)
                (not T)
                U
                (not O)
                (= H V)
                (= I W)
                (= J X)
                (= K Y)
                (= L Z)
                (= M A1)
                (= N B1)))
      (a!8 (and (not P)
                Q
                R
                S
                T
                (not U)
                O
                (= H V)
                (= I W)
                (= J X)
                (= K Y)
                (= L Z)
                (= M A1)
                (= N B1)))
      (a!9 (and (not P)
                Q
                R
                S
                T
                (not U)
                (not O)
                (= H V)
                (= I W)
                (= J X)
                (= K Y)
                (= L Z)
                (= M A1)
                (= N B1)))
      (a!11 (not (<= (+ L (* (- 5) M)) 75)))
      (a!12 (not (= (+ H I (* (- 2) K)) 0)))
      (a!13 (not (<= 75 (+ L (* 5 M)))))
      (a!14 (not (<= (+ J (* (- 2) L) N) 0)))
      (a!15 (or (not A)
                (not B)
                (not C)
                D
                (not E)
                F
                G
                (and (not P)
                     (not Q)
                     R
                     S
                     (not T)
                     (not U)
                     (not O)
                     (= H V)
                     (= I W)
                     (= J X)
                     (= K Y)
                     (= L Z)
                     (= M A1)
                     (= N B1))
                (<= (+ J (* (- 2) L) N) 0)))
      (a!16 (and (not P)
                 (not Q)
                 (not R)
                 S
                 (not T)
                 (not U)
                 O
                 (= H V)
                 (= I W)
                 (= J X)
                 (= K Y)
                 (= L Z)
                 (= M A1)
                 (= N B1)))
      (a!17 (not (<= 0 (+ J (* (- 2) L) N))))
      (a!18 (or (not A)
                (not B)
                (not C)
                (not D)
                (not E)
                F
                G
                (and (not P)
                     (not Q)
                     (not R)
                     (not S)
                     T
                     (not U)
                     (not O)
                     (= H V)
                     (= I W)
                     (= J X)
                     (= K Y)
                     (= L Z)
                     (= M A1)
                     (= N B1))
                (<= 0 (+ J (* (- 2) L) N))))
      (a!19 (and (not P)
                 (not Q)
                 (not R)
                 (not S)
                 (not T)
                 U
                 O
                 (= H V)
                 (= I W)
                 (= J X)
                 (= K Y)
                 (= L Z)
                 (= M A1)
                 (= N B1)))
      (a!20 (and (not P)
                 (not Q)
                 (not R)
                 (not S)
                 (not T)
                 U
                 (not O)
                 (= H V)
                 (= I W)
                 (= J X)
                 (= K Y)
                 (= L Z)
                 (= M A1)
                 (= N B1)))
      (a!22 (and P
                 (not Q)
                 R
                 S
                 (not T)
                 (not U)
                 (not O)
                 (= H V)
                 (= I W)
                 (= K Y)
                 (= L Z)
                 (= M A1)
                 (= N B1)
                 (= (+ I J (* (- 1) X)) 0)))
      (a!23 (and P
                 (not Q)
                 (not R)
                 (not S)
                 T
                 (not U)
                 (not O)
                 (= H V)
                 (= I W)
                 (= K Y)
                 (= L Z)
                 (= M A1)
                 (= N B1)
                 (= (+ I J (* (- 1) X)) 0)))
      (a!24 (and (not P)
                 Q
                 (not R)
                 (not S)
                 T
                 (not U)
                 O
                 (= H V)
                 (= I W)
                 (= J X)
                 (= L Z)
                 (= M A1)
                 (= N B1)
                 (= (+ K (* (- 1) Y)) (- 1))))
      (a!25 (and (not P)
                 Q
                 R
                 S
                 (not T)
                 (not U)
                 O
                 (= H V)
                 (= I W)
                 (= J X)
                 (= L Z)
                 (= M A1)
                 (= N B1)
                 (= (+ K (* (- 1) Y)) 1)))
      (a!26 (and (not P)
                 Q
                 R
                 S
                 (not T)
                 (not U)
                 (not O)
                 (= H V)
                 (= I W)
                 (= J X)
                 (= K Y)
                 (= M A1)
                 (= N B1)
                 (= (+ K L (* (- 1) Z)) 0)))
      (a!27 (and (not P)
                 Q
                 (not R)
                 (not S)
                 T
                 (not U)
                 (not O)
                 (= H V)
                 (= I W)
                 (= J X)
                 (= K Y)
                 (= M A1)
                 (= N B1)
                 (= (+ K L (* (- 1) Z)) 0)))
      (a!28 (and P
                 Q
                 R
                 S
                 (not T)
                 (not U)
                 (not O)
                 (= H V)
                 (= I W)
                 (= J X)
                 (= K Y)
                 (= L Z)
                 (= N B1)
                 (= (+ M (* (- 1) A1)) (- 1))))
      (a!29 (and P
                 Q
                 (not R)
                 (not S)
                 T
                 (not U)
                 (not O)
                 (= H V)
                 (= I W)
                 (= J X)
                 (= K Y)
                 (= L Z)
                 (= N B1)
                 (= (+ M (* (- 1) A1)) (- 1))))
      (a!30 (and P
                 (not Q)
                 R
                 S
                 (not T)
                 (not U)
                 O
                 (= H V)
                 (= I W)
                 (= J X)
                 (= K Y)
                 (= L Z)
                 (= M A1)
                 (= (+ H N (* (- 1) B1)) 0)))
      (a!31 (and P
                 (not Q)
                 (not R)
                 (not S)
                 T
                 (not U)
                 O
                 (= H V)
                 (= I W)
                 (= J X)
                 (= K Y)
                 (= L Z)
                 (= M A1)
                 (= (+ H N (* (- 1) B1)) 0)))
      (a!32 (and P
                 Q
                 R
                 S
                 T
                 (not U)
                 O
                 (= H V)
                 (= I W)
                 (= J X)
                 (= K Y)
                 (= L Z)
                 (= M A1)
                 (= N B1)))
      (a!33 (and (not P)
                 (not Q)
                 (not R)
                 (not S)
                 (not T)
                 (not U)
                 (not O)
                 (= H V)
                 (= I W)
                 (= J X)
                 (= K Y)
                 (= L Z)
                 (= M A1)
                 (= N B1))))
(let ((a!10 (or (not A) (not B) C D (not E) (not F) G a!9 (<= 75 (+ L (* 5 M)))))
      (a!21 (or (not A)
                (not B)
                C
                (not D)
                E
                (not F)
                G
                a!20
                (<= (+ L (* (- 5) M)) 75))))
  (and (or (not A) (not B) (not C) (not D) E (not F) G a!1 (<= 0 H))
       (or (not A)
           B
           (not C)
           D
           (not E)
           F
           G
           (and P
                Q
                R
                S
                (not T)
                (not U)
                O
                (= H V)
                (= I W)
                (= J X)
                (= K Y)
                (= L Z)
                (= M A1)
                (= N B1))
           (= C1 0))
       (or A
           (not B)
           (not C)
           (not D)
           E
           (not F)
           G
           (and P
                Q
                R
                (not S)
                T
                (not U)
                (not O)
                (= H V)
                (= I W)
                (= J X)
                (= K Y)
                (= L Z)
                (= M A1)
                (= N B1))
           (not (<= K 6)))
       (or A
           (not B)
           (not C)
           (not D)
           E
           F
           G
           (and P
                Q
                R
                (not S)
                (not T)
                (not U)
                O
                (= H V)
                (= I W)
                (= J X)
                (= K Y)
                (= L Z)
                (= M A1)
                (= N B1))
           (not (<= (- 5) K)))
       (or A
           (not B)
           (not C)
           (not D)
           E
           F
           G
           (and P
                Q
                R
                (not S)
                (not T)
                (not U)
                (not O)
                (= H V)
                (= I W)
                (= J X)
                (= K Y)
                (= L Z)
                (= M A1)
                (= N B1))
           (<= (- 5) K))
       (or A
           (not B)
           (not C)
           D
           (not E)
           (not F)
           G
           (and P
                Q
                (not R)
                S
                T
                (not U)
                (not O)
                (= H V)
                (= I W)
                (= J X)
                (= K Y)
                (= L Z)
                (= M A1)
                (= N B1))
           (not a!2))
       (or (not A)
           B
           (not C)
           D
           (not E)
           F
           G
           (and P
                Q
                (not R)
                S
                (not T)
                (not U)
                O
                (= H V)
                (= I W)
                (= J X)
                (= K Y)
                (= L Z)
                (= M A1)
                (= N B1))
           (not (= C1 0)))
       (or A
           B
           (not C)
           D
           (not E)
           F
           G
           (and P
                Q
                (not R)
                S
                (not T)
                (not U)
                (not O)
                (= H V)
                (= I W)
                (= J X)
                (= K Y)
                (= L Z)
                (= M A1)
                (= N B1))
           (not (<= K 5)))
       (or A
           (not B)
           C
           D
           (not E)
           F
           G
           (and P
                Q
                (not R)
                (not S)
                T
                (not U)
                O
                (= H V)
                (= I W)
                (= J X)
                (= K Y)
                (= L Z)
                (= M A1)
                (= N B1))
           (= C1 0))
       (or (not A)
           B
           (not C)
           D
           E
           F
           G
           (and P
                Q
                (not R)
                (not S)
                (not T)
                (not U)
                O
                (= H V)
                (= I W)
                (= J X)
                (= K Y)
                (= L Z)
                (= M A1)
                (= N B1))
           (<= I 5))
       (or A
           B
           (not C)
           D
           E
           F
           G
           (and P
                Q
                (not R)
                (not S)
                (not T)
                (not U)
                (not O)
                (= H V)
                (= I W)
                (= J X)
                (= K Y)
                (= L Z)
                (= M A1)
                (= N B1))
           (not (<= 0 H)))
       (or A (not B) (not C) D (not E) (not F) G a!3 a!2)
       (or (not A) (not B) (not C) D (not E) (not F) G a!4 (<= H I))
       (or A
           (not B)
           C
           (not D)
           E
           (not F)
           G
           (and P
                (not Q)
                R
                (not S)
                T
                (not U)
                (not O)
                (= H V)
                (= I W)
                (= J X)
                (= K Y)
                (= L Z)
                (= M A1)
                (= N B1))
           (not a!5))
       a!6
       (or A
           B
           C
           (not D)
           E
           F
           G
           (and P
                (not Q)
                R
                (not S)
                (not T)
                (not U)
                (not O)
                (= H V)
                (= I W)
                (= J X)
                (= K Y)
                (= L Z)
                (= M A1)
                (= N B1))
           (not (<= H I)))
       (or A
           (not B)
           C
           D
           (not E)
           (not F)
           G
           (and P
                (not Q)
                (not R)
                S
                T
                (not U)
                (not O)
                (= H V)
                (= I W)
                (= J X)
                (= K Y)
                (= L Z)
                (= M A1)
                (= N B1))
           (not (<= (- 6) K)))
       (or (not A)
           B
           C
           D
           (not E)
           F
           G
           (and P
                (not Q)
                (not R)
                S
                (not T)
                (not U)
                O
                (= H V)
                (= I W)
                (= J X)
                (= K Y)
                (= L Z)
                (= M A1)
                (= N B1))
           (<= (- 5) K))
       (or A
           (not B)
           C
           D
           (not E)
           F
           G
           (and P
                (not Q)
                (not R)
                S
                (not T)
                (not U)
                (not O)
                (= H V)
                (= I W)
                (= J X)
                (= K Y)
                (= L Z)
                (= M A1)
                (= N B1))
           (not (= C1 0)))
       (or (not A) (not B) (not C) D E (not F) G a!7 (<= I 5))
       (or A (not B) C D (not E) (not F) G a!8 (<= (- 6) K))
       a!10
       (or (not A)
           (not B)
           C
           (not D)
           E
           (not F)
           G
           (and (not P)
                Q
                R
                (not S)
                T
                (not U)
                (not O)
                (= H V)
                (= I W)
                (= J X)
                (= K Y)
                (= L Z)
                (= M A1)
                (= N B1))
           a!11)
       (or (not A)
           B
           C
           (not D)
           E
           F
           G
           (and (not P)
                Q
                R
                (not S)
                (not T)
                (not U)
                (not O)
                (= H V)
                (= I W)
                (= J X)
                (= K Y)
                (= L Z)
                (= M A1)
                (= N B1))
           a!12)
       (or (not A)
           (not B)
           C
           D
           (not E)
           (not F)
           G
           (and (not P)
                Q
                (not R)
                S
                T
                (not U)
                (not O)
                (= H V)
                (= I W)
                (= J X)
                (= K Y)
                (= L Z)
                (= M A1)
                (= N B1))
           a!13)
       (or A
           B
           (not C)
           D
           (not E)
           F
           G
           (and (not P)
                Q
                (not R)
                S
                (not T)
                (not U)
                O
                (= H V)
                (= I W)
                (= J X)
                (= K Y)
                (= L Z)
                (= M A1)
                (= N B1))
           (<= K 5))
       (or (not A)
           B
           C
           D
           (not E)
           F
           G
           (and (not P)
                Q
                (not R)
                S
                (not T)
                (not U)
                (not O)
                (= H V)
                (= I W)
                (= J X)
                (= K Y)
                (= L Z)
                (= M A1)
                (= N B1))
           (not (<= (- 5) K)))
       (or A
           B
           (not C)
           D
           E
           F
           G
           (and (not P)
                Q
                (not R)
                (not S)
                (not T)
                (not U)
                O
                (= H V)
                (= I W)
                (= J X)
                (= K Y)
                (= L Z)
                (= M A1)
                (= N B1))
           (<= 0 H))
       (or (not A)
           (not B)
           (not C)
           D
           (not E)
           (not F)
           G
           (and (not P)
                (not Q)
                R
                S
                T
                (not U)
                (not O)
                (= H V)
                (= I W)
                (= J X)
                (= K Y)
                (= L Z)
                (= M A1)
                (= N B1))
           (not (<= H I)))
       (or (not A)
           (not B)
           (not C)
           D
           (not E)
           F
           G
           (and (not P)
                (not Q)
                R
                S
                (not T)
                (not U)
                O
                (= H V)
                (= I W)
                (= J X)
                (= K Y)
                (= L Z)
                (= M A1)
                (= N B1))
           a!14)
       a!15
       (or (not A)
           (not B)
           (not C)
           D
           E
           (not F)
           G
           (and (not P)
                (not Q)
                R
                (not S)
                T
                (not U)
                (not O)
                (= H V)
                (= I W)
                (= J X)
                (= K Y)
                (= L Z)
                (= M A1)
                (= N B1))
           (not (<= I 5)))
       (or A
           B
           C
           (not D)
           E
           F
           G
           (and (not P)
                (not Q)
                R
                (not S)
                (not T)
                (not U)
                O
                (= H V)
                (= I W)
                (= J X)
                (= K Y)
                (= L Z)
                (= M A1)
                (= N B1))
           (<= H I))
       (or (not A)
           B
           (not C)
           D
           E
           F
           G
           (and (not P)
                (not Q)
                R
                (not S)
                (not T)
                (not U)
                (not O)
                (= H V)
                (= I W)
                (= J X)
                (= K Y)
                (= L Z)
                (= M A1)
                (= N B1))
           (not (<= I 5)))
       (or (not A)
           (not B)
           (not C)
           (not D)
           E
           (not F)
           G
           (and (not P)
                (not Q)
                (not R)
                S
                T
                (not U)
                (not O)
                (= H V)
                (= I W)
                (= J X)
                (= K Y)
                (= L Z)
                (= M A1)
                (= N B1))
           (not (<= 0 H)))
       (or (not A) (not B) (not C) (not D) E F G a!16 (not (<= K 5)))
       (or (not A)
           (not B)
           (not C)
           (not D)
           E
           F
           G
           (and (not P)
                (not Q)
                (not R)
                S
                (not T)
                (not U)
                (not O)
                (= H V)
                (= I W)
                (= J X)
                (= K Y)
                (= L Z)
                (= M A1)
                (= N B1))
           (<= K 5))
       (or (not A)
           (not B)
           (not C)
           (not D)
           (not E)
           F
           G
           (and (not P)
                (not Q)
                (not R)
                (not S)
                T
                (not U)
                O
                (= H V)
                (= I W)
                (= J X)
                (= K Y)
                (= L Z)
                (= M A1)
                (= N B1))
           a!17)
       a!18
       (or A (not B) C (not D) E (not F) G a!19 a!5)
       a!21
       (or A (not B) C (not D) (not E) F G a!22)
       (or A (not B) C D E (not F) G a!23)
       (or A B (not C) D E (not F) G a!24)
       (or A B (not C) (not D) (not E) F G a!25)
       (or (not A) (not B) C (not D) (not E) F G a!26)
       (or (not A) (not B) C D E (not F) G a!27)
       (or A (not B) (not C) (not D) (not E) F G a!28)
       (or A (not B) (not C) D E (not F) G a!29)
       (or (not A) B C (not D) (not E) F G a!30)
       (or (not A) B C D E (not F) G a!31)
       (or (not A) (not B) (not C) (not D) (not E) (not F) G a!32)
       (or (not A) B (not C) (not D) (not E) (not F) G a!1)
       (or (not A)
           B
           (not C)
           D
           E
           (not F)
           G
           (and P
                Q
                R
                S
                (not T)
                (not U)
                (not O)
                (= H V)
                (= I W)
                (= J X)
                (= K Y)
                (= L Z)
                (= M A1)
                (= N B1)))
       (or (not A)
           B
           (not C)
           (not D)
           E
           (not F)
           G
           (and P
                Q
                R
                (not S)
                T
                (not U)
                O
                (= H V)
                (= I W)
                (= J X)
                (= K Y)
                (= L Z)
                (= M A1)
                (= N B1)))
       (or (not A)
           B
           (not C)
           D
           (not E)
           (not F)
           G
           (and P
                Q
                (not R)
                S
                T
                (not U)
                O
                (= H V)
                (= I W)
                (= J X)
                (= K Y)
                (= L Z)
                (= M A1)
                (= N B1)))
       (or (not A) (not B) C (not D) (not E) (not F) G a!3)
       (or (not A) B C (not D) (not E) (not F) G a!4)
       (or (not A)
           B
           C
           (not D)
           E
           (not F)
           G
           (and P
                (not Q)
                R
                (not S)
                T
                (not U)
                O
                (= H V)
                (= I W)
                (= J X)
                (= K Y)
                (= L Z)
                (= M A1)
                (= N B1)))
       (or (not A)
           B
           C
           D
           (not E)
           (not F)
           G
           (and P
                (not Q)
                (not R)
                S
                T
                (not U)
                O
                (= H V)
                (= I W)
                (= J X)
                (= K Y)
                (= L Z)
                (= M A1)
                (= N B1)))
       (or (not A) B C D E F (not G) a!7)
       (or A (not B) (not C) (not D) (not E) (not F) G a!8)
       (or A B (not C) (not D) (not E) (not F) G a!9)
       (or A
           B
           (not C)
           (not D)
           E
           (not F)
           G
           (and (not P)
                Q
                R
                (not S)
                T
                (not U)
                O
                (= H V)
                (= I W)
                (= J X)
                (= K Y)
                (= L Z)
                (= M A1)
                (= N B1)))
       (or A
           B
           (not C)
           D
           (not E)
           (not F)
           G
           (and (not P)
                Q
                (not R)
                S
                T
                (not U)
                O
                (= H V)
                (= I W)
                (= J X)
                (= K Y)
                (= L Z)
                (= M A1)
                (= N B1)))
       (or A
           B
           C
           (not D)
           (not E)
           (not F)
           G
           (and (not P)
                (not Q)
                R
                S
                T
                (not U)
                O
                (= H V)
                (= I W)
                (= J X)
                (= K Y)
                (= L Z)
                (= M A1)
                (= N B1)))
       (or A
           B
           C
           (not D)
           E
           (not F)
           G
           (and (not P)
                (not Q)
                R
                (not S)
                T
                (not U)
                O
                (= H V)
                (= I W)
                (= J X)
                (= K Y)
                (= L Z)
                (= M A1)
                (= N B1)))
       (or A
           B
           C
           D
           (not E)
           (not F)
           G
           (and (not P)
                (not Q)
                (not R)
                S
                T
                (not U)
                O
                (= H V)
                (= I W)
                (= J X)
                (= K Y)
                (= L Z)
                (= M A1)
                (= N B1)))
       (or (not A) B (not C) (not D) (not E) F G a!16)
       (or A (not B) C D E F (not G) a!19)
       (or A B C D E F (not G) a!20)
       (or A B C D E F G a!33)
       (or A B C D E (not F) G a!33)
       (or A B C D (not E) F G a!33)
       (or A B C (not D) (not E) F G a!33)
       (or A (not B) C (not D) E F G a!33)
       (or A (not B) C (not D) (not E) (not F) G a!33)
       (or A (not B) (not C) D E F G a!33)
       (or A (not B) (not C) D (not E) F G a!33)
       (or (not A) B (not C) (not D) E F G a!33)
       (or (not A) (not B) C D (not E) F G a!33)
       (or (not A) (not B) C (not D) E F G a!33)
       (or (not A) (not B) (not C) D E F G a!33)
       (or (not A)
           (not B)
           C
           D
           E
           F
           G
           (and (not P)
                Q
                (not R)
                (not S)
                (not T)
                (not U)
                (not O)
                (= B1 (- 50))
                (= H V)
                (= I W)
                (= J X)
                (= K Y)
                (= L Z)
                (= M A1)))
       (or A
           B
           (not C)
           (not D)
           E
           F
           G
           (and (not P)
                Q
                R
                (not S)
                (not T)
                (not U)
                O
                (= A1 0)
                (= H V)
                (= I W)
                (= J X)
                (= K Y)
                (= L Z)
                (= N B1)))
       (or (not A)
           B
           C
           D
           E
           F
           G
           (and P
                (not Q)
                (not R)
                (not S)
                (not T)
                (not U)
                O
                (= Z 75)
                (= H V)
                (= I W)
                (= J X)
                (= K Y)
                (= M A1)
                (= N B1)))
       (or A
           (not B)
           C
           D
           E
           F
           G
           (and P
                (not Q)
                (not R)
                (not S)
                (not T)
                (not U)
                (not O)
                (= X 100)
                (= H V)
                (= I W)
                (= K Y)
                (= L Z)
                (= M A1)
                (= N B1)))
       (or A (not B) (not C) (not D) E (not F) G a!32 (<= K 6)))))
      )
      (state P O Q R S T U V W X Y Z A1 B1)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Bool) (E Bool) (F Bool) (G Bool) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) ) 
    (=>
      (and
        (state A B C D E F G H I J K L M N)
        (or (and (not A) (not B) (not C) (not D) (not E) (not F) G)
    (and (not A) (not B) C D E F (not G))
    (and (not A) B (not C) (not D) (not E) (not F) G)
    (and (not A) B C D E F (not G))
    (and A (not B) (not C) (not D) (not E) (not F) G)
    (and A (not B) (not C) D E F (not G))
    (and A (not B) C D E F (not G))
    (and A B (not C) D E F (not G))
    (and A B C D E F (not G)))
      )
      false
    )
  )
)

(check-sat)
(exit)
