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
  (forall ( (A Bool) (B Bool) (C Bool) (D Bool) (E Bool) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Bool) (Q Bool) (R Bool) (S Bool) (T Bool) ) 
    (=>
      (and
        (state A B C D E F G H I J)
        (let ((a!1 (not (<= (+ F G (* (- 1) H)) 0)))
      (a!2 (and (not P) Q R (not S) T (= F K) (= G L) (= H M) (= I N) (= J O)))
      (a!3 (<= 0 (+ F G H (* (- 1) I) (* (- 1) J))))
      (a!4 (or A
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
               (<= (+ F G (* (- 1) H)) 0)))
      (a!5 (and (not P)
                Q
                R
                (not S)
                (not T)
                (= F K)
                (= G L)
                (= I N)
                (= J O)
                (= (+ H (* (- 1) M)) (- 1))))
      (a!6 (and (not P)
                Q
                R
                S
                T
                (= F K)
                (= G L)
                (= H M)
                (= J O)
                (= (+ I (* (- 1) N)) (- 1))))
      (a!7 (and P
                (not Q)
                (not R)
                (not S)
                T
                (= F K)
                (= G L)
                (= H M)
                (= I N)
                (= (+ J (* (- 1) O)) (- 1))))
      (a!8 (and (not P)
                (not Q)
                (not R)
                (not S)
                (not T)
                (= F K)
                (= G L)
                (= H M)
                (= I N)
                (= J O))))
  (and (or (not A)
           B
           (not C)
           D
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
           (not (<= F I)))
       (or A
           B
           C
           (not D)
           E
           (and (not P) Q R S (not T) (= F K) (= G L) (= H M) (= I N) (= J O))
           a!1)
       (or A (not B) C (not D) E a!2 a!3)
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
           (not a!3))
       a!4
       (or (not A)
           B
           (not C)
           D
           E
           (and (not P) (not Q) R S T (= F K) (= G L) (= H M) (= I N) (= J O))
           (<= F I))
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
           (<= F J))
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
           (not (<= F G)))
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
           (<= F G))
       (or (not A) (not B) C (not D) E a!5)
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
                (= I N)
                (= J O)
                (= M I)))
       (or (not A) B (not C) (not D) E a!6)
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
                (= J O)
                (= N 0)))
       (or A B C D (not E) a!7)
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
                (= G L)
                (= H M)
                (= I N)
                (= O 0)))
       (or A (not B) (not C) (not D) E a!2)
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
           (not B)
           (not C)
           (not D)
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
                (= J O)))
       (or A
           (not B)
           C
           D
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
       (or A B C D E a!8)
       (or (not A) B C D E a!8)
       (or (not A) B C D (not E) a!8)
       (or A
           B
           (not C)
           D
           E
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
           (not (<= F J)))))
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
