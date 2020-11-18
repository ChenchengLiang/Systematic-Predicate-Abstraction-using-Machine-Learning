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
                (not T)
                U
                (not V)
                (= F L)
                (= G M)
                (= H N)
                (= I O)
                (= J P)
                (= K Q)))
      (a!2 (or A
               B
               (not C)
               (not D)
               E
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
                    (= K Q))
               (<= (+ F I (* (- 1) K)) 0)))
      (a!3 (and (not R)
                (not S)
                T
                (not U)
                (not V)
                (= F L)
                (= H N)
                (= I O)
                (= J P)
                (= K Q)
                (= (+ G (* (- 1) M)) (- 1))))
      (a!4 (and (not R)
                S
                (not T)
                (not U)
                V
                (= F L)
                (= G M)
                (= I O)
                (= J P)
                (= K Q)
                (= (+ H (* (- 1) N)) (- 1))))
      (a!5 (and (not R)
                S
                (not T)
                U
                (not V)
                (= F L)
                (= G M)
                (= H N)
                (= I O)
                (= K Q)
                (= (+ J (* (- 1) P)) (- 1))))
      (a!6 (and (not R)
                (not S)
                T
                (not U)
                V
                (= F L)
                (= G M)
                (= H N)
                (= I O)
                (= K Q)
                (= (+ J (* (- 1) P)) (- 1))))
      (a!7 (and R
                (not S)
                (not T)
                (not U)
                V
                (= F L)
                (= G M)
                (= H N)
                (= I O)
                (= K Q)
                (= (+ J (* (- 1) P)) 1)))
      (a!8 (and R
                (not S)
                (not T)
                (not U)
                (not V)
                (= F L)
                (= G M)
                (= H N)
                (= I O)
                (= J P)
                (= (+ K (* (- 1) Q)) (- 1))))
      (a!9 (and (not R)
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
      (a!10 (not (<= (+ F I (* (- 1) K)) 0))))
  (and (or A (not B) (not C) (not D) E a!1 (not (<= J 0)))
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
           (<= J 0))
       a!2
       (or (not A)
           (not B)
           (not C)
           D
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
           (not (<= F H)))
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
                (= H N)
                (= I O)
                (= J P)
                (= K Q))
           (<= F H))
       (or (not A)
           B
           C
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
           (<= I G))
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
                (= H N)
                (= I O)
                (= K Q)
                (= M 0)
                (= P 0)))
       (or (not A) (not B) C D E a!3)
       (or A B C (not D) E a!4)
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
                (= F L)
                (= G M)
                (= I O)
                (= J P)
                (= K Q)
                (= N 0)))
       (or A (not B) C (not D) E a!5)
       (or A B (not C) D E a!6)
       (or A B C D (not E) a!7)
       (or (not A) (not B) (not C) (not D) E a!8)
       (or (not A) B C D (not E) a!1)
       (or (not A)
           B
           (not C)
           (not D)
           E
           (and (not R) S T U V (= F L) (= G M) (= H N) (= I O) (= J P) (= K Q)))
       (or A
           (not B)
           C
           D
           (not E)
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
                (= K Q)))
       (or (not A)
           B
           C
           (not D)
           E
           (and (not R)
                (not S)
                T
                U
                V
                (= F L)
                (= G M)
                (= H N)
                (= I O)
                (= J P)
                (= K Q)))
       (or A
           (not B)
           (not C)
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
                (= K Q)))
       (or A B C D E a!9)
       (or (not A) (not B) C D (not E) a!9)
       (or (not A)
           (not B)
           C
           (not D)
           E
           (and (not R)
                S
                T
                (not U)
                (not V)
                (= Q 0)
                (= F L)
                (= G M)
                (= H N)
                (= I O)
                (= J P)))
       (or A
           B
           (not C)
           (not D)
           E
           (and R
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
           a!10)))
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
        (and (not D) (not C) (not B) (= A true) (= E true))
      )
      false
    )
  )
)

(check-sat)
(exit)
