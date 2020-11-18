(set-logic HORN)

(declare-fun |state| ( Bool Bool Bool Bool Bool Bool Int Int Int ) Bool)

(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Bool) (E Bool) (F Bool) (G Int) (H Int) (I Int) ) 
    (=>
      (and
        (and (not E) (not D) (not C) (= B true) (not A) (not F))
      )
      (state A B C D E F G H I)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Bool) (E Bool) (F Bool) (G Int) (H Int) (I Int) (J Bool) (K Bool) (L Bool) (M Bool) (N Bool) (O Bool) (P Int) (Q Int) (R Int) (S Int) ) 
    (=>
      (and
        (state A B C D E F G H I)
        (let ((a!1 (and K L M (not N) O (not J) (= G P) (= H Q) (= I R)))
      (a!2 (and K L M (not N) (not O) (not J) (= G P) (= H Q) (= I R)))
      (a!3 (and (not K) L M (not N) O (not J) (= G P) (= H Q) (= I R)))
      (a!4 (and (not K) L M (not N) (not O) J (= G P) (= H Q) (= I R)))
      (a!5 (and (not K)
                L
                (not M)
                (not N)
                (not O)
                (not J)
                (= G P)
                (= H Q)
                (= I R)))
      (a!6 (and (not K)
                (not L)
                M
                (not N)
                (not O)
                (not J)
                (= G P)
                (= H Q)
                (= I R)))
      (a!7 (and (not K)
                (not L)
                (not M)
                (not N)
                O
                (not J)
                (= G P)
                (= H Q)
                (= I R)))
      (a!8 (and (not K)
                L
                (not M)
                N
                (not O)
                J
                (= H Q)
                (= I R)
                (= (+ G (* (- 1) P)) (- 1))))
      (a!9 (and (not K)
                (not L)
                (not M)
                (not N)
                O
                J
                (= H Q)
                (= I R)
                (= (+ G (* (- 1) P)) (- 1))))
      (a!10 (and K
                 L
                 M
                 N
                 (not O)
                 (not J)
                 (= G P)
                 (= I R)
                 (= (+ H (* (- 1) Q)) (- 1))))
      (a!11 (and K
                 (not L)
                 M
                 (not N)
                 O
                 (not J)
                 (= G P)
                 (= I R)
                 (= (+ H (* (- 1) Q)) (- 1))))
      (a!12 (and K L M N (not O) J (= G P) (= H Q) (= I R)))
      (a!13 (and (not K) L M N (not O) J (= G P) (= H Q) (= I R)))
      (a!14 (and (not K)
                 (not L)
                 (not M)
                 (not N)
                 (not O)
                 (not J)
                 (= G P)
                 (= H Q)
                 (= I R))))
  (and (or A B (not C) D E (not F) a!1 (<= 0 H))
       (or (not A)
           B
           (not C)
           D
           E
           F
           (and K L M (not N) (not O) J (= G P) (= H Q) (= I R))
           (= S 0))
       (or (not A) B C (not D) E F a!2 (not (<= I H)))
       (or (not A)
           B
           (not C)
           D
           (not E)
           F
           (and K L (not M) N (not O) J (= G P) (= H Q) (= I R))
           (not (<= I G)))
       (or (not A)
           (not B)
           C
           D
           (not E)
           F
           (and K L (not M) N (not O) (not J) (= G P) (= H Q) (= I R))
           (= S 0))
       (or (not A)
           B
           (not C)
           D
           E
           (not F)
           (and K L (not M) (not N) O J (= G P) (= H Q) (= I R))
           (<= I H))
       (or A
           B
           (not C)
           D
           E
           (not F)
           (and K L (not M) (not N) O (not J) (= G P) (= H Q) (= I R))
           (not (<= 0 H)))
       (or (not A)
           B
           (not C)
           D
           E
           F
           (and K L (not M) (not N) (not O) J (= G P) (= H Q) (= I R))
           (not (= S 0)))
       (or A
           B
           (not C)
           D
           E
           F
           (and K L (not M) (not N) (not O) (not J) (= G P) (= H Q) (= I R))
           (not (= S 0)))
       (or (not A)
           B
           C
           (not D)
           (not E)
           F
           (and K (not L) M N (not O) J (= G P) (= H Q) (= I R))
           (<= I H))
       (or A
           B
           C
           (not D)
           (not E)
           F
           (and K (not L) M N (not O) (not J) (= G P) (= H Q) (= I R))
           (not (<= 0 H)))
       (or A
           (not B)
           C
           (not D)
           E
           (not F)
           (and K (not L) M (not N) O J (= G P) (= H Q) (= I R))
           (= S 0))
       (or (not A)
           B
           C
           (not D)
           E
           F
           (and K (not L) M (not N) (not O) J (= G P) (= H Q) (= I R))
           (<= I H))
       (or A
           B
           C
           (not D)
           E
           F
           (and K (not L) M (not N) (not O) (not J) (= G P) (= H Q) (= I R))
           (not (<= 0 H)))
       (or (not A)
           (not B)
           (not C)
           (not D)
           E
           F
           (and K (not L) (not M) N (not O) J (= G P) (= H Q) (= I R))
           (= S 0))
       (or (not A)
           B
           C
           D
           E
           (not F)
           (and K (not L) (not M) (not N) O J (= G P) (= H Q) (= I R))
           (not (<= I G)))
       (or A
           (not B)
           (not C)
           D
           E
           F
           (and K (not L) (not M) (not N) O (not J) (= G P) (= H Q) (= I R))
           (= S 0))
       (or (not A)
           B
           C
           D
           E
           F
           (and K (not L) (not M) (not N) (not O) J (= G P) (= H Q) (= I R))
           (not (<= I 0)))
       (or (not A) B (not C) D E (not F) a!3 (not (<= I H)))
       (or A B C (not D) E F a!4 (<= 0 H))
       (or (not A)
           (not B)
           C
           D
           (not E)
           F
           (and (not K) L (not M) N (not O) (not J) (= G P) (= H Q) (= I R))
           (not (= S 0)))
       (or (not A)
           B
           C
           D
           E
           (not F)
           (and (not K) L (not M) (not N) O (not J) (= G P) (= H Q) (= I R))
           (<= I G))
       (or A
           (not B)
           (not C)
           D
           E
           F
           (and (not K) L (not M) (not N) (not O) J (= G P) (= H Q) (= I R))
           (not (= S 0)))
       (or (not A) B C D E F a!5 (<= I 0))
       (or (not A)
           B
           (not C)
           D
           (not E)
           F
           (and (not K) (not L) M N (not O) (not J) (= G P) (= H Q) (= I R))
           (<= I G))
       (or A
           (not B)
           C
           (not D)
           E
           (not F)
           (and (not K) (not L) M (not N) O J (= G P) (= H Q) (= I R))
           (not (= S 0)))
       (or A B (not C) D E F a!6 (= S 0))
       (or (not A)
           (not B)
           (not C)
           (not D)
           E
           F
           (and (not K)
                (not L)
                (not M)
                N
                (not O)
                (not J)
                (= G P)
                (= H Q)
                (= I R))
           (not (= S 0)))
       (or A B C (not D) (not E) F a!7 (<= 0 H))
       (or A (not B) (not C) D (not E) F a!8)
       (or A (not B) C D E (not F) a!9)
       (or A
           (not B)
           C
           D
           (not E)
           F
           (and (not K) (not L) (not M) N (not O) J (= H Q) (= I R) (= P 0)))
       (or A B (not C) (not D) (not E) F a!10)
       (or A B C (not D) E (not F) a!11)
       (or (not A) (not B) (not C) (not D) (not E) F a!12)
       (or A (not B) (not C) (not D) E (not F) a!1)
       (or A (not B) (not C) (not D) E F a!2)
       (or A (not B) (not C) (not D) (not E) F a!13)
       (or (not A) (not B) C (not D) E (not F) a!13)
       (or (not A)
           (not B)
           C
           (not D)
           (not E)
           F
           (and (not K) L M N (not O) (not J) (= G P) (= H Q) (= I R)))
       (or A B (not C) (not D) E (not F) a!3)
       (or (not A) B (not C) (not D) E F a!4)
       (or (not A)
           (not B)
           C
           (not D)
           E
           F
           (and (not K) L M (not N) (not O) (not J) (= G P) (= H Q) (= I R)))
       (or A
           (not B)
           (not C)
           D
           E
           (not F)
           (and (not K) L (not M) (not N) O J (= G P) (= H Q) (= I R)))
       (or (not A) B C D (not E) F a!5)
       (or (not A) B (not C) (not D) (not E) F a!5)
       (or A
           (not B)
           C
           (not D)
           (not E)
           F
           (and (not K) (not L) M N (not O) J (= G P) (= H Q) (= I R)))
       (or (not A)
           (not B)
           (not C)
           D
           E
           (not F)
           (and (not K) (not L) M (not N) O (not J) (= G P) (= H Q) (= I R)))
       (or A
           (not B)
           C
           (not D)
           E
           F
           (and (not K) (not L) M (not N) (not O) J (= G P) (= H Q) (= I R)))
       (or A B (not C) D (not E) F a!6)
       (or (not A) B C (not D) E (not F) a!6)
       (or (not A) (not B) C D E (not F) a!6)
       (or (not A) (not B) (not C) D E F a!6)
       (or (not A) (not B) (not C) D (not E) F a!6)
       (or A B C D E (not F) a!7)
       (or A B C D E F a!14)
       (or A B (not C) (not D) E F a!14)
       (or (not A) (not B) C D E F a!14)
       (or A
           (not B)
           C
           D
           E
           F
           (and (not K)
                (not L)
                (not M)
                (not N)
                (not O)
                J
                (= Q 0)
                (= I R)
                (= P 0)))
       (or A
           B
           C
           D
           (not E)
           F
           (and K (not L) (not M) N (not O) (not J) (= Q 0) (= G P) (= I R)))
       (or (not A) B C (not D) (not E) F a!12 (not (<= I H)))))
      )
      (state J K L M N O P Q R)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Bool) (E Bool) (F Bool) (G Int) (H Int) (I Int) ) 
    (=>
      (and
        (state A B C D E F G H I)
        (or (and (not A) (not B) (not C) (not D) (not E) F)
    (and (not A) (not B) C D (not E) F)
    (and (not A) B C D (not E) (not F))
    (and (not A) B C D (not E) F)
    (and A (not B) C D (not E) (not F))
    (and A B C D E (not F)))
      )
      false
    )
  )
)

(check-sat)
(exit)
