(set-logic HORN)

(declare-fun |state| ( Bool Bool Bool Bool Bool Bool Int Int Int Int Int Int ) Bool)

(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Bool) (E Bool) (F Bool) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) ) 
    (=>
      (and
        (and (not E) (not D) (not C) (= B true) (not A) (not F))
      )
      (state A B C D E F G H I J K L)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Bool) (E Bool) (F Bool) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Bool) (N Bool) (O Bool) (P Bool) (Q Bool) (R Bool) (S Int) (T Int) (U Int) (V Int) (W Int) (X Int) (Y Int) ) 
    (=>
      (and
        (state A B C D E F G H I J K L)
        (let ((a!1 (and N
                O
                P
                (not Q)
                (not R)
                M
                (= G S)
                (= H T)
                (= I U)
                (= J V)
                (= K W)
                (= L X)))
      (a!2 (and N
                O
                (not P)
                (not Q)
                R
                M
                (= G S)
                (= H T)
                (= I U)
                (= J V)
                (= K W)
                (= L X)))
      (a!3 (<= 0 (+ H (* (- 1) I) (* (- 1) L))))
      (a!4 (and N
                (not O)
                P
                (not Q)
                R
                M
                (= G S)
                (= H T)
                (= I U)
                (= J V)
                (= K W)
                (= L X)))
      (a!5 (<= (+ H (* (- 1) I) (* (- 1) L)) 0))
      (a!6 (and N
                O
                P
                Q
                (not R)
                M
                (= H T)
                (= I U)
                (= J V)
                (= K W)
                (= L X)
                (= (+ G (* (- 1) S)) (- 1))))
      (a!7 (and (not N)
                (not O)
                (not P)
                Q
                (not R)
                (not M)
                (= H T)
                (= I U)
                (= J V)
                (= K W)
                (= L X)
                (= (+ G (* (- 1) S)) (- 1))))
      (a!8 (and N
                (not O)
                P
                Q
                (not R)
                M
                (= G S)
                (= I U)
                (= J V)
                (= K W)
                (= L X)
                (= (+ H (* (- 1) T)) (- 1))))
      (a!9 (and (not N)
                O
                P
                (not Q)
                (not R)
                (not M)
                (= G S)
                (= I U)
                (= J V)
                (= K W)
                (= L X)
                (= (+ H (* (- 1) T)) (- 1))))
      (a!10 (and (not N)
                 O
                 (not P)
                 (not Q)
                 R
                 (not M)
                 (= G S)
                 (= I U)
                 (= J V)
                 (= K W)
                 (= L X)
                 (= (+ H (* (- 1) T)) 1)))
      (a!11 (and (not N)
                 O
                 P
                 Q
                 (not R)
                 M
                 (= G S)
                 (= H T)
                 (= I U)
                 (= K W)
                 (= L X)
                 (= (+ J (* (- 1) V)) (- 1))))
      (a!12 (and (not N)
                 O
                 P
                 (not Q)
                 (not R)
                 M
                 (= G S)
                 (= H T)
                 (= I U)
                 (= K W)
                 (= L X)
                 (= (+ J (* (- 1) V)) (- 1))))
      (a!13 (and (not N)
                 O
                 (not P)
                 Q
                 (not R)
                 M
                 (= G S)
                 (= H T)
                 (= I U)
                 (= K W)
                 (= L X)
                 (= (+ J (* (- 1) V)) (- 1))))
      (a!14 (and (not N)
                 O
                 (not P)
                 (not Q)
                 R
                 M
                 (= G S)
                 (= H T)
                 (= I U)
                 (= K W)
                 (= L X)
                 (= (+ J (* (- 1) V)) (- 1))))
      (a!15 (and N
                 O
                 P
                 Q
                 (not R)
                 (not M)
                 (= G S)
                 (= H T)
                 (= I U)
                 (= J V)
                 (= K W)
                 (= L X)))
      (a!16 (and (not N)
                 (not O)
                 (not P)
                 (not Q)
                 (not R)
                 (not M)
                 (= G S)
                 (= H T)
                 (= I U)
                 (= J V)
                 (= K W)
                 (= L X))))
  (and (or A B C (not D) E F a!1 (= Y 0))
       (or (not A)
           B
           C
           (not D)
           E
           F
           (and N
                O
                P
                (not Q)
                (not R)
                (not M)
                (= G S)
                (= H T)
                (= I U)
                (= J V)
                (= K W)
                (= L X))
           (not (<= L J)))
       (or (not A)
           (not B)
           C
           D
           (not E)
           F
           (and N
                O
                (not P)
                Q
                (not R)
                (not M)
                (= G S)
                (= H T)
                (= I U)
                (= J V)
                (= K W)
                (= L X))
           (not (<= K J)))
       (or A B C D E (not F) a!2 (not (<= I L)))
       (or (not A)
           B
           C
           D
           E
           (not F)
           (and N
                O
                (not P)
                (not Q)
                R
                (not M)
                (= G S)
                (= H T)
                (= I U)
                (= J V)
                (= K W)
                (= L X))
           (not (<= L J)))
       (or (not A)
           B
           (not C)
           D
           E
           F
           (and N
                O
                (not P)
                (not Q)
                (not R)
                M
                (= G S)
                (= H T)
                (= I U)
                (= J V)
                (= K W)
                (= L X))
           (<= K G))
       (or A
           (not B)
           C
           (not D)
           (not E)
           F
           (and N
                (not O)
                P
                Q
                (not R)
                (not M)
                (= G S)
                (= H T)
                (= I U)
                (= J V)
                (= K W)
                (= L X))
           a!3)
       (or A B C (not D) E (not F) a!4 a!5)
       (or (not A)
           B
           C
           (not D)
           E
           F
           (and N
                (not O)
                P
                (not Q)
                (not R)
                M
                (= G S)
                (= H T)
                (= I U)
                (= J V)
                (= K W)
                (= L X))
           (<= L J))
       (or A
           (not B)
           C
           D
           (not E)
           F
           (and N
                (not O)
                (not P)
                Q
                (not R)
                (not M)
                (= G S)
                (= H T)
                (= I U)
                (= J V)
                (= K W)
                (= L X))
           (<= I 5))
       (or (not A)
           B
           C
           D
           E
           (not F)
           (and N
                (not O)
                (not P)
                (not Q)
                R
                M
                (= G S)
                (= H T)
                (= I U)
                (= J V)
                (= K W)
                (= L X))
           (<= L J))
       (or A
           (not B)
           C
           D
           E
           F
           (and N
                (not O)
                (not P)
                (not Q)
                (not R)
                M
                (= G S)
                (= H T)
                (= I U)
                (= J V)
                (= K W)
                (= L X))
           (not a!5))
       (or A
           (not B)
           C
           D
           E
           F
           (and N
                (not O)
                (not P)
                (not Q)
                (not R)
                (not M)
                (= G S)
                (= H T)
                (= I U)
                (= J V)
                (= K W)
                (= L X))
           a!5)
       (or A
           (not B)
           C
           (not D)
           (not E)
           F
           (and (not N)
                O
                P
                Q
                (not R)
                (not M)
                (= G S)
                (= H T)
                (= I U)
                (= J V)
                (= K W)
                (= L X))
           (not a!3))
       (or (not A)
           (not B)
           C
           D
           (not E)
           F
           (and (not N)
                O
                (not P)
                Q
                (not R)
                (not M)
                (= G S)
                (= H T)
                (= I U)
                (= J V)
                (= K W)
                (= L X))
           (<= K J))
       (or A
           B
           (not C)
           D
           E
           F
           (and (not N)
                O
                (not P)
                (not Q)
                (not R)
                M
                (= G S)
                (= H T)
                (= I U)
                (= J V)
                (= K W)
                (= L X))
           (<= L G))
       (or (not A)
           (not B)
           (not C)
           D
           (not E)
           F
           (and (not N)
                (not O)
                P
                Q
                (not R)
                (not M)
                (= G S)
                (= H T)
                (= I U)
                (= J V)
                (= K W)
                (= L X))
           (<= K J))
       (or A
           B
           C
           (not D)
           E
           (not F)
           (and (not N)
                (not O)
                P
                (not Q)
                R
                M
                (= G S)
                (= H T)
                (= I U)
                (= J V)
                (= K W)
                (= L X))
           (not a!5))
       (or A
           B
           (not C)
           D
           E
           F
           (and (not N)
                (not O)
                P
                (not Q)
                R
                (not M)
                (= G S)
                (= H T)
                (= I U)
                (= J V)
                (= K W)
                (= L X))
           (not (<= L G)))
       (or A
           B
           C
           (not D)
           E
           F
           (and (not N)
                (not O)
                P
                (not Q)
                (not R)
                M
                (= G S)
                (= H T)
                (= I U)
                (= J V)
                (= K W)
                (= L X))
           (not (= Y 0)))
       (or (not A)
           B
           (not C)
           D
           E
           F
           (and (not N)
                (not O)
                (not P)
                Q
                (not R)
                M
                (= G S)
                (= H T)
                (= I U)
                (= J V)
                (= K W)
                (= L X))
           (not (<= K G)))
       (or A
           B
           C
           D
           E
           (not F)
           (and (not N)
                (not O)
                (not P)
                (not Q)
                R
                M
                (= G S)
                (= H T)
                (= I U)
                (= J V)
                (= K W)
                (= L X))
           (<= I L))
       (or A
           (not B)
           C
           D
           (not E)
           F
           (and (not N)
                (not O)
                (not P)
                (not Q)
                R
                (not M)
                (= G S)
                (= H T)
                (= I U)
                (= J V)
                (= K W)
                (= L X))
           (not (<= I 5)))
       (or (not A) B (not C) (not D) (not E) F a!6)
       (or (not A) (not B) (not C) (not D) E F a!7)
       (or A
           (not B)
           (not C)
           D
           E
           F
           (and N
                O
                (not P)
                (not Q)
                (not R)
                (not M)
                (= H T)
                (= I U)
                (= J V)
                (= K W)
                (= L X)
                (= S 0)))
       (or (not A)
           (not B)
           C
           D
           E
           F
           (and (not N)
                O
                (not P)
                (not Q)
                (not R)
                (not M)
                (= H T)
                (= I U)
                (= J V)
                (= K W)
                (= L X)
                (= S 0)))
       (or (not A) B C (not D) (not E) F a!8)
       (or (not A) (not B) C (not D) E F a!9)
       (or (not A) (not B) C D E (not F) a!10)
       (or A B (not C) (not D) (not E) F a!11)
       (or A B (not C) (not D) E F a!12)
       (or A B (not C) D (not E) F a!13)
       (or A B (not C) D E (not F) a!14)
       (or (not A) (not B) (not C) D E (not F) a!15)
       (or (not A) B (not C) (not D) E F a!1)
       (or A
           (not B)
           (not C)
           (not D)
           (not E)
           F
           (and N
                O
                (not P)
                Q
                (not R)
                M
                (= G S)
                (= H T)
                (= I U)
                (= J V)
                (= K W)
                (= L X)))
       (or (not A) B (not C) D E (not F) a!2)
       (or A
           B
           C
           D
           (not E)
           F
           (and N
                O
                (not P)
                (not Q)
                (not R)
                (not M)
                (= G S)
                (= H T)
                (= I U)
                (= J V)
                (= K W)
                (= L X)))
       (or (not A) (not B) C (not D) E (not F) a!4)
       (or A
           (not B)
           C
           (not D)
           E
           (not F)
           (and N
                (not O)
                P
                (not Q)
                R
                (not M)
                (= G S)
                (= H T)
                (= I U)
                (= J V)
                (= K W)
                (= L X)))
       (or A
           (not B)
           (not C)
           (not D)
           E
           F
           (and N
                (not O)
                P
                (not Q)
                (not R)
                (not M)
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
           F
           (and N
                (not O)
                (not P)
                Q
                (not R)
                M
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
           E
           (not F)
           (and N
                (not O)
                (not P)
                (not Q)
                R
                (not M)
                (= G S)
                (= H T)
                (= I U)
                (= J V)
                (= K W)
                (= L X)))
       (or (not A)
           (not B)
           (not C)
           (not D)
           (not E)
           F
           (and (not N)
                O
                (not P)
                (not Q)
                (not R)
                (not M)
                (= G S)
                (= H T)
                (= I U)
                (= J V)
                (= K W)
                (= L X)))
       (or (not A)
           (not B)
           C
           (not D)
           (not E)
           F
           (and (not N)
                (not O)
                P
                Q
                (not R)
                M
                (= G S)
                (= H T)
                (= I U)
                (= J V)
                (= K W)
                (= L X)))
       (or A B C D E F a!16)
       (or (not A) B C D E F a!16)
       (or (not A) B C (not D) E (not F) a!16)
       (or (not A)
           B
           (not C)
           D
           (not E)
           F
           (and N
                O
                (not P)
                Q
                (not R)
                M
                (= V 0)
                (= G S)
                (= H T)
                (= I U)
                (= K W)
                (= L X)))
       (or A
           (not B)
           C
           (not D)
           E
           F
           (and N
                (not O)
                P
                (not Q)
                (not R)
                (not M)
                (= V 0)
                (= G S)
                (= H T)
                (= I U)
                (= K W)
                (= L X)))
       (or (not A)
           B
           C
           D
           (not E)
           F
           (and N
                (not O)
                (not P)
                Q
                (not R)
                M
                (= V 0)
                (= G S)
                (= H T)
                (= I U)
                (= K W)
                (= L X)))
       (or A
           (not B)
           C
           D
           E
           (not F)
           (and N
                (not O)
                (not P)
                (not Q)
                R
                (not M)
                (= V 0)
                (= G S)
                (= H T)
                (= I U)
                (= K W)
                (= L X)))
       (or A
           B
           C
           (not D)
           (not E)
           F
           (and (not N)
                (not O)
                P
                Q
                (not R)
                M
                (= T 0)
                (= G S)
                (= I U)
                (= J V)
                (= K W)
                (= L X)))
       (or (not A)
           (not B)
           (not C)
           D
           E
           F
           (and (not N)
                (not O)
                P
                (not Q)
                (not R)
                (not M)
                (= T I)
                (= G S)
                (= I U)
                (= J V)
                (= K W)
                (= L X)))
       (or (not A) (not B) (not C) D (not E) F a!15 (not (<= K J)))))
      )
      (state N M O P Q R S T U V W X)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Bool) (E Bool) (F Bool) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) ) 
    (=>
      (and
        (state A B C D E F G H I J K L)
        (and (not E) (= D true) (not C) (= B true) (= A true) (= F true))
      )
      false
    )
  )
)

(check-sat)
(exit)
