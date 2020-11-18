(set-logic HORN)

(declare-fun |state| ( Bool Bool Bool Bool Bool Bool Bool Bool Int Int Int Int Int Int ) Bool)

(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Bool) (E Bool) (F Bool) (G Bool) (H Bool) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) ) 
    (=>
      (and
        (and (not G) (not F) (not E) (not D) (not C) (= B true) (not A) (not H))
      )
      (state A B C D E F G H I J K L M N)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Bool) (E Bool) (F Bool) (G Bool) (H Bool) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Bool) (P Bool) (Q Bool) (R Bool) (S Bool) (T Bool) (U Bool) (V Bool) (W Int) (X Int) (Y Int) (Z Int) (A1 Int) (B1 Int) (C1 Int) ) 
    (=>
      (and
        (state A B C D E F G H I J K L M N)
        (let ((a!1 (and P
                Q
                R
                (not S)
                T
                (not U)
                (not V)
                O
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
                (not T)
                U
                (not V)
                O
                (= I W)
                (= J X)
                (= K Y)
                (= L Z)
                (= M A1)
                (= N B1)))
      (a!3 (and P
                Q
                R
                (not S)
                (not T)
                U
                (not V)
                (not O)
                (= I W)
                (= J X)
                (= K Y)
                (= L Z)
                (= M A1)
                (= N B1)))
      (a!4 (and P
                Q
                (not R)
                S
                T
                U
                (not V)
                (not O)
                (= I W)
                (= J X)
                (= K Y)
                (= L Z)
                (= M A1)
                (= N B1)))
      (a!5 (and P
                Q
                (not R)
                S
                (not T)
                U
                (not V)
                O
                (= I W)
                (= J X)
                (= K Y)
                (= L Z)
                (= M A1)
                (= N B1)))
      (a!6 (and P
                Q
                (not R)
                S
                (not T)
                U
                (not V)
                (not O)
                (= I W)
                (= J X)
                (= K Y)
                (= L Z)
                (= M A1)
                (= N B1)))
      (a!7 (and P
                Q
                (not R)
                S
                (not T)
                (not U)
                (not V)
                O
                (= I W)
                (= J X)
                (= K Y)
                (= L Z)
                (= M A1)
                (= N B1)))
      (a!8 (and P
                Q
                (not R)
                (not S)
                T
                U
                (not V)
                O
                (= I W)
                (= J X)
                (= K Y)
                (= L Z)
                (= M A1)
                (= N B1)))
      (a!9 (and P
                Q
                (not R)
                (not S)
                T
                U
                (not V)
                (not O)
                (= I W)
                (= J X)
                (= K Y)
                (= L Z)
                (= M A1)
                (= N B1)))
      (a!10 (and P
                 Q
                 (not R)
                 (not S)
                 (not T)
                 (not U)
                 V
                 O
                 (= I W)
                 (= J X)
                 (= K Y)
                 (= L Z)
                 (= M A1)
                 (= N B1)))
      (a!11 (and P
                 Q
                 (not R)
                 (not S)
                 (not T)
                 (not U)
                 V
                 (not O)
                 (= I W)
                 (= J X)
                 (= K Y)
                 (= L Z)
                 (= M A1)
                 (= N B1)))
      (a!12 (and P
                 (not Q)
                 R
                 S
                 (not T)
                 (not U)
                 (not V)
                 (not O)
                 (= I W)
                 (= J X)
                 (= K Y)
                 (= L Z)
                 (= M A1)
                 (= N B1)))
      (a!13 (and P
                 (not Q)
                 (not R)
                 S
                 T
                 U
                 (not V)
                 O
                 (= I W)
                 (= J X)
                 (= K Y)
                 (= L Z)
                 (= M A1)
                 (= N B1)))
      (a!14 (and P
                 (not Q)
                 (not R)
                 S
                 T
                 (not U)
                 (not V)
                 O
                 (= I W)
                 (= J X)
                 (= K Y)
                 (= L Z)
                 (= M A1)
                 (= N B1)))
      (a!15 (and P
                 (not Q)
                 (not R)
                 S
                 T
                 (not U)
                 (not V)
                 (not O)
                 (= I W)
                 (= J X)
                 (= K Y)
                 (= L Z)
                 (= M A1)
                 (= N B1)))
      (a!16 (and P
                 (not Q)
                 (not R)
                 S
                 (not T)
                 U
                 (not V)
                 (not O)
                 (= I W)
                 (= J X)
                 (= K Y)
                 (= L Z)
                 (= M A1)
                 (= N B1)))
      (a!17 (and P
                 (not Q)
                 (not R)
                 (not S)
                 (not T)
                 (not U)
                 V
                 O
                 (= I W)
                 (= J X)
                 (= K Y)
                 (= L Z)
                 (= M A1)
                 (= N B1)))
      (a!18 (and (not P)
                 Q
                 R
                 (not S)
                 T
                 (not U)
                 (not V)
                 O
                 (= I W)
                 (= J X)
                 (= K Y)
                 (= L Z)
                 (= M A1)
                 (= N B1)))
      (a!19 (and (not P)
                 Q
                 R
                 (not S)
                 (not T)
                 U
                 (not V)
                 O
                 (= I W)
                 (= J X)
                 (= K Y)
                 (= L Z)
                 (= M A1)
                 (= N B1)))
      (a!20 (and (not P)
                 Q
                 R
                 (not S)
                 (not T)
                 U
                 (not V)
                 (not O)
                 (= I W)
                 (= J X)
                 (= K Y)
                 (= L Z)
                 (= M A1)
                 (= N B1)))
      (a!21 (and (not P)
                 Q
                 (not R)
                 S
                 T
                 U
                 (not V)
                 (not O)
                 (= I W)
                 (= J X)
                 (= K Y)
                 (= L Z)
                 (= M A1)
                 (= N B1)))
      (a!22 (and (not P)
                 Q
                 (not R)
                 S
                 (not T)
                 U
                 (not V)
                 O
                 (= I W)
                 (= J X)
                 (= K Y)
                 (= L Z)
                 (= M A1)
                 (= N B1)))
      (a!23 (and (not P)
                 Q
                 (not R)
                 S
                 (not T)
                 U
                 (not V)
                 (not O)
                 (= I W)
                 (= J X)
                 (= K Y)
                 (= L Z)
                 (= M A1)
                 (= N B1)))
      (a!24 (and (not P)
                 Q
                 (not R)
                 (not S)
                 T
                 U
                 (not V)
                 O
                 (= I W)
                 (= J X)
                 (= K Y)
                 (= L Z)
                 (= M A1)
                 (= N B1)))
      (a!25 (and (not P)
                 Q
                 (not R)
                 (not S)
                 T
                 U
                 (not V)
                 (not O)
                 (= I W)
                 (= J X)
                 (= K Y)
                 (= L Z)
                 (= M A1)
                 (= N B1)))
      (a!26 (and (not P)
                 Q
                 (not R)
                 (not S)
                 (not T)
                 (not U)
                 V
                 (not O)
                 (= I W)
                 (= J X)
                 (= K Y)
                 (= L Z)
                 (= M A1)
                 (= N B1)))
      (a!27 (and (not P)
                 (not Q)
                 R
                 S
                 (not T)
                 (not U)
                 (not V)
                 O
                 (= I W)
                 (= J X)
                 (= K Y)
                 (= L Z)
                 (= M A1)
                 (= N B1)))
      (a!28 (and (not P)
                 (not Q)
                 R
                 S
                 (not T)
                 (not U)
                 (not V)
                 (not O)
                 (= I W)
                 (= J X)
                 (= K Y)
                 (= L Z)
                 (= M A1)
                 (= N B1)))
      (a!29 (and (not P)
                 (not Q)
                 R
                 (not S)
                 T
                 U
                 (not V)
                 (not O)
                 (= I W)
                 (= J X)
                 (= K Y)
                 (= L Z)
                 (= M A1)
                 (= N B1)))
      (a!30 (and (not P)
                 (not Q)
                 R
                 (not S)
                 (not T)
                 (not U)
                 V
                 (not O)
                 (= I W)
                 (= J X)
                 (= K Y)
                 (= L Z)
                 (= M A1)
                 (= N B1)))
      (a!31 (and (not P)
                 (not Q)
                 (not R)
                 S
                 T
                 U
                 (not V)
                 O
                 (= I W)
                 (= J X)
                 (= K Y)
                 (= L Z)
                 (= M A1)
                 (= N B1)))
      (a!32 (and (not P)
                 (not Q)
                 (not R)
                 S
                 T
                 (not U)
                 (not V)
                 O
                 (= I W)
                 (= J X)
                 (= K Y)
                 (= L Z)
                 (= M A1)
                 (= N B1)))
      (a!33 (and (not P)
                 (not Q)
                 (not R)
                 S
                 T
                 (not U)
                 (not V)
                 (not O)
                 (= I W)
                 (= J X)
                 (= K Y)
                 (= L Z)
                 (= M A1)
                 (= N B1)))
      (a!34 (and (not P)
                 (not Q)
                 (not R)
                 S
                 (not T)
                 U
                 (not V)
                 (not O)
                 (= I W)
                 (= J X)
                 (= K Y)
                 (= L Z)
                 (= M A1)
                 (= N B1)))
      (a!35 (and (not P)
                 (not Q)
                 (not R)
                 (not S)
                 (not T)
                 (not U)
                 V
                 O
                 (= I W)
                 (= J X)
                 (= K Y)
                 (= L Z)
                 (= M A1)
                 (= N B1)))
      (a!36 (and P
                 (not Q)
                 (not R)
                 S
                 T
                 U
                 (not V)
                 (not O)
                 (= J X)
                 (= K Y)
                 (= L Z)
                 (= M A1)
                 (= N B1)
                 (= (+ I (* (- 1) W)) 1)))
      (a!37 (and P
                 (not Q)
                 (not R)
                 S
                 (not T)
                 U
                 (not V)
                 O
                 (= I W)
                 (= K Y)
                 (= L Z)
                 (= M A1)
                 (= N B1)
                 (= (+ J (* (- 1) X)) (- 1))))
      (a!38 (and P
                 (not Q)
                 (not R)
                 (not S)
                 T
                 U
                 (not V)
                 O
                 (= I W)
                 (= K Y)
                 (= L Z)
                 (= M A1)
                 (= N B1)
                 (= (+ J (* (- 1) X)) (- 1))))
      (a!39 (and P
                 (not Q)
                 (not R)
                 (not S)
                 (not T)
                 (not U)
                 V
                 (not O)
                 (= I W)
                 (= K Y)
                 (= L Z)
                 (= M A1)
                 (= N B1)
                 (= (+ J (* (- 1) X)) (- 1))))
      (a!40 (and (not P)
                 Q
                 (not R)
                 S
                 (not T)
                 (not U)
                 (not V)
                 O
                 (= I W)
                 (= K Y)
                 (= L Z)
                 (= M A1)
                 (= N B1)
                 (= (+ J (* (- 1) X)) (- 1))))
      (a!41 (and P
                 Q
                 R
                 (not S)
                 T
                 (not U)
                 (not V)
                 (not O)
                 (= I W)
                 (= J X)
                 (= L Z)
                 (= M A1)
                 (= N B1)
                 (= (+ K (* (- 1) Y)) (- 1))))
      (a!42 (and P
                 (not Q)
                 R
                 (not S)
                 (not T)
                 U
                 (not V)
                 O
                 (= I W)
                 (= J X)
                 (= L Z)
                 (= M A1)
                 (= N B1)
                 (= (+ K (* (- 1) Y)) (- 1))))
      (a!43 (and P
                 Q
                 (not R)
                 (not S)
                 (not T)
                 (not U)
                 (not V)
                 O
                 (= I W)
                 (= J X)
                 (= K Y)
                 (= M A1)
                 (= N B1)
                 (= (+ I (* (- 1) Z)) (- 1))))
      (a!44 (and P
                 Q
                 (not R)
                 (not S)
                 (not T)
                 (not U)
                 (not V)
                 (not O)
                 (= I W)
                 (= J X)
                 (= K Y)
                 (= L Z)
                 (= M A1)
                 (= N B1)))
      (a!45 (and (not P)
                 (not Q)
                 (not R)
                 (not S)
                 (not T)
                 (not U)
                 (not V)
                 (not O)
                 (= I W)
                 (= J X)
                 (= K Y)
                 (= L Z)
                 (= M A1)
                 (= N B1))))
  (and (or A
           B
           (not C)
           (not D)
           (not E)
           (not F)
           (not G)
           H
           (and P
                Q
                R
                S
                T
                U
                (not V)
                (not O)
                (= I W)
                (= J X)
                (= K Y)
                (= L Z)
                (= M A1)
                (= N B1))
           (not (<= 1 I)))
       (or (not A)
           B
           (not C)
           (not D)
           (not E)
           (not F)
           G
           H
           (and P
                Q
                R
                S
                T
                (not U)
                (not V)
                O
                (= I W)
                (= J X)
                (= K Y)
                (= L Z)
                (= M A1)
                (= N B1))
           (not (<= 1 K)))
       (or (not A)
           B
           (not C)
           (not D)
           (not E)
           F
           (not G)
           H
           (and P
                Q
                R
                S
                (not T)
                U
                (not V)
                O
                (= I W)
                (= J X)
                (= K Y)
                (= L Z)
                (= M A1)
                (= N B1))
           (not (<= 1 I)))
       (or A
           B
           (not C)
           (not D)
           (not E)
           F
           (not G)
           H
           (and P
                Q
                R
                S
                (not T)
                U
                (not V)
                (not O)
                (= I W)
                (= J X)
                (= K Y)
                (= L Z)
                (= M A1)
                (= N B1))
           (not (<= J N)))
       (or (not A)
           B
           (not C)
           (not D)
           E
           (not F)
           (not G)
           H
           (and P
                Q
                R
                (not S)
                T
                U
                (not V)
                O
                (= I W)
                (= J X)
                (= K Y)
                (= L Z)
                (= M A1)
                (= N B1))
           (not (<= I M)))
       (or A
           B
           (not C)
           (not D)
           E
           (not F)
           (not G)
           H
           (and P
                Q
                R
                (not S)
                T
                U
                (not V)
                (not O)
                (= I W)
                (= J X)
                (= K Y)
                (= L Z)
                (= M A1)
                (= N B1))
           (not (<= 1 I)))
       (or A B C (not D) E (not F) G H a!1 (<= 1 J))
       (or (not A) B C D E F (not G) H a!2 (<= 1 J))
       (or (not A) B (not C) D E F (not G) H a!3 (<= 1 I))
       (or A
           B
           (not C)
           (not D)
           E
           F
           G
           H
           (and P
                Q
                R
                (not S)
                (not T)
                (not U)
                (not V)
                (not O)
                (= I W)
                (= J X)
                (= K Y)
                (= L Z)
                (= M A1)
                (= N B1))
           (not (<= J M)))
       (or A B C (not D) E (not F) (not G) H a!4 (<= 1 I))
       (or (not A)
           B
           (not C)
           D
           (not E)
           (not F)
           G
           H
           (and P
                Q
                (not R)
                S
                T
                (not U)
                (not V)
                O
                (= I W)
                (= J X)
                (= K Y)
                (= L Z)
                (= M A1)
                (= N B1))
           (not (<= I N)))
       (or A
           B
           (not C)
           D
           (not E)
           (not F)
           G
           H
           (and P
                Q
                (not R)
                S
                T
                (not U)
                (not V)
                (not O)
                (= I W)
                (= J X)
                (= K Y)
                (= L Z)
                (= M A1)
                (= N B1))
           (not (<= 1 I)))
       (or A B (not C) D (not E) (not F) G H a!5 (<= 1 I))
       (or A B C (not D) (not E) (not F) G H a!6 (<= 1 I))
       (or (not A) (not B) C D (not E) F G H a!7 (<= J M))
       (or (not A) B C (not D) (not E) F (not G) H a!8 (<= 1 J))
       (or (not A) B (not C) (not D) (not E) F (not G) H a!9 (<= 1 I))
       (or (not A)
           B
           (not C)
           D
           E
           (not F)
           G
           H
           (and P
                Q
                (not R)
                (not S)
                T
                (not U)
                (not V)
                O
                (= I W)
                (= J X)
                (= K Y)
                (= L Z)
                (= M A1)
                (= N B1))
           (not (<= I M)))
       (or A
           B
           (not C)
           D
           E
           (not F)
           G
           H
           (and P
                Q
                (not R)
                (not S)
                T
                (not U)
                (not V)
                (not O)
                (= I W)
                (= J X)
                (= K Y)
                (= L Z)
                (= M A1)
                (= N B1))
           (not (<= 1 I)))
       (or (not A)
           B
           (not C)
           D
           E
           F
           (not G)
           H
           (and P
                Q
                (not R)
                (not S)
                (not T)
                U
                (not V)
                O
                (= I W)
                (= J X)
                (= K Y)
                (= L Z)
                (= M A1)
                (= N B1))
           (not (<= 1 I)))
       (or A
           B
           (not C)
           D
           E
           F
           (not G)
           H
           (and P
                Q
                (not R)
                (not S)
                (not T)
                U
                (not V)
                (not O)
                (= I W)
                (= J X)
                (= K Y)
                (= L Z)
                (= M A1)
                (= N B1))
           (not (<= J M)))
       (or A (not B) C (not D) E F G H a!10 (<= I M))
       (or A B C (not D) (not E) (not F) (not G) H a!11 (<= 1 J))
       (or (not A)
           B
           C
           (not D)
           (not E)
           (not F)
           (not G)
           H
           (and P
                (not Q)
                R
                S
                T
                U
                (not V)
                O
                (= I W)
                (= J X)
                (= K Y)
                (= L Z)
                (= M A1)
                (= N B1))
           (not (<= J N)))
       (or A
           B
           C
           (not D)
           (not E)
           (not F)
           (not G)
           H
           (and P
                (not Q)
                R
                S
                T
                U
                (not V)
                (not O)
                (= I W)
                (= J X)
                (= K Y)
                (= L Z)
                (= M A1)
                (= N B1))
           (not (<= 1 J)))
       (or (not A)
           B
           C
           (not D)
           (not E)
           (not F)
           G
           H
           (and P
                (not Q)
                R
                S
                T
                (not U)
                (not V)
                O
                (= I W)
                (= J X)
                (= K Y)
                (= L Z)
                (= M A1)
                (= N B1))
           (not (<= I M)))
       (or A
           B
           C
           (not D)
           (not E)
           (not F)
           G
           H
           (and P
                (not Q)
                R
                S
                T
                (not U)
                (not V)
                (not O)
                (= I W)
                (= J X)
                (= K Y)
                (= L Z)
                (= M A1)
                (= N B1))
           (not (<= 1 I)))
       (or (not A)
           B
           C
           (not D)
           (not E)
           F
           (not G)
           H
           (and P
                (not Q)
                R
                S
                (not T)
                U
                (not V)
                O
                (= I W)
                (= J X)
                (= K Y)
                (= L Z)
                (= M A1)
                (= N B1))
           (not (<= 1 J)))
       (or A
           B
           (not C)
           (not D)
           E
           F
           G
           H
           (and P
                (not Q)
                R
                S
                (not T)
                (not U)
                (not V)
                O
                (= I W)
                (= J X)
                (= K Y)
                (= L Z)
                (= M A1)
                (= N B1))
           (<= J M))
       (or (not A) (not B) (not C) (not D) E F G H a!12 (<= I N))
       (or (not A)
           B
           C
           (not D)
           E
           (not F)
           (not G)
           H
           (and P
                (not Q)
                R
                (not S)
                T
                U
                (not V)
                O
                (= I W)
                (= J X)
                (= K Y)
                (= L Z)
                (= M A1)
                (= N B1))
           (not (<= I N)))
       (or A
           B
           C
           (not D)
           E
           (not F)
           (not G)
           H
           (and P
                (not Q)
                R
                (not S)
                T
                U
                (not V)
                (not O)
                (= I W)
                (= J X)
                (= K Y)
                (= L Z)
                (= M A1)
                (= N B1))
           (not (<= 1 I)))
       (or (not A)
           B
           C
           (not D)
           E
           (not F)
           G
           H
           (and P
                (not Q)
                R
                (not S)
                T
                (not U)
                (not V)
                O
                (= I W)
                (= J X)
                (= K Y)
                (= L Z)
                (= M A1)
                (= N B1))
           (not (<= J M)))
       (or A
           B
           C
           (not D)
           E
           (not F)
           G
           H
           (and P
                (not Q)
                R
                (not S)
                T
                (not U)
                (not V)
                (not O)
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
           (not D)
           E
           F
           (not G)
           H
           (and P
                (not Q)
                R
                (not S)
                (not T)
                U
                (not V)
                (not O)
                (= I W)
                (= J X)
                (= K Y)
                (= L Z)
                (= M A1)
                (= N B1))
           (not (<= I M)))
       (or A
           (not B)
           (not C)
           D
           E
           F
           G
           H
           (and P
                (not Q)
                R
                (not S)
                (not T)
                (not U)
                V
                (not O)
                (= I W)
                (= J X)
                (= K Y)
                (= L Z)
                (= M A1)
                (= N B1))
           (<= 1 I))
       (or A B (not C) (not D) E (not F) (not G) H a!13 (<= 1 I))
       (or A B C D E (not F) G H a!14 (<= 1 K))
       (or A B (not C) D E (not F) G H a!15 (<= 1 I))
       (or (not A) B (not C) (not D) (not E) (not F) G H a!16 (<= 1 K))
       (or A
           B
           C
           D
           E
           (not F)
           (not G)
           H
           (and P
                (not Q)
                (not R)
                (not S)
                T
                U
                (not V)
                (not O)
                (= I W)
                (= J X)
                (= K Y)
                (= L Z)
                (= M A1)
                (= N B1))
           (not (<= I M)))
       (or (not A)
           B
           C
           D
           E
           (not F)
           G
           H
           (and P
                (not Q)
                (not R)
                (not S)
                T
                (not U)
                (not V)
                O
                (= I W)
                (= J X)
                (= K Y)
                (= L Z)
                (= M A1)
                (= N B1))
           (not (<= K N)))
       (or A
           B
           C
           D
           E
           (not F)
           G
           H
           (and P
                (not Q)
                (not R)
                (not S)
                T
                (not U)
                (not V)
                (not O)
                (= I W)
                (= J X)
                (= K Y)
                (= L Z)
                (= M A1)
                (= N B1))
           (not (<= 1 K)))
       (or (not A)
           B
           C
           D
           E
           F
           (not G)
           H
           (and P
                (not Q)
                (not R)
                (not S)
                (not T)
                U
                (not V)
                O
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
           E
           F
           (not G)
           H
           (and P
                (not Q)
                (not R)
                (not S)
                (not T)
                U
                (not V)
                (not O)
                (= I W)
                (= J X)
                (= K Y)
                (= L Z)
                (= M A1)
                (= N B1))
           (not (<= K N)))
       (or A B (not C) (not D) (not E) (not F) (not G) H a!17 (<= 1 I))
       (or A
           (not B)
           C
           D
           E
           F
           G
           H
           (and P
                (not Q)
                (not R)
                (not S)
                (not T)
                (not U)
                (not V)
                O
                (= I W)
                (= J X)
                (= K Y)
                (= L Z)
                (= M A1)
                (= N B1))
           (<= M N))
       (or A
           (not B)
           (not C)
           (not D)
           (not E)
           (not F)
           G
           H
           (and (not P)
                Q
                R
                S
                T
                (not U)
                (not V)
                O
                (= I W)
                (= J X)
                (= K Y)
                (= L Z)
                (= M A1)
                (= N B1))
           (not (<= K N)))
       (or A
           (not B)
           (not C)
           (not D)
           (not E)
           F
           G
           H
           (and (not P)
                Q
                R
                S
                (not T)
                (not U)
                (not V)
                O
                (= I W)
                (= J X)
                (= K Y)
                (= L Z)
                (= M A1)
                (= N B1))
           (not (<= J M)))
       (or (not A)
           (not B)
           C
           (not D)
           (not E)
           F
           G
           H
           (and (not P)
                Q
                R
                S
                (not T)
                (not U)
                (not V)
                (not O)
                (= I W)
                (= J X)
                (= K Y)
                (= L Z)
                (= M A1)
                (= N B1))
           (not (= C1 0)))
       (or (not A) B C (not D) E (not F) G H a!18 (<= J M))
       (or A B (not C) D E F (not G) H a!19 (<= J M))
       (or A B C (not D) E F (not G) H a!20 (<= I M))
       (or A
           (not B)
           (not C)
           (not D)
           E
           F
           G
           H
           (and (not P)
                Q
                R
                (not S)
                (not T)
                (not U)
                (not V)
                O
                (= I W)
                (= J X)
                (= K Y)
                (= L Z)
                (= M A1)
                (= N B1))
           (not (<= 1 I)))
       (or (not A)
           (not B)
           C
           (not D)
           (not E)
           F
           G
           H
           (and (not P)
                Q
                (not R)
                S
                T
                U
                (not V)
                O
                (= I W)
                (= J X)
                (= K Y)
                (= L Z)
                (= M A1)
                (= N B1))
           (= C1 0))
       (or (not A) B C (not D) E (not F) (not G) H a!21 (<= I N))
       (or (not A)
           (not B)
           (not C)
           (not D)
           (not E)
           F
           G
           H
           (and (not P)
                Q
                (not R)
                S
                T
                (not U)
                (not V)
                (not O)
                (= I W)
                (= J X)
                (= K Y)
                (= L Z)
                (= M A1)
                (= N B1))
           (<= K N))
       (or (not A) B (not C) D (not E) (not F) G H a!22 (<= I N))
       (or (not A) B C (not D) (not E) (not F) G H a!23 (<= I M))
       (or (not A)
           (not B)
           C
           D
           (not E)
           F
           G
           H
           (and (not P)
                Q
                (not R)
                S
                (not T)
                (not U)
                (not V)
                (not O)
                (= I W)
                (= J X)
                (= K Y)
                (= L Z)
                (= M A1)
                (= N B1))
           (not (<= J M)))
       (or A B (not C) (not D) (not E) F (not G) H a!24 (<= J N))
       (or A B C D E (not F) (not G) H a!25 (<= I M))
       (or (not A)
           (not B)
           (not C)
           D
           (not E)
           (not F)
           (not G)
           H
           (and (not P)
                Q
                (not R)
                (not S)
                (not T)
                (not U)
                V
                O
                (= I W)
                (= J X)
                (= K Y)
                (= L Z)
                (= M A1)
                (= N B1))
           (<= J N))
       (or (not A) B C (not D) (not E) (not F) (not G) H a!26 (<= J N))
       (or A
           (not B)
           (not C)
           D
           E
           F
           G
           H
           (and (not P)
                Q
                (not R)
                (not S)
                (not T)
                (not U)
                (not V)
                O
                (= I W)
                (= J X)
                (= K Y)
                (= L Z)
                (= M A1)
                (= N B1))
           (not (<= 1 I)))
       (or (not A)
           (not B)
           C
           D
           E
           F
           G
           H
           (and (not P)
                Q
                (not R)
                (not S)
                (not T)
                (not U)
                (not V)
                (not O)
                (= I W)
                (= J X)
                (= K Y)
                (= L Z)
                (= M A1)
                (= N B1))
           (not (<= N M)))
       (or (not A)
           (not B)
           (not C)
           D
           (not E)
           (not F)
           (not G)
           H
           (and (not P)
                (not Q)
                R
                S
                T
                U
                (not V)
                (not O)
                (= I W)
                (= J X)
                (= K Y)
                (= L Z)
                (= M A1)
                (= N B1))
           (not (<= J N)))
       (or A
           (not B)
           C
           (not D)
           (not E)
           F
           (not G)
           H
           (and (not P)
                (not Q)
                R
                S
                (not T)
                U
                (not V)
                O
                (= I W)
                (= J X)
                (= K Y)
                (= L Z)
                (= M A1)
                (= N B1))
           (not (<= J N)))
       (or A
           (not B)
           (not C)
           (not D)
           (not E)
           F
           G
           H
           (and (not P)
                (not Q)
                R
                S
                (not T)
                U
                (not V)
                (not O)
                (= I W)
                (= J X)
                (= K Y)
                (= L Z)
                (= M A1)
                (= N B1))
           (<= J M))
       (or A (not B) (not C) (not D) E F G H a!27 (<= 1 I))
       (or A (not B) C D (not E) F G H a!28 (<= 1 J))
       (or A (not B) C (not D) (not E) F (not G) H a!29 (<= J N))
       (or (not A)
           (not B)
           C
           D
           E
           F
           G
           H
           (and (not P)
                (not Q)
                R
                (not S)
                (not T)
                (not U)
                V
                O
                (= I W)
                (= J X)
                (= K Y)
                (= L Z)
                (= M A1)
                (= N B1))
           (<= N M))
       (or (not A) (not B) (not C) D E F G H a!30 (<= 1 I))
       (or A
           (not B)
           C
           (not D)
           E
           F
           G
           H
           (and (not P)
                (not Q)
                R
                (not S)
                (not T)
                (not U)
                (not V)
                O
                (= I W)
                (= J X)
                (= K Y)
                (= L Z)
                (= M A1)
                (= N B1))
           (not (<= I M)))
       (or (not A)
           (not B)
           (not C)
           D
           E
           F
           G
           H
           (and (not P)
                (not Q)
                R
                (not S)
                (not T)
                (not U)
                (not V)
                (not O)
                (= I W)
                (= J X)
                (= K Y)
                (= L Z)
                (= M A1)
                (= N B1))
           (not (<= 1 I)))
       (or (not A) B (not C) (not D) E (not F) (not G) H a!31 (<= I M))
       (or (not A) B C D E (not F) G H a!32 (<= K N))
       (or (not A) B (not C) D E (not F) G H a!33 (<= I M))
       (or A
           (not B)
           (not C)
           (not D)
           (not E)
           (not F)
           G
           H
           (and (not P)
                (not Q)
                (not R)
                S
                (not T)
                U
                (not V)
                O
                (= I W)
                (= J X)
                (= K Y)
                (= L Z)
                (= M A1)
                (= N B1))
           (<= K N))
       (or A B C D E F (not G) H a!34 (<= K N))
       (or A
           (not B)
           C
           D
           (not E)
           F
           G
           H
           (and (not P)
                (not Q)
                (not R)
                S
                (not T)
                (not U)
                (not V)
                O
                (= I W)
                (= J X)
                (= K Y)
                (= L Z)
                (= M A1)
                (= N B1))
           (not (<= 1 J)))
       (or (not A)
           (not B)
           (not C)
           (not D)
           E
           F
           G
           H
           (and (not P)
                (not Q)
                (not R)
                S
                (not T)
                (not U)
                (not V)
                (not O)
                (= I W)
                (= J X)
                (= K Y)
                (= L Z)
                (= M A1)
                (= N B1))
           (not (<= I N)))
       (or (not A)
           (not B)
           (not C)
           (not D)
           (not E)
           F
           G
           H
           (and (not P)
                (not Q)
                (not R)
                (not S)
                T
                (not U)
                (not V)
                (not O)
                (= I W)
                (= J X)
                (= K Y)
                (= L Z)
                (= M A1)
                (= N B1))
           (not (<= K N)))
       (or (not A) B (not C) (not D) (not E) (not F) (not G) H a!35 (<= I M))
       (or A
           (not B)
           C
           D
           E
           F
           G
           H
           (and (not P)
                (not Q)
                (not R)
                (not S)
                (not T)
                (not U)
                (not V)
                O
                (= I W)
                (= J X)
                (= K Y)
                (= L Z)
                (= M A1)
                (= N B1))
           (not (<= M N)))
       (or A B C D (not E) (not F) (not G) H a!36)
       (or A
           B
           (not C)
           D
           E
           F
           G
           H
           (and P
                Q
                (not R)
                (not S)
                (not T)
                (not U)
                (not V)
                (not O)
                (= J X)
                (= K Y)
                (= L Z)
                (= M A1)
                (= N B1)
                (= W N)))
       (or (not A)
           B
           C
           (not D)
           E
           F
           G
           (not H)
           (and P
                (not Q)
                R
                (not S)
                (not T)
                (not U)
                V
                O
                (= J X)
                (= K Y)
                (= L Z)
                (= M A1)
                (= N B1)
                (= W M)))
       (or (not A) B C D (not E) F (not G) H a!37)
       (or (not A) B C D E (not F) (not G) H a!38)
       (or A B C D E F G (not H) a!39)
       (or A (not B) (not C) D (not E) F G H a!40)
       (or A B (not C) (not D) E (not F) G H a!41)
       (or (not A) B C (not D) E F (not G) H a!42)
       (or (not A) B (not C) D E F G H a!43)
       (or (not A)
           (not B)
           C
           (not D)
           E
           F
           (not G)
           H
           (and P
                Q
                R
                S
                T
                (not U)
                (not V)
                (not O)
                (= I W)
                (= J X)
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
           H
           (and P
                Q
                R
                S
                (not T)
                (not U)
                (not V)
                O
                (= I W)
                (= J X)
                (= K Y)
                (= L Z)
                (= M A1)
                (= N B1)))
       (or (not A)
           (not B)
           C
           D
           (not E)
           F
           (not G)
           H
           (and P
                Q
                R
                S
                (not T)
                (not U)
                (not V)
                (not O)
                (= I W)
                (= J X)
                (= K Y)
                (= L Z)
                (= M A1)
                (= N B1)))
       (or (not A) (not B) (not C) (not D) E (not F) G H a!1)
       (or (not A) (not B) (not C) (not D) E F (not G) H a!2)
       (or A (not B) (not C) (not D) E F (not G) H a!3)
       (or (not A)
           B
           (not C)
           (not D)
           E
           F
           G
           H
           (and P
                Q
                R
                (not S)
                (not T)
                (not U)
                (not V)
                O
                (= I W)
                (= J X)
                (= K Y)
                (= L Z)
                (= M A1)
                (= N B1)))
       (or A
           (not B)
           C
           D
           E
           F
           G
           (not H)
           (and P
                Q
                (not R)
                S
                T
                U
                (not V)
                O
                (= I W)
                (= J X)
                (= K Y)
                (= L Z)
                (= M A1)
                (= N B1)))
       (or A (not B) (not C) D (not E) (not F) (not G) H a!4)
       (or (not A) (not B) (not C) D (not E) F (not G) H a!5)
       (or A (not B) (not C) D (not E) F (not G) H a!6)
       (or (not A) (not B) (not C) D (not E) F G H a!7)
       (or A
           B
           (not C)
           D
           (not E)
           F
           G
           H
           (and P
                Q
                (not R)
                S
                (not T)
                (not U)
                (not V)
                (not O)
                (= I W)
                (= J X)
                (= K Y)
                (= L Z)
                (= M A1)
                (= N B1)))
       (or (not A) (not B) (not C) D E (not F) (not G) H a!8)
       (or A (not B) (not C) D E (not F) (not G) H a!9)
       (or (not A) (not B) (not C) D E F G (not H) a!10)
       (or A (not B) (not C) D E F G (not H) a!11)
       (or A (not B) C D (not E) (not F) (not G) H a!44)
       (or (not A) (not B) C (not D) E F G (not H) a!44)
       (or (not A)
           (not B)
           C
           D
           E
           (not F)
           (not G)
           H
           (and P
                (not Q)
                R
                S
                (not T)
                U
                (not V)
                (not O)
                (= I W)
                (= J X)
                (= K Y)
                (= L Z)
                (= M A1)
                (= N B1)))
       (or A (not B) C (not D) (not E) F G H a!12)
       (or (not A)
           B
           C
           (not D)
           E
           F
           G
           H
           (and P
                (not Q)
                R
                (not S)
                (not T)
                (not U)
                (not V)
                O
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
           F
           G
           H
           (and P
                (not Q)
                R
                (not S)
                (not T)
                (not U)
                (not V)
                (not O)
                (= I W)
                (= J X)
                (= K Y)
                (= L Z)
                (= M A1)
                (= N B1)))
       (or (not A) (not B) C D (not E) (not F) (not G) H a!13)
       (or (not A) (not B) C D (not E) (not F) G H a!14)
       (or A (not B) C D (not E) (not F) G H a!15)
       (or A (not B) C D (not E) F (not G) H a!16)
       (or (not A)
           B
           C
           D
           (not E)
           F
           G
           H
           (and P
                (not Q)
                (not R)
                S
                (not T)
                (not U)
                (not V)
                O
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
           F
           G
           H
           (and P
                (not Q)
                (not R)
                S
                (not T)
                (not U)
                (not V)
                (not O)
                (= I W)
                (= J X)
                (= K Y)
                (= L Z)
                (= M A1)
                (= N B1)))
       (or (not A) (not B) C D E F G (not H) a!17)
       (or A
           (not B)
           (not C)
           (not D)
           (not E)
           (not F)
           (not G)
           H
           (and (not P)
                Q
                R
                S
                T
                U
                (not V)
                O
                (= I W)
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
           (not F)
           (not G)
           H
           (and (not P)
                Q
                R
                S
                T
                U
                (not V)
                (not O)
                (= I W)
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
           (not F)
           G
           H
           (and (not P)
                Q
                R
                S
                T
                (not U)
                (not V)
                (not O)
                (= I W)
                (= J X)
                (= K Y)
                (= L Z)
                (= M A1)
                (= N B1)))
       (or A
           (not B)
           (not C)
           (not D)
           (not E)
           F
           (not G)
           H
           (and (not P)
                Q
                R
                S
                (not T)
                U
                (not V)
                O
                (= I W)
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
           (not G)
           H
           (and (not P)
                Q
                R
                S
                (not T)
                U
                (not V)
                (not O)
                (= I W)
                (= J X)
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
           (not G)
           H
           (and (not P)
                Q
                R
                (not S)
                T
                U
                (not V)
                O
                (= I W)
                (= J X)
                (= K Y)
                (= L Z)
                (= M A1)
                (= N B1)))
       (or (not A)
           (not B)
           C
           (not D)
           E
           (not F)
           (not G)
           H
           (and (not P)
                Q
                R
                (not S)
                T
                U
                (not V)
                (not O)
                (= I W)
                (= J X)
                (= K Y)
                (= L Z)
                (= M A1)
                (= N B1)))
       (or (not A) B (not C) (not D) E (not F) G H a!18)
       (or (not A)
           (not B)
           C
           (not D)
           E
           (not F)
           G
           H
           (and (not P)
                Q
                R
                (not S)
                T
                (not U)
                (not V)
                (not O)
                (= I W)
                (= J X)
                (= K Y)
                (= L Z)
                (= M A1)
                (= N B1)))
       (or (not A) B (not C) (not D) E F (not G) H a!19)
       (or A B (not C) (not D) E F (not G) H a!20)
       (or (not A)
           B
           (not C)
           D
           (not E)
           F
           G
           H
           (and (not P)
                Q
                R
                (not S)
                (not T)
                (not U)
                (not V)
                (not O)
                (= I W)
                (= J X)
                (= K Y)
                (= L Z)
                (= M A1)
                (= N B1)))
       (or A B (not C) D (not E) (not F) (not G) H a!21)
       (or A
           (not B)
           (not C)
           D
           (not E)
           (not F)
           G
           H
           (and (not P)
                Q
                (not R)
                S
                T
                (not U)
                (not V)
                O
                (= I W)
                (= J X)
                (= K Y)
                (= L Z)
                (= M A1)
                (= N B1)))
       (or (not A) B (not C) D (not E) F (not G) H a!22)
       (or A B (not C) D (not E) F (not G) H a!23)
       (or (not A) B (not C) D E (not F) (not G) H a!24)
       (or A B (not C) D E (not F) (not G) H a!25)
       (or A
           (not B)
           (not C)
           D
           E
           (not F)
           G
           H
           (and (not P)
                Q
                (not R)
                (not S)
                T
                (not U)
                (not V)
                O
                (= I W)
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
           H
           (and (not P)
                Q
                (not R)
                (not S)
                T
                (not U)
                (not V)
                (not O)
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
           E
           F
           (not G)
           H
           (and (not P)
                Q
                (not R)
                (not S)
                (not T)
                U
                (not V)
                O
                (= I W)
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
           F
           (not G)
           H
           (and (not P)
                Q
                (not R)
                (not S)
                (not T)
                U
                (not V)
                (not O)
                (= I W)
                (= J X)
                (= K Y)
                (= L Z)
                (= M A1)
                (= N B1)))
       (or A B (not C) D E F G (not H) a!26)
       (or A
           (not B)
           C
           (not D)
           (not E)
           (not F)
           (not G)
           H
           (and (not P)
                (not Q)
                R
                S
                T
                U
                (not V)
                O
                (= I W)
                (= J X)
                (= K Y)
                (= L Z)
                (= M A1)
                (= N B1)))
       (or A
           (not B)
           C
           (not D)
           (not E)
           (not F)
           G
           H
           (and (not P)
                (not Q)
                R
                S
                T
                (not U)
                (not V)
                O
                (= I W)
                (= J X)
                (= K Y)
                (= L Z)
                (= M A1)
                (= N B1)))
       (or (not A)
           (not B)
           (not C)
           D
           (not E)
           (not F)
           G
           H
           (and (not P)
                (not Q)
                R
                S
                T
                (not U)
                (not V)
                (not O)
                (= I W)
                (= J X)
                (= K Y)
                (= L Z)
                (= M A1)
                (= N B1)))
       (or (not A) B C (not D) (not E) F G H a!27)
       (or A B C (not D) (not E) F G H a!28)
       (or A
           (not B)
           C
           (not D)
           E
           (not F)
           (not G)
           H
           (and (not P)
                (not Q)
                R
                (not S)
                T
                U
                (not V)
                O
                (= I W)
                (= J X)
                (= K Y)
                (= L Z)
                (= M A1)
                (= N B1)))
       (or (not A) B (not C) D E F G (not H) a!29)
       (or A
           (not B)
           C
           (not D)
           E
           (not F)
           G
           H
           (and (not P)
                (not Q)
                R
                (not S)
                T
                (not U)
                (not V)
                O
                (= I W)
                (= J X)
                (= K Y)
                (= L Z)
                (= M A1)
                (= N B1)))
       (or (not A)
           (not B)
           (not C)
           D
           E
           (not F)
           G
           H
           (and (not P)
                (not Q)
                R
                (not S)
                T
                (not U)
                (not V)
                (not O)
                (= I W)
                (= J X)
                (= K Y)
                (= L Z)
                (= M A1)
                (= N B1)))
       (or A
           (not B)
           C
           (not D)
           E
           F
           (not G)
           H
           (and (not P)
                (not Q)
                R
                (not S)
                (not T)
                U
                (not V)
                O
                (= I W)
                (= J X)
                (= K Y)
                (= L Z)
                (= M A1)
                (= N B1)))
       (or (not A)
           (not B)
           (not C)
           D
           E
           F
           (not G)
           H
           (and (not P)
                (not Q)
                R
                (not S)
                (not T)
                U
                (not V)
                (not O)
                (= I W)
                (= J X)
                (= K Y)
                (= L Z)
                (= M A1)
                (= N B1)))
       (or A B C (not D) E F G (not H) a!30)
       (or (not A) B C D (not E) (not F) (not G) H a!31)
       (or (not A)
           (not B)
           (not C)
           (not D)
           E
           (not F)
           (not G)
           H
           (and (not P)
                (not Q)
                (not R)
                S
                T
                U
                (not V)
                (not O)
                (= I W)
                (= J X)
                (= K Y)
                (= L Z)
                (= M A1)
                (= N B1)))
       (or (not A) B C D (not E) (not F) G H a!32)
       (or A B C D (not E) (not F) G H a!33)
       (or A B C D (not E) F (not G) H a!34)
       (or A
           (not B)
           C
           D
           E
           (not F)
           (not G)
           H
           (and (not P)
                (not Q)
                (not R)
                (not S)
                T
                U
                (not V)
                O
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
           (not E)
           F
           (not G)
           H
           (and (not P)
                (not Q)
                (not R)
                (not S)
                T
                U
                (not V)
                (not O)
                (= I W)
                (= J X)
                (= K Y)
                (= L Z)
                (= M A1)
                (= N B1)))
       (or A
           (not B)
           C
           D
           E
           (not F)
           G
           H
           (and (not P)
                (not Q)
                (not R)
                (not S)
                T
                (not U)
                (not V)
                O
                (= I W)
                (= J X)
                (= K Y)
                (= L Z)
                (= M A1)
                (= N B1)))
       (or A
           (not B)
           C
           D
           E
           F
           (not G)
           H
           (and (not P)
                (not Q)
                (not R)
                (not S)
                (not T)
                U
                (not V)
                O
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
           (not E)
           (not F)
           G
           H
           (and (not P)
                (not Q)
                (not R)
                (not S)
                (not T)
                U
                (not V)
                (not O)
                (= I W)
                (= J X)
                (= K Y)
                (= L Z)
                (= M A1)
                (= N B1)))
       (or (not A) B C D E F G (not H) a!35)
       (or (not A)
           (not B)
           (not C)
           (not D)
           (not E)
           (not F)
           (not G)
           H
           (and (not P)
                (not Q)
                (not R)
                (not S)
                (not T)
                (not U)
                V
                (not O)
                (= I W)
                (= J X)
                (= K Y)
                (= L Z)
                (= M A1)
                (= N B1)))
       (or A B C D E F G H a!45)
       (or A (not B) C (not D) E F G (not H) a!45)
       (or (not A) B C D E F G H a!45)
       (or A
           B
           (not C)
           (not D)
           (not E)
           (not F)
           G
           H
           (and P
                Q
                R
                S
                T
                (not U)
                (not V)
                (not O)
                (= I Y)
                (= I W)
                (= J X)
                (= L Z)
                (= M A1)
                (= N B1)))
       (or (not A)
           B
           (not C)
           D
           (not E)
           (not F)
           (not G)
           H
           (and P
                Q
                (not R)
                S
                T
                U
                (not V)
                O
                (= I X)
                (= I W)
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
           H
           (and P
                (not Q)
                R
                S
                (not T)
                U
                (not V)
                (not O)
                (= I X)
                (= I W)
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
           H
           (and P
                Q
                R
                S
                (not T)
                (not U)
                (not V)
                O
                (= Y L)
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
           H
           (and P
                Q
                R
                S
                (not T)
                (not U)
                (not V)
                (not O)
                (= X L)
                (= I W)
                (= K Y)
                (= L Z)
                (= M A1)
                (= N B1)))
       (or (not A)
           (not B)
           C
           (not D)
           E
           F
           G
           H
           (and (not P)
                Q
                R
                (not S)
                (not T)
                (not U)
                (not V)
                (not O)
                (= X L)
                (= I W)
                (= K Y)
                (= L Z)
                (= M A1)
                (= N B1)))
       (or (not A)
           B
           (not C)
           (not D)
           (not E)
           (not F)
           (not G)
           H
           (and P
                Q
                R
                S
                T
                U
                (not V)
                O
                (= I W)
                (= J X)
                (= K Y)
                (= L Z)
                (= M A1)
                (= N B1))
           (not (<= I M)))))
      )
      (state O P Q R S T U V W X Y Z A1 B1)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Bool) (E Bool) (F Bool) (G Bool) (H Bool) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) ) 
    (=>
      (and
        (state A B C D E F G H I J K L M N)
        (or (and (not A) (not B) (not C) (not D) E (not F) G (not H))
    (and (not A) (not B) (not C) (not D) E F (not G) (not H))
    (and (not A) (not B) (not C) D (not E) (not F) (not G) H)
    (and (not A) (not B) (not C) D E (not F) (not G) (not H))
    (and (not A) (not B) C (not D) (not E) (not F) (not G) H)
    (and (not A) (not B) C (not D) (not E) F G (not H))
    (and (not A) (not B) C (not D) E (not F) G (not H))
    (and (not A) (not B) C (not D) E F G (not H))
    (and (not A) (not B) C D (not E) (not F) G (not H))
    (and (not A) B (not C) (not D) E (not F) G (not H))
    (and (not A) B (not C) (not D) E F (not G) (not H))
    (and (not A) B (not C) D E (not F) (not G) (not H))
    (and (not A) B C (not D) (not E) (not F) (not G) H)
    (and (not A) B C (not D) (not E) F G (not H))
    (and (not A) B C (not D) E (not F) G (not H))
    (and (not A) B C (not D) E F G (not H))
    (and (not A) B C D (not E) (not F) G (not H))
    (and A (not B) (not C) (not D) (not E) (not F) (not G) H)
    (and A (not B) (not C) (not D) E F (not G) (not H))
    (and A (not B) (not C) (not D) E F G (not H))
    (and A (not B) (not C) D E (not F) (not G) (not H))
    (and A (not B) C (not D) (not E) F G (not H))
    (and A (not B) C (not D) E (not F) G (not H))
    (and A (not B) C D (not E) (not F) G (not H))
    (and A (not B) C D (not E) F (not G) (not H))
    (and A B (not C) (not D) (not E) (not F) (not G) H)
    (and A B (not C) (not D) E F (not G) (not H))
    (and A B (not C) (not D) E F G (not H))
    (and A B C (not D) (not E) (not F) (not G) H)
    (and A B C (not D) (not E) F G (not H))
    (and A B C (not D) E (not F) (not G) (not H))
    (and A B C (not D) E (not F) G (not H))
    (and A B C D (not E) (not F) G (not H))
    (and A B C D (not E) F (not G) (not H)))
      )
      false
    )
  )
)

(check-sat)
(exit)
