(set-logic HORN)

(declare-fun |state| ( Bool Bool Bool Bool Bool Bool Int Int Int Int Int Int Int Int ) Bool)

(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Bool) (E Bool) (F Bool) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) ) 
    (=>
      (and
        (and (not E) (not D) (not C) (= B true) (not A) (not F))
      )
      (state A B C D E F G H I J K L M N)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Bool) (E Bool) (F Bool) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) (T Int) (U Int) (V Int) (W Bool) (X Bool) (Y Bool) (Z Bool) (A1 Bool) (B1 Bool) (C1 Int) ) 
    (=>
      (and
        (state A B C D E F G H I J K L M N)
        (let ((a!1 (and W
                (not X)
                (not Y)
                (not Z)
                (not A1)
                (not B1)
                (= G O)
                (= H P)
                (= I Q)
                (= J R)
                (= K S)
                (= L T)
                (= M U)
                (= N V)))
      (a!2 (and (not W)
                X
                (not Y)
                (not Z)
                A1
                B1
                (= G O)
                (= H P)
                (= I Q)
                (= J R)
                (= L T)
                (= M U)
                (= N V)
                (= (+ K (* (- 1) S) M) 0)))
      (a!3 (and (not W)
                X
                Y
                (not Z)
                (not A1)
                (not B1)
                (= G O)
                (= H P)
                (= I Q)
                (= J R)
                (= L T)
                (= M U)
                (= N V)
                (= (+ J K (* (- 1) S)) 0)))
      (a!4 (and (not W)
                X
                (not Y)
                Z
                A1
                (not B1)
                (= G O)
                (= H P)
                (= I Q)
                (= J R)
                (= L T)
                (= M U)
                (= N V)
                (= (+ I K (* (- 1) S)) 0)))
      (a!5 (and (not W)
                X
                Y
                Z
                A1
                B1
                (= G O)
                (= H P)
                (= I Q)
                (= J R)
                (= L T)
                (= M U)
                (= N V)
                (= (+ K (* (- 1) S)) 1)))
      (a!6 (and (not W)
                X
                Y
                Z
                A1
                (not B1)
                (= G O)
                (= H P)
                (= I Q)
                (= J R)
                (= K S)
                (= M U)
                (= N V)
                (= (+ L (* (- 1) T)) (- 1))))
      (a!7 (and (not W)
                (not X)
                Y
                Z
                (not A1)
                (not B1)
                (= G O)
                (= H P)
                (= I Q)
                (= J R)
                (= K S)
                (= L T)
                (= M U)
                (= (+ N (* (- 1) V)) (- 1))))
      (a!8 (and (not W)
                (not X)
                (not Y)
                (not Z)
                (not A1)
                (not B1)
                (= G O)
                (= H P)
                (= I Q)
                (= J R)
                (= K S)
                (= L T)
                (= M U)
                (= N V))))
  (and (or (not A) (not B) C (not D) (not E) F a!1 (not (<= K 0)))
       (or (not A)
           (not B)
           C
           (not D)
           (not E)
           F
           (and (not W)
                X
                Y
                Z
                (not A1)
                (not B1)
                (= G O)
                (= H P)
                (= I Q)
                (= J R)
                (= K S)
                (= L T)
                (= M U)
                (= N V))
           (<= K 0))
       (or (not A)
           B
           C
           (not D)
           (not E)
           F
           (and (not W)
                X
                Y
                (not Z)
                A1
                B1
                (= G O)
                (= H P)
                (= I Q)
                (= J R)
                (= K S)
                (= L T)
                (= M U)
                (= N V))
           (<= G L))
       (or (not A)
           B
           C
           (not D)
           E
           F
           (and (not W)
                X
                Y
                (not Z)
                (not A1)
                B1
                (= G O)
                (= H P)
                (= I Q)
                (= J R)
                (= K S)
                (= L T)
                (= M U)
                (= N V))
           (not (<= G N)))
       (or A
           B
           (not C)
           D
           (not E)
           F
           (and (not W)
                X
                (not Y)
                Z
                A1
                B1
                (= G O)
                (= H P)
                (= I Q)
                (= J R)
                (= K S)
                (= L T)
                (= M U)
                (= N V))
           (= H 1))
       (or A
           B
           (not C)
           D
           (not E)
           F
           (and (not W)
                X
                (not Y)
                Z
                (not A1)
                B1
                (= G O)
                (= H P)
                (= I Q)
                (= J R)
                (= K S)
                (= L T)
                (= M U)
                (= N V))
           (not (= H 1)))
       (or A
           (not B)
           C
           D
           (not E)
           F
           (and (not W)
                X
                (not Y)
                Z
                (not A1)
                (not B1)
                (= G O)
                (= H P)
                (= I Q)
                (= J R)
                (= K S)
                (= L T)
                (= M U)
                (= N V))
           (= H 0))
       (or A
           (not B)
           C
           D
           (not E)
           F
           (and (not W)
                X
                (not Y)
                (not Z)
                A1
                (not B1)
                (= G O)
                (= H P)
                (= I Q)
                (= J R)
                (= K S)
                (= L T)
                (= M U)
                (= N V))
           (not (= H 0)))
       (or (not A)
           (not B)
           (not C)
           (not D)
           E
           F
           (and (not W)
                X
                (not Y)
                (not Z)
                (not A1)
                B1
                (= G O)
                (= H P)
                (= I Q)
                (= J R)
                (= K S)
                (= L T)
                (= M U)
                (= N V))
           (<= 2 H))
       (or (not A)
           (not B)
           (not C)
           (not D)
           E
           F
           (and (not W)
                X
                (not Y)
                (not Z)
                (not A1)
                (not B1)
                (= G O)
                (= H P)
                (= I Q)
                (= J R)
                (= K S)
                (= L T)
                (= M U)
                (= N V))
           (not (<= 2 H)))
       (or A
           (not B)
           (not C)
           (not D)
           E
           F
           (and (not W)
                (not X)
                Y
                Z
                A1
                B1
                (= G O)
                (= H P)
                (= I Q)
                (= J R)
                (= K S)
                (= L T)
                (= M U)
                (= N V))
           (not (<= 0 H)))
       (or A
           (not B)
           (not C)
           (not D)
           E
           F
           (and (not W)
                (not X)
                Y
                Z
                A1
                (not B1)
                (= G O)
                (= H P)
                (= I Q)
                (= J R)
                (= K S)
                (= L T)
                (= M U)
                (= N V))
           (<= 0 H))
       (or (not A)
           B
           C
           (not D)
           E
           F
           (and (not W)
                (not X)
                Y
                (not Z)
                A1
                B1
                (= G O)
                (= H P)
                (= I Q)
                (= J R)
                (= K S)
                (= L T)
                (= M U)
                (= N V))
           (<= G N))
       (or (not A)
           B
           (not C)
           D
           E
           F
           (and (not W)
                (not X)
                Y
                (not Z)
                (not A1)
                (not B1)
                (= G O)
                (= H P)
                (= I Q)
                (= J R)
                (= K S)
                (= L T)
                (= M U)
                (= N V))
           (not (<= 0 G)))
       (or (not A)
           B
           (not C)
           D
           E
           F
           (and (not W)
                (not X)
                (not Y)
                Z
                A1
                B1
                (= G O)
                (= H P)
                (= I Q)
                (= J R)
                (= K S)
                (= L T)
                (= M U)
                (= N V))
           (<= 0 G))
       (or A
           B
           (not C)
           D
           E
           F
           (and (not W)
                (not X)
                (not Y)
                Z
                A1
                (not B1)
                (= G O)
                (= H P)
                (= I Q)
                (= J R)
                (= K S)
                (= L T)
                (= M U)
                (= N V))
           (<= 10 G))
       (or A
           B
           (not C)
           D
           E
           F
           (and (not W)
                (not X)
                (not Y)
                Z
                (not A1)
                B1
                (= G O)
                (= H P)
                (= I Q)
                (= J R)
                (= K S)
                (= L T)
                (= M U)
                (= N V))
           (not (<= 10 G)))
       (or A
           B
           (not C)
           (not D)
           E
           F
           (and (not W)
                (not X)
                Y
                Z
                (not A1)
                B1
                (= G O)
                (= I Q)
                (= J R)
                (= K S)
                (= L T)
                (= M U)
                (= N V)
                (= P C1)))
       (or (not A)
           B
           C
           D
           E
           F
           (and (not W)
                (not X)
                (not Y)
                (not Z)
                A1
                B1
                (= G O)
                (= H P)
                (= J R)
                (= K S)
                (= L T)
                (= M U)
                (= N V)
                (= Q 2000)))
       (or (not A)
           (not B)
           C
           D
           E
           F
           (and (not W)
                (not X)
                (not Y)
                Z
                (not A1)
                (not B1)
                (= G O)
                (= H P)
                (= I Q)
                (= K S)
                (= L T)
                (= M U)
                (= N V)
                (= R 10000)))
       (or (not A) B C D (not E) F a!2)
       (or (not A) (not B) (not C) D (not E) F a!3)
       (or A (not B) (not C) D (not E) F a!4)
       (or (not A) B (not C) (not D) (not E) F a!5)
       (or A
           B
           C
           (not D)
           E
           F
           (and (not W)
                (not X)
                Y
                (not Z)
                (not A1)
                B1
                (= G O)
                (= H P)
                (= I Q)
                (= J R)
                (= L T)
                (= M U)
                (= N V)
                (= S 0)))
       (or A (not B) (not C) (not D) (not E) F a!6)
       (or A
           (not B)
           C
           (not D)
           (not E)
           F
           (and (not W)
                X
                Y
                (not Z)
                A1
                (not B1)
                (= G O)
                (= H P)
                (= I Q)
                (= J R)
                (= K S)
                (= M U)
                (= N V)
                (= T 0)))
       (or A
           (not B)
           C
           D
           E
           F
           (and (not W)
                (not X)
                (not Y)
                (not Z)
                A1
                (not B1)
                (= G O)
                (= H P)
                (= I Q)
                (= J R)
                (= K S)
                (= L T)
                (= N V)
                (= U 4000)))
       (or (not A) (not B) C (not D) E F a!7)
       (or A B C D E (not F) a!1)
       (or A
           B
           (not C)
           (not D)
           (not E)
           F
           (and (not W)
                X
                Y
                Z
                (not A1)
                B1
                (= G O)
                (= H P)
                (= I Q)
                (= J R)
                (= K S)
                (= L T)
                (= M U)
                (= N V)))
       (or (not A)
           (not B)
           (not C)
           (not D)
           (not E)
           F
           (and (not W)
                X
                Y
                (not Z)
                A1
                (not B1)
                (= G O)
                (= H P)
                (= I Q)
                (= J R)
                (= K S)
                (= L T)
                (= M U)
                (= N V)))
       (or A
           B
           C
           (not D)
           (not E)
           F
           (and (not W)
                X
                (not Y)
                Z
                A1
                (not B1)
                (= G O)
                (= H P)
                (= I Q)
                (= J R)
                (= K S)
                (= L T)
                (= M U)
                (= N V)))
       (or (not A)
           B
           (not C)
           D
           (not E)
           F
           (and (not W)
                X
                (not Y)
                (not Z)
                A1
                B1
                (= G O)
                (= H P)
                (= I Q)
                (= J R)
                (= K S)
                (= L T)
                (= M U)
                (= N V)))
       (or (not A)
           (not B)
           C
           D
           (not E)
           F
           (and (not W)
                (not X)
                Y
                (not Z)
                A1
                (not B1)
                (= G O)
                (= H P)
                (= I Q)
                (= J R)
                (= K S)
                (= L T)
                (= M U)
                (= N V)))
       (or A B C D E F a!8)
       (or A B C D (not E) F a!8)
       (or A (not B) C D E (not F) a!8)
       (or A (not B) (not C) D E F a!8)
       (or (not A) B (not C) (not D) E F a!8)
       (or (not A) (not B) (not C) D E F a!8)
       (or A
           (not B)
           C
           (not D)
           E
           F
           (and (not W)
                (not X)
                Y
                (not Z)
                A1
                (not B1)
                (= V 0)
                (= G O)
                (= H P)
                (= I Q)
                (= J R)
                (= K S)
                (= L T)
                (= M U)))
       (or (not A)
           B
           C
           (not D)
           (not E)
           F
           (and W
                (not X)
                (not Y)
                (not Z)
                (not A1)
                B1
                (= G O)
                (= H P)
                (= I Q)
                (= J R)
                (= K S)
                (= L T)
                (= M U)
                (= N V))
           (not (<= G L)))))
      )
      (state A1 B1 Z Y X W O P Q R S T U V)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Bool) (E Bool) (F Bool) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) ) 
    (=>
      (and
        (state A B C D E F G H I J K L M N)
        (and (not E) (not D) (not C) (not B) (not A) (= F true))
      )
      false
    )
  )
)

(check-sat)
(exit)
