(set-logic HORN)

(declare-fun |state| ( Bool Bool Bool Bool Bool Int Int Int Int Int Int ) Bool)

(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Bool) (E Bool) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) ) 
    (=>
      (and
        (and (not D) (not C) (= B true) (not A) (not E))
      )
      (state A B C D E F G H I J K)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Bool) (E Bool) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Bool) (M Bool) (N Bool) (O Bool) (P Bool) (Q Int) (R Int) (S Int) (T Int) (U Int) (V Int) ) 
    (=>
      (and
        (state A B C D E F G H I J K)
        (let ((a!1 (and (not L)
                (not M)
                (not N)
                O
                P
                (= F Q)
                (= G R)
                (= H S)
                (= I T)
                (= J U)
                (= K V)))
      (a!2 (and (not L)
                M
                (not N)
                O
                (not P)
                (= G R)
                (= H S)
                (= I T)
                (= J U)
                (= K V)
                (= (+ F (* (- 1) Q)) 1)))
      (a!3 (and (not L)
                M
                (not N)
                (not O)
                P
                (= F Q)
                (= H S)
                (= I T)
                (= J U)
                (= K V)
                (= (+ G (* (- 1) R)) 1)))
      (a!4 (and (not L)
                M
                N
                O
                (not P)
                (= F Q)
                (= G R)
                (= I T)
                (= J U)
                (= K V)
                (= (+ H (* (- 1) S)) (- 1))))
      (a!5 (and L
                (not M)
                (not N)
                (not O)
                P
                (= F Q)
                (= G R)
                (= H S)
                (= J U)
                (= K V)
                (= (+ G (* (- 1) T) J) 0)))
      (a!6 (and (not L)
                (not M)
                (not N)
                (not O)
                P
                (= F Q)
                (= G R)
                (= H S)
                (= J U)
                (= K V)
                (= (+ G (* (- 1) T) J) 0)))
      (a!7 (and L
                (not M)
                (not N)
                O
                (not P)
                (= F Q)
                (= G R)
                (= H S)
                (= J U)
                (= K V)
                (= (+ F H (* (- 1) T)) 0)))
      (a!8 (and (not L)
                (not M)
                (not N)
                O
                (not P)
                (= F Q)
                (= G R)
                (= H S)
                (= J U)
                (= K V)
                (= (+ F H (* (- 1) T)) 0)))
      (a!9 (and (not L)
                M
                N
                (not O)
                P
                (= F Q)
                (= G R)
                (= H S)
                (= I T)
                (= K V)
                (= (+ J (* (- 1) U)) (- 1))))
      (a!10 (and (not L)
                 (not M)
                 (not N)
                 (not O)
                 (not P)
                 (= F Q)
                 (= G R)
                 (= H S)
                 (= I T)
                 (= J U)
                 (= K V))))
  (and (or A
           B
           C
           (not D)
           E
           (and L
                (not M)
                N
                O
                (not P)
                (= F Q)
                (= G R)
                (= H S)
                (= I T)
                (= J U)
                (= K V))
           (not (<= F 0)))
       (or A
           B
           C
           D
           (not E)
           (and L
                (not M)
                N
                (not O)
                P
                (= F Q)
                (= G R)
                (= H S)
                (= I T)
                (= J U)
                (= K V))
           (not (<= G 0)))
       (or (not A)
           (not B)
           C
           D
           E
           (and L
                (not M)
                N
                (not O)
                (not P)
                (= F Q)
                (= G R)
                (= H S)
                (= I T)
                (= J U)
                (= K V))
           (not (<= K 200)))
       (or (not A)
           (not B)
           C
           D
           E
           (and L
                (not M)
                (not N)
                (not O)
                (not P)
                (= F Q)
                (= G R)
                (= H S)
                (= I T)
                (= J U)
                (= K V))
           (<= K 200))
       (or A
           (not B)
           C
           D
           E
           (and (not L)
                M
                N
                (not O)
                (not P)
                (= F Q)
                (= G R)
                (= H S)
                (= I T)
                (= J U)
                (= K V))
           (not (<= 0 K)))
       (or A
           (not B)
           C
           D
           E
           (and (not L)
                M
                (not N)
                (not O)
                (not P)
                (= F Q)
                (= G R)
                (= H S)
                (= I T)
                (= J U)
                (= K V))
           (<= 0 K))
       (or A
           B
           C
           (not D)
           E
           (and (not L)
                (not M)
                N
                O
                (not P)
                (= F Q)
                (= G R)
                (= H S)
                (= I T)
                (= J U)
                (= K V))
           (<= F 0))
       (or A
           B
           C
           D
           (not E)
           (and (not L)
                (not M)
                N
                (not O)
                P
                (= F Q)
                (= G R)
                (= H S)
                (= I T)
                (= J U)
                (= K V))
           (<= G 0))
       (or A (not B) (not C) D (not E) a!1 (<= 0 F))
       (or A (not B) C (not D) E a!2)
       (or A (not B) C D (not E) a!3)
       (or (not A) B C (not D) E a!4)
       (or (not A) (not B) C D (not E) a!5)
       (or (not A) (not B) (not C) (not D) E a!6)
       (or (not A) (not B) C (not D) E a!7)
       (or (not A) (not B) (not C) D E a!8)
       (or (not A) B C D (not E) a!9)
       (or (not A)
           B
           (not C)
           D
           (not E)
           (and L M N (not O) P (= F Q) (= G R) (= H S) (= I T) (= J U) (= K V)))
       (or A B C (not D) (not E) a!1)
       (or A
           B
           (not C)
           (not D)
           E
           (and (not L)
                (not M)
                (not N)
                O
                (not P)
                (= F Q)
                (= G R)
                (= H S)
                (= I T)
                (= J U)
                (= K V)))
       (or A
           B
           (not C)
           D
           (not E)
           (and (not L)
                (not M)
                (not N)
                (not O)
                P
                (= F Q)
                (= G R)
                (= H S)
                (= I T)
                (= J U)
                (= K V)))
       (or A B C D E a!10)
       (or A B (not C) D E a!10)
       (or (not A) B C D E a!10)
       (or (not A) (not B) (not C) D (not E) a!10)
       (or (not A)
           B
           (not C)
           (not D)
           E
           (and L M N O (not P) (= U 0) (= F Q) (= G R) (= H S) (= I T) (= K V)))
       (or A
           (not B)
           (not C)
           D
           E
           (and L
                M
                (not N)
                (not O)
                (not P)
                (= S 0)
                (= F Q)
                (= G R)
                (= I T)
                (= J U)
                (= K V)))
       (or A
           (not B)
           (not C)
           (not D)
           E
           (and L
                M
                (not N)
                O
                (not P)
                (= R H)
                (= F Q)
                (= H S)
                (= I T)
                (= J U)
                (= K V)))
       (or (not A)
           B
           (not C)
           D
           E
           (and L
                M
                N
                (not O)
                (not P)
                (= Q K)
                (= G R)
                (= H S)
                (= I T)
                (= J U)
                (= K V)))
       (or A
           (not B)
           (not C)
           D
           (not E)
           (and L
                M
                (not N)
                (not O)
                P
                (= F Q)
                (= G R)
                (= H S)
                (= I T)
                (= J U)
                (= K V))
           (not (<= 0 F)))))
      )
      (state M N L O P Q R S T U V)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Bool) (E Bool) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) ) 
    (=>
      (and
        (state A B C D E F G H I J K)
        (and (= D true) (not C) (not B) (not A) (= E true))
      )
      false
    )
  )
)

(check-sat)
(exit)
