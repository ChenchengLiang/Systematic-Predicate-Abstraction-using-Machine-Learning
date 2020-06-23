(set-logic HORN)

(declare-fun |state| ( Bool Bool Bool Bool Bool Int Int Int Int Int Int Int Int Int ) Bool)

(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Bool) (E Bool) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) ) 
    (=>
      (and
        (and (not D) (not C) (= B true) (not A) (not E))
      )
      (state A B C D E F G H I J K L M N)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Bool) (E Bool) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) (T Int) (U Int) (V Int) (W Int) (X Bool) (Y Bool) (Z Bool) (A1 Bool) (B1 Bool) (C1 Int) ) 
    (=>
      (and
        (state A B C D E F G H I J K L M N)
        (let ((a!1 (and X
                Y
                (not Z)
                (not A1)
                (not B1)
                (= F O)
                (= G P)
                (= H Q)
                (= I R)
                (= J S)
                (= K T)
                (= L U)
                (= M V)
                (= N W)))
      (a!2 (and X
                (not Y)
                Z
                A1
                B1
                (= F O)
                (= G P)
                (= H Q)
                (= I R)
                (= J S)
                (= K T)
                (= L U)
                (= M V)
                (= N W)))
      (a!3 (not (<= 1 (+ L (* (- 1) M)))))
      (a!4 (or A
               (not B)
               C
               D
               (not E)
               (and X
                    (not Y)
                    (not Z)
                    A1
                    (not B1)
                    (= F O)
                    (= G P)
                    (= H Q)
                    (= I R)
                    (= J S)
                    (= K T)
                    (= L U)
                    (= M V)
                    (= N W))
               (<= 1 (+ L (* (- 1) M)))))
      (a!5 (or (not A)
               (not B)
               C
               (not D)
               E
               (and (not X)
                    Y
                    Z
                    A1
                    (not B1)
                    (= F O)
                    (= G P)
                    (= H Q)
                    (= I R)
                    (= J S)
                    (= K T)
                    (= L U)
                    (= M V)
                    (= N W))
               (<= 0 (+ F L (* (- 1) N)))))
      (a!6 (not (<= 0 (+ F L (* (- 1) N)))))
      (a!7 (and (not X)
                Y
                Z
                A1
                B1
                (= F O)
                (= G P)
                (= H Q)
                (= I R)
                (= J S)
                (= K T)
                (= M V)
                (= N W)
                (= (+ L (* (- 1) U)) (- 1))))
      (a!8 (and (not X)
                (not Y)
                (not Z)
                (not A1)
                (not B1)
                (= F O)
                (= G P)
                (= H Q)
                (= I R)
                (= J S)
                (= K T)
                (= L U)
                (= M V)
                (= N W))))
  (and (or (not A) (not B) (not C) (not D) E a!1 (<= 0 L))
       (or A (not B) C D (not E) a!2 a!3)
       (or (not A)
           (not B)
           C
           D
           (not E)
           (and X
                (not Y)
                Z
                (not A1)
                B1
                (= F O)
                (= G P)
                (= H Q)
                (= I R)
                (= J S)
                (= K T)
                (= L U)
                (= M V)
                (= N W))
           (= C1 0))
       (or (not A)
           (not B)
           C
           D
           (not E)
           (and X
                (not Y)
                Z
                (not A1)
                (not B1)
                (= F O)
                (= G P)
                (= H Q)
                (= I R)
                (= J S)
                (= K T)
                (= L U)
                (= M V)
                (= N W))
           (not (= C1 0)))
       a!4
       (or (not A)
           (not B)
           (not C)
           (not D)
           E
           (and X
                (not Y)
                (not Z)
                (not A1)
                (not B1)
                (= F O)
                (= G P)
                (= H Q)
                (= I R)
                (= J S)
                (= K T)
                (= L U)
                (= M V)
                (= N W))
           (not (<= 0 L)))
       a!5
       (or (not A)
           (not B)
           C
           (not D)
           E
           (and (not X)
                Y
                Z
                (not A1)
                (not B1)
                (= F O)
                (= G P)
                (= H Q)
                (= I R)
                (= J S)
                (= K T)
                (= L U)
                (= M V)
                (= N W))
           a!6)
       (or A
           (not B)
           C
           D
           E
           (and (not X)
                (not Y)
                (not Z)
                A1
                (not B1)
                (= F O)
                (= G P)
                (= H Q)
                (= I R)
                (= J S)
                (= K T)
                (= L U)
                (= M V)
                (= N W))
           (<= M 0))
       (or (not A)
           B
           (not C)
           D
           E
           (and (not X)
                (not Y)
                Z
                A1
                B1
                (= G P)
                (= H Q)
                (= I R)
                (= J S)
                (= K T)
                (= L U)
                (= M V)
                (= N W)
                (= O K)))
       (or A
           B
           (not C)
           D
           E
           (and (not X)
                (not Y)
                Z
                (not A1)
                B1
                (= F O)
                (= H Q)
                (= I R)
                (= J S)
                (= K T)
                (= L U)
                (= M V)
                (= N W)
                (= P M)))
       (or (not A)
           (not B)
           C
           D
           E
           (and (not X)
                (not Y)
                Z
                (not A1)
                (not B1)
                (= F O)
                (= G P)
                (= I R)
                (= J S)
                (= K T)
                (= L U)
                (= M V)
                (= N W)
                (= Q 0)))
       (or A
           (not B)
           (not C)
           D
           E
           (and (not X)
                (not Y)
                Z
                A1
                (not B1)
                (= F O)
                (= G P)
                (= H Q)
                (= J S)
                (= K T)
                (= L U)
                (= M V)
                (= N W)
                (= R K)))
       (or (not A)
           B
           C
           D
           E
           (and (not X)
                (not Y)
                (not Z)
                A1
                B1
                (= F O)
                (= G P)
                (= H Q)
                (= I R)
                (= J S)
                (= L U)
                (= M V)
                (= N W)
                (= T 0)))
       (or (not A) B (not C) (not D) E a!7)
       (or A B C (not D) (not E) a!1)
       (or (not A) (not B) (not C) D (not E) a!2)
       (or A
           (not B)
           (not C)
           D
           (not E)
           (and X
                (not Y)
                Z
                A1
                (not B1)
                (= F O)
                (= G P)
                (= H Q)
                (= I R)
                (= J S)
                (= K T)
                (= L U)
                (= M V)
                (= N W)))
       (or (not A)
           B
           C
           D
           (not E)
           (and X
                (not Y)
                (not Z)
                A1
                B1
                (= F O)
                (= G P)
                (= H Q)
                (= I R)
                (= J S)
                (= K T)
                (= L U)
                (= M V)
                (= N W)))
       (or A
           B
           C
           D
           (not E)
           (and X
                (not Y)
                (not Z)
                (not A1)
                B1
                (= F O)
                (= G P)
                (= H Q)
                (= I R)
                (= J S)
                (= K T)
                (= L U)
                (= M V)
                (= N W)))
       (or A
           B
           (not C)
           (not D)
           E
           (and (not X)
                Y
                Z
                (not A1)
                B1
                (= F O)
                (= G P)
                (= H Q)
                (= I R)
                (= J S)
                (= K T)
                (= L U)
                (= M V)
                (= N W)))
       (or (not A)
           B
           C
           (not D)
           E
           (and (not X)
                Y
                (not Z)
                A1
                B1
                (= F O)
                (= G P)
                (= H Q)
                (= I R)
                (= J S)
                (= K T)
                (= L U)
                (= M V)
                (= N W)))
       (or (not A)
           B
           (not C)
           D
           (not E)
           (and (not X)
                Y
                (not Z)
                A1
                (not B1)
                (= F O)
                (= G P)
                (= H Q)
                (= I R)
                (= J S)
                (= K T)
                (= L U)
                (= M V)
                (= N W)))
       (or A B C D E a!8)
       (or A B (not C) D (not E) a!8)
       (or A (not B) C (not D) (not E) a!8)
       (or A (not B) (not C) (not D) E a!8)
       (or A
           B
           C
           (not D)
           E
           (and (not X)
                Y
                (not Z)
                (not A1)
                B1
                (= F O)
                (= G P)
                (= H Q)
                (= H S)
                (= I R)
                (= K T)
                (= L U)
                (= M V)
                (= N W)))
       (or (not A)
           (not B)
           (not C)
           D
           E
           (and (not X)
                Y
                (not Z)
                (not A1)
                (not B1)
                (= F O)
                (= G W)
                (= G P)
                (= H Q)
                (= I R)
                (= J S)
                (= K T)
                (= L U)
                (= M V)))
       (or A
           (not B)
           C
           (not D)
           E
           (and (not X)
                Y
                (not Z)
                A1
                (not B1)
                (= U 0)
                (= F O)
                (= G P)
                (= H Q)
                (= I R)
                (= J S)
                (= K T)
                (= M V)
                (= N W)))
       (or A
           (not B)
           C
           D
           E
           (and X
                Y
                (not Z)
                (not A1)
                B1
                (= F O)
                (= G P)
                (= H Q)
                (= I R)
                (= J S)
                (= K T)
                (= L U)
                (= M V)
                (= N W))
           (not (<= M 0)))))
      )
      (state A1 B1 Z Y X O P Q R S T U V W)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Bool) (E Bool) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) ) 
    (=>
      (and
        (state A B C D E F G H I J K L M N)
        (or (and (not A) (not B) (not C) D E) (and A B C (not D) E))
      )
      false
    )
  )
)

(check-sat)
(exit)
