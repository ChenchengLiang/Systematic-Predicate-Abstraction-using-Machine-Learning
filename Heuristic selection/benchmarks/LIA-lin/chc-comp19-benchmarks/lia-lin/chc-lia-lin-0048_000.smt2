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
        (let ((a!1 (and (not I) (not J) K (not L) (= E M) (= F N) (= G O) (= H P)))
      (a!2 (and (not I) (not J) (not K) (not L) (= E M) (= F N) (= G O) (= H P)))
      (a!3 (and I
                J
                K
                (not L)
                (= E M)
                (= G O)
                (= H P)
                (= (+ F (* (- 1) N)) (- 1))))
      (a!4 (and I J (not K) L (= E M) (= F N) (= G O) (= H P))))
  (and (or A
           B
           (not C)
           D
           (and I (not J) K (not L) (= E M) (= F N) (= G O) (= H P))
           (not (<= F H)))
       (or A
           B
           C
           (not D)
           (and I (not J) (not K) L (= E M) (= F N) (= G O) (= H P))
           (not (<= 0 E)))
       (or A
           (not B)
           (not C)
           D
           (and (not I) J K (not L) (= E M) (= F N) (= G O) (= H P))
           (not (<= 0 E)))
       (or (not A) (not B) C D a!1 (not (<= F H)))
       (or A
           B
           (not C)
           D
           (and (not I) (not J) (not K) L (= E M) (= F N) (= G O) (= H P))
           (<= F H))
       (or A (not B) (not C) D a!2 (<= 0 E))
       (or (not A) (not B) C D a!2 (<= F H))
       (or (not A) B (not C) D a!3)
       (or (not A) (not B) C (not D) a!4)
       (or A
           (not B)
           C
           (not D)
           (and (not I) J (not K) L (= E M) (= F N) (= G O) (= H P)))
       (or (not A) (not B) (not C) D a!1)
       (or A B C D a!2)
       (or (not A) B C (not D) a!2)
       (or (not A)
           B
           C
           D
           (and I J (not K) (not L) (= O 0) (= E M) (= F N) (= H P)))
       (or A
           (not B)
           C
           D
           (and (not I) J (not K) (not L) (= M 0) (= F N) (= G O) (= H P)))
       (or A B C (not D) a!4 (<= 0 E))))
      )
      (state J I K L M N O P)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Bool) (E Int) (F Int) (G Int) (H Int) ) 
    (=>
      (and
        (state A B C D E F G H)
        (and (not C) (= B true) (= A true) (= D true))
      )
      false
    )
  )
)

(check-sat)
(exit)
