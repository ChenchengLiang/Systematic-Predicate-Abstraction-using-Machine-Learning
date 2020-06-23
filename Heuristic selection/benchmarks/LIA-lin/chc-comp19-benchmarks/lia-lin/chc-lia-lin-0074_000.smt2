(set-logic HORN)

(declare-fun |state| ( Bool Bool Bool Bool Bool Int Int Int Int ) Bool)

(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Bool) (E Bool) (F Int) (G Int) (H Int) (I Int) ) 
    (=>
      (and
        (and (not D) (not C) (= B true) (not A) (not E))
      )
      (state A B C D E F G H I)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Bool) (E Bool) (F Int) (G Int) (H Int) (I Int) (J Bool) (K Bool) (L Bool) (M Bool) (N Bool) (O Int) (P Int) (Q Int) (R Int) ) 
    (=>
      (and
        (state A B C D E F G H I)
        (let ((a!1 (and J K L (not M) N (= F O) (= G P) (= H Q) (= I R)))
      (a!2 (not (<= (+ F (* (- 1) I)) (- 1))))
      (a!3 (or A
               B
               (not C)
               D
               (not E)
               (and J (not K) L (not M) N (= F O) (= G P) (= H Q) (= I R))
               (<= (+ F (* (- 1) I)) (- 1))))
      (a!4 (and J (not K) (not L) M (not N) (= F O) (= G P) (= H Q) (= I R)))
      (a!5 (not (<= 1 (+ F (* (- 1) H)))))
      (a!6 (not (<= 1 (+ F (* (- 1) G)))))
      (a!7 (or A
               (not B)
               C
               (not D)
               E
               (and (not J) K (not L) (not M) N (= F O) (= G P) (= H Q) (= I R))
               (<= 1 (+ F (* (- 1) G)))))
      (a!8 (not (<= 1 (+ G (* (- 1) H)))))
      (a!9 (or (not A)
               (not B)
               (not C)
               D
               E
               (and (not J)
                    (not K)
                    (not L)
                    M
                    (not N)
                    (= F O)
                    (= G P)
                    (= H Q)
                    (= I R))
               (<= 1 (+ F (* (- 1) H)))))
      (a!10 (and J
                 K
                 (not L)
                 M
                 (not N)
                 (= F O)
                 (= H Q)
                 (= I R)
                 (= (+ G (* (- 1) P)) (- 1))))
      (a!11 (and J
                 (not K)
                 L
                 M
                 (not N)
                 (= F O)
                 (= G P)
                 (= H Q)
                 (= (+ I (* (- 1) R)) (- 1))))
      (a!12 (and (not J)
                 (not K)
                 (not L)
                 (not M)
                 (not N)
                 (= F O)
                 (= G P)
                 (= H Q)
                 (= I R)))
      (a!13 (or (not A)
                (not B)
                C
                (not D)
                E
                (and J K L M (not N) (= F O) (= G P) (= H Q) (= I R))
                (<= 1 (+ G (* (- 1) H))))))
  (and (or A B (not C) D (not E) a!1 a!2)
       (or A
           (not B)
           (not C)
           D
           E
           (and J K L (not M) (not N) (= F O) (= G P) (= H Q) (= I R))
           (not (<= 0 H)))
       (or (not A)
           B
           C
           D
           (not E)
           (and J K (not L) (not M) N (= F O) (= G P) (= H Q) (= I R))
           (<= F G))
       a!3
       (or (not A)
           (not B)
           C
           D
           E
           (and J (not K) L (not M) (not N) (= F O) (= G P) (= H Q) (= I R))
           (not (<= 0 F)))
       (or (not A) (not B) (not C) D E a!4 a!5)
       (or (not A)
           (not B)
           (not C)
           (not D)
           E
           (and J (not K) (not L) (not M) N (= F O) (= G P) (= H Q) (= I R))
           (not (<= G H)))
       (or A
           (not B)
           (not C)
           D
           E
           (and (not J) K L (not M) (not N) (= F O) (= G P) (= H Q) (= I R))
           (<= 0 H))
       (or A
           (not B)
           C
           (not D)
           E
           (and (not J) K (not L) M (not N) (= F O) (= G P) (= H Q) (= I R))
           a!6)
       a!7
       (or (not A)
           (not B)
           C
           (not D)
           E
           (and (not J) (not K) L M (not N) (= F O) (= G P) (= H Q) (= I R))
           a!8)
       (or (not A)
           B
           C
           D
           (not E)
           (and (not J) (not K) L (not M) N (= F O) (= G P) (= H Q) (= I R))
           (not (<= F G)))
       (or (not A)
           (not B)
           C
           D
           E
           (and (not J)
                (not K)
                L
                (not M)
                (not N)
                (= F O)
                (= G P)
                (= H Q)
                (= I R))
           (<= 0 F))
       a!9
       (or (not A)
           (not B)
           (not C)
           (not D)
           E
           (and (not J)
                (not K)
                (not L)
                (not M)
                N
                (= F O)
                (= G P)
                (= H Q)
                (= I R))
           (<= G H))
       (or (not A) B C (not D) E a!10)
       (or A B (not C) (not D) E a!11)
       (or (not A) (not B) (not C) D (not E) a!1)
       (or A
           (not B)
           C
           D
           (not E)
           (and J (not K) L M (not N) (= F O) (= G P) (= H Q) (= I R)))
       (or (not A) B (not C) (not D) E a!4)
       (or A
           (not B)
           (not C)
           (not D)
           E
           (and (not J) K L M (not N) (= F O) (= G P) (= H Q) (= I R)))
       (or A
           (not B)
           (not C)
           D
           (not E)
           (and (not J) K L (not M) N (= F O) (= G P) (= H Q) (= I R)))
       (or A B C D E a!12)
       (or A B C D (not E) a!12)
       (or A B C (not D) E a!12)
       (or A B (not C) D E a!12)
       (or (not A) B (not C) D E a!12)
       (or (not A) B (not C) D (not E) a!12)
       (or (not A) (not B) C D (not E) a!12)
       (or (not A)
           B
           C
           D
           E
           (and J K (not L) (not M) (not N) (= F O) (= G P) (= H Q) (= H R)))
       (or A
           (not B)
           C
           D
           E
           (and (not J)
                K
                (not L)
                (not M)
                (not N)
                (= P 0)
                (= F O)
                (= H Q)
                (= I R)))
       a!13))
      )
      (state K J L M N O P Q R)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Bool) (E Bool) (F Int) (G Int) (H Int) (I Int) ) 
    (=>
      (and
        (state A B C D E F G H I)
        (and (not D) (= C true) (= B true) (= A true) (= E true))
      )
      false
    )
  )
)

(check-sat)
(exit)
