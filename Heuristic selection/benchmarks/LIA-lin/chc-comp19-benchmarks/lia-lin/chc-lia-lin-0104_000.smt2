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
  (forall ( (A Bool) (B Bool) (C Bool) (D Bool) (E Bool) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Bool) (N Bool) (O Bool) (P Bool) (Q Bool) (R Int) (S Int) (T Int) (U Int) (V Int) (W Int) (X Int) (Y Int) ) 
    (=>
      (and
        (state A B C D E F G H I J K L)
        (let ((a!1 (and N
                (not O)
                P
                Q
                M
                (= F R)
                (= G S)
                (= H T)
                (= I U)
                (= J V)
                (= K W)
                (= L X)))
      (a!2 (and N
                (not O)
                P
                (not Q)
                (not M)
                (= F R)
                (= G S)
                (= H T)
                (= I U)
                (= J V)
                (= K W)
                (= L X)))
      (a!3 (and (not N)
                (not O)
                (not P)
                Q
                (not M)
                (= F R)
                (= G S)
                (= H T)
                (= I U)
                (= J V)
                (= K W)
                (= L X)))
      (a!4 (and (not N)
                O
                (not P)
                (not Q)
                M
                (= F R)
                (= H T)
                (= I U)
                (= J V)
                (= K W)
                (= L X)
                (= (+ G (* (- 1) S)) (- 1))))
      (a!5 (and N
                O
                P
                (not Q)
                M
                (= F R)
                (= G S)
                (= I U)
                (= J V)
                (= K W)
                (= L X)
                (= (+ T (* 2 J) (* (- 1) K)) 2)))
      (a!6 (and (not N)
                O
                (not P)
                (not Q)
                (not M)
                (= F R)
                (= G S)
                (= H T)
                (= J V)
                (= K W)
                (= L X)
                (= (+ I (* (- 1) U)) (- 1))))
      (a!7 (and N
                O
                (not P)
                (not Q)
                (not M)
                (= F R)
                (= G S)
                (= H T)
                (= I U)
                (= K W)
                (= L X)
                (= (+ I J (* (- 1) V)) 0)))
      (a!8 (and (not N)
                (not O)
                P
                (not Q)
                M
                (= F R)
                (= G S)
                (= H T)
                (= I U)
                (= J V)
                (= L X)
                (= (+ I K (* (- 1) W)) 0)))
      (a!9 (and N
                O
                (not P)
                (not Q)
                M
                (= F R)
                (= G S)
                (= H T)
                (= I U)
                (= J V)
                (= L X)
                (= (+ G K (* (- 1) W)) 0)))
      (a!10 (and N
                 O
                 (not P)
                 Q
                 M
                 (= F R)
                 (= G S)
                 (= H T)
                 (= I U)
                 (= J V)
                 (= K W)
                 (= (+ L (* (- 1) X)) (- 2))))
      (a!11 (and (not N)
                 O
                 (not P)
                 Q
                 (not M)
                 (= F R)
                 (= G S)
                 (= H T)
                 (= I U)
                 (= J V)
                 (= K W)
                 (= (+ L (* (- 1) X)) (- 1))))
      (a!12 (and (not N)
                 (not O)
                 (not P)
                 (not Q)
                 (not M)
                 (= F R)
                 (= G S)
                 (= H T)
                 (= I U)
                 (= J V)
                 (= K W)
                 (= L X))))
  (and (or (not A)
           B
           C
           D
           (not E)
           (and N
                O
                (not P)
                Q
                (not M)
                (= F R)
                (= G S)
                (= H T)
                (= I U)
                (= J V)
                (= K W)
                (= L X))
           (= Y 0))
       (or A B C (not D) (not E) a!1 (not (<= 5 L)))
       (or (not A) (not B) (not C) D E a!2 (not (= F 0)))
       (or (not A)
           B
           C
           D
           (not E)
           (and N
                (not O)
                (not P)
                Q
                M
                (= F R)
                (= G S)
                (= H T)
                (= I U)
                (= J V)
                (= K W)
                (= L X))
           (not (= Y 0)))
       (or A
           (not B)
           C
           D
           (not E)
           (and N
                (not O)
                (not P)
                Q
                (not M)
                (= F R)
                (= G S)
                (= H T)
                (= I U)
                (= J V)
                (= K W)
                (= L X))
           (not (<= L H)))
       (or (not A)
           B
           C
           D
           E
           (and N
                (not O)
                (not P)
                (not Q)
                M
                (= F R)
                (= G S)
                (= H T)
                (= I U)
                (= J V)
                (= K W)
                (= L X))
           (not (= Y 0)))
       (or (not A)
           B
           C
           D
           E
           (and (not N)
                O
                P
                (not Q)
                (not M)
                (= F R)
                (= G S)
                (= H T)
                (= I U)
                (= J V)
                (= K W)
                (= L X))
           (= Y 0))
       (or A
           B
           C
           (not D)
           (not E)
           (and (not N)
                (not O)
                P
                Q
                M
                (= F R)
                (= G S)
                (= H T)
                (= I U)
                (= J V)
                (= K W)
                (= L X))
           (<= 5 L))
       (or A
           (not B)
           C
           D
           (not E)
           (and (not N)
                (not O)
                P
                Q
                (not M)
                (= F R)
                (= G S)
                (= H T)
                (= I U)
                (= J V)
                (= K W)
                (= L X))
           (<= L H))
       (or (not A)
           (not B)
           (not C)
           D
           E
           (and (not N)
                (not O)
                P
                (not Q)
                (not M)
                (= F R)
                (= G S)
                (= H T)
                (= I U)
                (= J V)
                (= K W)
                (= L X))
           (= F 0))
       (or A (not B) (not C) (not D) E a!3 (not (= F 0)))
       (or A B (not C) D E a!4)
       (or (not A) B (not C) (not D) E a!5)
       (or (not A) (not B) C D E a!6)
       (or A (not B) (not C) D E a!7)
       (or A B C (not D) E a!8)
       (or (not A) B (not C) D E a!9)
       (or (not A) B (not C) D (not E) a!10)
       (or (not A) (not B) C D (not E) a!11)
       (or (not A) (not B) C (not D) (not E) a!1)
       (or A
           (not B)
           C
           (not D)
           (not E)
           (and N
                (not O)
                P
                Q
                (not M)
                (= F R)
                (= G S)
                (= H T)
                (= I U)
                (= J V)
                (= K W)
                (= L X)))
       (or (not A)
           B
           C
           (not D)
           E
           (and N
                (not O)
                P
                (not Q)
                M
                (= F R)
                (= G S)
                (= H T)
                (= I U)
                (= J V)
                (= K W)
                (= L X)))
       (or A (not B) C (not D) E a!2)
       (or (not A)
           (not B)
           C
           (not D)
           E
           (and N
                (not O)
                (not P)
                (not Q)
                (not M)
                (= F R)
                (= G S)
                (= H T)
                (= I U)
                (= J V)
                (= K W)
                (= L X)))
       (or A
           B
           (not C)
           D
           (not E)
           (and (not N)
                O
                (not P)
                Q
                M
                (= F R)
                (= G S)
                (= H T)
                (= I U)
                (= J V)
                (= K W)
                (= L X)))
       (or (not A)
           (not B)
           (not C)
           D
           (not E)
           (and (not N)
                O
                (not P)
                Q
                (not M)
                (= F R)
                (= G S)
                (= H T)
                (= I U)
                (= J V)
                (= K W)
                (= L X)))
       (or A
           (not B)
           (not C)
           D
           (not E)
           (and (not N)
                (not O)
                (not P)
                Q
                M
                (= F R)
                (= G S)
                (= H T)
                (= I U)
                (= J V)
                (= K W)
                (= L X)))
       (or (not A) (not B) (not C) (not D) E a!3)
       (or A B C D E a!12)
       (or (not A) B C (not D) (not E) a!12)
       (or A
           B
           C
           D
           (not E)
           (and (not N)
                (not O)
                (not P)
                Q
                M
                (= X 0)
                (= F R)
                (= G S)
                (= H T)
                (= I U)
                (= J V)
                (= K W)))
       (or A
           B
           (not C)
           (not D)
           E
           (and (not N)
                O
                P
                (not Q)
                M
                (= T 1)
                (= F R)
                (= G S)
                (= I U)
                (= J V)
                (= K W)
                (= L X)))
       (or A
           (not B)
           C
           D
           E
           (and N
                (not O)
                (not P)
                (not Q)
                (not M)
                (= S 0)
                (= U 0)
                (= V 0)
                (= W 0)
                (= F R)
                (= H T)
                (= L X)))
       (or A
           (not B)
           (not C)
           (not D)
           E
           (and N
                O
                P
                (not Q)
                (not M)
                (= F R)
                (= G S)
                (= H T)
                (= I U)
                (= J V)
                (= K W)
                (= L X))
           (= F 0))))
      )
      (state N M O P Q R S T U V W X)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Bool) (E Bool) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) ) 
    (=>
      (and
        (state A B C D E F G H I J K L)
        (and (= D true) (not C) (= B true) (= A true) (= E true))
      )
      false
    )
  )
)

(check-sat)
(exit)
