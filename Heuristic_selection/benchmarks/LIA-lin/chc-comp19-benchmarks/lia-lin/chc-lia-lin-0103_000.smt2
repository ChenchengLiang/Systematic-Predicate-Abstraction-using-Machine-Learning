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
  (forall ( (A Bool) (B Bool) (C Bool) (D Bool) (E Bool) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Bool) (S Bool) (T Bool) (U Bool) (V Bool) ) 
    (=>
      (and
        (state A B C D E F G H I J K)
        (let ((a!1 (and R
                (not S)
                T
                U
                (not V)
                (= F L)
                (= G M)
                (= H N)
                (= I O)
                (= J P)
                (= K Q)))
      (a!2 (and R
                (not S)
                T
                (not U)
                V
                (= F L)
                (= G M)
                (= H N)
                (= I O)
                (= J P)
                (= K Q)))
      (a!3 (not (<= (- 1) (+ F (* (- 1) H)))))
      (a!4 (or A
               B
               C
               D
               (not E)
               (and R
                    (not S)
                    (not T)
                    (not U)
                    V
                    (= F L)
                    (= G M)
                    (= H N)
                    (= I O)
                    (= J P)
                    (= K Q))
               (<= (- 1) (+ F (* (- 1) H)))))
      (a!5 (not (<= 0 (+ G (* (- 2) J)))))
      (a!6 (or (not A)
               B
               C
               (not D)
               E
               (and (not R)
                    S
                    (not T)
                    U
                    V
                    (= F L)
                    (= G M)
                    (= H N)
                    (= I O)
                    (= J P)
                    (= K Q))
               (<= 0 (+ G (* (- 2) J)))))
      (a!7 (or A
               (not B)
               (not C)
               (not D)
               E
               (and (not (<= G 2)) (not (<= J K)))
               (and R
                    (not S)
                    T
                    U
                    V
                    (= F L)
                    (= G M)
                    (= H N)
                    (= I O)
                    (= J P)
                    (= K Q))))
      (a!8 (and (not R)
                S
                (not T)
                U
                (not V)
                (= G M)
                (= H N)
                (= I O)
                (= J P)
                (= K Q)
                (= (+ F (* (- 1) L) I) 0)))
      (a!9 (and R
                (not S)
                (not T)
                U
                V
                (= G M)
                (= H N)
                (= I O)
                (= J P)
                (= K Q)
                (= (+ F (* (- 1) L)) (- 2))))
      (a!10 (and (not R)
                 S
                 (not T)
                 (not U)
                 V
                 (= F L)
                 (= H N)
                 (= I O)
                 (= J P)
                 (= K Q)
                 (= (+ G (* (- 1) M) (* (- 1) I)) 0)))
      (a!11 (and R
                 (not S)
                 T
                 (not U)
                 (not V)
                 (= F L)
                 (= G M)
                 (= H N)
                 (= I O)
                 (= J P)
                 (= (+ K (* (- 1) Q)) (- 1))))
      (a!12 (and (not R)
                 (not S)
                 (not T)
                 (not U)
                 (not V)
                 (= F L)
                 (= G M)
                 (= H N)
                 (= I O)
                 (= J P)
                 (= K Q))))
  (and (or A
           (not B)
           C
           D
           E
           (and R
                S
                (not T)
                U
                (not V)
                (= F L)
                (= G M)
                (= H N)
                (= I O)
                (= J P)
                (= K Q))
           (not (<= I 0)))
       (or (not A)
           B
           C
           D
           E
           (and R
                S
                (not T)
                (not U)
                V
                (= F L)
                (= G M)
                (= H N)
                (= I O)
                (= J P)
                (= K Q))
           (not (<= G 0)))
       (or (not A)
           (not B)
           C
           D
           E
           (and R
                S
                (not T)
                (not U)
                (not V)
                (= F L)
                (= G M)
                (= H N)
                (= I O)
                (= J P)
                (= K Q))
           (not (<= J 0)))
       (or (not A) B (not C) (not D) E a!1 (<= 0 F))
       (or A B C D (not E) a!2 a!3)
       a!4
       (or (not A)
           B
           (not C)
           (not D)
           E
           (and (not R) S T U V (= F L) (= G M) (= H N) (= I O) (= J P) (= K Q))
           (not (<= 0 F)))
       (or (not A)
           B
           C
           (not D)
           E
           (and (not R)
                S
                T
                (not U)
                (not V)
                (= F L)
                (= G M)
                (= H N)
                (= I O)
                (= J P)
                (= K Q))
           a!5)
       a!6
       (or A
           B
           (not C)
           D
           E
           (and (not R)
                (not S)
                T
                U
                (not V)
                (= F L)
                (= G M)
                (= H N)
                (= I O)
                (= J P)
                (= K Q))
           (not (<= I G)))
       (or A
           B
           (not C)
           D
           E
           (and (not R)
                (not S)
                T
                (not U)
                V
                (= F L)
                (= G M)
                (= H N)
                (= I O)
                (= J P)
                (= K Q))
           (<= I G))
       (or (not A)
           (not B)
           C
           D
           E
           (and (not R)
                (not S)
                T
                (not U)
                (not V)
                (= F L)
                (= G M)
                (= H N)
                (= I O)
                (= J P)
                (= K Q))
           (<= J 0))
       (or (not A)
           B
           C
           D
           E
           (and (not R)
                (not S)
                (not T)
                U
                V
                (= F L)
                (= G M)
                (= H N)
                (= I O)
                (= J P)
                (= K Q))
           (<= G 0))
       (or A
           (not B)
           C
           D
           E
           (and (not R)
                (not S)
                (not T)
                U
                (not V)
                (= F L)
                (= G M)
                (= H N)
                (= I O)
                (= J P)
                (= K Q))
           (<= I 0))
       a!7
       (or A (not B) C (not D) E a!8)
       (or (not A) B C D (not E) a!9)
       (or (not A)
           B
           (not C)
           D
           E
           (and (not R)
                (not S)
                T
                U
                V
                (= G M)
                (= H N)
                (= I O)
                (= J P)
                (= K Q)
                (= L 0)))
       (or A B C (not D) E a!10)
       (or (not A) (not B) C D (not E) a!11)
       (or (not A) B (not C) D (not E) a!1)
       (or A (not B) (not C) D (not E) a!2)
       (or A
           (not B)
           C
           D
           (not E)
           (and R
                (not S)
                (not T)
                U
                (not V)
                (= F L)
                (= G M)
                (= H N)
                (= I O)
                (= J P)
                (= K Q)))
       (or (not A)
           (not B)
           (not C)
           (not D)
           E
           (and R
                (not S)
                (not T)
                (not U)
                (not V)
                (= F L)
                (= G M)
                (= H N)
                (= I O)
                (= J P)
                (= K Q)))
       (or A
           B
           (not C)
           D
           (not E)
           (and (not R)
                S
                T
                (not U)
                V
                (= F L)
                (= G M)
                (= H N)
                (= I O)
                (= J P)
                (= K Q)))
       (or A B C D E a!12)
       (or A B C (not D) (not E) a!12)
       (or A (not B) C (not D) (not E) a!12)
       (or A (not B) (not C) D E a!12)
       (or (not A) B C (not D) (not E) a!12)
       (or (not A) (not B) C (not D) E a!12)
       (or (not A) (not B) (not C) D (not E) a!12)
       (or (not A)
           (not B)
           (not C)
           D
           E
           (and (not R)
                S
                (not T)
                (not U)
                (not V)
                (= F L)
                (= G M)
                (= G N)
                (= I O)
                (= J P)
                (= K Q)))
       (or A
           B
           (not C)
           (not D)
           E
           (and (not R)
                S
                T
                (not U)
                V
                (= Q 0)
                (= F L)
                (= G M)
                (= H N)
                (= I O)
                (= J P)))
       (or A
           (not B)
           (not C)
           (not D)
           E
           (and (not R)
                S
                T
                U
                (not V)
                (= F L)
                (= G M)
                (= H N)
                (= I O)
                (= J P)
                (= K Q))
           (<= G 2)
           (<= J K))))
      )
      (state U V T S R L M N O P Q)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Bool) (E Bool) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) ) 
    (=>
      (and
        (state A B C D E F G H I J K)
        (or (and (not A) B C (not D) E) (and A (not B) C (not D) E))
      )
      false
    )
  )
)

(check-sat)
(exit)
