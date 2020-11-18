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
  (forall ( (A Bool) (B Bool) (C Bool) (D Bool) (E Int) (F Int) (G Int) (H Int) (I Bool) (J Bool) (K Bool) (L Bool) (M Int) (N Int) (O Int) (P Int) ) 
    (=>
      (and
        (state A B C D E F G H)
        (let ((a!1 (and I J (not K) L (= E M) (= F N) (= G O) (= H P)))
      (a!2 (and (not I) (not J) K L (= E M) (= F N) (= G O) (= H P)))
      (a!3 (and (not I)
                J
                K
                (not L)
                (= E M)
                (= F N)
                (= H P)
                (= (+ G (* (- 1) O)) 1)))
      (a!4 (and I
                (not J)
                K
                (not L)
                (= E M)
                (= F N)
                (= G O)
                (= (+ H (* (- 1) P)) 1)))
      (a!5 (and (not I) (not J) (not K) (not L) (= E M) (= F N) (= G O) (= H P))))
  (and (or (not A) (not B) (not C) D a!1 (= E F))
       (or A
           B
           C
           (not D)
           (and (not I) J (not K) L (= E M) (= F N) (= G O) (= H P))
           (not (= H 0)))
       (or A B C (not D) a!2 (= H 0))
       (or (not A)
           (not B)
           C
           D
           (and (not I) (not J) K (not L) (= E M) (= F N) (= G O) (= H P))
           (= G 0))
       (or (not A)
           (not B)
           (not C)
           D
           (and (not I) (not J) (not K) L (= E M) (= F N) (= G O) (= H P))
           (not (= E F)))
       (or A B (not C) D a!3)
       (or A (not B) (not C) D a!4)
       (or (not A) B C (not D) a!1)
       (or (not A)
           B
           (not C)
           D
           (and I J (not K) (not L) (= E M) (= F N) (= G O) (= H P)))
       (or A
           (not B)
           C
           (not D)
           (and I (not J) (not K) L (= E M) (= F N) (= G O) (= H P)))
       (or A B (not C) (not D) a!2)
       (or A B C D a!5)
       (or (not A) (not B) C (not D) a!5)
       (or (not A)
           B
           C
           D
           (and I J (not K) (not L) (= E M) (= F N) (= F P) (= G O)))
       (or A
           (not B)
           C
           D
           (and I (not J) (not K) (not L) (= E M) (= E O) (= F N) (= H P)))
       (or (not A)
           (not B)
           C
           D
           (and I J K (not L) (= E M) (= F N) (= G O) (= H P))
           (not (= G 0)))))
      )
      (state I J K L M N O P)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Bool) (E Int) (F Int) (G Int) (H Int) ) 
    (=>
      (and
        (state A B C D E F G H)
        (and (= C true) (not B) (not A) (= D true))
      )
      false
    )
  )
)

(check-sat)
(exit)
