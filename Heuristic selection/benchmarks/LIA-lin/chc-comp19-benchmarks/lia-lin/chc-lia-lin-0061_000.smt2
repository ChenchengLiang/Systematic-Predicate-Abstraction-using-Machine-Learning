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
        (let ((a!1 (and (not N) O P Q R (= F J) (= G K) (= H L) (= I M)))
      (a!2 (not (<= (+ G (* (- 1) I)) (- 1))))
      (a!3 (or (not A)
               (not B)
               (not C)
               D
               E
               (and (not N) O (not P) Q R (= F J) (= G K) (= H L) (= I M))
               (<= (+ H (* (- 1) I)) (- 1))))
      (a!4 (not (<= (+ H (* (- 1) I)) (- 1))))
      (a!5 (or A
               B
               (not C)
               D
               E
               (and (not N) (not O) P (not Q) R (= F J) (= G K) (= H L) (= I M))
               (<= (+ G (* (- 1) I)) (- 1))))
      (a!6 (not (<= 1 (+ F (* (- 1) I)))))
      (a!7 (and (not N)
                O
                (not P)
                (not Q)
                R
                (= F J)
                (= H L)
                (= I M)
                (= (+ G (* (- 1) K) (* (- 1) H) I) 0)))
      (a!8 (and (not N)
                O
                (not P)
                Q
                (not R)
                (= F J)
                (= G K)
                (= I M)
                (= (+ H (* (- 1) L)) (- 1))))
      (a!9 (and (not N)
                O
                P
                Q
                (not R)
                (= F J)
                (= G K)
                (= H L)
                (= (+ I (* (- 1) M)) (- 1))))
      (a!10 (and (not N)
                 (not O)
                 (not P)
                 (not Q)
                 (not R)
                 (= F J)
                 (= G K)
                 (= H L)
                 (= I M)))
      (a!11 (or (not A)
                (not B)
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
                (<= 1 (+ F (* (- 1) I))))))
  (and (or A B (not C) D E a!1 a!2)
       (or (not A)
           (not B)
           C
           (not D)
           E
           (and (not N) O P (not Q) R (= F J) (= G K) (= H L) (= I M))
           (not (<= I H)))
       (or (not A)
           (not B)
           C
           (not D)
           E
           (and (not N) O P (not Q) (not R) (= F J) (= G K) (= H L) (= I M))
           (<= I H))
       a!3
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
           a!4)
       a!5
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
                (= H L)
                (= I M))
           a!6)
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
                (= H L)
                (= K 1)
                (= M 1)))
       (or A B C (not D) E a!7)
       (or A (not B) C (not D) E a!8)
       (or (not A)
           B
           (not C)
           D
           E
           (and (not N) (not O) P Q R (= F J) (= G K) (= I M) (= L 0)))
       (or (not A)
           B
           C
           D
           E
           (and (not N) (not O) (not P) Q R (= F J) (= G K) (= I M) (= L 0)))
       (or A (not B) (not C) (not D) E a!9)
       (or (not A) (not B) (not C) (not D) E a!1)
       (or (not A)
           B
           C
           (not D)
           E
           (and (not N) (not O) P Q R (= F J) (= G K) (= H L) (= I M)))
       (or A
           (not B)
           (not C)
           D
           E
           (and (not N) (not O) P Q (not R) (= F J) (= G K) (= H L) (= I M)))
       (or (not A)
           B
           (not C)
           (not D)
           E
           (and (not N) (not O) (not P) Q R (= F J) (= G K) (= H L) (= I M)))
       (or A B C D E a!10)
       (or A B C D (not E) a!10)
       (or A B (not C) (not D) E a!10)
       a!11))
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
        (and (= D true) (= C true) (= B true) (= A true) (not E))
      )
      false
    )
  )
)

(check-sat)
(exit)
