(set-logic HORN)

(declare-fun |state| ( Bool Bool Bool Bool Int Int Int Int ) Bool)

(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Bool) (E Int) (F Int) (G Int) (H Int) ) 
    (=>
      (and
        (and (not C) (= B true) (not A) (not D))
      )
      (state A B C D E F G H)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Bool) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Bool) (N Bool) (O Bool) (P Bool) ) 
    (=>
      (and
        (state A B C D E F G H)
        (let ((a!1 (and M N (not O) P (= E I) (= F J) (= G K) (= H L)))
      (a!2 (and (not M)
                N
                (not O)
                P
                (= E I)
                (= G K)
                (= H L)
                (= (+ F (* (- 1) J)) (- 1))))
      (a!3 (and M
                N
                (not O)
                (not P)
                (= E I)
                (= G K)
                (= H L)
                (= (+ F (* (- 1) J)) 1)))
      (a!4 (and M (not N) O P (= E I) (= F J) (= H L) (= (+ G (* (- 1) K)) 1)))
      (a!5 (and (not M)
                N
                (not O)
                (not P)
                (= E I)
                (= F J)
                (= G K)
                (= (+ H (* (- 1) L)) (- 1))))
      (a!6 (and (not M) (not N) (not O) (not P) (= E I) (= F J) (= G K) (= H L))))
  (and (or A B C (not D) a!1 (not (<= F 0)))
       (or A
           B
           C
           (not D)
           (and M (not N) (not O) P (= E I) (= F J) (= G K) (= H L))
           (<= F 0))
       (or (not A)
           (not B)
           (not C)
           D
           (and M (not N) (not O) (not P) (= E I) (= F J) (= G K) (= H L))
           (<= G 0))
       (or (not A)
           B
           C
           D
           (and (not M) N O (not P) (= E I) (= F J) (= G K) (= H L))
           (not (<= E H)))
       (or (not A)
           B
           C
           D
           (and (not M) (not N) O P (= E I) (= F J) (= G K) (= H L))
           (<= E H))
       (or A
           (not B)
           C
           D
           (and (not M) (not N) O (not P) (= E I) (= G K) (= J 0) (= L 0)))
       (or A B (not C) D a!2)
       (or (not A) (not B) C (not D) a!3)
       (or (not A) B C (not D) a!4)
       (or (not A) (not B) C D a!5)
       (or A (not B) (not C) (not D) a!1)
       (or A
           (not B)
           C
           (not D)
           (and M (not N) O (not P) (= E I) (= F J) (= G K) (= H L)))
       (or A
           B
           (not C)
           (not D)
           (and (not M) N O P (= E I) (= F J) (= G K) (= H L)))
       (or A
           (not B)
           (not C)
           D
           (and (not M) (not N) O (not P) (= E I) (= F J) (= G K) (= H L)))
       (or A B C D a!6)
       (or (not A) B (not C) (not D) a!6)
       (or (not A)
           B
           (not C)
           D
           (and (not M) N O P (= E I) (= E K) (= F J) (= H L)))
       (or (not A)
           (not B)
           (not C)
           D
           (and M N O (not P) (= E I) (= F J) (= G K) (= H L))
           (not (<= G 0)))))
      )
      (state O P N M I J K L)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Bool) (E Int) (F Int) (G Int) (H Int) ) 
    (=>
      (and
        (state A B C D E F G H)
        (and (= C true) (= B true) (not A) (= D true))
      )
      false
    )
  )
)

(check-sat)
(exit)
