(set-logic HORN)

(declare-fun |state| ( Bool Bool Bool Bool Bool Bool Bool Bool Int Int Int Int Int Int Int Int ) Bool)

(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Bool) (E Bool) (F Bool) (G Bool) (H Bool) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) ) 
    (=>
      (and
        (and (not G) (not F) (not E) (not D) (not C) (= B true) (not A) (not H))
      )
      (state A B C D E F G H I J K L M N O P)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Bool) (E Bool) (F Bool) (G Bool) (H Bool) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Bool) (R Bool) (S Bool) (T Bool) (U Bool) (V Bool) (W Bool) (X Bool) (Y Int) (Z Int) (A1 Int) (B1 Int) (C1 Int) (D1 Int) (E1 Int) (F1 Int) (G1 Int) ) 
    (=>
      (and
        (state A B C D E F G H I J K L M N O P)
        (let ((a!1 (and R
                S
                T
                U
                (not V)
                (not W)
                X
                Q
                (= I Y)
                (= J Z)
                (= K A1)
                (= L B1)
                (= M C1)
                (= N D1)
                (= O E1)
                (= P F1)))
      (a!2 (and R
                S
                T
                U
                (not V)
                (not W)
                X
                (not Q)
                (= I Y)
                (= J Z)
                (= K A1)
                (= L B1)
                (= M C1)
                (= N D1)
                (= O E1)
                (= P F1)))
      (a!3 (and R
                S
                (not T)
                (not U)
                V
                (not W)
                X
                Q
                (= I Y)
                (= J Z)
                (= K A1)
                (= L B1)
                (= M C1)
                (= N D1)
                (= O E1)
                (= P F1)))
      (a!4 (and R
                S
                (not T)
                (not U)
                V
                (not W)
                X
                (not Q)
                (= I Y)
                (= J Z)
                (= K A1)
                (= L B1)
                (= M C1)
                (= N D1)
                (= O E1)
                (= P F1)))
      (a!5 (and R
                (not S)
                T
                U
                (not V)
                (not W)
                X
                Q
                (= I Y)
                (= J Z)
                (= K A1)
                (= L B1)
                (= M C1)
                (= N D1)
                (= O E1)
                (= P F1)))
      (a!6 (and R
                (not S)
                (not T)
                (not U)
                V
                (not W)
                X
                Q
                (= I Y)
                (= J Z)
                (= K A1)
                (= L B1)
                (= M C1)
                (= N D1)
                (= O E1)
                (= P F1)))
      (a!7 (and R
                (not S)
                (not T)
                (not U)
                V
                (not W)
                X
                (not Q)
                (= I Y)
                (= J Z)
                (= K A1)
                (= L B1)
                (= M C1)
                (= N D1)
                (= O E1)
                (= P F1)))
      (a!8 (and (not R)
                S
                T
                U
                (not V)
                (not W)
                X
                Q
                (= I Y)
                (= J Z)
                (= K A1)
                (= L B1)
                (= M C1)
                (= N D1)
                (= O E1)
                (= P F1)))
      (a!9 (and (not R)
                S
                T
                U
                (not V)
                (not W)
                X
                (not Q)
                (= I Y)
                (= J Z)
                (= K A1)
                (= L B1)
                (= M C1)
                (= N D1)
                (= O E1)
                (= P F1)))
      (a!10 (and (not R)
                 S
                 (not T)
                 (not U)
                 V
                 (not W)
                 X
                 Q
                 (= I Y)
                 (= J Z)
                 (= K A1)
                 (= L B1)
                 (= M C1)
                 (= N D1)
                 (= O E1)
                 (= P F1)))
      (a!11 (and (not R)
                 S
                 (not T)
                 (not U)
                 V
                 (not W)
                 X
                 (not Q)
                 (= I Y)
                 (= J Z)
                 (= K A1)
                 (= L B1)
                 (= M C1)
                 (= N D1)
                 (= O E1)
                 (= P F1)))
      (a!12 (and (not R)
                 (not S)
                 (not T)
                 (not U)
                 V
                 (not W)
                 X
                 Q
                 (= I Y)
                 (= J Z)
                 (= K A1)
                 (= L B1)
                 (= M C1)
                 (= N D1)
                 (= O E1)
                 (= P F1)))
      (a!13 (and (not R)
                 (not S)
                 (not T)
                 (not U)
                 V
                 (not W)
                 X
                 (not Q)
                 (= I Y)
                 (= J Z)
                 (= K A1)
                 (= L B1)
                 (= M C1)
                 (= N D1)
                 (= O E1)
                 (= P F1)))
      (a!14 (and R
                 (not S)
                 T
                 U
                 (not V)
                 W
                 (not X)
                 (not Q)
                 (= J Z)
                 (= K A1)
                 (= L B1)
                 (= M C1)
                 (= N D1)
                 (= O E1)
                 (= P F1)
                 (= (+ I (* (- 1) Y)) (- 1))))
      (a!15 (and R
                 S
                 (not T)
                 (not U)
                 (not V)
                 W
                 (not X)
                 Q
                 (= J Z)
                 (= K A1)
                 (= L B1)
                 (= M C1)
                 (= N D1)
                 (= O E1)
                 (= P F1)
                 (= (+ I (* (- 1) Y)) 1)))
      (a!16 (and R
                 (not S)
                 (not T)
                 U
                 V
                 (not W)
                 (not X)
                 (not Q)
                 (= J Z)
                 (= K A1)
                 (= L B1)
                 (= M C1)
                 (= N D1)
                 (= O E1)
                 (= P F1)
                 (= (+ I (* (- 1) Y)) 1)))
      (a!17 (and R
                 (not S)
                 (not T)
                 U
                 (not V)
                 (not W)
                 (not X)
                 (not Q)
                 (= J Z)
                 (= K A1)
                 (= L B1)
                 (= M C1)
                 (= N D1)
                 (= O E1)
                 (= P F1)
                 (= (+ I (* (- 1) Y)) 1)))
      (a!18 (and (not R)
                 S
                 T
                 U
                 (not V)
                 (not W)
                 (not X)
                 Q
                 (= J Z)
                 (= K A1)
                 (= L B1)
                 (= M C1)
                 (= N D1)
                 (= O E1)
                 (= P F1)
                 (= (+ I (* (- 1) Y)) 1)))
      (a!19 (and (not R)
                 (not S)
                 T
                 (not U)
                 (not V)
                 W
                 (not X)
                 Q
                 (= I Y)
                 (= J Z)
                 (= L B1)
                 (= M C1)
                 (= N D1)
                 (= O E1)
                 (= P F1)
                 (= (+ K (* (- 1) A1)) (- 1))))
      (a!20 (and R
                 (not S)
                 (not T)
                 U
                 (not V)
                 W
                 (not X)
                 Q
                 (= I Y)
                 (= J Z)
                 (= L B1)
                 (= M C1)
                 (= N D1)
                 (= O E1)
                 (= P F1)
                 (= (+ K (* (- 1) A1)) 1)))
      (a!21 (and R
                 S
                 T
                 U
                 (not V)
                 (not W)
                 (not X)
                 (not Q)
                 (= I Y)
                 (= J Z)
                 (= K A1)
                 (= L B1)
                 (= M C1)
                 (= O E1)
                 (= P F1)
                 (= (+ N (* (- 1) D1)) (- 1))))
      (a!22 (and R
                 (not S)
                 (not T)
                 U
                 V
                 (not W)
                 (not X)
                 Q
                 (= I Y)
                 (= J Z)
                 (= K A1)
                 (= L B1)
                 (= M C1)
                 (= O E1)
                 (= P F1)
                 (= (+ N (* (- 1) D1)) (- 1))))
      (a!23 (and R
                 (not S)
                 (not T)
                 U
                 (not V)
                 (not W)
                 (not X)
                 Q
                 (= I Y)
                 (= J Z)
                 (= K A1)
                 (= L B1)
                 (= M C1)
                 (= O E1)
                 (= P F1)
                 (= (+ N (* (- 1) D1)) (- 1))))
      (a!24 (and (not R)
                 (not S)
                 T
                 (not U)
                 (not V)
                 W
                 (not X)
                 (not Q)
                 (= I Y)
                 (= J Z)
                 (= K A1)
                 (= L B1)
                 (= M C1)
                 (= O E1)
                 (= P F1)
                 (= (+ N (* (- 1) D1)) (- 1))))
      (a!25 (and (not R)
                 S
                 (not T)
                 (not U)
                 V
                 W
                 (not X)
                 (not Q)
                 (= I Y)
                 (= J Z)
                 (= K A1)
                 (= L B1)
                 (= M C1)
                 (= O E1)
                 (= P F1)
                 (= (+ N (* (- 1) D1)) 1)))
      (a!26 (and (not R)
                 S
                 T
                 (not U)
                 V
                 W
                 (not X)
                 (not Q)
                 (= I Y)
                 (= J Z)
                 (= K A1)
                 (= L B1)
                 (= M C1)
                 (= N D1)
                 (= O E1)
                 (= (+ P (* (- 1) F1)) (- 1))))
      (a!27 (and R
                 S
                 T
                 U
                 V
                 W
                 (not X)
                 (not Q)
                 (= I Y)
                 (= J Z)
                 (= K A1)
                 (= L B1)
                 (= M C1)
                 (= N D1)
                 (= O E1)
                 (= (+ P (* (- 1) F1)) 1)))
      (a!28 (and R
                 (not S)
                 (not T)
                 U
                 (not V)
                 W
                 (not X)
                 (not Q)
                 (= I Y)
                 (= J Z)
                 (= K A1)
                 (= L B1)
                 (= M C1)
                 (= N D1)
                 (= O E1)
                 (= (+ P (* (- 1) F1)) 1)))
      (a!29 (and (not R)
                 S
                 T
                 U
                 V
                 (not W)
                 (not X)
                 Q
                 (= I Y)
                 (= J Z)
                 (= K A1)
                 (= L B1)
                 (= M C1)
                 (= N D1)
                 (= O E1)
                 (= (+ P (* (- 1) F1)) 1)))
      (a!30 (and (not R)
                 (not S)
                 T
                 (not U)
                 V
                 (not W)
                 (not X)
                 (not Q)
                 (= I Y)
                 (= J Z)
                 (= K A1)
                 (= L B1)
                 (= M C1)
                 (= N D1)
                 (= O E1)
                 (= (+ P (* (- 1) F1)) 1)))
      (a!31 (and (not R)
                 (not S)
                 (not T)
                 (not U)
                 (not V)
                 (not W)
                 (not X)
                 (not Q)
                 (= I Y)
                 (= J Z)
                 (= K A1)
                 (= L B1)
                 (= M C1)
                 (= N D1)
                 (= O E1)
                 (= P F1))))
  (and (or A
           (not B)
           (not C)
           (not D)
           (not E)
           F
           (not G)
           H
           (and R
                S
                T
                U
                (not V)
                W
                (not X)
                Q
                (= I Y)
                (= J Z)
                (= K A1)
                (= L B1)
                (= M C1)
                (= N D1)
                (= O E1)
                (= P F1))
           (not (<= 1 J)))
       (or A
           (not B)
           (not C)
           (not D)
           (not E)
           F
           (not G)
           H
           (and R
                S
                T
                U
                (not V)
                W
                (not X)
                (not Q)
                (= I Y)
                (= J Z)
                (= K A1)
                (= L B1)
                (= M C1)
                (= N D1)
                (= O E1)
                (= P F1))
           (<= 1 J))
       (or A B C D (not E) F G (not H) a!1 (<= 0 M))
       (or (not A) B C D (not E) F G (not H) a!2 (<= 0 O))
       (or (not A)
           B
           (not C)
           (not D)
           E
           (not F)
           (not G)
           H
           (and R
                S
                T
                (not U)
                V
                W
                (not X)
                Q
                (= I Y)
                (= J Z)
                (= K A1)
                (= L B1)
                (= M C1)
                (= N D1)
                (= O E1)
                (= P F1))
           (not (= G1 0)))
       (or (not A)
           B
           (not C)
           D
           E
           (not F)
           (not G)
           H
           (and R
                S
                T
                (not U)
                V
                W
                (not X)
                (not Q)
                (= I Y)
                (= J Z)
                (= K A1)
                (= L B1)
                (= M C1)
                (= N D1)
                (= O E1)
                (= P F1))
           (= G1 0))
       (or A
           (not B)
           (not C)
           (not D)
           E
           (not F)
           G
           H
           (and R
                S
                T
                (not U)
                V
                (not W)
                (not X)
                Q
                (= I Y)
                (= J Z)
                (= K A1)
                (= L B1)
                (= M C1)
                (= N D1)
                (= O E1)
                (= P F1))
           (not (<= L 0)))
       (or A
           (not B)
           (not C)
           (not D)
           E
           (not F)
           G
           H
           (and R
                S
                T
                (not U)
                V
                (not W)
                (not X)
                (not Q)
                (= I Y)
                (= J Z)
                (= K A1)
                (= L B1)
                (= M C1)
                (= N D1)
                (= O E1)
                (= P F1))
           (<= L 0))
       (or A
           (not B)
           (not C)
           (not D)
           E
           F
           (not G)
           H
           (and R
                S
                T
                (not U)
                (not V)
                W
                (not X)
                Q
                (= I Y)
                (= J Z)
                (= K A1)
                (= L B1)
                (= M C1)
                (= N D1)
                (= O E1)
                (= P F1))
           (not (<= K 1)))
       (or A
           (not B)
           (not C)
           (not D)
           E
           F
           (not G)
           H
           (and R
                S
                T
                (not U)
                (not V)
                W
                (not X)
                (not Q)
                (= I Y)
                (= J Z)
                (= K A1)
                (= L B1)
                (= M C1)
                (= N D1)
                (= O E1)
                (= P F1))
           (<= K 1))
       (or (not A)
           B
           (not C)
           (not D)
           E
           F
           G
           (not H)
           (and R
                S
                T
                (not U)
                (not V)
                (not W)
                X
                Q
                (= I Y)
                (= J Z)
                (= K A1)
                (= L B1)
                (= M C1)
                (= N D1)
                (= O E1)
                (= P F1))
           (not (<= 0 L)))
       (or A
           (not B)
           (not C)
           (not D)
           E
           F
           G
           H
           (and R
                S
                T
                (not U)
                (not V)
                (not W)
                (not X)
                Q
                (= I Y)
                (= J Z)
                (= K A1)
                (= L B1)
                (= M C1)
                (= N D1)
                (= O E1)
                (= P F1))
           (not (<= O 0)))
       (or A
           (not B)
           (not C)
           (not D)
           E
           F
           G
           H
           (and R
                S
                T
                (not U)
                (not V)
                (not W)
                (not X)
                (not Q)
                (= I Y)
                (= J Z)
                (= K A1)
                (= L B1)
                (= M C1)
                (= N D1)
                (= O E1)
                (= P F1))
           (<= O 0))
       (or (not A)
           B
           (not C)
           (not D)
           E
           (not F)
           (not G)
           H
           (and R
                S
                (not T)
                U
                V
                W
                (not X)
                Q
                (= I Y)
                (= J Z)
                (= K A1)
                (= L B1)
                (= M C1)
                (= N D1)
                (= O E1)
                (= P F1))
           (= G1 0))
       (or (not A)
           B
           (not C)
           D
           (not E)
           (not F)
           G
           H
           (and R
                S
                (not T)
                U
                V
                (not W)
                (not X)
                Q
                (= I Y)
                (= J Z)
                (= K A1)
                (= L B1)
                (= M C1)
                (= N D1)
                (= O E1)
                (= P F1))
           (<= 1 L))
       (or A
           (not B)
           (not C)
           D
           (not E)
           (not F)
           G
           H
           (and R
                S
                (not T)
                U
                V
                (not W)
                (not X)
                (not Q)
                (= I Y)
                (= J Z)
                (= K A1)
                (= L B1)
                (= M C1)
                (= N D1)
                (= O E1)
                (= P F1))
           (not (= G1 0)))
       (or A
           (not B)
           (not C)
           D
           (not E)
           F
           (not G)
           H
           (and R
                S
                (not T)
                U
                (not V)
                W
                (not X)
                Q
                (= I Y)
                (= J Z)
                (= K A1)
                (= L B1)
                (= M C1)
                (= N D1)
                (= O E1)
                (= P F1))
           (not (<= 0 J)))
       (or A
           (not B)
           (not C)
           D
           (not E)
           F
           (not G)
           H
           (and R
                S
                (not T)
                U
                (not V)
                W
                (not X)
                (not Q)
                (= I Y)
                (= J Z)
                (= K A1)
                (= L B1)
                (= M C1)
                (= N D1)
                (= O E1)
                (= P F1))
           (<= 0 J))
       (or (not A)
           B
           (not C)
           D
           (not E)
           F
           G
           (not H)
           (and R
                S
                (not T)
                U
                (not V)
                (not W)
                X
                Q
                (= I Y)
                (= J Z)
                (= K A1)
                (= L B1)
                (= M C1)
                (= N D1)
                (= O E1)
                (= P F1))
           (not (<= 0 N)))
       (or (not A)
           B
           (not C)
           D
           (not E)
           F
           G
           H
           (and R
                S
                (not T)
                U
                (not V)
                (not W)
                (not X)
                Q
                (= I Y)
                (= J Z)
                (= K A1)
                (= L B1)
                (= M C1)
                (= N D1)
                (= O E1)
                (= P F1))
           (<= 0 M))
       (or A
           (not B)
           (not C)
           D
           (not E)
           F
           G
           H
           (and R
                S
                (not T)
                U
                (not V)
                (not W)
                (not X)
                (not Q)
                (= I Y)
                (= J Z)
                (= K A1)
                (= L B1)
                (= M C1)
                (= N D1)
                (= O E1)
                (= P F1))
           (not (= G1 0)))
       (or (not A)
           B
           (not C)
           D
           E
           (not F)
           (not G)
           H
           (and R
                S
                (not T)
                (not U)
                V
                W
                (not X)
                Q
                (= I Y)
                (= J Z)
                (= K A1)
                (= L B1)
                (= M C1)
                (= N D1)
                (= O E1)
                (= P F1))
           (not (= G1 0)))
       (or A
           B
           (not C)
           (not D)
           (not E)
           F
           (not G)
           H
           (and R
                S
                (not T)
                (not U)
                V
                W
                (not X)
                (not Q)
                (= I Y)
                (= J Z)
                (= K A1)
                (= L B1)
                (= M C1)
                (= N D1)
                (= O E1)
                (= P F1))
           (= G1 0))
       (or A B C D E F G (not H) a!3 (<= P J))
       (or (not A) B C D E F G (not H) a!4 (<= O 1))
       (or A
           (not B)
           (not C)
           D
           E
           (not F)
           G
           H
           (and R
                S
                (not T)
                (not U)
                V
                (not W)
                (not X)
                Q
                (= I Y)
                (= J Z)
                (= K A1)
                (= L B1)
                (= M C1)
                (= N D1)
                (= O E1)
                (= P F1))
           (not (<= 1 P)))
       (or A
           (not B)
           (not C)
           D
           E
           (not F)
           G
           H
           (and R
                S
                (not T)
                (not U)
                V
                (not W)
                (not X)
                (not Q)
                (= I Y)
                (= J Z)
                (= K A1)
                (= L B1)
                (= M C1)
                (= N D1)
                (= O E1)
                (= P F1))
           (<= 1 P))
       (or A
           B
           (not C)
           D
           E
           F
           (not G)
           H
           (and R
                S
                (not T)
                (not U)
                (not V)
                W
                (not X)
                (not Q)
                (= I Y)
                (= J Z)
                (= K A1)
                (= L B1)
                (= M C1)
                (= N D1)
                (= O E1)
                (= P F1))
           (not (<= 1 I)))
       (or (not A)
           B
           (not C)
           D
           E
           F
           G
           (not H)
           (and R
                S
                (not T)
                (not U)
                (not V)
                (not W)
                X
                Q
                (= I Y)
                (= J Z)
                (= K A1)
                (= L B1)
                (= M C1)
                (= N D1)
                (= O E1)
                (= P F1))
           (not (<= L 1)))
       (or A
           (not B)
           C
           (not D)
           (not E)
           (not F)
           (not G)
           H
           (and R
                (not S)
                T
                U
                V
                W
                (not X)
                Q
                (= I Y)
                (= J Z)
                (= K A1)
                (= L B1)
                (= M C1)
                (= N D1)
                (= O E1)
                (= P F1))
           (not (<= O 1)))
       (or A
           (not B)
           C
           (not D)
           (not E)
           (not F)
           (not G)
           H
           (and R
                (not S)
                T
                U
                V
                W
                (not X)
                (not Q)
                (= I Y)
                (= J Z)
                (= K A1)
                (= L B1)
                (= M C1)
                (= N D1)
                (= O E1)
                (= P F1))
           (<= O 1))
       (or (not A)
           B
           C
           (not D)
           (not E)
           (not F)
           G
           H
           (and R
                (not S)
                T
                U
                V
                (not W)
                (not X)
                Q
                (= I Y)
                (= J Z)
                (= K A1)
                (= L B1)
                (= M C1)
                (= N D1)
                (= O E1)
                (= P F1))
           (<= 1 P))
       (or A
           B
           C
           (not D)
           (not E)
           (not F)
           G
           H
           (and R
                (not S)
                T
                U
                V
                (not W)
                (not X)
                (not Q)
                (= I Y)
                (= J Z)
                (= K A1)
                (= L B1)
                (= M C1)
                (= N D1)
                (= O E1)
                (= P F1))
           (not (<= L 1)))
       (or A B C (not D) (not E) F G (not H) a!5 (<= 0 I))
       (or (not A)
           B
           C
           (not D)
           (not E)
           F
           G
           H
           (and R
                (not S)
                T
                U
                (not V)
                (not W)
                (not X)
                Q
                (= I Y)
                (= J Z)
                (= K A1)
                (= L B1)
                (= M C1)
                (= N D1)
                (= O E1)
                (= P F1))
           (<= 1 I))
       (or A
           B
           C
           (not D)
           (not E)
           F
           G
           H
           (and R
                (not S)
                T
                U
                (not V)
                (not W)
                (not X)
                (not Q)
                (= I Y)
                (= J Z)
                (= K A1)
                (= L B1)
                (= M C1)
                (= N D1)
                (= O E1)
                (= P F1))
           (not (<= M 0)))
       (or A
           (not B)
           C
           (not D)
           E
           (not F)
           (not G)
           H
           (and R
                (not S)
                T
                (not U)
                V
                W
                (not X)
                Q
                (= I Y)
                (= J Z)
                (= K A1)
                (= L B1)
                (= M C1)
                (= N D1)
                (= O E1)
                (= P F1))
           (not (<= J 2)))
       (or A
           (not B)
           C
           (not D)
           E
           (not F)
           (not G)
           H
           (and R
                (not S)
                T
                (not U)
                V
                W
                (not X)
                (not Q)
                (= I Y)
                (= J Z)
                (= K A1)
                (= L B1)
                (= M C1)
                (= N D1)
                (= O E1)
                (= P F1))
           (<= J 2))
       (or (not A)
           B
           C
           (not D)
           E
           (not F)
           G
           H
           (and R
                (not S)
                T
                (not U)
                V
                (not W)
                (not X)
                Q
                (= I Y)
                (= J Z)
                (= K A1)
                (= L B1)
                (= M C1)
                (= N D1)
                (= O E1)
                (= P F1))
           (not (= G1 0)))
       (or A
           B
           C
           D
           E
           (not F)
           G
           H
           (and R
                (not S)
                T
                (not U)
                V
                (not W)
                (not X)
                (not Q)
                (= I Y)
                (= J Z)
                (= K A1)
                (= L B1)
                (= M C1)
                (= N D1)
                (= O E1)
                (= P F1))
           (= G1 0))
       (or (not A)
           B
           C
           (not D)
           E
           F
           (not G)
           H
           (and R
                (not S)
                T
                (not U)
                (not V)
                W
                (not X)
                Q
                (= I Y)
                (= J Z)
                (= K A1)
                (= L B1)
                (= M C1)
                (= N D1)
                (= O E1)
                (= P F1))
           (not (= G1 0)))
       (or (not A)
           (not B)
           (not C)
           (not D)
           (not E)
           (not F)
           G
           H
           (and R
                (not S)
                T
                (not U)
                (not V)
                W
                (not X)
                (not Q)
                (= I Y)
                (= J Z)
                (= K A1)
                (= L B1)
                (= M C1)
                (= N D1)
                (= O E1)
                (= P F1))
           (= G1 0))
       (or (not A)
           B
           C
           (not D)
           E
           F
           G
           (not H)
           (and R
                (not S)
                T
                (not U)
                (not V)
                (not W)
                X
                Q
                (= I Y)
                (= J Z)
                (= K A1)
                (= L B1)
                (= M C1)
                (= N D1)
                (= O E1)
                (= P F1))
           (not (<= J 3)))
       (or (not A)
           B
           C
           (not D)
           E
           F
           G
           H
           (and R
                (not S)
                T
                (not U)
                (not V)
                (not W)
                (not X)
                Q
                (= I Y)
                (= J Z)
                (= K A1)
                (= L B1)
                (= M C1)
                (= N D1)
                (= O E1)
                (= P F1))
           (not (= G1 0)))
       (or A
           (not B)
           C
           (not D)
           E
           F
           G
           H
           (and R
                (not S)
                T
                (not U)
                (not V)
                (not W)
                (not X)
                (not Q)
                (= I Y)
                (= J Z)
                (= K A1)
                (= L B1)
                (= M C1)
                (= N D1)
                (= O E1)
                (= P F1))
           (not (= G1 0)))
       (or A
           (not B)
           C
           D
           (not E)
           (not F)
           (not G)
           H
           (and R
                (not S)
                (not T)
                U
                V
                W
                (not X)
                Q
                (= I Y)
                (= J Z)
                (= K A1)
                (= L B1)
                (= M C1)
                (= N D1)
                (= O E1)
                (= P F1))
           (not (<= J 3)))
       (or A
           (not B)
           C
           D
           (not E)
           (not F)
           (not G)
           H
           (and R
                (not S)
                (not T)
                U
                V
                W
                (not X)
                (not Q)
                (= I Y)
                (= J Z)
                (= K A1)
                (= L B1)
                (= M C1)
                (= N D1)
                (= O E1)
                (= P F1))
           (<= J 3))
       (or (not A)
           B
           C
           D
           (not E)
           F
           G
           (not H)
           (and R
                (not S)
                (not T)
                U
                (not V)
                (not W)
                X
                Q
                (= I Y)
                (= J Z)
                (= K A1)
                (= L B1)
                (= M C1)
                (= N D1)
                (= O E1)
                (= P F1))
           (not (<= 0 O)))
       (or A
           (not B)
           C
           D
           E
           (not F)
           (not G)
           H
           (and R
                (not S)
                (not T)
                (not U)
                V
                W
                (not X)
                Q
                (= I Y)
                (= J Z)
                (= K A1)
                (= L B1)
                (= M C1)
                (= N D1)
                (= O E1)
                (= P F1))
           (not (<= 1 N)))
       (or A
           (not B)
           C
           D
           E
           (not F)
           (not G)
           H
           (and R
                (not S)
                (not T)
                (not U)
                V
                W
                (not X)
                (not Q)
                (= I Y)
                (= J Z)
                (= K A1)
                (= L B1)
                (= M C1)
                (= N D1)
                (= O E1)
                (= P F1))
           (<= 1 N))
       (or A B C (not D) E F G (not H) a!6 (<= K 1))
       (or (not A) B C (not D) E F G (not H) a!7 (<= J 3))
       (or A
           (not B)
           C
           D
           E
           (not F)
           G
           H
           (and R
                (not S)
                (not T)
                (not U)
                V
                (not W)
                (not X)
                Q
                (= I Y)
                (= J Z)
                (= K A1)
                (= L B1)
                (= M C1)
                (= N D1)
                (= O E1)
                (= P F1))
           (not (<= 1 M)))
       (or A
           (not B)
           C
           D
           E
           (not F)
           G
           H
           (and R
                (not S)
                (not T)
                (not U)
                V
                (not W)
                (not X)
                (not Q)
                (= I Y)
                (= J Z)
                (= K A1)
                (= L B1)
                (= M C1)
                (= N D1)
                (= O E1)
                (= P F1))
           (<= 1 M))
       (or (not A)
           B
           C
           D
           E
           F
           (not G)
           H
           (and R
                (not S)
                (not T)
                (not U)
                (not V)
                W
                (not X)
                Q
                (= I Y)
                (= J Z)
                (= K A1)
                (= L B1)
                (= M C1)
                (= N D1)
                (= O E1)
                (= P F1))
           (<= K 0))
       (or A
           B
           C
           D
           E
           F
           (not G)
           H
           (and R
                (not S)
                (not T)
                (not U)
                (not V)
                W
                (not X)
                (not Q)
                (= I Y)
                (= J Z)
                (= K A1)
                (= L B1)
                (= M C1)
                (= N D1)
                (= O E1)
                (= P F1))
           (not (<= 0 K)))
       (or (not A)
           B
           C
           D
           E
           F
           G
           (not H)
           (and R
                (not S)
                (not T)
                (not U)
                (not V)
                (not W)
                X
                Q
                (= I Y)
                (= J Z)
                (= K A1)
                (= L B1)
                (= M C1)
                (= N D1)
                (= O E1)
                (= P F1))
           (not (<= O 1)))
       (or (not A)
           (not B)
           C
           (not D)
           (not E)
           (not F)
           (not G)
           H
           (and (not R)
                S
                T
                U
                V
                W
                (not X)
                Q
                (= I Y)
                (= J Z)
                (= K A1)
                (= L B1)
                (= M C1)
                (= N D1)
                (= O E1)
                (= P F1))
           (not (<= 1 P)))
       (or (not A)
           (not B)
           C
           (not D)
           (not E)
           (not F)
           (not G)
           H
           (and (not R)
                S
                T
                U
                V
                W
                (not X)
                (not Q)
                (= I Y)
                (= J Z)
                (= K A1)
                (= L B1)
                (= M C1)
                (= N D1)
                (= O E1)
                (= P F1))
           (<= 1 P))
       (or (not A)
           B
           C
           (not D)
           (not E)
           (not F)
           G
           H
           (and (not R)
                S
                T
                U
                V
                (not W)
                (not X)
                (not Q)
                (= I Y)
                (= J Z)
                (= K A1)
                (= L B1)
                (= M C1)
                (= N D1)
                (= O E1)
                (= P F1))
           (not (<= 1 P)))
       (or A
           B
           (not C)
           (not D)
           (not E)
           F
           (not G)
           H
           (and (not R)
                S
                T
                U
                (not V)
                W
                (not X)
                Q
                (= I Y)
                (= J Z)
                (= K A1)
                (= L B1)
                (= M C1)
                (= N D1)
                (= O E1)
                (= P F1))
           (not (= G1 0)))
       (or A
           B
           (not C)
           D
           (not E)
           F
           (not G)
           H
           (and (not R)
                S
                T
                U
                (not V)
                W
                (not X)
                (not Q)
                (= I Y)
                (= J Z)
                (= K A1)
                (= L B1)
                (= M C1)
                (= N D1)
                (= O E1)
                (= P F1))
           (= G1 0))
       (or A B (not C) D (not E) F G (not H) a!8 (<= 0 P))
       (or (not A) B (not C) D (not E) F G (not H) a!9 (<= 0 N))
       (or (not A)
           B
           C
           (not D)
           (not E)
           F
           G
           H
           (and (not R)
                S
                T
                U
                (not V)
                (not W)
                (not X)
                (not Q)
                (= I Y)
                (= J Z)
                (= K A1)
                (= L B1)
                (= M C1)
                (= N D1)
                (= O E1)
                (= P F1))
           (not (<= 1 I)))
       (or (not A)
           (not B)
           C
           (not D)
           E
           (not F)
           G
           H
           (and (not R)
                S
                T
                (not U)
                V
                (not W)
                (not X)
                Q
                (= I Y)
                (= J Z)
                (= K A1)
                (= L B1)
                (= M C1)
                (= N D1)
                (= O E1)
                (= P F1))
           (not (<= 0 L)))
       (or (not A)
           (not B)
           C
           (not D)
           E
           (not F)
           G
           H
           (and (not R)
                S
                T
                (not U)
                V
                (not W)
                (not X)
                (not Q)
                (= I Y)
                (= J Z)
                (= K A1)
                (= L B1)
                (= M C1)
                (= N D1)
                (= O E1)
                (= P F1))
           (<= 0 L))
       (or (not A)
           (not B)
           C
           (not D)
           E
           F
           (not G)
           H
           (and (not R)
                S
                T
                (not U)
                (not V)
                W
                (not X)
                Q
                (= I Y)
                (= J Z)
                (= K A1)
                (= L B1)
                (= M C1)
                (= N D1)
                (= O E1)
                (= P F1))
           (not (<= 1 K)))
       (or (not A)
           (not B)
           C
           (not D)
           E
           F
           (not G)
           H
           (and (not R)
                S
                T
                (not U)
                (not V)
                W
                (not X)
                (not Q)
                (= I Y)
                (= J Z)
                (= K A1)
                (= L B1)
                (= M C1)
                (= N D1)
                (= O E1)
                (= P F1))
           (<= 1 K))
       (or A
           B
           (not C)
           (not D)
           E
           F
           G
           (not H)
           (and (not R)
                S
                T
                (not U)
                (not V)
                (not W)
                X
                Q
                (= I Y)
                (= J Z)
                (= K A1)
                (= L B1)
                (= M C1)
                (= N D1)
                (= O E1)
                (= P F1))
           (not (<= 0 K)))
       (or (not A)
           (not B)
           C
           (not D)
           E
           F
           G
           H
           (and (not R)
                S
                T
                (not U)
                (not V)
                (not W)
                (not X)
                Q
                (= I Y)
                (= J Z)
                (= K A1)
                (= L B1)
                (= M C1)
                (= N D1)
                (= O E1)
                (= P F1))
           (not (<= 0 O)))
       (or (not A)
           (not B)
           C
           (not D)
           E
           F
           G
           H
           (and (not R)
                S
                T
                (not U)
                (not V)
                (not W)
                (not X)
                (not Q)
                (= I Y)
                (= J Z)
                (= K A1)
                (= L B1)
                (= M C1)
                (= N D1)
                (= O E1)
                (= P F1))
           (<= 0 O))
       (or (not A)
           (not B)
           C
           D
           (not E)
           (not F)
           (not G)
           H
           (and (not R)
                S
                (not T)
                U
                V
                W
                (not X)
                Q
                (= I Y)
                (= J Z)
                (= K A1)
                (= L B1)
                (= M C1)
                (= N D1)
                (= O E1)
                (= P F1))
           (not (= P 0)))
       (or (not A)
           (not B)
           C
           D
           (not E)
           (not F)
           (not G)
           H
           (and (not R)
                S
                (not T)
                U
                V
                W
                (not X)
                (not Q)
                (= I Y)
                (= J Z)
                (= K A1)
                (= L B1)
                (= M C1)
                (= N D1)
                (= O E1)
                (= P F1))
           (= P 0))
       (or (not A)
           B
           C
           (not D)
           E
           (not F)
           G
           H
           (and (not R)
                S
                (not T)
                U
                V
                (not W)
                (not X)
                Q
                (= I Y)
                (= J Z)
                (= K A1)
                (= L B1)
                (= M C1)
                (= N D1)
                (= O E1)
                (= P F1))
           (= G1 0))
       (or A
           B
           (not C)
           D
           (not E)
           F
           (not G)
           H
           (and (not R)
                S
                (not T)
                U
                (not V)
                W
                (not X)
                Q
                (= I Y)
                (= J Z)
                (= K A1)
                (= L B1)
                (= M C1)
                (= N D1)
                (= O E1)
                (= P F1))
           (not (= G1 0)))
       (or (not A)
           B
           C
           (not D)
           E
           F
           (not G)
           H
           (and (not R)
                S
                (not T)
                U
                (not V)
                W
                (not X)
                (not Q)
                (= I Y)
                (= J Z)
                (= K A1)
                (= L B1)
                (= M C1)
                (= N D1)
                (= O E1)
                (= P F1))
           (= G1 0))
       (or A
           B
           (not C)
           D
           (not E)
           F
           G
           (not H)
           (and (not R)
                S
                (not T)
                U
                (not V)
                (not W)
                X
                Q
                (= I Y)
                (= J Z)
                (= K A1)
                (= L B1)
                (= M C1)
                (= N D1)
                (= O E1)
                (= P F1))
           (not (<= 0 P)))
       (or (not A)
           B
           C
           (not D)
           E
           F
           G
           H
           (and (not R)
                S
                (not T)
                U
                (not V)
                (not W)
                (not X)
                Q
                (= I Y)
                (= J Z)
                (= K A1)
                (= L B1)
                (= M C1)
                (= N D1)
                (= O E1)
                (= P F1))
           (= G1 0))
       (or A B (not C) D E F G (not H) a!10 (<= M 1))
       (or (not A) B (not C) D E F G (not H) a!11 (<= L 1))
       (or (not A)
           (not B)
           C
           D
           E
           (not F)
           G
           H
           (and (not R)
                S
                (not T)
                (not U)
                V
                (not W)
                (not X)
                Q
                (= I Y)
                (= J Z)
                (= K A1)
                (= L B1)
                (= M C1)
                (= N D1)
                (= O E1)
                (= P F1))
           (not (<= M 1)))
       (or (not A)
           (not B)
           C
           D
           E
           (not F)
           G
           H
           (and (not R)
                S
                (not T)
                (not U)
                V
                (not W)
                (not X)
                (not Q)
                (= I Y)
                (= J Z)
                (= K A1)
                (= L B1)
                (= M C1)
                (= N D1)
                (= O E1)
                (= P F1))
           (<= M 1))
       (or A
           B
           (not C)
           D
           E
           F
           (not G)
           H
           (and (not R)
                S
                (not T)
                (not U)
                (not V)
                W
                (not X)
                Q
                (= I Y)
                (= J Z)
                (= K A1)
                (= L B1)
                (= M C1)
                (= N D1)
                (= O E1)
                (= P F1))
           (<= 1 I))
       (or (not A)
           B
           C
           D
           E
           F
           (not G)
           H
           (and (not R)
                S
                (not T)
                (not U)
                (not V)
                W
                (not X)
                (not Q)
                (= I Y)
                (= J Z)
                (= K A1)
                (= L B1)
                (= M C1)
                (= N D1)
                (= O E1)
                (= P F1))
           (not (<= K 0)))
       (or A
           B
           (not C)
           D
           E
           F
           G
           (not H)
           (and (not R)
                S
                (not T)
                (not U)
                (not V)
                (not W)
                X
                Q
                (= I Y)
                (= J Z)
                (= K A1)
                (= L B1)
                (= M C1)
                (= N D1)
                (= O E1)
                (= P F1))
           (not (<= M 1)))
       (or (not A)
           (not B)
           (not C)
           D
           (not E)
           (not F)
           (not G)
           H
           (and (not R)
                (not S)
                T
                U
                V
                W
                (not X)
                Q
                (= I Y)
                (= J Z)
                (= K A1)
                (= L B1)
                (= M C1)
                (= N D1)
                (= O E1)
                (= P F1))
           (not (<= 1 O)))
       (or (not A)
           (not B)
           (not C)
           D
           (not E)
           (not F)
           (not G)
           H
           (and (not R)
                (not S)
                T
                U
                V
                W
                (not X)
                (not Q)
                (= I Y)
                (= J Z)
                (= K A1)
                (= L B1)
                (= M C1)
                (= N D1)
                (= O E1)
                (= P F1))
           (<= 1 O))
       (or A
           B
           C
           (not D)
           (not E)
           (not F)
           G
           H
           (and (not R)
                (not S)
                T
                U
                V
                (not W)
                (not X)
                Q
                (= I Y)
                (= J Z)
                (= K A1)
                (= L B1)
                (= M C1)
                (= N D1)
                (= O E1)
                (= P F1))
           (<= L 1))
       (or (not A)
           B
           (not C)
           D
           (not E)
           (not F)
           G
           H
           (and (not R)
                (not S)
                T
                U
                V
                (not W)
                (not X)
                (not Q)
                (= I Y)
                (= J Z)
                (= K A1)
                (= L B1)
                (= M C1)
                (= N D1)
                (= O E1)
                (= P F1))
           (not (<= 1 L)))
       (or (not A)
           (not B)
           (not C)
           D
           (not E)
           F
           (not G)
           H
           (and (not R)
                (not S)
                T
                U
                (not V)
                W
                (not X)
                Q
                (= I Y)
                (= J Z)
                (= K A1)
                (= L B1)
                (= M C1)
                (= N D1)
                (= O E1)
                (= P F1))
           (not (<= J 0)))
       (or (not A)
           (not B)
           (not C)
           D
           (not E)
           F
           (not G)
           H
           (and (not R)
                (not S)
                T
                U
                (not V)
                W
                (not X)
                (not Q)
                (= I Y)
                (= J Z)
                (= K A1)
                (= L B1)
                (= M C1)
                (= N D1)
                (= O E1)
                (= P F1))
           (<= J 0))
       (or A
           B
           C
           (not D)
           (not E)
           F
           G
           (not H)
           (and (not R)
                (not S)
                T
                U
                (not V)
                (not W)
                X
                Q
                (= I Y)
                (= J Z)
                (= K A1)
                (= L B1)
                (= M C1)
                (= N D1)
                (= O E1)
                (= P F1))
           (not (<= 0 I)))
       (or A
           B
           C
           (not D)
           (not E)
           F
           G
           H
           (and (not R)
                (not S)
                T
                U
                (not V)
                (not W)
                (not X)
                Q
                (= I Y)
                (= J Z)
                (= K A1)
                (= L B1)
                (= M C1)
                (= N D1)
                (= O E1)
                (= P F1))
           (<= M 0))
       (or (not A)
           B
           (not C)
           D
           (not E)
           F
           G
           H
           (and (not R)
                (not S)
                T
                U
                (not V)
                (not W)
                (not X)
                (not Q)
                (= I Y)
                (= J Z)
                (= K A1)
                (= L B1)
                (= M C1)
                (= N D1)
                (= O E1)
                (= P F1))
           (not (<= 0 M)))
       (or (not A)
           (not B)
           (not C)
           D
           E
           (not F)
           (not G)
           H
           (and (not R)
                (not S)
                T
                (not U)
                V
                W
                (not X)
                Q
                (= I Y)
                (= J Z)
                (= K A1)
                (= L B1)
                (= M C1)
                (= N D1)
                (= O E1)
                (= P F1))
           (not (<= 2 J)))
       (or (not A)
           (not B)
           (not C)
           D
           E
           (not F)
           (not G)
           H
           (and (not R)
                (not S)
                T
                (not U)
                V
                W
                (not X)
                (not Q)
                (= I Y)
                (= J Z)
                (= K A1)
                (= L B1)
                (= M C1)
                (= N D1)
                (= O E1)
                (= P F1))
           (<= 2 J))
       (or A
           B
           C
           (not D)
           E
           F
           G
           (not H)
           (and (not R)
                (not S)
                T
                (not U)
                (not V)
                (not W)
                X
                Q
                (= I Y)
                (= J Z)
                (= K A1)
                (= L B1)
                (= M C1)
                (= N D1)
                (= O E1)
                (= P F1))
           (not (<= K 1)))
       (or (not A)
           (not B)
           (not C)
           (not D)
           E
           (not F)
           (not G)
           H
           (and (not R)
                (not S)
                (not T)
                U
                V
                W
                (not X)
                Q
                (= I Y)
                (= J Z)
                (= K A1)
                (= L B1)
                (= M C1)
                (= N D1)
                (= O E1)
                (= P F1))
           (not (<= 3 J)))
       (or (not A)
           (not B)
           (not C)
           (not D)
           E
           (not F)
           (not G)
           H
           (and (not R)
                (not S)
                (not T)
                U
                V
                W
                (not X)
                (not Q)
                (= I Y)
                (= J Z)
                (= K A1)
                (= L B1)
                (= M C1)
                (= N D1)
                (= O E1)
                (= P F1))
           (<= 3 J))
       (or (not A)
           (not B)
           (not C)
           (not D)
           E
           (not F)
           G
           H
           (and (not R)
                (not S)
                (not T)
                U
                V
                (not W)
                (not X)
                Q
                (= I Y)
                (= J Z)
                (= K A1)
                (= L B1)
                (= M C1)
                (= N D1)
                (= O E1)
                (= P F1))
           (not (<= 1 I)))
       (or (not A)
           (not B)
           (not C)
           (not D)
           E
           (not F)
           G
           H
           (and (not R)
                (not S)
                (not T)
                U
                V
                (not W)
                (not X)
                (not Q)
                (= I Y)
                (= J Z)
                (= K A1)
                (= L B1)
                (= M C1)
                (= N D1)
                (= O E1)
                (= P F1))
           (<= 1 I))
       (or (not A)
           (not B)
           (not C)
           (not D)
           E
           F
           (not G)
           H
           (and (not R)
                (not S)
                (not T)
                U
                (not V)
                W
                (not X)
                Q
                (= I Y)
                (= J Z)
                (= K A1)
                (= L B1)
                (= M C1)
                (= N D1)
                (= O E1)
                (= P F1))
           (not (<= 1 P)))
       (or (not A)
           (not B)
           (not C)
           (not D)
           E
           F
           (not G)
           H
           (and (not R)
                (not S)
                (not T)
                U
                (not V)
                W
                (not X)
                (not Q)
                (= I Y)
                (= J Z)
                (= K A1)
                (= L B1)
                (= M C1)
                (= N D1)
                (= O E1)
                (= P F1))
           (<= 1 P))
       (or A
           B
           C
           D
           (not E)
           F
           G
           (not H)
           (and (not R)
                (not S)
                (not T)
                U
                (not V)
                (not W)
                X
                Q
                (= I Y)
                (= J Z)
                (= K A1)
                (= L B1)
                (= M C1)
                (= N D1)
                (= O E1)
                (= P F1))
           (not (<= 0 M)))
       (or (not A)
           (not B)
           (not C)
           (not D)
           E
           F
           G
           H
           (and (not R)
                (not S)
                (not T)
                U
                (not V)
                (not W)
                (not X)
                Q
                (= I Y)
                (= J Z)
                (= K A1)
                (= L B1)
                (= M C1)
                (= N D1)
                (= O E1)
                (= P F1))
           (not (<= 1 I)))
       (or (not A)
           (not B)
           (not C)
           (not D)
           E
           F
           G
           H
           (and (not R)
                (not S)
                (not T)
                U
                (not V)
                (not W)
                (not X)
                (not Q)
                (= I Y)
                (= J Z)
                (= K A1)
                (= L B1)
                (= M C1)
                (= N D1)
                (= O E1)
                (= P F1))
           (<= 1 I))
       (or (not A)
           (not B)
           (not C)
           (not D)
           (not E)
           F
           (not G)
           H
           (and (not R)
                (not S)
                (not T)
                (not U)
                V
                W
                (not X)
                Q
                (= I Y)
                (= J Z)
                (= K A1)
                (= L B1)
                (= M C1)
                (= N D1)
                (= O E1)
                (= P F1))
           (not (<= J 1)))
       (or (not A)
           (not B)
           (not C)
           (not D)
           (not E)
           F
           (not G)
           H
           (and (not R)
                (not S)
                (not T)
                (not U)
                V
                W
                (not X)
                (not Q)
                (= I Y)
                (= J Z)
                (= K A1)
                (= L B1)
                (= M C1)
                (= N D1)
                (= O E1)
                (= P F1))
           (<= J 1))
       (or A B (not C) (not D) E F G (not H) a!12 (<= 0 K))
       (or (not A) B (not C) (not D) E F G (not H) a!13 (<= 0 L))
       (or A
           B
           C
           D
           E
           (not F)
           G
           H
           (and (not R)
                (not S)
                (not T)
                (not U)
                V
                (not W)
                (not X)
                Q
                (= I Y)
                (= J Z)
                (= K A1)
                (= L B1)
                (= M C1)
                (= N D1)
                (= O E1)
                (= P F1))
           (not (= G1 0)))
       (or A
           (not B)
           (not C)
           D
           (not E)
           F
           G
           H
           (and (not R)
                (not S)
                (not T)
                (not U)
                V
                (not W)
                (not X)
                (not Q)
                (= I Y)
                (= J Z)
                (= K A1)
                (= L B1)
                (= M C1)
                (= N D1)
                (= O E1)
                (= P F1))
           (= G1 0))
       (or A
           B
           C
           D
           E
           F
           (not G)
           H
           (and (not R)
                (not S)
                (not T)
                (not U)
                (not V)
                W
                (not X)
                Q
                (= I Y)
                (= J Z)
                (= K A1)
                (= L B1)
                (= M C1)
                (= N D1)
                (= O E1)
                (= P F1))
           (<= 0 K))
       (or (not A)
           (not B)
           (not C)
           (not D)
           (not E)
           (not F)
           G
           H
           (and (not R)
                (not S)
                (not T)
                (not U)
                (not V)
                W
                (not X)
                (not Q)
                (= I Y)
                (= J Z)
                (= K A1)
                (= L B1)
                (= M C1)
                (= N D1)
                (= O E1)
                (= P F1))
           (not (= G1 0)))
       (or A
           B
           C
           D
           E
           F
           G
           (not H)
           (and (not R)
                (not S)
                (not T)
                (not U)
                (not V)
                (not W)
                X
                Q
                (= I Y)
                (= J Z)
                (= K A1)
                (= L B1)
                (= M C1)
                (= N D1)
                (= O E1)
                (= P F1))
           (not (<= P J)))
       (or A
           (not B)
           C
           (not D)
           E
           F
           G
           H
           (and (not R)
                (not S)
                (not T)
                (not U)
                (not V)
                (not W)
                X
                (not Q)
                (= I Y)
                (= J Z)
                (= K A1)
                (= L B1)
                (= M C1)
                (= N D1)
                (= O E1)
                (= P F1))
           (= G1 0))
       (or A (not B) C (not D) (not E) F (not G) H a!14)
       (or (not A) B (not C) D E F (not G) H a!15)
       (or A (not B) C D (not E) (not F) G H a!16)
       (or A (not B) C D (not E) F G H a!17)
       (or A B (not C) (not D) (not E) F G H a!18)
       (or A
           (not B)
           C
           D
           E
           F
           G
           H
           (and R
                (not S)
                (not T)
                (not U)
                (not V)
                (not W)
                (not X)
                (not Q)
                (= J Z)
                (= K A1)
                (= L B1)
                (= M C1)
                (= N D1)
                (= O E1)
                (= P F1)
                (= Y 0)))
       (or A B C (not D) E F (not G) H a!19)
       (or (not A) B C D (not E) F (not G) H a!20)
       (or A (not B) (not C) (not D) (not E) F G H a!21)
       (or (not A) B C D (not E) (not F) G H a!22)
       (or (not A) B C D (not E) F G H a!23)
       (or (not A) (not B) (not C) D E F (not G) H a!24)
       (or (not A) (not B) C D E (not F) (not G) H a!25)
       (or (not A) (not B) C (not D) E (not F) (not G) H a!26)
       (or A (not B) (not C) (not D) (not E) (not F) (not G) H a!27)
       (or A (not B) C D (not E) F (not G) H a!28)
       (or A B (not C) (not D) (not E) (not F) G H a!29)
       (or (not A) (not B) (not C) D E (not F) G H a!30)
       (or A
           (not B)
           C
           (not D)
           E
           F
           (not G)
           H
           (and R
                S
                T
                U
                V
                (not W)
                (not X)
                (not Q)
                (= I Y)
                (= J Z)
                (= K A1)
                (= L B1)
                (= M C1)
                (= N D1)
                (= O E1)
                (= P F1)))
       (or (not A) (not B) (not C) (not D) (not E) F G (not H) a!1)
       (or (not A) B (not C) (not D) (not E) F G (not H) a!2)
       (or A
           (not B)
           C
           (not D)
           E
           (not F)
           G
           H
           (and R
                S
                T
                U
                (not V)
                (not W)
                (not X)
                Q
                (= I Y)
                (= J Z)
                (= K A1)
                (= L B1)
                (= M C1)
                (= N D1)
                (= O E1)
                (= P F1)))
       (or A
           (not B)
           (not C)
           (not D)
           E
           F
           G
           (not H)
           (and R
                S
                T
                (not U)
                (not V)
                (not W)
                X
                (not Q)
                (= I Y)
                (= J Z)
                (= K A1)
                (= L B1)
                (= M C1)
                (= N D1)
                (= O E1)
                (= P F1)))
       (or (not A)
           (not B)
           (not C)
           (not D)
           (not E)
           (not F)
           (not G)
           H
           (and R
                S
                (not T)
                U
                V
                W
                (not X)
                (not Q)
                (= I Y)
                (= J Z)
                (= K A1)
                (= L B1)
                (= M C1)
                (= N D1)
                (= O E1)
                (= P F1)))
       (or A
           (not B)
           (not C)
           D
           (not E)
           F
           G
           (not H)
           (and R
                S
                (not T)
                U
                (not V)
                (not W)
                X
                (not Q)
                (= I Y)
                (= J Z)
                (= K A1)
                (= L B1)
                (= M C1)
                (= N D1)
                (= O E1)
                (= P F1)))
       (or (not A) (not B) (not C) D E (not F) G (not H) a!3)
       (or (not A) B (not C) D E (not F) G (not H) a!4)
       (or A
           (not B)
           (not C)
           D
           E
           F
           G
           (not H)
           (and R
                S
                (not T)
                (not U)
                (not V)
                (not W)
                X
                (not Q)
                (= I Y)
                (= J Z)
                (= K A1)
                (= L B1)
                (= M C1)
                (= N D1)
                (= O E1)
                (= P F1)))
       (or A
           (not B)
           (not C)
           D
           E
           (not F)
           (not G)
           H
           (and R
                (not S)
                T
                U
                (not V)
                W
                (not X)
                Q
                (= I Y)
                (= J Z)
                (= K A1)
                (= L B1)
                (= M C1)
                (= N D1)
                (= O E1)
                (= P F1)))
       (or (not A) (not B) C (not D) (not E) F G (not H) a!5)
       (or A
           (not B)
           C
           (not D)
           (not E)
           F
           G
           (not H)
           (and R
                (not S)
                T
                U
                (not V)
                (not W)
                X
                (not Q)
                (= I Y)
                (= J Z)
                (= K A1)
                (= L B1)
                (= M C1)
                (= N D1)
                (= O E1)
                (= P F1)))
       (or A
           (not B)
           C
           (not D)
           E
           F
           G
           (not H)
           (and R
                (not S)
                T
                (not U)
                (not V)
                (not W)
                X
                (not Q)
                (= I Y)
                (= J Z)
                (= K A1)
                (= L B1)
                (= M C1)
                (= N D1)
                (= O E1)
                (= P F1)))
       (or (not A)
           (not B)
           C
           (not D)
           (not E)
           F
           (not G)
           H
           (and R
                (not S)
                (not T)
                U
                (not V)
                W
                (not X)
                Q
                (= I Y)
                (= J Z)
                (= K A1)
                (= L B1)
                (= M C1)
                (= N D1)
                (= O E1)
                (= P F1)))
       (or A
           (not B)
           C
           D
           (not E)
           F
           G
           (not H)
           (and R
                (not S)
                (not T)
                U
                (not V)
                (not W)
                X
                (not Q)
                (= I Y)
                (= J Z)
                (= K A1)
                (= L B1)
                (= M C1)
                (= N D1)
                (= O E1)
                (= P F1)))
       (or (not A) (not B) C D E (not F) G (not H) a!6)
       (or (not A) B C D E (not F) G (not H) a!7)
       (or A
           (not B)
           C
           D
           E
           F
           G
           (not H)
           (and R
                (not S)
                (not T)
                (not U)
                (not V)
                (not W)
                X
                (not Q)
                (= I Y)
                (= J Z)
                (= K A1)
                (= L B1)
                (= M C1)
                (= N D1)
                (= O E1)
                (= P F1)))
       (or A (not B) (not C) (not D) (not E) F G (not H) a!8)
       (or A B (not C) (not D) (not E) F G (not H) a!9)
       (or (not A)
           B
           (not C)
           D
           (not E)
           (not F)
           (not G)
           H
           (and (not R)
                S
                T
                (not U)
                V
                W
                (not X)
                Q
                (= I Y)
                (= J Z)
                (= K A1)
                (= L B1)
                (= M C1)
                (= N D1)
                (= O E1)
                (= P F1)))
       (or (not A)
           (not B)
           C
           (not D)
           E
           F
           G
           (not H)
           (and (not R)
                S
                T
                (not U)
                (not V)
                (not W)
                X
                (not Q)
                (= I Y)
                (= J Z)
                (= K A1)
                (= L B1)
                (= M C1)
                (= N D1)
                (= O E1)
                (= P F1)))
       (or (not A)
           B
           (not C)
           (not D)
           (not E)
           (not F)
           G
           H
           (and (not R)
                S
                (not T)
                U
                V
                (not W)
                (not X)
                (not Q)
                (= I Y)
                (= J Z)
                (= K A1)
                (= L B1)
                (= M C1)
                (= N D1)
                (= O E1)
                (= P F1)))
       (or (not A)
           (not B)
           C
           D
           (not E)
           F
           G
           (not H)
           (and (not R)
                S
                (not T)
                U
                (not V)
                (not W)
                X
                (not Q)
                (= I Y)
                (= J Z)
                (= K A1)
                (= L B1)
                (= M C1)
                (= N D1)
                (= O E1)
                (= P F1)))
       (or (not A)
           (not B)
           (not C)
           (not D)
           (not E)
           F
           G
           H
           (and (not R)
                S
                (not T)
                U
                (not V)
                (not W)
                (not X)
                (not Q)
                (= I Y)
                (= J Z)
                (= K A1)
                (= L B1)
                (= M C1)
                (= N D1)
                (= O E1)
                (= P F1)))
       (or A
           (not B)
           (not C)
           (not D)
           E
           (not F)
           (not G)
           H
           (and (not R)
                S
                (not T)
                (not U)
                V
                W
                (not X)
                Q
                (= I Y)
                (= J Z)
                (= K A1)
                (= L B1)
                (= M C1)
                (= N D1)
                (= O E1)
                (= P F1)))
       (or A (not B) (not C) D E (not F) G (not H) a!10)
       (or A B (not C) D E (not F) G (not H) a!11)
       (or (not A)
           (not B)
           C
           D
           E
           F
           G
           (not H)
           (and (not R)
                S
                (not T)
                (not U)
                (not V)
                (not W)
                X
                (not Q)
                (= I Y)
                (= J Z)
                (= K A1)
                (= L B1)
                (= M C1)
                (= N D1)
                (= O E1)
                (= P F1)))
       (or (not A)
           (not B)
           (not C)
           D
           (not E)
           F
           G
           (not H)
           (and (not R)
                (not S)
                T
                U
                (not V)
                (not W)
                X
                (not Q)
                (= I Y)
                (= J Z)
                (= K A1)
                (= L B1)
                (= M C1)
                (= N D1)
                (= O E1)
                (= P F1)))
       (or A
           B
           (not C)
           D
           (not E)
           (not F)
           G
           H
           (and (not R)
                (not S)
                T
                (not U)
                V
                (not W)
                (not X)
                Q
                (= I Y)
                (= J Z)
                (= K A1)
                (= L B1)
                (= M C1)
                (= N D1)
                (= O E1)
                (= P F1)))
       (or (not A)
           (not B)
           C
           D
           (not E)
           F
           (not G)
           H
           (and (not R)
                (not S)
                T
                (not U)
                (not V)
                W
                (not X)
                Q
                (= I Y)
                (= J Z)
                (= K A1)
                (= L B1)
                (= M C1)
                (= N D1)
                (= O E1)
                (= P F1)))
       (or (not A)
           (not B)
           (not C)
           D
           E
           F
           G
           (not H)
           (and (not R)
                (not S)
                T
                (not U)
                (not V)
                (not W)
                X
                (not Q)
                (= I Y)
                (= J Z)
                (= K A1)
                (= L B1)
                (= M C1)
                (= N D1)
                (= O E1)
                (= P F1)))
       (or A
           B
           (not C)
           D
           (not E)
           F
           G
           H
           (and (not R)
                (not S)
                T
                (not U)
                (not V)
                (not W)
                (not X)
                Q
                (= I Y)
                (= J Z)
                (= K A1)
                (= L B1)
                (= M C1)
                (= N D1)
                (= O E1)
                (= P F1)))
       (or (not A)
           (not B)
           (not C)
           (not D)
           E
           F
           G
           (not H)
           (and (not R)
                (not S)
                (not T)
                U
                (not V)
                (not W)
                X
                (not Q)
                (= I Y)
                (= J Z)
                (= K A1)
                (= L B1)
                (= M C1)
                (= N D1)
                (= O E1)
                (= P F1)))
       (or A (not B) C D E (not F) G (not H) a!12)
       (or A B C D E (not F) G (not H) a!13)
       (or A B C D E F G H a!31)
       (or A B C D E (not F) (not G) H a!31)
       (or A B C D (not E) F G H a!31)
       (or A B C D (not E) F (not G) H a!31)
       (or A B C D (not E) (not F) G H a!31)
       (or A B C D (not E) (not F) (not G) H a!31)
       (or A B C (not D) E (not F) (not G) H a!31)
       (or A B C (not D) (not E) F (not G) H a!31)
       (or A B C (not D) (not E) (not F) (not G) H a!31)
       (or A B (not C) D E (not F) G H a!31)
       (or A B (not C) D (not E) (not F) (not G) H a!31)
       (or A B (not C) (not D) E F G H a!31)
       (or A B (not C) (not D) E F (not G) H a!31)
       (or A B (not C) (not D) E (not F) G H a!31)
       (or A B (not C) (not D) (not E) (not F) (not G) H a!31)
       (or A (not B) C D E F (not G) H a!31)
       (or A (not B) C (not D) (not E) F G H a!31)
       (or A (not B) C (not D) (not E) (not F) G H a!31)
       (or A (not B) (not C) D E F (not G) H a!31)
       (or (not A) B C D E (not F) G H a!31)
       (or (not A) B C D E (not F) (not G) H a!31)
       (or (not A) B C D (not E) (not F) (not G) H a!31)
       (or (not A) B C (not D) E (not F) (not G) H a!31)
       (or (not A) B C (not D) (not E) F G (not H) a!31)
       (or (not A) B C (not D) (not E) (not F) (not G) H a!31)
       (or (not A) B (not C) D E (not F) G H a!31)
       (or (not A) B (not C) D (not E) F (not G) H a!31)
       (or (not A) B (not C) (not D) E F G H a!31)
       (or (not A) B (not C) (not D) E F (not G) H a!31)
       (or (not A) B (not C) (not D) E (not F) G H a!31)
       (or (not A) B (not C) (not D) (not E) F (not G) H a!31)
       (or (not A) (not B) C D E F (not G) H a!31)
       (or (not A) (not B) C (not D) (not E) F G H a!31)
       (or (not A) (not B) C (not D) (not E) (not F) G H a!31)
       (or (not A) (not B) (not C) D (not E) F G H a!31)
       (or (not A) (not B) (not C) D (not E) (not F) G H a!31)
       (or (not A)
           (not B)
           C
           D
           E
           F
           G
           H
           (and (not R)
                S
                (not T)
                (not U)
                (not V)
                (not W)
                (not X)
                (not Q)
                (= F1 0)
                (= I Y)
                (= J Z)
                (= K A1)
                (= L B1)
                (= M C1)
                (= N D1)
                (= O E1)))
       (or (not A)
           B
           (not C)
           (not D)
           (not E)
           (not F)
           (not G)
           H
           (and R
                S
                T
                U
                V
                W
                (not X)
                Q
                (= E1 0)
                (= I Y)
                (= J Z)
                (= K A1)
                (= L B1)
                (= M C1)
                (= N D1)
                (= P F1)))
       (or A
           B
           (not C)
           D
           E
           F
           G
           H
           (and (not R)
                S
                (not T)
                (not U)
                (not V)
                (not W)
                (not X)
                Q
                (= E1 0)
                (= I Y)
                (= J Z)
                (= K A1)
                (= L B1)
                (= M C1)
                (= N D1)
                (= P F1)))
       (or (not A)
           (not B)
           C
           D
           (not E)
           F
           G
           H
           (and (not R)
                S
                (not T)
                U
                (not V)
                (not W)
                (not X)
                (not Q)
                (= E1 1)
                (= I Y)
                (= J Z)
                (= K A1)
                (= L B1)
                (= M C1)
                (= N D1)
                (= P F1)))
       (or (not A)
           B
           C
           D
           E
           F
           G
           H
           (and R
                (not S)
                (not T)
                (not U)
                (not V)
                (not W)
                (not X)
                Q
                (= D1 0)
                (= I Y)
                (= J Z)
                (= K A1)
                (= L B1)
                (= M C1)
                (= O E1)
                (= P F1)))
       (or A
           (not B)
           (not C)
           D
           E
           F
           G
           H
           (and R
                S
                (not T)
                (not U)
                (not V)
                (not W)
                (not X)
                (not Q)
                (= C1 0)
                (= I Y)
                (= J Z)
                (= K A1)
                (= L B1)
                (= N D1)
                (= O E1)
                (= P F1)))
       (or A
           B
           C
           (not D)
           E
           (not F)
           G
           H
           (and (not R)
                (not S)
                T
                (not U)
                V
                (not W)
                (not X)
                Q
                (= C1 0)
                (= I Y)
                (= J Z)
                (= K A1)
                (= L B1)
                (= N D1)
                (= O E1)
                (= P F1)))
       (or (not A)
           B
           (not C)
           (not D)
           (not E)
           F
           G
           H
           (and R
                S
                T
                U
                (not V)
                (not W)
                (not X)
                Q
                (= C1 1)
                (= I Y)
                (= J Z)
                (= K A1)
                (= L B1)
                (= N D1)
                (= O E1)
                (= P F1)))
       (or A
           (not B)
           (not C)
           (not D)
           (not E)
           (not F)
           G
           H
           (and R
                S
                T
                U
                V
                (not W)
                (not X)
                (not Q)
                (= B1 0)
                (= I Y)
                (= J Z)
                (= K A1)
                (= M C1)
                (= N D1)
                (= O E1)
                (= P F1)))
       (or (not A)
           B
           (not C)
           D
           E
           F
           G
           H
           (and R
                S
                (not T)
                (not U)
                (not V)
                (not W)
                (not X)
                Q
                (= B1 0)
                (= I Y)
                (= J Z)
                (= K A1)
                (= M C1)
                (= N D1)
                (= O E1)
                (= P F1)))
       (or (not A)
           (not B)
           C
           D
           (not E)
           (not F)
           G
           H
           (and (not R)
                S
                (not T)
                U
                V
                (not W)
                (not X)
                (not Q)
                (= B1 1)
                (= I Y)
                (= J Z)
                (= K A1)
                (= M C1)
                (= N D1)
                (= O E1)
                (= P F1)))
       (or (not A)
           (not B)
           (not C)
           D
           E
           F
           G
           H
           (and (not R)
                (not S)
                T
                (not U)
                (not V)
                (not W)
                (not X)
                (not Q)
                (= A1 0)
                (= I Y)
                (= J Z)
                (= L B1)
                (= M C1)
                (= N D1)
                (= O E1)
                (= P F1)))
       (or A
           B
           (not C)
           D
           E
           (not F)
           (not G)
           H
           (and (not R)
                S
                (not T)
                (not U)
                V
                W
                (not X)
                Q
                (= Z 2)
                (= I Y)
                (= K A1)
                (= L B1)
                (= M C1)
                (= N D1)
                (= O E1)
                (= P F1)))
       (or A
           B
           (not C)
           (not D)
           E
           (not F)
           (not G)
           H
           (and (not R)
                S
                T
                (not U)
                V
                W
                (not X)
                Q
                (= Z 3)
                (= I Y)
                (= K A1)
                (= L B1)
                (= M C1)
                (= N D1)
                (= O E1)
                (= P F1)))
       (or A
           (not B)
           (not C)
           D
           (not E)
           (not F)
           (not G)
           H
           (and R
                S
                (not T)
                U
                V
                W
                (not X)
                (not Q)
                (= Z 0)
                (= I Y)
                (= K A1)
                (= L B1)
                (= M C1)
                (= N D1)
                (= O E1)
                (= P F1)))
       (or A
           B
           C
           (not D)
           E
           F
           G
           H
           (and (not R)
                (not S)
                T
                (not U)
                (not V)
                (not W)
                (not X)
                Q
                (= Z 0)
                (= I Y)
                (= K A1)
                (= L B1)
                (= M C1)
                (= N D1)
                (= O E1)
                (= P F1)))
       (or (not A)
           B
           C
           (not D)
           (not E)
           F
           (not G)
           H
           (and R
                (not S)
                T
                U
                (not V)
                W
                (not X)
                Q
                (= Z 1)
                (= I Y)
                (= K A1)
                (= L B1)
                (= M C1)
                (= N D1)
                (= O E1)
                (= P F1)))
       (or A
           (not B)
           (not C)
           D
           (not E)
           (not F)
           G
           H
           (and R
                S
                T
                U
                V
                (not W)
                (not X)
                Q
                (= I Y)
                (= J Z)
                (= K A1)
                (= L B1)
                (= M C1)
                (= N D1)
                (= O E1)
                (= P F1))
           (= G1 0))))
      )
      (state R Q S T U V W X Y Z A1 B1 C1 D1 E1 F1)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Bool) (E Bool) (F Bool) (G Bool) (H Bool) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) ) 
    (=>
      (and
        (state A B C D E F G H I J K L M N O P)
        (or (and (not A) (not B) (not C) (not D) (not E) F (not G) H)
    (and (not A) (not B) C (not D) (not E) F (not G) H)
    (and (not A) (not B) C D E (not F) (not G) H)
    (and (not A) B (not C) (not D) (not E) F (not G) H)
    (and (not A) B C (not D) (not E) F (not G) H)
    (and (not A) B C D E (not F) (not G) H)
    (and A (not B) (not C) (not D) (not E) F (not G) H)
    (and A (not B) C (not D) (not E) F (not G) H)
    (and A (not B) C D E (not F) (not G) H)
    (and A B (not C) (not D) (not E) F (not G) H)
    (and A B (not C) D E (not F) (not G) H)
    (and A B C (not D) (not E) F (not G) H)
    (and A B C D E (not F) (not G) H))
      )
      false
    )
  )
)

(check-sat)
(exit)
