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
  (forall ( (A Bool) (B Bool) (C Bool) (D Bool) (E Bool) (F Int) (G Int) (H Int) (I Int) (J Int) (K Bool) (L Bool) (M Bool) (N Bool) (O Bool) (P Int) (Q Int) (R Int) (S Int) (T Int) ) 
    (=>
      (and
        (state A B C D E F G H I J)
        (let ((a!1 (or A
               B
               (not C)
               D
               E
               (and K
                    (not L)
                    M
                    (not N)
                    (not O)
                    (= F P)
                    (= G Q)
                    (= H R)
                    (= I S)
                    (= J T))
               (<= (+ (* 2 H) (* (- 1) J)) 0)))
      (a!2 (and (not K)
                L
                (not M)
                (not N)
                O
                (= F P)
                (= G Q)
                (= H R)
                (= I S)
                (= J T)))
      (a!3 (and K
                L
                M
                (not N)
                (not O)
                (= G Q)
                (= H R)
                (= I S)
                (= J T)
                (= (+ F (* (- 1) P)) (- 1))))
      (a!4 (and (not K)
                L
                M
                N
                (not O)
                (= F P)
                (= H R)
                (= I S)
                (= J T)
                (= (+ G (* (- 1) Q)) (- 1))))
      (a!5 (and (not K)
                L
                (not M)
                N
                (not O)
                (= F P)
                (= G Q)
                (= H R)
                (= I S)
                (= (+ J (* (- 1) T)) (- 1))))
      (a!6 (and (not K)
                (not L)
                (not M)
                (not N)
                (not O)
                (= F P)
                (= G Q)
                (= H R)
                (= I S)
                (= J T)))
      (a!7 (not (<= (+ (* 2 H) (* (- 1) J)) 0))))
  (and (or (not A)
           (not B)
           (not C)
           D
           E
           (and K L (not M) N (not O) (= F P) (= G Q) (= H R) (= I S) (= J T))
           (not (= I 0)))
       (or A
           (not B)
           (not C)
           D
           E
           (and K (not L) M N (not O) (= F P) (= G Q) (= H R) (= I S) (= J T))
           (not (= I 0)))
       a!1
       (or A
           (not B)
           (not C)
           D
           E
           (and (not K)
                L
                M
                (not N)
                (not O)
                (= F P)
                (= G Q)
                (= H R)
                (= I S)
                (= J T))
           (= I 0))
       (or (not A) (not B) (not C) (not D) E a!2 (= F G))
       (or (not A)
           (not B)
           (not C)
           D
           E
           (and (not K)
                (not L)
                (not M)
                N
                (not O)
                (= F P)
                (= G Q)
                (= H R)
                (= I S)
                (= J T))
           (= I 0))
       (or (not A)
           (not B)
           (not C)
           (not D)
           E
           (and (not K)
                (not L)
                (not M)
                (not N)
                O
                (= F P)
                (= G Q)
                (= H R)
                (= I S)
                (= J T))
           (not (= F G)))
       (or (not A) B (not C) D E a!3)
       (or A (not B) (not C) (not D) E a!4)
       (or A (not B) C (not D) E a!5)
       (or (not A)
           B
           (not C)
           (not D)
           E
           (and K L M (not N) (not O) (= F P) (= G Q) (= H R) (= I S) (= J T)))
       (or A
           B
           (not C)
           (not D)
           E
           (and K
                (not L)
                (not M)
                N
                (not O)
                (= F P)
                (= G Q)
                (= H R)
                (= I S)
                (= J T)))
       (or A
           B
           C
           D
           (not E)
           (and K
                (not L)
                (not M)
                (not N)
                O
                (= F P)
                (= G Q)
                (= H R)
                (= I S)
                (= J T)))
       (or (not A) B C D (not E) a!2)
       (or (not A)
           B
           C
           (not D)
           E
           (and (not K)
                (not L)
                M
                (not N)
                (not O)
                (= F P)
                (= G Q)
                (= H R)
                (= I S)
                (= J T)))
       (or A B C D E a!6)
       (or A (not B) C D (not E) a!6)
       (or (not A)
           (not B)
           C
           D
           E
           (and (not K)
                (not L)
                M
                (not N)
                (not O)
                (= T 0)
                (= F P)
                (= G Q)
                (= H R)
                (= I S)))
       (or A
           B
           C
           (not D)
           E
           (and K
                (not L)
                (not M)
                N
                (not O)
                (= S 0)
                (= F P)
                (= G Q)
                (= H R)
                (= J T)))
       (or (not A)
           (not B)
           C
           (not D)
           E
           (and (not K)
                (not L)
                M
                N
                (not O)
                (= S 1)
                (= F P)
                (= G Q)
                (= H R)
                (= J T)))
       (or (not A)
           B
           C
           D
           E
           (and K
                L
                (not M)
                (not N)
                (not O)
                (= R 100)
                (= F P)
                (= G Q)
                (= I S)
                (= J T)))
       (or A
           (not B)
           C
           D
           E
           (and (not K)
                L
                (not M)
                (not N)
                (not O)
                (= P G)
                (= G Q)
                (= H R)
                (= I S)
                (= J T)))
       (or A
           B
           (not C)
           D
           E
           (and K L M N (not O) (= F P) (= G Q) (= H R) (= I S) (= J T))
           a!7)))
      )
      (state L K M N O P Q R S T)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Bool) (E Bool) (F Int) (G Int) (H Int) (I Int) (J Int) ) 
    (=>
      (and
        (state A B C D E F G H I J)
        (and (not D) (not C) (not B) (= A true) (= E true))
      )
      false
    )
  )
)

(check-sat)
(exit)
