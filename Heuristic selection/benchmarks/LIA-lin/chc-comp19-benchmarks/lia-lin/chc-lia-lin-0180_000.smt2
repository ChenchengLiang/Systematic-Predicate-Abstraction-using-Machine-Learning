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
                (not S)
                T
                U
                O
                (= H V)
                (= I W)
                (= J X)
                (= K Y)
                (= L Z)
                (= M A1)
                (= N B1)))
      (a!2 (and P
                Q
                R
                (not S)
                T
                U
                (not O)
                (= H V)
                (= I W)
                (= J X)
                (= K Y)
                (= L Z)
                (= M A1)
                (= N B1)))
      (a!3 (and P
                Q
                (not R)
                S
                T
                U
                (not O)
                (= H V)
                (= I W)
                (= J X)
                (= K Y)
                (= L Z)
                (= M A1)
                (= N B1)))
      (a!4 (and P
                (not Q)
                (not R)
                S
                T
                U
                O
                (= H V)
                (= I W)
                (= J X)
                (= K Y)
                (= L Z)
                (= M A1)
                (= N B1)))
      (a!5 (and P
                (not Q)
                (not R)
                S
                T
                U
                (not O)
                (= H V)
                (= I W)
                (= J X)
                (= K Y)
                (= L Z)
                (= M A1)
                (= N B1)))
      (a!6 (and (not P)
                Q
                R
                (not S)
                T
                U
                O
                (= H V)
                (= I W)
                (= J X)
                (= K Y)
                (= L Z)
                (= M A1)
                (= N B1)))
      (a!7 (and (not P)
                Q
                R
                (not S)
                T
                U
                (not O)
                (= H V)
                (= I W)
                (= J X)
                (= K Y)
                (= L Z)
                (= M A1)
                (= N B1)))
      (a!8 (<= 1 (+ H I J K L M N)))
      (a!9 (and (not P)
                Q
                (not R)
                S
                T
                U
                (not O)
                (= H V)
                (= I W)
                (= J X)
                (= K Y)
                (= L Z)
                (= M A1)
                (= N B1)))
      (a!10 (or A
                (not B)
                C
                (not D)
                (not E)
                F
                (not G)
                (and (not P)
                     (not Q)
                     R
                     S
                     (not T)
                     U
                     O
                     (= H V)
                     (= I W)
                     (= J X)
                     (= K Y)
                     (= L Z)
                     (= M A1)
                     (= N B1))
                (not (<= (+ K M) 1))))
      (a!11 (or (not A)
                (not B)
                (not C)
                D
                (not E)
                F
                (not G)
                (and (not P)
                     (not Q)
                     R
                     S
                     (not T)
                     U
                     (not O)
                     (= H V)
                     (= I W)
                     (= J X)
                     (= K Y)
                     (= L Z)
                     (= M A1)
                     (= N B1))
                (not (<= (+ J N) 1))))
      (a!12 (and (not P)
                 (not Q)
                 (not R)
                 S
                 T
                 U
                 O
                 (= H V)
                 (= I W)
                 (= J X)
                 (= K Y)
                 (= L Z)
                 (= M A1)
                 (= N B1)))
      (a!13 (and (not P)
                 (not Q)
                 (not R)
                 S
                 T
                 U
                 (not O)
                 (= H V)
                 (= I W)
                 (= J X)
                 (= K Y)
                 (= L Z)
                 (= M A1)
                 (= N B1)))
      (a!14 (= (+ H (* (- 1) V) J L N) 0))
      (a!15 (= (+ H (* (- 1) V) I K M) 0))
      (a!16 (and (not P)
                 Q
                 R
                 (not S)
                 (not T)
                 U
                 (not O)
                 (= I W)
                 (= J X)
                 (= K Y)
                 (= L Z)
                 (= M A1)
                 (= N B1)
                 (= (+ H (* (- 1) V)) 1)))
      (a!17 (and (not P)
                 Q
                 (not R)
                 (not S)
                 (not T)
                 U
                 (not O)
                 (= I W)
                 (= J X)
                 (= K Y)
                 (= L Z)
                 (= M A1)
                 (= N B1)
                 (= (+ H (* (- 1) V)) 1)))
      (a!18 (and P
                 Q
                 R
                 S
                 T
                 (not U)
                 (not O)
                 (= H V)
                 (= J X)
                 (= K Y)
                 (= L Z)
                 (= M A1)
                 (= N B1)
                 (= (+ I (* (- 1) W) K M) (- 1))))
      (a!19 (and P
                 Q
                 (not R)
                 (not S)
                 (not T)
                 U
                 (not O)
                 (= H V)
                 (= J X)
                 (= K Y)
                 (= L Z)
                 (= M A1)
                 (= N B1)
                 (= (+ I (* (- 1) W) K M) (- 1))))
      (a!20 (and P
                 (not Q)
                 R
                 (not S)
                 T
                 (not U)
                 O
                 (= H V)
                 (= J X)
                 (= K Y)
                 (= L Z)
                 (= M A1)
                 (= N B1)
                 (= (+ I (* (- 1) W)) 1)))
      (a!21 (and P
                 (not Q)
                 (not R)
                 S
                 (not T)
                 U
                 O
                 (= H V)
                 (= J X)
                 (= K Y)
                 (= L Z)
                 (= M A1)
                 (= N B1)
                 (= (+ I (* (- 1) W)) 1)))
      (a!22 (and (not P)
                 Q
                 (not R)
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
                 (= (+ J (* (- 1) X)) 1)))
      (a!23 (and (not P)
                 Q
                 R
                 (not S)
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
      (a!24 (and P
                 Q
                 R
                 (not S)
                 (not T)
                 U
                 (not O)
                 (= H V)
                 (= I W)
                 (= J X)
                 (= K Y)
                 (= M A1)
                 (= N B1)
                 (= (+ J L (* (- 1) Z) N) (- 1))))
      (a!25 (and (not P)
                 Q
                 (not R)
                 S
                 (not T)
                 U
                 (not O)
                 (= H V)
                 (= I W)
                 (= J X)
                 (= K Y)
                 (= M A1)
                 (= N B1)
                 (= (+ J (* (- 1) Z) N) (- 1))))
      (a!26 (and (not P)
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
                 (= M A1)
                 (= N B1)
                 (= (+ L (* (- 1) Z)) 1)))
      (a!27 (and (not P)
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
                 (= M A1)
                 (= N B1)
                 (= (+ L (* (- 1) Z)) 1)))
      (a!28 (and P
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
                 (= N B1)
                 (= (+ M (* (- 1) A1)) (- 1))))
      (a!29 (and P
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
                 (= (+ N (* (- 1) B1)) (- 1))))
      (a!30 (and (not P)
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
  (and (or (not A) (not B) C D E (not F) (not G) a!1 (<= 0 I))
       (or (not A) (not B) (not C) D E (not F) (not G) a!2 (<= 0 K))
       (or (not A)
           (not B)
           C
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
           (not (<= 1 K)))
       (or (not A) (not B) (not C) D (not E) F (not G) a!3 (<= (+ J N) 1))
       (or A
           (not B)
           C
           (not D)
           E
           F
           G
           (and P
                Q
                (not R)
                S
                (not T)
                U
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
       (or (not A)
           (not B)
           (not C)
           (not D)
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
       (or A
           (not B)
           C
           (not D)
           (not E)
           (not F)
           G
           (and P
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
                (= N B1))
           (not (<= 1 L)))
       (or A
           B
           C
           (not D)
           (not E)
           (not F)
           G
           (and P
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
           (not (= C1 0)))
       (or (not A)
           (not B)
           (not C)
           D
           (not E)
           F
           G
           (and P
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
           (not (<= 1 L)))
       (or A
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
                (not O)
                (= H V)
                (= I W)
                (= J X)
                (= K Y)
                (= L Z)
                (= M A1)
                (= N B1))
           (<= 1 I))
       (or A
           (not B)
           C
           (not D)
           E
           F
           (not G)
           (and P
                (not Q)
                R
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
                (= N B1))
           (not (<= 1 H)))
       (or A
           B
           C
           (not D)
           E
           F
           (not G)
           (and P
                (not Q)
                R
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
                (= N B1))
           (not (= C1 0)))
       (or (not A)
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
           (not (= C1 0)))
       (or (not A) (not B) C (not D) (not E) F (not G) a!4 (<= 0 H))
       (or (not A) (not B) (not C) (not D) (not E) F (not G) a!5 (<= 0 N))
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
                O
                (= H V)
                (= I W)
                (= J X)
                (= K Y)
                (= L Z)
                (= M A1)
                (= N B1))
           (not (<= 1 L)))
       (or A
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
                (not O)
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
           C
           D
           (not E)
           F
           (not G)
           (and P
                (not Q)
                (not R)
                S
                (not T)
                U
                (not O)
                (= H V)
                (= I W)
                (= J X)
                (= K Y)
                (= L Z)
                (= M A1)
                (= N B1))
           (<= 1 I))
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
                O
                (= H V)
                (= I W)
                (= J X)
                (= K Y)
                (= L Z)
                (= M A1)
                (= N B1))
           (not (<= 1 J)))
       (or A
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
                (not O)
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
           C
           D
           E
           (not F)
           G
           (and P
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
           (<= 1 I))
       (or A
           (not B)
           C
           D
           E
           F
           (not G)
           (and P
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
                (= N B1))
           (not (<= 1 H)))
       (or A
           B
           C
           D
           E
           F
           (not G)
           (and P
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
                (= N B1))
           (not (= C1 0)))
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
                O
                (= H V)
                (= I W)
                (= J X)
                (= K Y)
                (= L Z)
                (= M A1)
                (= N B1))
           (not (<= 1 H)))
       (or A
           (not B)
           (not C)
           (not D)
           (not E)
           F
           (not G)
           (and (not P)
                Q
                R
                S
                (not T)
                U
                O
                (= H V)
                (= I W)
                (= J X)
                (= K Y)
                (= L Z)
                (= M A1)
                (= N B1))
           (not (<= 0 L)))
       (or (not A)
           (not B)
           C
           (not D)
           (not E)
           F
           (not G)
           (and (not P)
                Q
                R
                S
                (not T)
                U
                (not O)
                (= H V)
                (= I W)
                (= J X)
                (= K Y)
                (= L Z)
                (= M A1)
                (= N B1))
           (not (<= 0 H)))
       (or A (not B) (not C) D E (not F) (not G) a!6 (<= 0 M))
       (or A (not B) C (not D) E (not F) (not G) a!7 a!8)
       (or (not A)
           (not B)
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
           (<= 1 K))
       (or A (not B) C (not D) (not E) F (not G) a!9 (<= (+ K M) 1))
       (or A
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
           D
           E
           (not F)
           (not G)
           (and (not P)
                Q
                (not R)
                (not S)
                T
                U
                O
                (= H V)
                (= I W)
                (= J X)
                (= K Y)
                (= L Z)
                (= M A1)
                (= N B1))
           (not (<= 0 M)))
       (or (not A)
           (not B)
           C
           D
           E
           (not F)
           (not G)
           (and (not P)
                Q
                (not R)
                (not S)
                T
                U
                (not O)
                (= H V)
                (= I W)
                (= J X)
                (= K Y)
                (= L Z)
                (= M A1)
                (= N B1))
           (not (<= 0 I)))
       (or A
           (not B)
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
                (= N B1))
           (<= 1 L))
       (or A
           B
           C
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
           (= C1 0))
       a!10
       a!11
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
                (not O)
                (= H V)
                (= I W)
                (= J X)
                (= K Y)
                (= L Z)
                (= M A1)
                (= N B1))
           (<= 1 L))
       (or A
           (not B)
           C
           (not D)
           E
           (not F)
           (not G)
           (and (not P)
                (not Q)
                R
                (not S)
                T
                U
                O
                (= H V)
                (= I W)
                (= J X)
                (= K Y)
                (= L Z)
                (= M A1)
                (= N B1))
           (not a!8))
       (or (not A)
           (not B)
           (not C)
           D
           E
           (not F)
           (not G)
           (and (not P)
                (not Q)
                R
                (not S)
                T
                U
                (not O)
                (= H V)
                (= I W)
                (= J X)
                (= K Y)
                (= L Z)
                (= M A1)
                (= N B1))
           (not (<= 0 K)))
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
                (= N B1))
           (not (<= 1 I)))
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
           (not (= C1 0)))
       (or A
           (not B)
           C
           (not D)
           E
           F
           (not G)
           (and (not P)
                (not Q)
                R
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
                (= N B1))
           (<= 1 H))
       (or A
           B
           C
           D
           E
           F
           (not G)
           (and (not P)
                (not Q)
                R
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
                (= N B1))
           (= C1 0))
       (or A
           (not B)
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
           (not (= C1 0)))
       (or A (not B) (not C) (not D) (not E) F (not G) a!12 (<= 0 L))
       (or A (not B) C D E (not F) (not G) a!13 (<= 0 J))
       (or A
           (not B)
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
                (= N B1))
           (<= 1 L))
       (or (not A)
           (not B)
           (not C)
           D
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
           (= C1 0))
       (or A
           B
           C
           D
           (not E)
           F
           (not G)
           (and (not P)
                (not Q)
                (not R)
                S
                (not T)
                U
                O
                (= H V)
                (= I W)
                (= J X)
                (= K Y)
                (= L Z)
                (= M A1)
                (= N B1))
           (not (<= 1 I)))
       (or A
           B
           C
           (not D)
           E
           F
           (not G)
           (and (not P)
                (not Q)
                (not R)
                S
                (not T)
                U
                (not O)
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
           C
           D
           (not E)
           F
           G
           (and (not P)
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
           (<= 1 J))
       (or (not A)
           B
           C
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
           (= C1 0))
       (or A
           (not B)
           C
           D
           E
           (not F)
           (not G)
           (and (not P)
                (not Q)
                (not R)
                (not S)
                T
                U
                O
                (= H V)
                (= I W)
                (= J X)
                (= K Y)
                (= L Z)
                (= M A1)
                (= N B1))
           (not (<= 0 J)))
       (or (not A)
           (not B)
           (not C)
           (not D)
           (not E)
           F
           (not G)
           (and (not P)
                (not Q)
                (not R)
                (not S)
                T
                U
                (not O)
                (= H V)
                (= I W)
                (= J X)
                (= K Y)
                (= L Z)
                (= M A1)
                (= N B1))
           (not (<= 0 N)))
       (or A
           B
           C
           D
           E
           (not F)
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
           (not (<= 1 I)))
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
                (not O)
                (= H V)
                (= I W)
                (= J X)
                (= K Y)
                (= L Z)
                (= M A1)
                (= N B1))
           (not (= C1 0)))
       (or A
           (not B)
           C
           D
           E
           F
           (not G)
           (and (not P)
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
                (= N B1))
           (<= 1 H))
       (or A
           B
           C
           (not D)
           (not E)
           (not F)
           G
           (and (not P)
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
                (= N B1))
           (= C1 0))
       (or A
           (not B)
           C
           D
           E
           F
           G
           (and (not P)
                (not Q)
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
           (<= 1 H))
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
                (= I W)
                (= J X)
                (= K Y)
                (= L Z)
                (= M A1)
                (= N B1)
                a!14))
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
                (= I W)
                (= J X)
                (= K Y)
                (= L Z)
                (= M A1)
                (= N B1)
                a!14))
       (or (not A)
           B
           C
           (not D)
           (not E)
           F
           G
           (and P
                (not Q)
                R
                S
                (not T)
                (not U)
                O
                (= I W)
                (= J X)
                (= K Y)
                (= L Z)
                (= M A1)
                (= N B1)
                a!15))
       (or (not A)
           B
           C
           D
           E
           (not F)
           G
           (and P
                (not Q)
                (not R)
                (not S)
                T
                (not U)
                O
                (= I W)
                (= J X)
                (= K Y)
                (= L Z)
                (= M A1)
                (= N B1)
                a!15))
       (or (not A) (not B) C (not D) E F (not G) a!16)
       (or (not A) (not B) C D E F (not G) a!17)
       (or A B (not C) (not D) (not E) (not F) G a!18)
       (or A B (not C) D E F (not G) a!19)
       (or (not A) B C (not D) E (not F) G a!20)
       (or (not A) B C D (not E) F (not G) a!21)
       (or (not A) (not B) C D (not E) F G a!22)
       (or A (not B) (not C) (not D) E F G a!23)
       (or A B (not C) (not D) E F (not G) a!24)
       (or (not A) (not B) C D (not E) F (not G) a!25)
       (or (not A) (not B) C (not D) (not E) (not F) G a!26)
       (or A (not B) C (not D) (not E) F G a!27)
       (or (not A) B (not C) (not D) E F G a!28)
       (or A B (not C) D (not E) F G a!29)
       (or (not A)
           (not B)
           (not C)
           D
           E
           F
           (not G)
           (and P
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
       (or (not A)
           B
           (not C)
           (not D)
           (not E)
           F
           (not G)
           (and P
                Q
                R
                S
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
       (or A
           B
           (not C)
           (not D)
           (not E)
           F
           (not G)
           (and P
                Q
                R
                S
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
       (or (not A) (not B) (not C) (not D) E (not F) (not G) a!1)
       (or A (not B) (not C) (not D) E (not F) (not G) a!2)
       (or (not A)
           (not B)
           (not C)
           D
           (not E)
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
           F
           (not G)
           (and P
                Q
                R
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
       (or A
           (not B)
           (not C)
           D
           (not E)
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
                (= N B1)))
       (or A (not B) (not C) D (not E) (not F) (not G) a!3)
       (or (not A)
           (not B)
           (not C)
           (not D)
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
       (or (not A)
           B
           (not C)
           (not D)
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
                (= N B1)))
       (or (not A)
           B
           (not C)
           D
           E
           (not F)
           (not G)
           (and P
                Q
                (not R)
                (not S)
                T
                U
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
           E
           (not F)
           (not G)
           (and P
                Q
                (not R)
                (not S)
                T
                U
                (not O)
                (= H V)
                (= I W)
                (= J X)
                (= K Y)
                (= L Z)
                (= M A1)
                (= N B1)))
       (or (not A)
           (not B)
           (not C)
           (not D)
           E
           F
           (not G)
           (and P
                Q
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
       (or (not A)
           B
           C
           (not D)
           (not E)
           F
           (not G)
           (and P
                (not Q)
                R
                S
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
       (or A
           B
           C
           (not D)
           (not E)
           F
           (not G)
           (and P
                (not Q)
                R
                S
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
       (or (not A)
           B
           C
           (not D)
           E
           (not F)
           (not G)
           (and P
                (not Q)
                R
                (not S)
                T
                U
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
           (not G)
           (and P
                (not Q)
                R
                (not S)
                T
                U
                (not O)
                (= H V)
                (= I W)
                (= J X)
                (= K Y)
                (= L Z)
                (= M A1)
                (= N B1)))
       (or (not A)
           (not B)
           (not C)
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
                (= N B1)))
       (or (not A) (not B) C D (not E) (not F) (not G) a!4)
       (or A (not B) C D (not E) (not F) (not G) a!5)
       (or (not A)
           B
           C
           D
           E
           (not F)
           (not G)
           (and P
                (not Q)
                (not R)
                (not S)
                T
                U
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
           E
           (not F)
           (not G)
           (and P
                (not Q)
                (not R)
                (not S)
                T
                U
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
           D
           E
           (not F)
           G
           (and (not P)
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
                (= N B1)))
       (or (not A) B (not C) (not D) E (not F) (not G) a!6)
       (or A B (not C) (not D) E (not F) (not G) a!7)
       (or A B (not C) D (not E) (not F) (not G) a!9)
       (or (not A)
           (not B)
           (not C)
           (not D)
           E
           (not F)
           G
           (and (not P)
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
                (= N B1)))
       (or (not A) B C D (not E) (not F) (not G) a!12)
       (or A B C D (not E) (not F) (not G) a!13)
       (or A B C D E F G a!30)
       (or A B C (not D) (not E) F G a!30)
       (or A B (not C) (not D) E F G a!30)
       (or A (not B) C D E (not F) G a!30)
       (or A (not B) C D (not E) F (not G) a!30)
       (or A (not B) C (not D) E (not F) G a!30)
       (or (not A) B C D E F G a!30)
       (or (not A) B C D E F (not G) a!30)
       (or (not A) B C D (not E) F G a!30)
       (or (not A) B C D (not E) (not F) G a!30)
       (or (not A) B C (not D) E F (not G) a!30)
       (or (not A) B C (not D) (not E) (not F) G a!30)
       (or (not A) (not B) C (not D) E (not F) (not G) a!30)
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
                (= B1 0)
                (= H V)
                (= I W)
                (= J X)
                (= K Y)
                (= L Z)
                (= M A1)))
       (or (not A)
           B
           (not C)
           (not D)
           E
           F
           (not G)
           (and P
                Q
                R
                (not S)
                (not T)
                U
                O
                (= B1 0)
                (= H V)
                (= I W)
                (= J X)
                (= K Y)
                (= L Z)
                (= M A1)))
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
                (= B1 0)
                (= H V)
                (= I W)
                (= J X)
                (= K Y)
                (= L Z)
                (= M A1)))
       (or A
           (not B)
           (not C)
           D
           (not E)
           F
           (not G)
           (and (not P)
                Q
                (not R)
                S
                (not T)
                U
                O
                (= B1 0)
                (= H V)
                (= I W)
                (= J X)
                (= K Y)
                (= L Z)
                (= M A1)))
       (or A
           (not B)
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
                (= B1 0)
                (= H V)
                (= I W)
                (= J X)
                (= K Y)
                (= L Z)
                (= M A1)))
       (or (not A)
           B
           (not C)
           (not D)
           (not E)
           (not F)
           G
           (and P
                Q
                R
                S
                T
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
           (not C)
           D
           E
           F
           (not G)
           (and P
                Q
                (not R)
                (not S)
                (not T)
                U
                O
                (= A1 0)
                (= H V)
                (= I W)
                (= J X)
                (= K Y)
                (= L Z)
                (= N B1)))
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
                (= A1 0)
                (= H V)
                (= I W)
                (= J X)
                (= K Y)
                (= L Z)
                (= N B1)))
       (or A
           (not B)
           (not C)
           (not D)
           (not E)
           F
           G
           (and (not P)
                Q
                R
                S
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
       (or A
           (not B)
           (not C)
           D
           E
           (not F)
           G
           (and (not P)
                Q
                (not R)
                (not S)
                T
                (not U)
                O
                (= A1 0)
                (= H V)
                (= I W)
                (= J X)
                (= K Y)
                (= L Z)
                (= N B1)))
       (or A
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
                (not O)
                (= Z 0)
                (= H V)
                (= I W)
                (= J X)
                (= K Y)
                (= M A1)
                (= N B1)))
       (or A
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
                (not O)
                (= Z 0)
                (= H V)
                (= I W)
                (= J X)
                (= K Y)
                (= M A1)
                (= N B1)))
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
                (= Z 0)
                (= H V)
                (= I W)
                (= J X)
                (= K Y)
                (= M A1)
                (= N B1)))
       (or A
           (not B)
           (not C)
           (not D)
           (not E)
           (not F)
           G
           (and (not P)
                Q
                R
                S
                T
                (not U)
                O
                (= Y 0)
                (= H V)
                (= I W)
                (= J X)
                (= L Z)
                (= M A1)
                (= N B1)))
       (or A
           (not B)
           (not C)
           D
           E
           F
           (not G)
           (and (not P)
                Q
                (not R)
                (not S)
                (not T)
                U
                O
                (= Y 0)
                (= H V)
                (= I W)
                (= J X)
                (= L Z)
                (= M A1)
                (= N B1)))
       (or (not A)
           (not B)
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
                (= Y 0)
                (= H V)
                (= I W)
                (= J X)
                (= L Z)
                (= M A1)
                (= N B1)))
       (or A
           B
           (not C)
           (not D)
           (not E)
           F
           G
           (and P
                Q
                R
                S
                (not T)
                (not U)
                (not O)
                (= Y 1)
                (= H V)
                (= I W)
                (= J X)
                (= L Z)
                (= M A1)
                (= N B1)))
       (or A
           B
           (not C)
           D
           E
           (not F)
           G
           (and P
                Q
                (not R)
                (not S)
                T
                (not U)
                (not O)
                (= Y 1)
                (= H V)
                (= I W)
                (= J X)
                (= L Z)
                (= M A1)
                (= N B1)))
       (or A
           B
           (not C)
           D
           (not E)
           F
           (not G)
           (and P
                Q
                (not R)
                S
                (not T)
                U
                (not O)
                (= X 0)
                (= H V)
                (= I W)
                (= K Y)
                (= L Z)
                (= M A1)
                (= N B1)))
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
                (= X 0)
                (= H V)
                (= I W)
                (= K Y)
                (= L Z)
                (= M A1)
                (= N B1)))
       (or A
           (not B)
           (not C)
           (not D)
           E
           F
           (not G)
           (and (not P)
                Q
                R
                (not S)
                (not T)
                U
                O
                (= X 0)
                (= H V)
                (= I W)
                (= K Y)
                (= L Z)
                (= M A1)
                (= N B1)))
       (or A
           (not B)
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
                (= X 1)
                (= H V)
                (= I W)
                (= K Y)
                (= L Z)
                (= M A1)
                (= N B1)))
       (or A
           (not B)
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
                (= X 1)
                (= H V)
                (= I W)
                (= K Y)
                (= L Z)
                (= M A1)
                (= N B1)))
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
                (= W 0)
                (= H V)
                (= J X)
                (= K Y)
                (= L Z)
                (= M A1)
                (= N B1)))
       (or (not A)
           (not B)
           C
           (not D)
           (not E)
           F
           G
           (and (not P)
                Q
                R
                S
                (not T)
                (not U)
                (not O)
                (= W 0)
                (= H V)
                (= J X)
                (= K Y)
                (= L Z)
                (= M A1)
                (= N B1)))
       (or (not A)
           (not B)
           C
           D
           E
           (not F)
           G
           (and (not P)
                Q
                (not R)
                (not S)
                T
                (not U)
                (not O)
                (= W 0)
                (= H V)
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
           (= C1 0))))
      )
      (state O P Q R S T U V W X Y Z A1 B1)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Bool) (E Bool) (F Bool) (G Bool) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) ) 
    (=>
      (and
        (state A B C D E F G H I J K L M N)
        (or (and (not A) (not B) (not C) (not D) E F G)
    (and (not A) (not B) C (not D) E F G)
    (and (not A) (not B) C D (not E) F G)
    (and (not A) B (not C) (not D) E F G)
    (and (not A) B C (not D) E F G)
    (and (not A) B C D (not E) F G)
    (and A (not B) (not C) (not D) E F G)
    (and A (not B) C D (not E) F G)
    (and A B (not C) (not D) E F G)
    (and A B C D (not E) F G))
      )
      false
    )
  )
)

(check-sat)
(exit)
