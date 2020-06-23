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
  (forall ( (A Bool) (B Bool) (C Bool) (D Bool) (E Bool) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Bool) (Q Bool) (R Bool) (S Bool) (T Bool) (U Int) ) 
    (=>
      (and
        (state A B C D E F G H I J)
        (let ((a!1 (and P Q R (not S) (not T) (= F K) (= G L) (= H M) (= I N) (= J O)))
      (a!2 (and P (not Q) R S T (= F K) (= G L) (= H M) (= I N) (= J O)))
      (a!3 (and (not P) Q R (not S) T (= F K) (= G L) (= H M) (= I N) (= J O)))
      (a!4 (and P
                (not Q)
                (not R)
                S
                T
                (= F K)
                (= G L)
                (= I N)
                (= J O)
                (= (+ H (* (- 1) M)) (- 1))))
      (a!5 (and P
                Q
                (not R)
                S
                (not T)
                (= F K)
                (= G L)
                (= H M)
                (= J O)
                (= (+ I (* (- 1) N)) (- 1))))
      (a!6 (and P
                (not Q)
                R
                (not S)
                T
                (= F K)
                (= G L)
                (= H M)
                (= J O)
                (= (+ I (* (- 1) N)) (- 1))))
      (a!7 (and (not P)
                Q
                R
                (not S)
                (not T)
                (= F K)
                (= G L)
                (= H M)
                (= J O)
                (= (+ I (* (- 1) N)) (- 1))))
      (a!8 (and P
                Q
                R
                S
                (not T)
                (= F K)
                (= G L)
                (= H M)
                (= I N)
                (= (+ J (* (- 1) O)) 1)))
      (a!9 (and (not P)
                (not Q)
                (not R)
                (not S)
                (not T)
                (= F K)
                (= G L)
                (= H M)
                (= I N)
                (= J O))))
  (and (or A (not B) (not C) D E a!1 (not (<= F J)))
       (or A
           B
           C
           (not D)
           (not E)
           (and P Q (not R) S T (= F K) (= G L) (= H M) (= I N) (= J O))
           (<= I F))
       (or A
           B
           C
           (not D)
           (not E)
           (and P Q (not R) (not S) T (= F K) (= G L) (= H M) (= I N) (= J O))
           (not (<= I F)))
       (or (not A) B (not C) D E a!2 (= U 0))
       (or (not A)
           (not B)
           (not C)
           (not D)
           E
           (and P (not Q) R S (not T) (= F K) (= G L) (= H M) (= I N) (= J O))
           (<= I F))
       (or A
           (not B)
           C
           D
           (not E)
           (and P
                (not Q)
                R
                (not S)
                (not T)
                (= F K)
                (= G L)
                (= H M)
                (= I N)
                (= J O))
           (<= H F))
       (or A
           (not B)
           C
           D
           (not E)
           (and P
                (not Q)
                (not R)
                S
                (not T)
                (= F K)
                (= G L)
                (= H M)
                (= I N)
                (= J O))
           (not (<= H F)))
       (or (not A)
           (not B)
           (not C)
           (not D)
           E
           (and P
                (not Q)
                (not R)
                (not S)
                (not T)
                (= F K)
                (= G L)
                (= H M)
                (= I N)
                (= J O))
           (not (<= I F)))
       (or A
           B
           C
           (not D)
           E
           (and (not P) Q R S (not T) (= F K) (= G L) (= H M) (= I N) (= J O))
           (<= I F))
       (or A (not B) C (not D) E a!3 (<= 1 I))
       (or A
           (not B)
           C
           (not D)
           E
           (and (not P)
                Q
                (not R)
                S
                (not T)
                (= F K)
                (= G L)
                (= H M)
                (= I N)
                (= J O))
           (not (<= 1 I)))
       (or A
           B
           C
           (not D)
           E
           (and (not P)
                Q
                (not R)
                (not S)
                T
                (= F K)
                (= G L)
                (= H M)
                (= I N)
                (= J O))
           (not (<= I F)))
       (or (not A)
           B
           (not C)
           D
           E
           (and (not P) (not Q) R S T (= F K) (= G L) (= H M) (= I N) (= J O))
           (not (= U 0)))
       (or A
           (not B)
           (not C)
           D
           E
           (and (not P)
                (not Q)
                R
                S
                (not T)
                (= F K)
                (= G L)
                (= H M)
                (= I N)
                (= J O))
           (<= F J))
       (or A
           B
           (not C)
           D
           E
           (and (not P)
                (not Q)
                R
                (not S)
                T
                (= F K)
                (= G L)
                (= H M)
                (= I N)
                (= J O))
           (not (<= 1 J)))
       (or A
           (not B)
           C
           D
           E
           (and (not P)
                (not Q)
                (not R)
                S
                T
                (= F K)
                (= G L)
                (= H M)
                (= I N)
                (= J O))
           (<= G 1))
       (or A
           (not B)
           C
           D
           E
           (and (not P)
                (not Q)
                (not R)
                S
                (not T)
                (= F K)
                (= G L)
                (= H M)
                (= I N)
                (= J O))
           (not (<= G 1)))
       (or A
           B
           (not C)
           (not D)
           (not E)
           (and P Q R (not S) T (= F K) (= H M) (= I N) (= J O) (= L J)))
       (or (not A) B C D (not E) a!4)
       (or A (not B) C (not D) (not E) a!5)
       (or A B (not C) D (not E) a!6)
       (or (not A) (not B) C (not D) E a!7)
       (or A (not B) (not C) (not D) (not E) a!8)
       (or (not A) (not B) C (not D) (not E) a!1)
       (or (not A)
           B
           C
           (not D)
           (not E)
           (and P
                Q
                (not R)
                (not S)
                (not T)
                (= F K)
                (= G L)
                (= H M)
                (= I N)
                (= J O)))
       (or (not A) B (not C) D (not E) a!2)
       (or (not A)
           (not B)
           C
           D
           (not E)
           (and P
                (not Q)
                (not R)
                (not S)
                T
                (= F K)
                (= G L)
                (= H M)
                (= I N)
                (= J O)))
       (or A
           (not B)
           (not C)
           D
           (not E)
           (and (not P) Q R S T (= F K) (= G L) (= H M) (= I N) (= J O)))
       (or A (not B) (not C) (not D) E a!3)
       (or (not A)
           B
           C
           (not D)
           E
           (and (not P) Q (not R) S T (= F K) (= G L) (= H M) (= I N) (= J O)))
       (or A
           B
           (not C)
           (not D)
           E
           (and (not P)
                Q
                (not R)
                (not S)
                (not T)
                (= F K)
                (= G L)
                (= H M)
                (= I N)
                (= J O)))
       (or (not A)
           B
           (not C)
           (not D)
           (not E)
           (and (not P)
                (not Q)
                R
                (not S)
                (not T)
                (= F K)
                (= G L)
                (= H M)
                (= I N)
                (= J O)))
       (or A B C D E a!9)
       (or (not A) B C D E a!9)
       (or (not A) (not B) (not C) (not D) (not E) a!9)
       (or (not A)
           (not B)
           (not C)
           D
           (not E)
           (and P
                Q
                (not R)
                (not S)
                (not T)
                (= F K)
                (= G L)
                (= G N)
                (= H M)
                (= J O)))
       (or (not A)
           B
           (not C)
           (not D)
           E
           (and (not P) Q R S T (= F K) (= G L) (= G N) (= H M) (= J O)))
       (or (not A)
           (not B)
           (not C)
           D
           E
           (and (not P)
                Q
                (not R)
                (not S)
                (not T)
                (= F K)
                (= G L)
                (= G N)
                (= H M)
                (= J O)))
       (or A
           B
           C
           D
           (not E)
           (and P
                (not Q)
                (not R)
                (not S)
                T
                (= F K)
                (= G L)
                (= G M)
                (= I N)
                (= J O)))
       (or (not A)
           (not B)
           C
           D
           E
           (and (not P)
                (not Q)
                R
                (not S)
                (not T)
                (= F K)
                (= F O)
                (= G L)
                (= H M)
                (= I N)))
       (or A
           B
           (not C)
           D
           E
           (and P Q R S T (= F K) (= G L) (= H M) (= I N) (= J O))
           (<= 1 J))))
      )
      (state S T R Q P K L M N O)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Bool) (E Bool) (F Int) (G Int) (H Int) (I Int) (J Int) ) 
    (=>
      (and
        (state A B C D E F G H I J)
        (and (= D true) (= C true) (= B true) (not A) (not E))
      )
      false
    )
  )
)

(check-sat)
(exit)
