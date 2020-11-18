(set-logic HORN)

(declare-fun |state| ( Bool Bool Bool Bool Bool Bool Int Int Int Int ) Bool)

(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Bool) (E Bool) (F Bool) (G Int) (H Int) (I Int) (J Int) ) 
    (=>
      (and
        (and (not E) (not D) (not C) (= B true) (not A) (not F))
      )
      (state A B C D E F G H I J)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Bool) (E Bool) (F Bool) (G Int) (H Int) (I Int) (J Int) (K Bool) (L Bool) (M Bool) (N Bool) (O Bool) (P Bool) (Q Int) (R Int) (S Int) (T Int) (U Int) ) 
    (=>
      (and
        (state A B C D E F G H I J)
        (let ((a!1 (and L (not M) N (not O) P (not K) (= G Q) (= H R) (= I S) (= J T)))
      (a!2 (or (not A)
               (not B)
               C
               D
               (not E)
               F
               (and (not L)
                    M
                    (not N)
                    O
                    (not P)
                    K
                    (= G Q)
                    (= H R)
                    (= I S)
                    (= J T))
               (not (<= 1 (+ G J)))))
      (a!3 (and (not L) (not M) N (not O) P K (= G Q) (= H R) (= I S) (= J T)))
      (a!4 (and (not L)
                (not M)
                N
                (not O)
                P
                (not K)
                (= G Q)
                (= H R)
                (= I S)
                (= J T)))
      (a!5 (and (not L)
                (not M)
                N
                (not O)
                (not P)
                K
                (= G Q)
                (= H R)
                (= I S)
                (= J T)))
      (a!6 (and (not L)
                (not M)
                (not N)
                O
                (not P)
                K
                (= H R)
                (= I S)
                (= J T)
                (= (+ G (* (- 1) Q)) (- 1))))
      (a!7 (and L
                M
                (not N)
                O
                (not P)
                K
                (= G Q)
                (= I S)
                (= J T)
                (= (+ H (* (- 1) R)) (- 1))))
      (a!8 (and (not L)
                (not M)
                (not N)
                (not O)
                P
                (not K)
                (= G Q)
                (= H R)
                (= J T)
                (= (+ G H I (* (- 1) S) J) 1)))
      (a!9 (and L
                M
                (not N)
                O
                (not P)
                (not K)
                (= G Q)
                (= H R)
                (= J T)
                (= (+ G I (* (- 1) S) J) 1)))
      (a!10 (and (not L)
                 (not M)
                 (not N)
                 O
                 (not P)
                 (not K)
                 (= G Q)
                 (= H R)
                 (= J T)
                 (= (+ I (* (- 1) S)) 1)))
      (a!11 (and L
                 M
                 N
                 (not O)
                 (not P)
                 (not K)
                 (= G Q)
                 (= H R)
                 (= I S)
                 (= (+ H J (* (- 1) T)) 0)))
      (a!12 (and (not L)
                 (not M)
                 (not N)
                 (not O)
                 (not P)
                 (not K)
                 (= G Q)
                 (= H R)
                 (= I S)
                 (= J T)))
      (a!13 (or A
                (not B)
                (not C)
                D
                E
                (not F)
                (and L
                     M
                     (not N)
                     (not O)
                     P
                     (not K)
                     (= G Q)
                     (= H R)
                     (= I S)
                     (= J T))
                (not (<= 1 (+ G H I J))))))
  (and (or A
           (not B)
           (not C)
           D
           E
           F
           (and L M (not N) (not O) (not P) K (= G Q) (= H R) (= I S) (= J T))
           (not (= G 0)))
       (or A
           (not B)
           (not C)
           D
           E
           F
           (and L
                M
                (not N)
                (not O)
                (not P)
                (not K)
                (= G Q)
                (= H R)
                (= I S)
                (= J T))
           (= G 0))
       (or (not A)
           B
           C
           (not D)
           (not E)
           F
           (and L (not M) N O (not P) K (= G Q) (= H R) (= I S) (= J T))
           (<= 1 I))
       (or (not A)
           B
           C
           D
           (not E)
           F
           (and L (not M) N O (not P) (not K) (= G Q) (= H R) (= I S) (= J T))
           (= U 0))
       (or A (not B) C D E (not F) a!1 (<= 0 H))
       (or (not A)
           B
           C
           (not D)
           E
           F
           (and L (not M) N (not O) (not P) K (= G Q) (= H R) (= I S) (= J T))
           (not (= U 0)))
       (or A
           (not B)
           C
           (not D)
           E
           F
           (and L
                (not M)
                N
                (not O)
                (not P)
                (not K)
                (= G Q)
                (= H R)
                (= I S)
                (= J T))
           (not (= U 0)))
       (or (not A)
           B
           C
           D
           (not E)
           F
           (and L (not M) (not N) O (not P) K (= G Q) (= H R) (= I S) (= J T))
           (not (= U 0)))
       (or (not A)
           B
           C
           (not D)
           E
           F
           (and L
                (not M)
                (not N)
                O
                (not P)
                (not K)
                (= G Q)
                (= H R)
                (= I S)
                (= J T))
           (= U 0))
       (or A
           (not B)
           C
           D
           E
           (not F)
           (and L
                (not M)
                (not N)
                (not O)
                P
                (not K)
                (= G Q)
                (= H R)
                (= I S)
                (= J T))
           (not (<= 0 H)))
       (or A
           (not B)
           C
           D
           E
           F
           (and L
                (not M)
                (not N)
                (not O)
                (not P)
                K
                (= G Q)
                (= H R)
                (= I S)
                (= J T))
           (not (= H 0)))
       (or A
           (not B)
           C
           D
           E
           F
           (and L
                (not M)
                (not N)
                (not O)
                (not P)
                (not K)
                (= G Q)
                (= H R)
                (= I S)
                (= J T))
           (= H 0))
       (or (not A)
           B
           C
           (not D)
           (not E)
           F
           (and (not L) M N O (not P) (not K) (= G Q) (= H R) (= I S) (= J T))
           (not (<= 1 I)))
       (or (not A)
           (not B)
           C
           (not D)
           E
           F
           (and (not L) M N (not O) (not P) K (= G Q) (= H R) (= I S) (= J T))
           (not (<= 1 I)))
       (or (not A)
           (not B)
           C
           (not D)
           E
           F
           (and (not L)
                M
                N
                (not O)
                (not P)
                (not K)
                (= G Q)
                (= H R)
                (= I S)
                (= J T))
           (<= 1 I))
       a!2
       (or (not A)
           (not B)
           C
           D
           (not E)
           F
           (and (not L)
                M
                (not N)
                O
                (not P)
                (not K)
                (= G Q)
                (= H R)
                (= I S)
                (= J T))
           (<= 1 (+ G J)))
       (or (not A)
           (not B)
           C
           D
           E
           (not F)
           (and (not L)
                M
                (not N)
                (not O)
                P
                (not K)
                (= G Q)
                (= H R)
                (= I S)
                (= J T))
           (not (<= 0 G)))
       (or (not A)
           (not B)
           C
           D
           E
           F
           (and (not L)
                M
                (not N)
                (not O)
                (not P)
                K
                (= G Q)
                (= H R)
                (= I S)
                (= J T))
           (not (= J 0)))
       (or (not A)
           (not B)
           C
           D
           E
           F
           (and (not L)
                M
                (not N)
                (not O)
                (not P)
                (not K)
                (= G Q)
                (= H R)
                (= I S)
                (= J T))
           (= J 0))
       (or (not A) (not B) C D E (not F) a!3 (<= 0 G))
       (or A (not B) (not C) D E (not F) a!4 (<= 1 (+ G H I J)))
       (or (not A) (not B) (not C) D E F a!5 (not (<= 1 I)))
       (or (not A)
           (not B)
           (not C)
           D
           E
           F
           (and (not L)
                (not M)
                N
                (not O)
                (not P)
                (not K)
                (= G Q)
                (= H R)
                (= I S)
                (= J T))
           (<= 1 I))
       (or A
           (not B)
           C
           (not D)
           E
           F
           (and (not L)
                (not M)
                (not N)
                (not O)
                P
                K
                (= G Q)
                (= H R)
                (= I S)
                (= J T))
           (= U 0))
       (or A B C D (not E) F a!6)
       (or A
           B
           (not C)
           (not D)
           (not E)
           F
           (and (not L) M N O (not P) K (= H R) (= I S) (= J T) (= Q 0)))
       (or (not A)
           (not B)
           (not C)
           D
           (not E)
           F
           (and (not L)
                (not M)
                N
                O
                (not P)
                (not K)
                (= H R)
                (= I S)
                (= J T)
                (= Q 0)))
       (or (not A) B (not C) D (not E) F a!7)
       (or (not A) (not B) (not C) (not D) (not E) F a!8)
       (or A (not B) (not C) D (not E) F a!9)
       (or (not A) (not B) (not C) (not D) E F a!10)
       (or A (not B) (not C) (not D) E F a!11)
       (or (not A)
           B
           (not C)
           D
           E
           (not F)
           (and L M (not N) (not O) P K (= G Q) (= H R) (= I S) (= J T)))
       (or (not A) B C (not D) E (not F) a!1)
       (or (not A)
           B
           C
           D
           E
           (not F)
           (and L (not M) (not N) (not O) P K (= G Q) (= H R) (= I S) (= J T)))
       (or A
           B
           (not C)
           D
           E
           (not F)
           (and (not L) M (not N) (not O) P K (= G Q) (= H R) (= I S) (= J T)))
       (or A
           B
           C
           D
           E
           (not F)
           (and (not L) (not M) N O (not P) K (= G Q) (= H R) (= I S) (= J T)))
       (or A (not B) C (not D) E (not F) a!3)
       (or A B C (not D) E (not F) a!4)
       (or A (not B) C D (not E) F a!5)
       (or A
           (not B)
           C
           (not D)
           (not E)
           F
           (and (not L)
                (not M)
                (not N)
                O
                (not P)
                K
                (= G Q)
                (= H R)
                (= I S)
                (= J T)))
       (or A B C D E F a!12)
       (or A B C (not D) E F a!12)
       (or A B (not C) D E F a!12)
       (or A B (not C) D (not E) F a!12)
       (or A B (not C) (not D) E F a!12)
       (or (not A) B C D E F a!12)
       (or (not A) B (not C) D E F a!12)
       (or (not A) (not B) C (not D) (not E) F a!12)
       (or (not A) (not B) (not C) D E (not F) a!12)
       (or A
           (not B)
           (not C)
           (not D)
           (not E)
           F
           (and L M N O (not P) (not K) (= T 0) (= G Q) (= H R) (= I S)))
       (or A
           B
           C
           (not D)
           (not E)
           F
           (and (not L) (not M) N O (not P) K (= T 0) (= G Q) (= H R) (= I S)))
       (or (not A)
           B
           (not C)
           (not D)
           E
           F
           (and L M N (not O) (not P) K (= R 0) (= G Q) (= I S) (= J T)))
       (or (not A)
           B
           (not C)
           (not D)
           (not E)
           F
           (and L M N O (not P) K (= R 1) (= G Q) (= I S) (= J T)))
       a!13))
      )
      (state L K M N O P Q R S T)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Bool) (E Bool) (F Bool) (G Int) (H Int) (I Int) (J Int) ) 
    (=>
      (and
        (state A B C D E F G H I J)
        (or (and (not A) (not B) (not C) D (not E) F)
    (and (not A) B (not C) D (not E) F)
    (and A (not B) (not C) D (not E) F))
      )
      false
    )
  )
)

(check-sat)
(exit)
