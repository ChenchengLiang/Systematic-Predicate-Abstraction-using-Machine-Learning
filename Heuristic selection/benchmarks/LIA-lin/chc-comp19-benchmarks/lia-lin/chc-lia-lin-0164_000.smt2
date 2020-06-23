(set-logic HORN)

(declare-fun |state| ( Bool Bool Bool Bool Bool Bool Bool Int Int Int Int Int Int ) Bool)

(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Bool) (E Bool) (F Bool) (G Bool) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) ) 
    (=>
      (and
        (and (not F) (not E) (not D) (not C) (= B true) (not A) (not G))
      )
      (state A B C D E F G H I J K L M)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Bool) (E Bool) (F Bool) (G Bool) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) (T Bool) (U Bool) (V Bool) (W Bool) (X Bool) (Y Bool) (Z Bool) (A1 Int) ) 
    (=>
      (and
        (state A B C D E F G H I J K L M)
        (let ((a!1 (and T
                U
                (not V)
                (not W)
                (not X)
                (not Y)
                (not Z)
                (= H N)
                (= I O)
                (= J P)
                (= K Q)
                (= L R)
                (= M S)))
      (a!2 (and T
                (not U)
                V
                W
                X
                Y
                Z
                (= H N)
                (= I O)
                (= J P)
                (= K Q)
                (= L R)
                (= M S)))
      (a!3 (and T
                (not U)
                V
                W
                X
                Y
                (not Z)
                (= H N)
                (= I O)
                (= J P)
                (= K Q)
                (= L R)
                (= M S)))
      (a!4 (and T
                (not U)
                V
                W
                X
                (not Y)
                Z
                (= H N)
                (= I O)
                (= J P)
                (= K Q)
                (= L R)
                (= M S)))
      (a!5 (and T
                (not U)
                V
                (not W)
                (not X)
                Y
                (not Z)
                (= H N)
                (= I O)
                (= J P)
                (= K Q)
                (= L R)
                (= M S)))
      (a!6 (and T
                (not U)
                V
                (not W)
                (not X)
                (not Y)
                (not Z)
                (= H N)
                (= I O)
                (= J P)
                (= K Q)
                (= L R)
                (= M S)))
      (a!7 (and T
                (not U)
                (not V)
                W
                X
                Y
                Z
                (= H N)
                (= I O)
                (= J P)
                (= K Q)
                (= L R)
                (= M S)))
      (a!8 (and T
                (not U)
                (not V)
                W
                X
                Y
                (not Z)
                (= H N)
                (= I O)
                (= J P)
                (= K Q)
                (= L R)
                (= M S)))
      (a!9 (and T
                (not U)
                (not V)
                W
                X
                (not Y)
                Z
                (= H N)
                (= I O)
                (= J P)
                (= K Q)
                (= L R)
                (= M S)))
      (a!10 (and T
                 (not U)
                 (not V)
                 (not W)
                 (not X)
                 (not Y)
                 Z
                 (= H N)
                 (= I O)
                 (= J P)
                 (= K Q)
                 (= L R)
                 (= M S)))
      (a!11 (and (not T)
                 U
                 V
                 W
                 X
                 (not Y)
                 Z
                 (= H N)
                 (= I O)
                 (= J P)
                 (= K Q)
                 (= L R)
                 (= M S)))
      (a!12 (and (not T)
                 U
                 V
                 W
                 X
                 (not Y)
                 (not Z)
                 (= H N)
                 (= I O)
                 (= J P)
                 (= K Q)
                 (= L R)
                 (= M S)))
      (a!13 (and (not T)
                 U
                 V
                 W
                 (not X)
                 Y
                 Z
                 (= H N)
                 (= I O)
                 (= J P)
                 (= K Q)
                 (= L R)
                 (= M S)))
      (a!14 (and (not T)
                 U
                 V
                 W
                 (not X)
                 Y
                 (not Z)
                 (= H N)
                 (= I O)
                 (= J P)
                 (= K Q)
                 (= L R)
                 (= M S)))
      (a!15 (and (not T)
                 U
                 V
                 W
                 (not X)
                 (not Y)
                 Z
                 (= H N)
                 (= I O)
                 (= J P)
                 (= K Q)
                 (= L R)
                 (= M S)))
      (a!16 (and (not T)
                 U
                 V
                 W
                 (not X)
                 (not Y)
                 (not Z)
                 (= H N)
                 (= I O)
                 (= J P)
                 (= K Q)
                 (= L R)
                 (= M S)))
      (a!17 (and (not T)
                 U
                 (not V)
                 (not W)
                 X
                 Y
                 Z
                 (= H N)
                 (= I O)
                 (= J P)
                 (= K Q)
                 (= L R)
                 (= M S)))
      (a!18 (and (not T)
                 U
                 (not V)
                 (not W)
                 X
                 Y
                 (not Z)
                 (= H N)
                 (= I O)
                 (= J P)
                 (= K Q)
                 (= L R)
                 (= M S)))
      (a!19 (and (not T)
                 U
                 (not V)
                 (not W)
                 X
                 (not Y)
                 Z
                 (= H N)
                 (= I O)
                 (= J P)
                 (= K Q)
                 (= L R)
                 (= M S)))
      (a!20 (and (not T)
                 U
                 (not V)
                 (not W)
                 X
                 (not Y)
                 (not Z)
                 (= H N)
                 (= I O)
                 (= J P)
                 (= K Q)
                 (= L R)
                 (= M S)))
      (a!21 (and (not T)
                 (not U)
                 V
                 (not W)
                 X
                 (not Y)
                 Z
                 (= H N)
                 (= I O)
                 (= J P)
                 (= K Q)
                 (= L R)
                 (= M S)))
      (a!22 (and (not T)
                 (not U)
                 V
                 (not W)
                 X
                 (not Y)
                 (not Z)
                 (= H N)
                 (= I O)
                 (= J P)
                 (= K Q)
                 (= L R)
                 (= M S)))
      (a!23 (and (not T)
                 (not U)
                 V
                 (not W)
                 (not X)
                 Y
                 Z
                 (= H N)
                 (= I O)
                 (= J P)
                 (= K Q)
                 (= L R)
                 (= M S)))
      (a!24 (and (not T)
                 (not U)
                 V
                 (not W)
                 (not X)
                 Y
                 (not Z)
                 (= H N)
                 (= I O)
                 (= J P)
                 (= K Q)
                 (= L R)
                 (= M S)))
      (a!25 (and (not T)
                 (not U)
                 (not V)
                 (not W)
                 X
                 (not Y)
                 (not Z)
                 (= H N)
                 (= I O)
                 (= K Q)
                 (= L R)
                 (= M S)
                 (= (+ P (* (- 1) M)) 1)))
      (a!26 (and (not T)
                 U
                 V
                 (not W)
                 X
                 Y
                 Z
                 (= H N)
                 (= I O)
                 (= J P)
                 (= L R)
                 (= M S)
                 (= (+ K (* (- 1) Q)) (- 1))))
      (a!27 (and (not T)
                 U
                 (not V)
                 (not W)
                 (not X)
                 Y
                 Z
                 (= H N)
                 (= I O)
                 (= J P)
                 (= L R)
                 (= M S)
                 (= (+ K (* (- 1) Q)) (- 1))))
      (a!28 (and T
                 (not U)
                 (not V)
                 W
                 X
                 (not Y)
                 (not Z)
                 (= H N)
                 (= I O)
                 (= J P)
                 (= K Q)
                 (= M S)
                 (= (+ L (* (- 1) R)) (- 1))))
      (a!29 (and (not T)
                 U
                 V
                 W
                 X
                 Y
                 Z
                 (= H N)
                 (= I O)
                 (= J P)
                 (= K Q)
                 (= M S)
                 (= (+ L (* (- 1) R)) (- 1))))
      (a!30 (and (not T)
                 (not U)
                 V
                 (not W)
                 (not X)
                 (not Y)
                 Z
                 (= H N)
                 (= I O)
                 (= J P)
                 (= K Q)
                 (= M S)
                 (= (+ L (* (- 1) R)) (- 1))))
      (a!31 (and T
                 (not U)
                 V
                 W
                 X
                 (not Y)
                 (not Z)
                 (= H N)
                 (= I O)
                 (= J P)
                 (= K Q)
                 (= L R)
                 (= (+ M (* (- 1) S)) 1)))
      (a!32 (and (not T)
                 (not U)
                 (not V)
                 (not W)
                 (not X)
                 (not Y)
                 (not Z)
                 (= H N)
                 (= I O)
                 (= J P)
                 (= K Q)
                 (= L R)
                 (= M S))))
  (and (or (not A) B C D (not E) F (not G) a!1 (<= 1 M))
       (or A B (not C) D (not E) F (not G) a!2 (<= M H))
       (or (not A) B (not C) D (not E) F (not G) a!3 (<= 1 M))
       (or A B C (not D) (not E) F (not G) a!4 (<= M H))
       (or A
           B
           C
           (not D)
           (not E)
           F
           (not G)
           (and T
                (not U)
                V
                W
                (not X)
                (not Y)
                Z
                (= H N)
                (= I O)
                (= J P)
                (= K Q)
                (= L R)
                (= M S))
           (not (<= M H)))
       (or (not A)
           B
           (not C)
           D
           (not E)
           F
           (not G)
           (and T
                (not U)
                V
                (not W)
                X
                Y
                Z
                (= H N)
                (= I O)
                (= J P)
                (= K Q)
                (= L R)
                (= M S))
           (not (<= 1 M)))
       (or A
           B
           (not C)
           D
           (not E)
           F
           (not G)
           (and T
                (not U)
                V
                (not W)
                X
                (not Y)
                Z
                (= H N)
                (= I O)
                (= J P)
                (= K Q)
                (= L R)
                (= M S))
           (not (<= M H)))
       (or (not A)
           B
           C
           D
           (not E)
           F
           (not G)
           (and T
                (not U)
                V
                (not W)
                (not X)
                Y
                Z
                (= H N)
                (= I O)
                (= J P)
                (= K Q)
                (= L R)
                (= M S))
           (not (<= 1 M)))
       (or A B (not C) D E F G a!5 (not (<= H M)))
       (or (not A)
           B
           C
           D
           E
           F
           (not G)
           (and T
                (not U)
                V
                (not W)
                (not X)
                (not Y)
                Z
                (= H N)
                (= I O)
                (= J P)
                (= K Q)
                (= L R)
                (= M S))
           (<= L H))
       (or (not A) (not B) C D E F (not G) a!6 (<= 1 L))
       (or A (not B) (not C) D E F (not G) a!7 (<= L H))
       (or (not A) (not B) (not C) D E F (not G) a!8 (<= 1 M))
       (or A (not B) C (not D) E F (not G) a!9 (<= M H))
       (or A
           (not B)
           C
           (not D)
           E
           F
           (not G)
           (and T
                (not U)
                (not V)
                W
                (not X)
                Y
                (not Z)
                (= H N)
                (= I O)
                (= J P)
                (= K Q)
                (= L R)
                (= M S))
           (not (<= M H)))
       (or (not A)
           (not B)
           (not C)
           D
           E
           F
           (not G)
           (and T
                (not U)
                (not V)
                W
                (not X)
                (not Y)
                (not Z)
                (= H N)
                (= I O)
                (= J P)
                (= K Q)
                (= L R)
                (= M S))
           (not (<= 1 M)))
       (or A
           (not B)
           (not C)
           D
           E
           F
           (not G)
           (and T
                (not U)
                (not V)
                (not W)
                X
                Y
                (not Z)
                (= H N)
                (= I O)
                (= J P)
                (= K Q)
                (= L R)
                (= M S))
           (not (<= L H)))
       (or (not A)
           (not B)
           C
           D
           E
           F
           (not G)
           (and T
                (not U)
                (not V)
                (not W)
                X
                (not Y)
                (not Z)
                (= H N)
                (= I O)
                (= J P)
                (= K Q)
                (= L R)
                (= M S))
           (not (<= 1 L)))
       (or (not A)
           B
           C
           D
           E
           F
           (not G)
           (and T
                (not U)
                (not V)
                (not W)
                (not X)
                Y
                Z
                (= H N)
                (= I O)
                (= J P)
                (= K Q)
                (= L R)
                (= M S))
           (not (<= L H)))
       (or A (not B) (not C) D E F G a!10 (= A1 0))
       (or (not A)
           (not B)
           (not C)
           D
           (not E)
           F
           G
           (and T
                (not U)
                (not V)
                (not W)
                (not X)
                (not Y)
                (not Z)
                (= H N)
                (= I O)
                (= J P)
                (= K Q)
                (= L R)
                (= M S))
           (<= L H))
       (or A
           (not B)
           C
           (not D)
           E
           (not F)
           G
           (and (not T)
                U
                V
                W
                X
                Y
                (not Z)
                (= H N)
                (= I O)
                (= J P)
                (= K Q)
                (= L R)
                (= M S))
           (<= K H))
       (or (not A) B C (not D) E (not F) G a!11 (<= 1 K))
       (or A B (not C) (not D) E (not F) G a!12 (<= K H))
       (or (not A) B (not C) (not D) E (not F) G a!13 (<= 1 L))
       (or A B C D (not E) (not F) G a!14 (<= L H))
       (or (not A) B C D (not E) (not F) G a!15 (<= 1 M))
       (or A B (not C) D (not E) (not F) G a!16 (<= M H))
       (or A
           B
           (not C)
           D
           (not E)
           (not F)
           G
           (and (not T)
                U
                V
                (not W)
                X
                (not Y)
                Z
                (= H N)
                (= I O)
                (= J P)
                (= K Q)
                (= L R)
                (= M S))
           (not (<= M H)))
       (or (not A)
           B
           C
           D
           (not E)
           (not F)
           G
           (and (not T)
                U
                V
                (not W)
                (not X)
                Y
                Z
                (= H N)
                (= I O)
                (= J P)
                (= K Q)
                (= L R)
                (= M S))
           (not (<= 1 M)))
       (or A
           B
           C
           D
           (not E)
           (not F)
           G
           (and (not T)
                U
                V
                (not W)
                (not X)
                (not Y)
                Z
                (= H N)
                (= I O)
                (= J P)
                (= K Q)
                (= L R)
                (= M S))
           (not (<= L H)))
       (or (not A)
           B
           (not C)
           (not D)
           E
           (not F)
           G
           (and (not T)
                U
                (not V)
                W
                X
                Y
                Z
                (= H N)
                (= I O)
                (= J P)
                (= K Q)
                (= L R)
                (= M S))
           (not (<= 1 L)))
       (or A
           B
           (not C)
           (not D)
           E
           (not F)
           G
           (and (not T)
                U
                (not V)
                W
                X
                (not Y)
                Z
                (= H N)
                (= I O)
                (= J P)
                (= K Q)
                (= L R)
                (= M S))
           (not (<= K H)))
       (or (not A)
           B
           C
           (not D)
           E
           (not F)
           G
           (and (not T)
                U
                (not V)
                W
                (not X)
                Y
                Z
                (= H N)
                (= I O)
                (= J P)
                (= K Q)
                (= L R)
                (= M S))
           (not (<= 1 K)))
       (or A
           (not B)
           C
           (not D)
           E
           (not F)
           G
           (and (not T)
                U
                (not V)
                W
                (not X)
                Y
                (not Z)
                (= H N)
                (= I O)
                (= J P)
                (= K Q)
                (= L R)
                (= M S))
           (not (<= K H)))
       (or A
           (not B)
           C
           (not D)
           (not E)
           F
           G
           (and (not T)
                U
                (not V)
                W
                (not X)
                (not Y)
                (not Z)
                (= H N)
                (= I O)
                (= J P)
                (= K Q)
                (= L R)
                (= M S))
           (<= K H))
       (or (not A) B C (not D) (not E) F G a!17 (<= 1 K))
       (or A B (not C) (not D) (not E) F G a!18 (<= K H))
       (or (not A) B (not C) (not D) (not E) F G a!19 (<= 1 L))
       (or A B C D E (not F) G a!20 (<= L H))
       (or A
           B
           C
           D
           E
           (not F)
           G
           (and (not T)
                U
                (not V)
                (not W)
                (not X)
                (not Y)
                Z
                (= H N)
                (= I O)
                (= J P)
                (= K Q)
                (= L R)
                (= M S))
           (not (<= L H)))
       (or (not A)
           B
           (not C)
           (not D)
           (not E)
           F
           G
           (and (not T)
                (not U)
                V
                W
                X
                Y
                Z
                (= H N)
                (= I O)
                (= J P)
                (= K Q)
                (= L R)
                (= M S))
           (not (<= 1 L)))
       (or A
           B
           (not C)
           (not D)
           (not E)
           F
           G
           (and (not T)
                (not U)
                V
                W
                X
                (not Y)
                Z
                (= H N)
                (= I O)
                (= J P)
                (= K Q)
                (= L R)
                (= M S))
           (not (<= K H)))
       (or (not A)
           B
           C
           (not D)
           (not E)
           F
           G
           (and (not T)
                (not U)
                V
                W
                (not X)
                Y
                Z
                (= H N)
                (= I O)
                (= J P)
                (= K Q)
                (= L R)
                (= M S))
           (not (<= 1 K)))
       (or A
           (not B)
           C
           (not D)
           (not E)
           F
           G
           (and (not T)
                (not U)
                V
                W
                (not X)
                Y
                (not Z)
                (= H N)
                (= I O)
                (= J P)
                (= K Q)
                (= L R)
                (= M S))
           (not (<= K H)))
       (or (not A)
           (not B)
           (not C)
           D
           (not E)
           F
           G
           (and (not T)
                (not U)
                V
                W
                (not X)
                (not Y)
                (not Z)
                (= H N)
                (= I O)
                (= J P)
                (= K Q)
                (= L R)
                (= M S))
           (not (<= L H)))
       (or (not A)
           (not B)
           (not C)
           D
           E
           F
           G
           (and (not T)
                (not U)
                V
                (not W)
                X
                Y
                (not Z)
                (= H N)
                (= I O)
                (= J P)
                (= K Q)
                (= L R)
                (= M S))
           (<= L H))
       (or A B C (not D) E F G a!21 (<= 1 L))
       (or (not A) B C (not D) E F G a!22 (<= L H))
       (or A B (not C) (not D) E F G a!23 (<= 1 M))
       (or (not A) B (not C) (not D) E F G a!24 (<= M H))
       (or (not A)
           B
           (not C)
           (not D)
           E
           F
           G
           (and (not T)
                (not U)
                (not V)
                W
                X
                Y
                Z
                (= H N)
                (= I O)
                (= J P)
                (= K Q)
                (= L R)
                (= M S))
           (not (<= M H)))
       (or A
           B
           (not C)
           (not D)
           E
           F
           G
           (and (not T)
                (not U)
                (not V)
                W
                X
                (not Y)
                Z
                (= H N)
                (= I O)
                (= J P)
                (= K Q)
                (= L R)
                (= M S))
           (not (<= 1 M)))
       (or (not A)
           B
           C
           (not D)
           E
           F
           G
           (and (not T)
                (not U)
                (not V)
                W
                (not X)
                Y
                Z
                (= H N)
                (= I O)
                (= J P)
                (= K Q)
                (= L R)
                (= M S))
           (not (<= L H)))
       (or A
           B
           C
           (not D)
           E
           F
           G
           (and (not T)
                (not U)
                (not V)
                W
                (not X)
                (not Y)
                Z
                (= H N)
                (= I O)
                (= J P)
                (= K Q)
                (= L R)
                (= M S))
           (not (<= 1 L)))
       (or (not A)
           (not B)
           (not C)
           D
           E
           F
           G
           (and (not T)
                (not U)
                (not V)
                W
                (not X)
                (not Y)
                (not Z)
                (= H N)
                (= I O)
                (= J P)
                (= K Q)
                (= L R)
                (= M S))
           (not (<= L H)))
       (or A
           (not B)
           (not C)
           D
           E
           F
           G
           (and (not T)
                (not U)
                (not V)
                (not W)
                X
                Y
                (not Z)
                (= H N)
                (= I O)
                (= J P)
                (= K Q)
                (= L R)
                (= M S))
           (not (= A1 0)))
       (or A
           B
           (not C)
           D
           E
           F
           G
           (and (not T)
                (not U)
                (not V)
                (not W)
                X
                (not Y)
                Z
                (= H N)
                (= I O)
                (= J P)
                (= K Q)
                (= L R)
                (= M S))
           (<= H M))
       (or (not A)
           B
           C
           D
           E
           F
           G
           (and (not T)
                (not U)
                (not V)
                (not W)
                (not X)
                Y
                Z
                (= H N)
                (= I O)
                (= J P)
                (= K Q)
                (= L R)
                (= M S))
           (not (<= 1 M)))
       (or (not A) (not B) C D E F G a!25)
       (or (not A)
           B
           C
           (not D)
           (not E)
           F
           (not G)
           (and T
                (not U)
                V
                W
                (not X)
                Y
                Z
                (= H N)
                (= I O)
                (= K Q)
                (= L R)
                (= M S)
                (= P M)))
       (or (not A) B (not C) D (not E) (not F) G a!26)
       (or (not A) B C D E (not F) G a!27)
       (or (not A) (not B) C (not D) E F (not G) a!28)
       (or (not A) B (not C) (not D) (not E) (not F) G a!29)
       (or A B C D (not E) F G a!30)
       (or (not A) (not B) C (not D) (not E) F (not G) a!31)
       (or A B C D E (not F) (not G) a!1)
       (or (not A) (not B) (not C) (not D) (not E) F (not G) a!2)
       (or (not A) B (not C) (not D) (not E) F (not G) a!3)
       (or A (not B) (not C) (not D) (not E) F (not G) a!4)
       (or A
           (not B)
           C
           (not D)
           (not E)
           F
           (not G)
           (and T
                (not U)
                V
                W
                (not X)
                Y
                (not Z)
                (= H N)
                (= I O)
                (= J P)
                (= K Q)
                (= L R)
                (= M S)))
       (or (not A)
           (not B)
           (not C)
           D
           (not E)
           F
           (not G)
           (and T
                (not U)
                V
                W
                (not X)
                (not Y)
                (not Z)
                (= H N)
                (= I O)
                (= J P)
                (= K Q)
                (= L R)
                (= M S)))
       (or A
           (not B)
           (not C)
           D
           (not E)
           F
           (not G)
           (and T
                (not U)
                V
                (not W)
                X
                Y
                (not Z)
                (= H N)
                (= I O)
                (= J P)
                (= K Q)
                (= L R)
                (= M S)))
       (or (not A)
           (not B)
           C
           D
           (not E)
           F
           (not G)
           (and T
                (not U)
                V
                (not W)
                X
                (not Y)
                (not Z)
                (= H N)
                (= I O)
                (= J P)
                (= K Q)
                (= L R)
                (= M S)))
       (or A (not B) C D (not E) F (not G) a!5)
       (or A B C D (not E) F (not G) a!6)
       (or (not A) (not B) (not C) (not D) E F (not G) a!7)
       (or (not A) B (not C) (not D) E F (not G) a!8)
       (or A (not B) (not C) (not D) E F (not G) a!9)
       (or (not A)
           B
           C
           (not D)
           E
           F
           (not G)
           (and T
                (not U)
                (not V)
                W
                (not X)
                Y
                Z
                (= H N)
                (= I O)
                (= J P)
                (= K Q)
                (= L R)
                (= M S)))
       (or A
           B
           C
           (not D)
           E
           F
           (not G)
           (and T
                (not U)
                (not V)
                W
                (not X)
                (not Y)
                Z
                (= H N)
                (= I O)
                (= J P)
                (= K Q)
                (= L R)
                (= M S)))
       (or (not A)
           B
           (not C)
           D
           E
           F
           (not G)
           (and T
                (not U)
                (not V)
                (not W)
                X
                Y
                Z
                (= H N)
                (= I O)
                (= J P)
                (= K Q)
                (= L R)
                (= M S)))
       (or A
           B
           (not C)
           D
           E
           F
           (not G)
           (and T
                (not U)
                (not V)
                (not W)
                X
                (not Y)
                Z
                (= H N)
                (= I O)
                (= J P)
                (= K Q)
                (= L R)
                (= M S)))
       (or A
           B
           (not C)
           (not D)
           E
           F
           (not G)
           (and T
                (not U)
                (not V)
                (not W)
                (not X)
                Y
                (not Z)
                (= H N)
                (= I O)
                (= J P)
                (= K Q)
                (= L R)
                (= M S)))
       (or A B C D E F (not G) a!10)
       (or A (not B) (not C) (not D) (not E) (not F) G a!11)
       (or A B (not C) (not D) (not E) (not F) G a!12)
       (or (not A) (not B) C (not D) (not E) (not F) G a!13)
       (or (not A) B C (not D) (not E) (not F) G a!14)
       (or A (not B) C (not D) (not E) (not F) G a!15)
       (or A B C (not D) (not E) (not F) G a!16)
       (or A
           (not B)
           (not C)
           D
           (not E)
           (not F)
           G
           (and (not T)
                U
                V
                (not W)
                X
                Y
                (not Z)
                (= H N)
                (= I O)
                (= J P)
                (= K Q)
                (= L R)
                (= M S)))
       (or (not A)
           (not B)
           C
           D
           (not E)
           (not F)
           G
           (and (not T)
                U
                V
                (not W)
                X
                (not Y)
                (not Z)
                (= H N)
                (= I O)
                (= J P)
                (= K Q)
                (= L R)
                (= M S)))
       (or A
           (not B)
           C
           D
           (not E)
           (not F)
           G
           (and (not T)
                U
                V
                (not W)
                (not X)
                Y
                (not Z)
                (= H N)
                (= I O)
                (= J P)
                (= K Q)
                (= L R)
                (= M S)))
       (or (not A)
           (not B)
           (not C)
           (not D)
           E
           (not F)
           G
           (and (not T)
                U
                V
                (not W)
                (not X)
                (not Y)
                (not Z)
                (= H N)
                (= I O)
                (= J P)
                (= K Q)
                (= L R)
                (= M S)))
       (or A
           (not B)
           (not C)
           (not D)
           E
           (not F)
           G
           (and (not T)
                U
                (not V)
                W
                X
                Y
                (not Z)
                (= H N)
                (= I O)
                (= J P)
                (= K Q)
                (= L R)
                (= M S)))
       (or (not A)
           (not B)
           C
           (not D)
           E
           (not F)
           G
           (and (not T)
                U
                (not V)
                W
                X
                (not Y)
                (not Z)
                (= H N)
                (= I O)
                (= J P)
                (= K Q)
                (= L R)
                (= M S)))
       (or (not A)
           (not B)
           (not C)
           D
           (not E)
           (not F)
           G
           (and (not T)
                U
                (not V)
                W
                (not X)
                (not Y)
                Z
                (= H N)
                (= I O)
                (= J P)
                (= K Q)
                (= L R)
                (= M S)))
       (or (not A) (not B) (not C) D E (not F) G a!17)
       (or (not A) B (not C) D E (not F) G a!18)
       (or A (not B) (not C) D E (not F) G a!19)
       (or A B (not C) D E (not F) G a!20)
       (or A
           (not B)
           C
           D
           E
           (not F)
           G
           (and (not T)
                U
                (not V)
                (not W)
                (not X)
                Y
                (not Z)
                (= H N)
                (= I O)
                (= J P)
                (= K Q)
                (= L R)
                (= M S)))
       (or (not A)
           (not B)
           (not C)
           (not D)
           (not E)
           F
           G
           (and (not T)
                U
                (not V)
                (not W)
                (not X)
                (not Y)
                (not Z)
                (= H N)
                (= I O)
                (= J P)
                (= K Q)
                (= L R)
                (= M S)))
       (or A
           (not B)
           (not C)
           (not D)
           (not E)
           F
           G
           (and (not T)
                (not U)
                V
                W
                X
                Y
                (not Z)
                (= H N)
                (= I O)
                (= J P)
                (= K Q)
                (= L R)
                (= M S)))
       (or (not A)
           (not B)
           C
           (not D)
           (not E)
           F
           G
           (and (not T)
                (not U)
                V
                W
                X
                (not Y)
                (not Z)
                (= H N)
                (= I O)
                (= J P)
                (= K Q)
                (= L R)
                (= M S)))
       (or (not A)
           (not B)
           C
           D
           E
           (not F)
           G
           (and (not T)
                (not U)
                V
                W
                (not X)
                (not Y)
                Z
                (= H N)
                (= I O)
                (= J P)
                (= K Q)
                (= L R)
                (= M S)))
       (or (not A)
           (not B)
           (not C)
           (not D)
           (not E)
           (not F)
           G
           (and (not T)
                (not U)
                V
                (not W)
                X
                Y
                Z
                (= H N)
                (= I O)
                (= J P)
                (= K Q)
                (= L R)
                (= M S)))
       (or A (not B) (not C) D (not E) F G a!21)
       (or A B (not C) D (not E) F G a!22)
       (or (not A) (not B) C D (not E) F G a!23)
       (or (not A) B C D (not E) F G a!24)
       (or (not A)
           (not B)
           (not C)
           (not D)
           E
           F
           G
           (and (not T)
                (not U)
                V
                (not W)
                (not X)
                (not Y)
                (not Z)
                (= H N)
                (= I O)
                (= J P)
                (= K Q)
                (= L R)
                (= M S)))
       (or A
           (not B)
           (not C)
           (not D)
           E
           F
           G
           (and (not T)
                (not U)
                (not V)
                W
                X
                Y
                (not Z)
                (= H N)
                (= I O)
                (= J P)
                (= K Q)
                (= L R)
                (= M S)))
       (or (not A)
           (not B)
           C
           (not D)
           E
           F
           G
           (and (not T)
                (not U)
                (not V)
                W
                X
                (not Y)
                (not Z)
                (= H N)
                (= I O)
                (= J P)
                (= K Q)
                (= L R)
                (= M S)))
       (or A
           (not B)
           C
           (not D)
           E
           F
           G
           (and (not T)
                (not U)
                (not V)
                W
                (not X)
                Y
                (not Z)
                (= H N)
                (= I O)
                (= J P)
                (= K Q)
                (= L R)
                (= M S)))
       (or A
           (not B)
           C
           D
           (not E)
           F
           G
           (and (not T)
                (not U)
                (not V)
                (not W)
                X
                Y
                Z
                (= H N)
                (= I O)
                (= J P)
                (= K Q)
                (= L R)
                (= M S)))
       (or A
           B
           (not C)
           (not D)
           (not E)
           F
           (not G)
           (and (not T)
                (not U)
                (not V)
                (not W)
                (not X)
                Y
                (not Z)
                (= H N)
                (= I O)
                (= J P)
                (= K Q)
                (= L R)
                (= M S)))
       (or A B C D E F G a!32)
       (or A (not B) C D E (not F) (not G) a!32)
       (or A
           (not B)
           C
           D
           E
           F
           (not G)
           (and T
                (not U)
                (not V)
                (not W)
                (not X)
                Y
                (not Z)
                (= H N)
                (= I O)
                (= J P)
                (= J R)
                (= K Q)
                (= M S)))
       (or (not A)
           B
           (not C)
           D
           (not E)
           F
           G
           (and (not T)
                (not U)
                V
                (not W)
                X
                Y
                Z
                (= H N)
                (= I O)
                (= J P)
                (= J R)
                (= K Q)
                (= M S)))
       (or (not A)
           B
           (not C)
           D
           E
           F
           G
           (and (not T)
                (not U)
                (not V)
                (not W)
                X
                Y
                Z
                (= H N)
                (= I O)
                (= J P)
                (= J R)
                (= K Q)
                (= M S)))
       (or A
           B
           C
           (not D)
           E
           (not F)
           G
           (and (not T)
                U
                (not V)
                W
                (not X)
                (not Y)
                Z
                (= H N)
                (= I O)
                (= J P)
                (= J Q)
                (= L R)
                (= M S)))
       (or A
           B
           C
           (not D)
           (not E)
           F
           G
           (and (not T)
                (not U)
                V
                W
                (not X)
                (not Y)
                Z
                (= H N)
                (= I O)
                (= J P)
                (= J Q)
                (= L R)
                (= M S)))
       (or A
           (not B)
           C
           D
           E
           F
           G
           (and (not T)
                (not U)
                (not V)
                (not W)
                (not X)
                Y
                (not Z)
                (= H N)
                (= H S)
                (= I O)
                (= J P)
                (= K Q)
                (= L R)))
       (or (not A)
           B
           C
           D
           E
           F
           G
           (and T
                U
                (not V)
                (not W)
                (not X)
                (not Y)
                Z
                (= H N)
                (= I O)
                (= J P)
                (= K Q)
                (= L R)
                (= M S))
           (<= 1 M))))
      )
      (state Y Z X W V U T N O P Q R S)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Bool) (E Bool) (F Bool) (G Bool) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) ) 
    (=>
      (and
        (state A B C D E F G H I J K L M)
        (or (and (not A) (not B) (not C) (not D) (not E) F G)
    (and (not A) (not B) (not C) (not D) E (not F) G)
    (and (not A) (not B) (not C) D E F (not G))
    (and (not A) (not B) C (not D) (not E) F (not G))
    (and (not A) (not B) C (not D) E (not F) (not G))
    (and (not A) (not B) C D E F (not G))
    (and (not A) B (not C) D E F (not G))
    (and (not A) B C (not D) (not E) F (not G))
    (and (not A) B C (not D) E (not F) (not G))
    (and (not A) B C D (not E) (not F) G)
    (and (not A) B C D E (not F) G)
    (and (not A) B C D E F (not G))
    (and A (not B) (not C) (not D) E (not F) (not G))
    (and A (not B) (not C) D E F (not G))
    (and A (not B) C (not D) (not E) F (not G))
    (and A (not B) C D (not E) (not F) G)
    (and A (not B) C D E (not F) G)
    (and A B (not C) (not D) E (not F) (not G))
    (and A B (not C) D E F (not G))
    (and A B C (not D) (not E) F (not G))
    (and A B C D (not E) (not F) G)
    (and A B C D E (not F) G))
      )
      false
    )
  )
)

(check-sat)
(exit)
