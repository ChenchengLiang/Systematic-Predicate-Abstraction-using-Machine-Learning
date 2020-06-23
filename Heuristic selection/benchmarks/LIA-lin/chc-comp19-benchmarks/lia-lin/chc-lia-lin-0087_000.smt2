(set-logic HORN)

(declare-fun |state| ( Bool Bool Bool Bool Bool Int Int Int Int Int ) Bool)

(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Bool) (E Bool) (F Int) (G Int) (H Int) (I Int) (J Int) ) 
    (=>
      (and
        (and (not D) (not C) (= B true) (not A) (not E))
      )
      (state A B C D E F G H I J)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Bool) (E Bool) (F Int) (G Int) (H Int) (I Int) (J Int) (K Bool) (L Bool) (M Bool) (N Bool) (O Bool) (P Int) (Q Int) (R Int) (S Int) (T Int) (U Int) ) 
    (=>
      (and
        (state A B C D E F G H I J)
        (let ((a!1 (= (+ F (* (- 1) H) I (* (- 1) J)) 0))
      (a!2 (and (not L)
                (not M)
                N
                O
                (not K)
                (= F P)
                (= G Q)
                (= H R)
                (= I S)
                (= J T)))
      (a!3 (and (not L)
                (not M)
                N
                (not O)
                K
                (= F P)
                (= H R)
                (= I S)
                (= J T)
                (= (+ G (* (- 1) Q)) (- 1))))
      (a!4 (and (not L)
                (not M)
                N
                (not O)
                (not K)
                (= F P)
                (= H R)
                (= I S)
                (= J T)
                (= (+ G (* (- 1) Q)) (- 1))))
      (a!5 (and (not L)
                M
                (not N)
                O
                (not K)
                (= F P)
                (= H R)
                (= I S)
                (= J T)
                (= (+ G (* (- 1) Q)) 1)))
      (a!6 (and L
                (not M)
                N
                (not O)
                K
                (= F P)
                (= G Q)
                (= I S)
                (= J T)
                (= (+ H (* (- 1) R)) (- 1))))
      (a!7 (and L
                (not M)
                N
                (not O)
                (not K)
                (= F P)
                (= G Q)
                (= I S)
                (= J T)
                (= (+ H (* (- 1) R)) (- 1))))
      (a!8 (and (not L)
                M
                N
                (not O)
                (not K)
                (= F P)
                (= G Q)
                (= H R)
                (= J T)
                (= (+ I (* (- 1) S)) (- 1))))
      (a!9 (and L
                (not M)
                (not N)
                O
                (not K)
                (= F P)
                (= G Q)
                (= H R)
                (= J T)
                (= (+ I (* (- 1) S)) 1)))
      (a!10 (and (not L)
                 M
                 N
                 (not O)
                 K
                 (= F P)
                 (= G Q)
                 (= H R)
                 (= J T)
                 (= (+ I (* (- 1) S)) 1)))
      (a!11 (and (not L)
                 (not M)
                 (not N)
                 O
                 K
                 (= F P)
                 (= G Q)
                 (= H R)
                 (= I S)
                 (= (+ F I (* (- 1) T)) 0)))
      (a!12 (and L M N (not O) K (= F P) (= G Q) (= H R) (= I S) (= J T)))
      (a!13 (and (not L)
                 (not M)
                 (not N)
                 (not O)
                 (not K)
                 (= F P)
                 (= G Q)
                 (= H R)
                 (= I S)
                 (= J T))))
  (and (or (not A)
           B
           (not C)
           D
           E
           (and L M N (not O) (not K) (= F P) (= G Q) (= H R) (= I S) (= J T))
           a!1)
       (or (not A)
           (not B)
           (not C)
           (not D)
           E
           (and L M (not N) O (not K) (= F P) (= G Q) (= H R) (= I S) (= J T))
           (= U 0))
       (or (not A)
           B
           (not C)
           D
           E
           (and L M (not N) (not O) K (= F P) (= G Q) (= H R) (= I S) (= J T))
           (not a!1))
       (or A
           (not B)
           (not C)
           D
           (not E)
           (and L (not M) (not N) O K (= F P) (= G Q) (= H R) (= I S) (= J T))
           (not (= G I)))
       (or A
           (not B)
           (not C)
           D
           E
           (and L
                (not M)
                (not N)
                (not O)
                K
                (= F P)
                (= G Q)
                (= H R)
                (= I S)
                (= J T))
           (not (= U 0)))
       (or (not A)
           (not B)
           C
           D
           E
           (and (not L) M (not N) O K (= F P) (= G Q) (= H R) (= I S) (= J T))
           (= U 0))
       (or A (not B) (not C) D (not E) a!2 (= G I))
       (or (not A)
           (not B)
           (not C)
           (not D)
           E
           (and (not L)
                (not M)
                (not N)
                O
                (not K)
                (= F P)
                (= G Q)
                (= H R)
                (= I S)
                (= J T))
           (not (= U 0)))
       (or (not A)
           (not B)
           C
           D
           E
           (and (not L)
                (not M)
                (not N)
                (not O)
                K
                (= F P)
                (= G Q)
                (= H R)
                (= I S)
                (= J T))
           (not (= U 0)))
       (or (not A) (not B) C (not D) E a!3)
       (or (not A) (not B) (not C) D E a!4)
       (or A B C D (not E) a!5)
       (or A (not B) (not C) (not D) E a!6)
       (or A (not B) C (not D) E a!7)
       (or A B C (not D) E a!8)
       (or A (not B) C D (not E) a!9)
       (or A B (not C) (not D) E a!10)
       (or (not A) (not B) C D (not E) a!11)
       (or (not A) B C D (not E) a!12)
       (or (not A)
           B
           (not C)
           D
           (not E)
           (and L M (not N) O K (= F P) (= G Q) (= H R) (= I S) (= J T)))
       (or A
           B
           (not C)
           D
           (not E)
           (and L
                M
                (not N)
                (not O)
                (not K)
                (= F P)
                (= G Q)
                (= H R)
                (= I S)
                (= J T)))
       (or (not A)
           B
           (not C)
           (not D)
           E
           (and L
                (not M)
                N
                (not O)
                (not K)
                (= F P)
                (= G Q)
                (= H R)
                (= I S)
                (= J T)))
       (or (not A)
           B
           C
           (not D)
           E
           (and (not L)
                M
                (not N)
                (not O)
                K
                (= F P)
                (= G Q)
                (= H R)
                (= I S)
                (= J T)))
       (or A B C (not D) (not E) a!2)
       (or A B C D E a!13)
       (or (not A) (not B) (not C) D (not E) a!13)
       (or A
           (not B)
           C
           D
           E
           (and L
                (not M)
                (not N)
                (not O)
                (not K)
                (= F T)
                (= F P)
                (= G Q)
                (= H R)
                (= I S)))
       (or A
           B
           (not C)
           D
           E
           (and (not L)
                M
                (not N)
                (not O)
                K
                (= R 0)
                (= F P)
                (= G Q)
                (= I S)
                (= J T)))
       (or (not A)
           B
           C
           D
           E
           (and L
                M
                (not N)
                (not O)
                (not K)
                (= Q 0)
                (= S 0)
                (= F P)
                (= H R)
                (= J T)))
       (or A (not B) (not C) D E a!12 (= U 0))))
      )
      (state L M K N O P Q R S T)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Bool) (E Bool) (F Int) (G Int) (H Int) (I Int) (J Int) ) 
    (=>
      (and
        (state A B C D E F G H I J)
        (and (= D true) (not C) (not B) (not A) (= E true))
      )
      false
    )
  )
)

(check-sat)
(exit)
