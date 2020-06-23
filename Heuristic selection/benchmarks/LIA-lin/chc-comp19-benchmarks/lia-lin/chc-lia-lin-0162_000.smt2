(set-logic HORN)

(declare-fun |state| ( Bool Bool Bool Bool Bool Bool Bool Int Int Int Int Int ) Bool)

(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Bool) (E Bool) (F Bool) (G Bool) (H Int) (I Int) (J Int) (K Int) (L Int) ) 
    (=>
      (and
        (and (not F) (not E) (not D) (not C) (= B true) (not A) (not G))
      )
      (state A B C D E F G H I J K L)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Bool) (E Bool) (F Bool) (G Bool) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Bool) (S Bool) (T Bool) (U Bool) (V Bool) (W Bool) (X Bool) (Y Int) ) 
    (=>
      (and
        (state A B C D E F G H I J K L)
        (let ((a!1 (and R
                S
                (not T)
                (not U)
                V
                W
                X
                (= H M)
                (= I N)
                (= J O)
                (= K P)
                (= L Q)))
      (a!2 (and R
                S
                (not T)
                (not U)
                V
                W
                (not X)
                (= H M)
                (= I N)
                (= J O)
                (= K P)
                (= L Q)))
      (a!3 (and R
                S
                (not T)
                (not U)
                V
                (not W)
                X
                (= H M)
                (= I N)
                (= J O)
                (= K P)
                (= L Q)))
      (a!4 (and R
                S
                (not T)
                (not U)
                V
                (not W)
                (not X)
                (= H M)
                (= I N)
                (= J O)
                (= K P)
                (= L Q)))
      (a!5 (and R
                (not S)
                T
                U
                (not V)
                (not W)
                X
                (= H M)
                (= I N)
                (= J O)
                (= K P)
                (= L Q)))
      (a!6 (and R
                (not S)
                T
                (not U)
                V
                W
                X
                (= H M)
                (= I N)
                (= J O)
                (= K P)
                (= L Q)))
      (a!7 (and R
                (not S)
                T
                (not U)
                V
                W
                (not X)
                (= H M)
                (= I N)
                (= J O)
                (= K P)
                (= L Q)))
      (a!8 (and R
                (not S)
                T
                (not U)
                V
                (not W)
                X
                (= H M)
                (= I N)
                (= J O)
                (= K P)
                (= L Q)))
      (a!9 (and R
                (not S)
                T
                (not U)
                V
                (not W)
                (not X)
                (= H M)
                (= I N)
                (= J O)
                (= K P)
                (= L Q)))
      (a!10 (and R
                 (not S)
                 (not T)
                 U
                 (not V)
                 (not W)
                 (not X)
                 (= H M)
                 (= I N)
                 (= J O)
                 (= K P)
                 (= L Q)))
      (a!11 (and R
                 (not S)
                 (not T)
                 (not U)
                 V
                 (not W)
                 (not X)
                 (= H M)
                 (= I N)
                 (= J O)
                 (= K P)
                 (= L Q)))
      (a!12 (and R
                 (not S)
                 (not T)
                 (not U)
                 (not V)
                 W
                 X
                 (= H M)
                 (= I N)
                 (= J O)
                 (= K P)
                 (= L Q)))
      (a!13 (and R
                 (not S)
                 (not T)
                 (not U)
                 (not V)
                 W
                 (not X)
                 (= H M)
                 (= I N)
                 (= J O)
                 (= K P)
                 (= L Q)))
      (a!14 (and R
                 (not S)
                 (not T)
                 (not U)
                 (not V)
                 (not W)
                 X
                 (= H M)
                 (= I N)
                 (= J O)
                 (= K P)
                 (= L Q)))
      (a!15 (and R
                 (not S)
                 (not T)
                 (not U)
                 (not V)
                 (not W)
                 (not X)
                 (= H M)
                 (= I N)
                 (= J O)
                 (= K P)
                 (= L Q)))
      (a!16 (and (not R) S T U V W X (= H M) (= I N) (= J O) (= K P) (= L Q)))
      (a!17 (and (not R)
                 S
                 (not T)
                 U
                 V
                 W
                 (not X)
                 (= H M)
                 (= I N)
                 (= J O)
                 (= K P)
                 (= L Q)))
      (a!18 (and (not R)
                 S
                 (not T)
                 U
                 V
                 (not W)
                 X
                 (= H M)
                 (= I N)
                 (= J O)
                 (= K P)
                 (= L Q)))
      (a!19 (and (not R)
                 S
                 (not T)
                 U
                 V
                 (not W)
                 (not X)
                 (= H M)
                 (= I N)
                 (= J O)
                 (= K P)
                 (= L Q)))
      (a!20 (and (not R)
                 S
                 (not T)
                 U
                 (not V)
                 W
                 X
                 (= H M)
                 (= I N)
                 (= J O)
                 (= K P)
                 (= L Q)))
      (a!21 (and (not R)
                 (not S)
                 T
                 U
                 V
                 (not W)
                 (not X)
                 (= H M)
                 (= I N)
                 (= J O)
                 (= K P)
                 (= L Q)))
      (a!22 (and (not R)
                 (not S)
                 T
                 U
                 (not V)
                 W
                 X
                 (= H M)
                 (= I N)
                 (= J O)
                 (= K P)
                 (= L Q)))
      (a!23 (and (not R)
                 (not S)
                 T
                 U
                 (not V)
                 W
                 (not X)
                 (= H M)
                 (= I N)
                 (= J O)
                 (= K P)
                 (= L Q)))
      (a!24 (and (not R)
                 (not S)
                 T
                 U
                 (not V)
                 (not W)
                 X
                 (= H M)
                 (= I N)
                 (= J O)
                 (= K P)
                 (= L Q)))
      (a!25 (and (not R)
                 (not S)
                 T
                 U
                 (not V)
                 (not W)
                 (not X)
                 (= H M)
                 (= I N)
                 (= J O)
                 (= K P)
                 (= L Q)))
      (a!26 (and (not R)
                 (not S)
                 T
                 (not U)
                 V
                 W
                 X
                 (= H M)
                 (= I N)
                 (= J O)
                 (= K P)
                 (= L Q)))
      (a!27 (and (not R)
                 S
                 T
                 U
                 V
                 W
                 (not X)
                 (= H M)
                 (= I N)
                 (= K P)
                 (= L Q)
                 (= (+ J (* (- 1) O)) (- 1))))
      (a!28 (and (not R)
                 S
                 (not T)
                 U
                 (not V)
                 W
                 (not X)
                 (= H M)
                 (= I N)
                 (= K P)
                 (= L Q)
                 (= (+ J (* (- 1) O)) (- 1))))
      (a!29 (and R
                 (not S)
                 T
                 (not U)
                 (not V)
                 W
                 X
                 (= H M)
                 (= I N)
                 (= J O)
                 (= L Q)
                 (= (+ K (* (- 1) P)) (- 1))))
      (a!30 (and R
                 (not S)
                 (not T)
                 (not U)
                 V
                 W
                 (not X)
                 (= H M)
                 (= I N)
                 (= J O)
                 (= L Q)
                 (= (+ K (* (- 1) P)) (- 1))))
      (a!31 (and (not R)
                 (not S)
                 T
                 (not U)
                 V
                 W
                 (not X)
                 (= H M)
                 (= I N)
                 (= J O)
                 (= L Q)
                 (= (+ K (* (- 1) P)) (- 1))))
      (a!32 (and R
                 S
                 (not T)
                 (not U)
                 (not V)
                 W
                 X
                 (= H M)
                 (= I N)
                 (= J O)
                 (= K P)
                 (= (+ L (* (- 1) Q)) 1)))
      (a!33 (and (not R)
                 (not S)
                 (not T)
                 (not U)
                 (not V)
                 (not W)
                 (not X)
                 (= H M)
                 (= I N)
                 (= J O)
                 (= K P)
                 (= L Q))))
  (and (or A (not B) C (not D) (not E) F (not G) a!1 (<= 1 L))
       (or (not A) (not B) C (not D) (not E) F (not G) a!2 (<= L H))
       (or A (not B) (not C) (not D) (not E) F (not G) a!3 (<= 1 L))
       (or (not A) (not B) (not C) (not D) (not E) F (not G) a!4 (<= L H))
       (or (not A)
           (not B)
           (not C)
           (not D)
           (not E)
           F
           (not G)
           (and R
                S
                (not T)
                (not U)
                (not V)
                (not W)
                (not X)
                (= H M)
                (= I N)
                (= J O)
                (= K P)
                (= L Q))
           (not (<= L H)))
       (or A
           (not B)
           (not C)
           (not D)
           (not E)
           F
           (not G)
           (and R
                (not S)
                T
                U
                V
                W
                (not X)
                (= H M)
                (= I N)
                (= J O)
                (= K P)
                (= L Q))
           (not (<= 1 L)))
       (or (not A)
           (not B)
           C
           (not D)
           (not E)
           F
           (not G)
           (and R
                (not S)
                T
                U
                V
                (not W)
                (not X)
                (= H M)
                (= I N)
                (= J O)
                (= K P)
                (= L Q))
           (not (<= L H)))
       (or A
           (not B)
           C
           (not D)
           (not E)
           F
           (not G)
           (and R
                (not S)
                T
                U
                (not V)
                W
                (not X)
                (= H M)
                (= I N)
                (= J O)
                (= K P)
                (= L Q))
           (not (<= 1 L)))
       (or A (not B) (not C) D E F G a!5 (not (<= H L)))
       (or A
           (not B)
           C
           (not D)
           E
           F
           (not G)
           (and R
                (not S)
                T
                U
                (not V)
                (not W)
                (not X)
                (= H M)
                (= I N)
                (= J O)
                (= K P)
                (= L Q))
           (<= K H))
       (or (not A) B C (not D) E F (not G) a!6 (<= 1 K))
       (or A B (not C) (not D) E F (not G) a!7 (<= K H))
       (or (not A) B (not C) (not D) E F (not G) a!8 (<= 1 L))
       (or A B C D (not E) F (not G) a!9 (<= L H))
       (or A
           B
           C
           D
           (not E)
           F
           (not G)
           (and R
                (not S)
                T
                (not U)
                (not V)
                (not W)
                X
                (= H M)
                (= I N)
                (= J O)
                (= K P)
                (= L Q))
           (not (<= L H)))
       (or (not A)
           B
           (not C)
           (not D)
           E
           F
           (not G)
           (and R
                (not S)
                (not T)
                U
                V
                W
                X
                (= H M)
                (= I N)
                (= J O)
                (= K P)
                (= L Q))
           (not (<= 1 L)))
       (or A
           B
           (not C)
           (not D)
           E
           F
           (not G)
           (and R
                (not S)
                (not T)
                U
                V
                (not W)
                X
                (= H M)
                (= I N)
                (= J O)
                (= K P)
                (= L Q))
           (not (<= K H)))
       (or (not A)
           B
           C
           (not D)
           E
           F
           (not G)
           (and R
                (not S)
                (not T)
                U
                (not V)
                W
                X
                (= H M)
                (= I N)
                (= J O)
                (= K P)
                (= L Q))
           (not (<= 1 K)))
       (or A
           (not B)
           C
           (not D)
           E
           F
           (not G)
           (and R
                (not S)
                (not T)
                U
                (not V)
                W
                (not X)
                (= H M)
                (= I N)
                (= J O)
                (= K P)
                (= L Q))
           (not (<= K H)))
       (or (not A) B (not C) D E F G a!10 (= Y 0))
       (or (not A)
           B
           (not C)
           (not D)
           (not E)
           F
           G
           (and R
                (not S)
                (not T)
                (not U)
                V
                W
                X
                (= H M)
                (= I N)
                (= J O)
                (= K P)
                (= L Q))
           (<= K H))
       (or A
           B
           C
           D
           (not E)
           (not F)
           G
           (and R
                (not S)
                (not T)
                (not U)
                V
                (not W)
                X
                (= H M)
                (= I N)
                (= J O)
                (= K P)
                (= L Q))
           (<= J H))
       (or A (not B) C D (not E) (not F) G a!11 (<= 1 J))
       (or (not A) (not B) C D (not E) (not F) G a!12 (<= J H))
       (or A (not B) (not C) D (not E) (not F) G a!13 (<= 1 K))
       (or (not A) (not B) (not C) D (not E) (not F) G a!14 (<= K H))
       (or A (not B) C (not D) (not E) (not F) G a!15 (<= 1 L))
       (or (not A) (not B) C (not D) (not E) (not F) G a!16 (<= L H))
       (or (not A)
           (not B)
           C
           (not D)
           (not E)
           (not F)
           G
           (and (not R)
                S
                T
                U
                V
                (not W)
                (not X)
                (= H M)
                (= I N)
                (= J O)
                (= K P)
                (= L Q))
           (not (<= L H)))
       (or A
           (not B)
           C
           (not D)
           (not E)
           (not F)
           G
           (and (not R)
                S
                T
                U
                (not V)
                W
                (not X)
                (= H M)
                (= I N)
                (= J O)
                (= K P)
                (= L Q))
           (not (<= 1 L)))
       (or (not A)
           (not B)
           (not C)
           D
           (not E)
           (not F)
           G
           (and (not R)
                S
                T
                U
                (not V)
                (not W)
                (not X)
                (= H M)
                (= I N)
                (= J O)
                (= K P)
                (= L Q))
           (not (<= K H)))
       (or A
           (not B)
           (not C)
           D
           (not E)
           (not F)
           G
           (and (not R)
                S
                T
                (not U)
                V
                W
                (not X)
                (= H M)
                (= I N)
                (= J O)
                (= K P)
                (= L Q))
           (not (<= 1 K)))
       (or (not A)
           (not B)
           C
           D
           (not E)
           (not F)
           G
           (and (not R)
                S
                T
                (not U)
                V
                (not W)
                (not X)
                (= H M)
                (= I N)
                (= J O)
                (= K P)
                (= L Q))
           (not (<= J H)))
       (or A
           (not B)
           C
           D
           (not E)
           (not F)
           G
           (and (not R)
                S
                T
                (not U)
                (not V)
                W
                (not X)
                (= H M)
                (= I N)
                (= J O)
                (= K P)
                (= L Q))
           (not (<= 1 J)))
       (or A
           B
           C
           D
           (not E)
           (not F)
           G
           (and (not R)
                S
                T
                (not U)
                (not V)
                (not W)
                X
                (= H M)
                (= I N)
                (= J O)
                (= K P)
                (= L Q))
           (not (<= J H)))
       (or A
           B
           C
           D
           E
           (not F)
           G
           (and (not R)
                S
                (not T)
                U
                V
                W
                X
                (= H M)
                (= I N)
                (= J O)
                (= K P)
                (= L Q))
           (<= J H))
       (or A (not B) C D E (not F) G a!17 (<= 1 J))
       (or (not A) (not B) C D E (not F) G a!18 (<= J H))
       (or A (not B) (not C) D E (not F) G a!19 (<= 1 K))
       (or (not A) (not B) (not C) D E (not F) G a!20 (<= K H))
       (or (not A)
           (not B)
           (not C)
           D
           E
           (not F)
           G
           (and (not R)
                S
                (not T)
                U
                (not V)
                (not W)
                (not X)
                (= H M)
                (= I N)
                (= J O)
                (= K P)
                (= L Q))
           (not (<= K H)))
       (or A
           (not B)
           (not C)
           D
           E
           (not F)
           G
           (and (not R)
                S
                (not T)
                (not U)
                V
                W
                (not X)
                (= H M)
                (= I N)
                (= J O)
                (= K P)
                (= L Q))
           (not (<= 1 K)))
       (or (not A)
           (not B)
           C
           D
           E
           (not F)
           G
           (and (not R)
                S
                (not T)
                (not U)
                V
                (not W)
                (not X)
                (= H M)
                (= I N)
                (= J O)
                (= K P)
                (= L Q))
           (not (<= J H)))
       (or A
           (not B)
           C
           D
           E
           (not F)
           G
           (and (not R)
                S
                (not T)
                (not U)
                (not V)
                W
                (not X)
                (= H M)
                (= I N)
                (= J O)
                (= K P)
                (= L Q))
           (not (<= 1 J)))
       (or A
           B
           C
           D
           E
           (not F)
           G
           (and (not R)
                S
                (not T)
                (not U)
                (not V)
                (not W)
                X
                (= H M)
                (= I N)
                (= J O)
                (= K P)
                (= L Q))
           (not (<= J H)))
       (or (not A)
           B
           (not C)
           (not D)
           (not E)
           F
           G
           (and (not R)
                (not S)
                T
                U
                V
                W
                X
                (= H M)
                (= I N)
                (= J O)
                (= K P)
                (= L Q))
           (not (<= K H)))
       (or A
           B
           C
           (not D)
           E
           F
           G
           (and (not R)
                (not S)
                T
                U
                V
                (not W)
                X
                (= H M)
                (= I N)
                (= J O)
                (= K P)
                (= L Q))
           (<= K H))
       (or A (not B) C (not D) E F G a!21 (<= 1 K))
       (or (not A) (not B) C (not D) E F G a!22 (<= K H))
       (or A (not B) (not C) (not D) E F G a!23 (<= 1 L))
       (or (not A) (not B) (not C) (not D) E F G a!24 (<= L H))
       (or A (not B) C D (not E) F G a!25 (<= 1 I))
       (or (not A) (not B) C D (not E) F G a!26 (<= I H))
       (or (not A)
           (not B)
           C
           D
           (not E)
           F
           G
           (and (not R)
                (not S)
                T
                (not U)
                V
                (not W)
                (not X)
                (= H M)
                (= I N)
                (= J O)
                (= K P)
                (= L Q))
           (not (<= I H)))
       (or A
           (not B)
           C
           D
           (not E)
           F
           G
           (and (not R)
                (not S)
                T
                (not U)
                (not V)
                W
                (not X)
                (= H M)
                (= I N)
                (= J O)
                (= K P)
                (= L Q))
           (not (<= 1 I)))
       (or (not A)
           (not B)
           (not C)
           (not D)
           E
           F
           G
           (and (not R)
                (not S)
                T
                (not U)
                (not V)
                (not W)
                (not X)
                (= H M)
                (= I N)
                (= J O)
                (= K P)
                (= L Q))
           (not (<= L H)))
       (or A
           (not B)
           (not C)
           (not D)
           E
           F
           G
           (and (not R)
                (not S)
                (not T)
                U
                V
                W
                (not X)
                (= H M)
                (= I N)
                (= J O)
                (= K P)
                (= L Q))
           (not (<= 1 L)))
       (or (not A)
           (not B)
           C
           (not D)
           E
           F
           G
           (and (not R)
                (not S)
                (not T)
                U
                V
                (not W)
                (not X)
                (= H M)
                (= I N)
                (= J O)
                (= K P)
                (= L Q))
           (not (<= K H)))
       (or A
           (not B)
           C
           (not D)
           E
           F
           G
           (and (not R)
                (not S)
                (not T)
                U
                (not V)
                W
                (not X)
                (= H M)
                (= I N)
                (= J O)
                (= K P)
                (= L Q))
           (not (<= 1 K)))
       (or A
           B
           C
           (not D)
           E
           F
           G
           (and (not R)
                (not S)
                (not T)
                U
                (not V)
                (not W)
                X
                (= H M)
                (= I N)
                (= J O)
                (= K P)
                (= L Q))
           (not (<= K H)))
       (or (not A)
           B
           (not C)
           D
           E
           F
           G
           (and (not R)
                (not S)
                (not T)
                (not U)
                V
                W
                X
                (= H M)
                (= I N)
                (= J O)
                (= K P)
                (= L Q))
           (not (= Y 0)))
       (or A
           (not B)
           (not C)
           D
           E
           F
           G
           (and (not R)
                (not S)
                (not T)
                (not U)
                V
                W
                (not X)
                (= H M)
                (= I N)
                (= J O)
                (= K P)
                (= L Q))
           (<= H L))
       (or A
           B
           (not C)
           D
           E
           F
           G
           (and (not R)
                (not S)
                (not T)
                (not U)
                V
                (not W)
                X
                (= H M)
                (= I N)
                (= J O)
                (= K P)
                (= L Q))
           (not (<= 1 L)))
       (or A
           (not B)
           C
           D
           E
           F
           G
           (and (not R)
                (not S)
                (not T)
                (not U)
                (not V)
                W
                X
                (= H M)
                (= I N)
                (= J O)
                (= K P)
                (= L Q))
           (<= I 0))
       (or A
           (not B)
           C
           D
           E
           F
           G
           (and (not R)
                (not S)
                (not T)
                (not U)
                (not V)
                W
                (not X)
                (= H M)
                (= I N)
                (= J O)
                (= K P)
                (= L Q))
           (not (<= I 0)))
       (or A
           (not B)
           C
           D
           E
           (not F)
           (not G)
           (and R
                S
                (not T)
                (not U)
                (not V)
                W
                (not X)
                (= H M)
                (= J O)
                (= K P)
                (= L Q)
                (= N L)))
       (or A (not B) (not C) (not D) (not E) (not F) G a!27)
       (or A (not B) C (not D) E (not F) G a!28)
       (or (not A) B C D (not E) F (not G) a!29)
       (or A (not B) (not C) D E F (not G) a!30)
       (or A (not B) (not C) D (not E) F G a!31)
       (or (not A) B C D E (not F) (not G) a!32)
       (or (not A) (not B) (not C) D E (not F) (not G) a!1)
       (or (not A) B (not C) D E (not F) (not G) a!2)
       (or A (not B) (not C) D E (not F) (not G) a!3)
       (or A B (not C) D E (not F) (not G) a!4)
       (or A
           B
           C
           D
           E
           (not F)
           (not G)
           (and R
                S
                (not T)
                (not U)
                (not V)
                (not W)
                X
                (= H M)
                (= I N)
                (= J O)
                (= K P)
                (= L Q)))
       (or (not A)
           B
           (not C)
           (not D)
           (not E)
           F
           (not G)
           (and R (not S) T U V W X (= H M) (= I N) (= J O) (= K P) (= L Q)))
       (or A
           B
           (not C)
           (not D)
           (not E)
           F
           (not G)
           (and R
                (not S)
                T
                U
                V
                (not W)
                X
                (= H M)
                (= I N)
                (= J O)
                (= K P)
                (= L Q)))
       (or (not A)
           B
           C
           (not D)
           (not E)
           F
           (not G)
           (and R
                (not S)
                T
                U
                (not V)
                W
                X
                (= H M)
                (= I N)
                (= J O)
                (= K P)
                (= L Q)))
       (or A B C (not D) (not E) F (not G) a!5)
       (or (not A) (not B) (not C) D (not E) F (not G) a!6)
       (or (not A) B (not C) D (not E) F (not G) a!7)
       (or A (not B) (not C) D (not E) F (not G) a!8)
       (or A B (not C) D (not E) F (not G) a!9)
       (or A
           (not B)
           C
           D
           (not E)
           F
           (not G)
           (and R
                (not S)
                T
                (not U)
                (not V)
                W
                (not X)
                (= H M)
                (= I N)
                (= J O)
                (= K P)
                (= L Q)))
       (or (not A)
           (not B)
           (not C)
           (not D)
           E
           F
           (not G)
           (and R
                (not S)
                T
                (not U)
                (not V)
                (not W)
                (not X)
                (= H M)
                (= I N)
                (= J O)
                (= K P)
                (= L Q)))
       (or A
           (not B)
           (not C)
           (not D)
           E
           F
           (not G)
           (and R
                (not S)
                (not T)
                U
                V
                W
                (not X)
                (= H M)
                (= I N)
                (= J O)
                (= K P)
                (= L Q)))
       (or (not A)
           (not B)
           C
           (not D)
           E
           F
           (not G)
           (and R
                (not S)
                (not T)
                U
                V
                (not W)
                (not X)
                (= H M)
                (= I N)
                (= J O)
                (= K P)
                (= L Q)))
       (or (not A)
           (not B)
           C
           D
           (not E)
           F
           (not G)
           (and R
                (not S)
                (not T)
                U
                (not V)
                (not W)
                X
                (= H M)
                (= I N)
                (= J O)
                (= K P)
                (= L Q)))
       (or (not A) (not B) (not C) D E F (not G) a!10)
       (or A B (not C) D E F (not G) a!11)
       (or (not A) (not B) C D E F (not G) a!12)
       (or (not A) B C D E F (not G) a!13)
       (or A (not B) C D E F (not G) a!14)
       (or A B C D E F (not G) a!15)
       (or (not A) (not B) (not C) (not D) (not E) (not F) G a!16)
       (or A
           B
           (not C)
           (not D)
           (not E)
           (not F)
           G
           (and (not R)
                S
                T
                U
                V
                (not W)
                X
                (= H M)
                (= I N)
                (= J O)
                (= K P)
                (= L Q)))
       (or (not A)
           B
           C
           (not D)
           (not E)
           (not F)
           G
           (and (not R)
                S
                T
                U
                (not V)
                W
                X
                (= H M)
                (= I N)
                (= J O)
                (= K P)
                (= L Q)))
       (or A
           B
           C
           (not D)
           (not E)
           (not F)
           G
           (and (not R)
                S
                T
                U
                (not V)
                (not W)
                X
                (= H M)
                (= I N)
                (= J O)
                (= K P)
                (= L Q)))
       (or (not A)
           B
           (not C)
           D
           (not E)
           (not F)
           G
           (and (not R)
                S
                T
                (not U)
                V
                W
                X
                (= H M)
                (= I N)
                (= J O)
                (= K P)
                (= L Q)))
       (or A
           B
           (not C)
           D
           (not E)
           (not F)
           G
           (and (not R)
                S
                T
                (not U)
                V
                (not W)
                X
                (= H M)
                (= I N)
                (= J O)
                (= K P)
                (= L Q)))
       (or (not A)
           B
           C
           D
           (not E)
           (not F)
           G
           (and (not R)
                S
                T
                (not U)
                (not V)
                W
                X
                (= H M)
                (= I N)
                (= J O)
                (= K P)
                (= L Q)))
       (or (not A)
           B
           (not C)
           (not D)
           (not E)
           (not F)
           G
           (and (not R)
                S
                T
                (not U)
                (not V)
                (not W)
                (not X)
                (= H M)
                (= I N)
                (= J O)
                (= K P)
                (= L Q)))
       (or (not A) B (not C) (not D) E (not F) G a!17)
       (or A (not B) (not C) (not D) E (not F) G a!18)
       (or A B (not C) (not D) E (not F) G a!19)
       (or (not A) (not B) C (not D) E (not F) G a!20)
       (or A
           B
           C
           (not D)
           E
           (not F)
           G
           (and (not R)
                S
                (not T)
                U
                (not V)
                (not W)
                X
                (= H M)
                (= I N)
                (= J O)
                (= K P)
                (= L Q)))
       (or (not A)
           B
           (not C)
           D
           E
           (not F)
           G
           (and (not R)
                S
                (not T)
                (not U)
                V
                W
                X
                (= H M)
                (= I N)
                (= J O)
                (= K P)
                (= L Q)))
       (or A
           B
           (not C)
           D
           E
           (not F)
           G
           (and (not R)
                S
                (not T)
                (not U)
                V
                (not W)
                X
                (= H M)
                (= I N)
                (= J O)
                (= K P)
                (= L Q)))
       (or (not A)
           B
           C
           D
           E
           (not F)
           G
           (and (not R)
                S
                (not T)
                (not U)
                (not V)
                W
                X
                (= H M)
                (= I N)
                (= J O)
                (= K P)
                (= L Q)))
       (or (not A)
           B
           C
           (not D)
           E
           (not F)
           G
           (and (not R)
                S
                (not T)
                (not U)
                (not V)
                (not W)
                (not X)
                (= H M)
                (= I N)
                (= J O)
                (= K P)
                (= L Q)))
       (or (not A)
           B
           (not C)
           D
           E
           F
           (not G)
           (and (not R)
                (not S)
                T
                U
                V
                W
                (not X)
                (= H M)
                (= I N)
                (= J O)
                (= K P)
                (= L Q)))
       (or A B (not C) (not D) (not E) F G a!21)
       (or (not A) (not B) C (not D) (not E) F G a!22)
       (or (not A) B C (not D) (not E) F G a!23)
       (or A (not B) C (not D) (not E) F G a!24)
       (or A B C (not D) (not E) F G a!25)
       (or (not A) (not B) (not C) D (not E) F G a!26)
       (or A
           B
           (not C)
           D
           (not E)
           F
           G
           (and (not R)
                (not S)
                T
                (not U)
                V
                (not W)
                X
                (= H M)
                (= I N)
                (= J O)
                (= K P)
                (= L Q)))
       (or (not A)
           B
           C
           D
           (not E)
           F
           G
           (and (not R)
                (not S)
                T
                (not U)
                (not V)
                W
                X
                (= H M)
                (= I N)
                (= J O)
                (= K P)
                (= L Q)))
       (or A
           B
           C
           D
           (not E)
           F
           G
           (and (not R)
                (not S)
                T
                (not U)
                (not V)
                (not W)
                X
                (= H M)
                (= I N)
                (= J O)
                (= K P)
                (= L Q)))
       (or (not A)
           B
           (not C)
           (not D)
           E
           F
           G
           (and (not R)
                (not S)
                (not T)
                U
                V
                W
                X
                (= H M)
                (= I N)
                (= J O)
                (= K P)
                (= L Q)))
       (or A
           B
           (not C)
           (not D)
           E
           F
           G
           (and (not R)
                (not S)
                (not T)
                U
                V
                (not W)
                X
                (= H M)
                (= I N)
                (= J O)
                (= K P)
                (= L Q)))
       (or (not A)
           B
           C
           (not D)
           E
           F
           G
           (and (not R)
                (not S)
                (not T)
                U
                (not V)
                W
                X
                (= H M)
                (= I N)
                (= J O)
                (= K P)
                (= L Q)))
       (or (not A)
           B
           (not C)
           D
           (not E)
           F
           G
           (and (not R)
                (not S)
                (not T)
                U
                (not V)
                (not W)
                (not X)
                (= H M)
                (= I N)
                (= J O)
                (= K P)
                (= L Q)))
       (or (not A)
           (not B)
           C
           D
           E
           (not F)
           (not G)
           (and (not R)
                (not S)
                (not T)
                (not U)
                V
                (not W)
                (not X)
                (= H M)
                (= I N)
                (= J O)
                (= K P)
                (= L Q)))
       (or A B C D E F G a!33)
       (or A B C (not D) E (not F) (not G) a!33)
       (or (not A) B C D E F G a!33)
       (or A
           B
           C
           (not D)
           E
           F
           (not G)
           (and R
                (not S)
                (not T)
                U
                (not V)
                (not W)
                X
                (= H M)
                (= I N)
                (= I P)
                (= J O)
                (= L Q)))
       (or A
           (not B)
           (not C)
           (not D)
           (not E)
           F
           G
           (and (not R)
                (not S)
                T
                U
                V
                W
                (not X)
                (= H M)
                (= I N)
                (= I P)
                (= J O)
                (= L Q)))
       (or (not A)
           (not B)
           (not C)
           D
           E
           F
           G
           (and (not R)
                (not S)
                (not T)
                U
                (not V)
                (not W)
                (not X)
                (= H M)
                (= I N)
                (= I P)
                (= J O)
                (= L Q)))
       (or (not A)
           (not B)
           (not C)
           (not D)
           E
           (not F)
           G
           (and (not R)
                S
                T
                (not U)
                (not V)
                (not W)
                (not X)
                (= H M)
                (= I N)
                (= I O)
                (= K P)
                (= L Q)))
       (or (not A)
           (not B)
           (not C)
           (not D)
           (not E)
           F
           G
           (and (not R)
                S
                (not T)
                (not U)
                (not V)
                (not W)
                (not X)
                (= H M)
                (= I N)
                (= I O)
                (= K P)
                (= L Q)))
       (or (not A)
           (not B)
           C
           D
           E
           F
           G
           (and (not R)
                (not S)
                (not T)
                (not U)
                V
                (not W)
                (not X)
                (= H M)
                (= H Q)
                (= I N)
                (= J O)
                (= K P)))
       (or A
           B
           (not C)
           D
           E
           F
           G
           (and R
                S
                (not T)
                U
                (not V)
                (not W)
                (not X)
                (= H M)
                (= I N)
                (= J O)
                (= K P)
                (= L Q))
           (<= 1 L))))
      )
      (state W X V U T S R M N O P Q)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Bool) (E Bool) (F Bool) (G Bool) (H Int) (I Int) (J Int) (K Int) (L Int) ) 
    (=>
      (and
        (state A B C D E F G H I J K L)
        (or (and (not A) (not B) (not C) (not D) (not E) (not F) G)
    (and (not A) (not B) (not C) D E (not F) (not G))
    (and (not A) (not B) C (not D) (not E) (not F) G)
    (and (not A) (not B) C (not D) (not E) F G)
    (and (not A) (not B) C (not D) E (not F) G)
    (and (not A) (not B) C D (not E) F (not G))
    (and (not A) (not B) C D E (not F) (not G))
    (and (not A) B (not C) (not D) (not E) (not F) G)
    (and (not A) B (not C) D E (not F) (not G))
    (and (not A) B C (not D) (not E) F G)
    (and (not A) B C (not D) E (not F) G)
    (and (not A) B C D (not E) F (not G))
    (and A (not B) (not C) (not D) (not E) (not F) G)
    (and A (not B) (not C) D E (not F) (not G))
    (and A (not B) C (not D) (not E) F G)
    (and A (not B) C (not D) E (not F) G)
    (and A (not B) C D (not E) F (not G))
    (and A B (not C) (not D) (not E) (not F) G)
    (and A B (not C) D (not E) F (not G))
    (and A B (not C) D E (not F) (not G))
    (and A B C (not D) (not E) F G)
    (and A B C (not D) E (not F) (not G))
    (and A B C (not D) E (not F) G)
    (and A B C D E F (not G)))
      )
      false
    )
  )
)

(check-sat)
(exit)
