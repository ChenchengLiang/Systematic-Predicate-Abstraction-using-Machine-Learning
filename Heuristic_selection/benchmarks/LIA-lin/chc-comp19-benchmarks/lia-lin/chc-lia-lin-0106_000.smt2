(set-logic HORN)

(declare-fun |state| ( Bool Bool Bool Bool Bool Int Int Int Int Int Int Int ) Bool)

(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Bool) (E Bool) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) ) 
    (=>
      (and
        (and (not D) (not C) (= B true) (not A) (not E))
      )
      (state A B C D E F G H I J K L)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Bool) (E Bool) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) (T Bool) (U Bool) (V Bool) (W Bool) (X Bool) ) 
    (=>
      (and
        (state A B C D E F G H I J K L)
        (let ((a!1 (and T
                U
                (not V)
                W
                X
                (= F M)
                (= G N)
                (= H O)
                (= I P)
                (= J Q)
                (= K R)
                (= L S)))
      (a!2 (and T
                (not U)
                (not V)
                W
                X
                (= F M)
                (= G N)
                (= H O)
                (= I P)
                (= J Q)
                (= K R)
                (= L S)))
      (a!3 (and (not T)
                (not U)
                V
                (not W)
                (not X)
                (= F M)
                (= H O)
                (= I P)
                (= J Q)
                (= K R)
                (= L S)
                (= (+ G (* (- 1) N)) (- 1))))
      (a!4 (and (not T)
                U
                (not V)
                (not W)
                X
                (= F M)
                (= H O)
                (= I P)
                (= J Q)
                (= K R)
                (= L S)
                (= (+ G (* (- 1) N)) 1)))
      (a!5 (and (not T)
                U
                (not V)
                W
                (not X)
                (= F M)
                (= G N)
                (= I P)
                (= J Q)
                (= K R)
                (= L S)
                (= (+ H (* (- 1) O)) (- 1))))
      (a!6 (and T
                U
                (not V)
                (not W)
                X
                (= F M)
                (= G N)
                (= H O)
                (= J Q)
                (= K R)
                (= L S)
                (= (+ I (* (- 1) P)) (- 1))))
      (a!7 (and (not T)
                U
                (not V)
                W
                X
                (= F M)
                (= G N)
                (= H O)
                (= I P)
                (= J Q)
                (= L S)
                (= (+ K (* (- 1) R)) (- 1))))
      (a!8 (and (not T)
                (not U)
                V
                (not W)
                X
                (= F M)
                (= G N)
                (= H O)
                (= I P)
                (= J Q)
                (= L S)
                (= (+ K (* (- 1) R)) (- 1))))
      (a!9 (and T
                U
                (not V)
                W
                (not X)
                (= F M)
                (= G N)
                (= H O)
                (= I P)
                (= J Q)
                (= L S)
                (= (+ K (* (- 1) R)) 1)))
      (a!10 (and T
                 (not U)
                 (not V)
                 W
                 (not X)
                 (= F M)
                 (= G N)
                 (= H O)
                 (= I P)
                 (= J Q)
                 (= L S)
                 (= (+ K (* (- 1) R)) 1)))
      (a!11 (and T
                 (not U)
                 (not V)
                 (not W)
                 X
                 (= F M)
                 (= G N)
                 (= H O)
                 (= I P)
                 (= J Q)
                 (= K R)
                 (= (+ L (* (- 1) S)) (- 1))))
      (a!12 (and (not T)
                 (not U)
                 (not V)
                 (not W)
                 (not X)
                 (= F M)
                 (= G N)
                 (= H O)
                 (= I P)
                 (= J Q)
                 (= K R)
                 (= L S))))
  (and (or (not A) B (not C) D (not E) a!1 (not (<= K 0)))
       (or (not A)
           B
           (not C)
           D
           (not E)
           (and T
                (not U)
                V
                W
                X
                (= F M)
                (= G N)
                (= H O)
                (= I P)
                (= J Q)
                (= K R)
                (= L S))
           (<= K 0))
       (or A
           (not B)
           (not C)
           D
           (not E)
           (and T
                (not U)
                V
                W
                (not X)
                (= F M)
                (= G N)
                (= H O)
                (= I P)
                (= J Q)
                (= K R)
                (= L S))
           (<= J I))
       (or A
           (not B)
           (not C)
           (not D)
           E
           (and T
                (not U)
                V
                (not W)
                (not X)
                (= F M)
                (= G N)
                (= H O)
                (= I P)
                (= J Q)
                (= K R)
                (= L S))
           (not (<= F L)))
       (or (not A) B (not C) (not D) E a!2 (not (<= K 0)))
       (or (not A)
           B
           (not C)
           (not D)
           E
           (and (not T)
                U
                V
                W
                X
                (= F M)
                (= G N)
                (= H O)
                (= I P)
                (= J Q)
                (= K R)
                (= L S))
           (<= K 0))
       (or A
           (not B)
           (not C)
           (not D)
           E
           (and (not T)
                U
                V
                W
                (not X)
                (= F M)
                (= G N)
                (= H O)
                (= I P)
                (= J Q)
                (= K R)
                (= L S))
           (<= F L))
       (or (not A)
           (not B)
           (not C)
           D
           E
           (and (not T)
                U
                V
                (not W)
                (not X)
                (= F M)
                (= G N)
                (= H O)
                (= I P)
                (= J Q)
                (= K R)
                (= L S))
           (not (<= F H)))
       (or (not A)
           (not B)
           (not C)
           D
           E
           (and (not T)
                U
                (not V)
                (not W)
                (not X)
                (= F M)
                (= G N)
                (= H O)
                (= I P)
                (= J Q)
                (= K R)
                (= L S))
           (<= F H))
       (or (not A)
           B
           C
           D
           E
           (and (not T)
                (not U)
                V
                W
                (not X)
                (= F M)
                (= G N)
                (= H O)
                (= I P)
                (= J Q)
                (= K R)
                (= L S))
           (not (<= J G)))
       (or (not A)
           B
           C
           D
           E
           (and (not T)
                (not U)
                (not V)
                W
                X
                (= F M)
                (= G N)
                (= H O)
                (= I P)
                (= J Q)
                (= K R)
                (= L S))
           (<= J G))
       (or (not A) (not B) C D E a!3)
       (or A B C (not D) E a!4)
       (or A (not B) C (not D) E a!5)
       (or (not A)
           B
           (not C)
           D
           E
           (and (not T)
                (not U)
                V
                W
                X
                (= F M)
                (= G N)
                (= I P)
                (= J Q)
                (= K R)
                (= L S)
                (= O 0)))
       (or A B C (not D) (not E) a!6)
       (or A
           B
           (not C)
           D
           (not E)
           (and T
                (not U)
                V
                (not W)
                X
                (= F M)
                (= G N)
                (= H O)
                (= J Q)
                (= K R)
                (= L S)
                (= P 0)))
       (or (not A) B C (not D) E a!7)
       (or A B (not C) D E a!8)
       (or A (not B) C (not D) (not E) a!9)
       (or A (not B) C D (not E) a!10)
       (or A B C D (not E) a!11)
       (or (not A) (not B) C (not D) (not E) a!1)
       (or (not A)
           (not B)
           (not C)
           D
           (not E)
           (and T
                U
                (not V)
                (not W)
                (not X)
                (= F M)
                (= G N)
                (= H O)
                (= I P)
                (= J Q)
                (= K R)
                (= L S)))
       (or (not A)
           B
           C
           (not D)
           (not E)
           (and T
                (not U)
                V
                (not W)
                X
                (= F M)
                (= G N)
                (= H O)
                (= I P)
                (= J Q)
                (= K R)
                (= L S)))
       (or (not A) (not B) C D (not E) a!2)
       (or (not A)
           (not B)
           (not C)
           (not D)
           E
           (and T
                (not U)
                (not V)
                (not W)
                (not X)
                (= F M)
                (= G N)
                (= H O)
                (= I P)
                (= J Q)
                (= K R)
                (= L S)))
       (or (not A)
           B
           C
           D
           (not E)
           (and (not T)
                U
                V
                (not W)
                X
                (= F M)
                (= G N)
                (= H O)
                (= I P)
                (= J Q)
                (= K R)
                (= L S)))
       (or (not A)
           (not B)
           C
           (not D)
           E
           (and (not T)
                (not U)
                V
                W
                X
                (= F M)
                (= G N)
                (= H O)
                (= I P)
                (= J Q)
                (= K R)
                (= L S)))
       (or A
           (not B)
           (not C)
           D
           E
           (and (not T)
                (not U)
                (not V)
                W
                (not X)
                (= F M)
                (= G N)
                (= H O)
                (= I P)
                (= J Q)
                (= K R)
                (= L S)))
       (or A B C D E a!12)
       (or A B (not C) (not D) (not E) a!12)
       (or A
           B
           (not C)
           (not D)
           E
           (and (not T)
                U
                V
                (not W)
                X
                (= S 0)
                (= F M)
                (= G N)
                (= H O)
                (= I P)
                (= J Q)
                (= K R)))
       (or A
           (not B)
           C
           D
           E
           (and (not T)
                (not U)
                (not V)
                W
                (not X)
                (= R 0)
                (= F M)
                (= H O)
                (= I P)
                (= J Q)
                (= L S)
                (= N 0)))
       (or A
           (not B)
           (not C)
           D
           (not E)
           (and T
                U
                V
                (not W)
                (not X)
                (= F M)
                (= G N)
                (= H O)
                (= I P)
                (= J Q)
                (= K R)
                (= L S))
           (not (<= J I)))))
      )
      (state W X V U T M N O P Q R S)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Bool) (E Bool) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) ) 
    (=>
      (and
        (state A B C D E F G H I J K L)
        (or (and A B (not C) (not D) E) (and A B (not C) D E))
      )
      false
    )
  )
)

(check-sat)
(exit)
