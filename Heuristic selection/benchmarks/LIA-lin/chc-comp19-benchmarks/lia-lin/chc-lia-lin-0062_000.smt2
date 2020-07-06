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
  (forall ( (A Bool) (B Bool) (C Bool) (D Bool) (E Bool) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Bool) (O Bool) (P Bool) (Q Bool) (R Bool) ) 
    (=>
      (and
        (state A B C D E F G H I)
        (let ((a!1 (and (not N) O (not P) Q R (= F J) (= G K) (= H L) (= I M)))
      (a!2 (and (not N)
                O
                (not P)
                Q
                (not R)
                (= F J)
                (= H L)
                (= I M)
                (= (+ G (* (- 1) K)) (- 1))))
      (a!3 (and (not N)
                O
                P
                (not Q)
                R
                (= F J)
                (= G K)
                (= I M)
                (= (+ H (* (- 1) L)) (- 1))))
      (a!4 (and (not N)
                O
                P
                Q
                R
                (= F J)
                (= G K)
                (= H L)
                (= (+ I (* (- 1) M)) (- 1))))
      (a!5 (and (not N)
                (not O)
                (not P)
                (not Q)
                (not R)
                (= F J)
                (= G K)
                (= H L)
                (= I M))))
  (and (or A
           B
           (not C)
           D
           E
           (and (not N) O P Q (not R) (= F J) (= G K) (= H L) (= I M))
           (not (<= F H)))
       (or (not A)
           B
           (not C)
           D
           E
           (and (not N) O P (not Q) (not R) (= F J) (= G K) (= H L) (= I M))
           (not (<= F G)))
       (or (not A) (not B) (not C) D E a!1 (<= I G))
       (or (not A)
           (not B)
           (not C)
           D
           E
           (and (not N)
                O
                (not P)
                (not Q)
                (not R)
                (= F J)
                (= G K)
                (= H L)
                (= I M))
           (not (<= I G)))
       (or (not A)
           B
           (not C)
           D
           E
           (and (not N) (not O) P Q R (= F J) (= G K) (= H L) (= I M))
           (<= F G))
       (or A
           B
           (not C)
           D
           E
           (and (not N) (not O) P (not Q) R (= F J) (= G K) (= H L) (= I M))
           (<= F H))
       (or (not A)
           B
           C
           D
           E
           (and (not N) (not O) (not P) Q R (= F J) (= G K) (= H L) (= I M))
           (<= F I))
       (or A (not B) C (not D) E a!2)
       (or A
           (not B)
           (not C)
           D
           E
           (and (not N) (not O) P Q (not R) (= F J) (= H L) (= I M) (= K H)))
       (or A B (not C) (not D) E a!3)
       (or (not A)
           (not B)
           C
           D
           E
           (and (not N)
                (not O)
                P
                (not Q)
                (not R)
                (= F J)
                (= G K)
                (= I M)
                (= L I)))
       (or (not A) B (not C) (not D) E a!4)
       (or A
           (not B)
           C
           D
           E
           (and (not N)
                (not O)
                (not P)
                Q
                (not R)
                (= F J)
                (= G K)
                (= H L)
                (= M 0)))
       (or (not A) (not B) C (not D) E a!1)
       (or A
           B
           C
           (not D)
           E
           (and (not N) O (not P) (not Q) R (= F J) (= G K) (= H L) (= I M)))
       (or (not A)
           B
           C
           (not D)
           E
           (and (not N) (not O) P Q (not R) (= F J) (= G K) (= H L) (= I M)))
       (or A
           (not B)
           (not C)
           (not D)
           E
           (and (not N)
                (not O)
                P
                (not Q)
                (not R)
                (= F J)
                (= G K)
                (= H L)
                (= I M)))
       (or (not A)
           (not B)
           (not C)
           (not D)
           E
           (and (not N)
                (not O)
                (not P)
                Q
                (not R)
                (= F J)
                (= G K)
                (= H L)
                (= I M)))
       (or A B C D E a!5)
       (or A B C D (not E) a!5)
       (or (not A)
           B
           C
           D
           E
           (and N
                (not O)
                (not P)
                (not Q)
                (not R)
                (= F J)
                (= G K)
                (= H L)
                (= I M))
           (not (<= F I)))))
      )
      (state Q R P O N J K L M)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Bool) (E Bool) (F Int) (G Int) (H Int) (I Int) ) 
    (=>
      (and
        (state A B C D E F G H I)
        (and (= D true) (not C) (= B true) (= A true) (not E))
      )
      false
    )
  )
)

(check-sat)
(exit)