(set-logic HORN)

(declare-fun |state| ( Bool Bool Bool Bool Bool Bool Int Int ) Bool)

(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Bool) (E Bool) (F Bool) (G Int) (H Int) ) 
    (=>
      (and
        (and (not E) (not D) (not C) (= B true) (not A) (not F))
      )
      (state A B C D E F G H)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Bool) (E Bool) (F Bool) (G Int) (H Int) (I Bool) (J Bool) (K Bool) (L Bool) (M Bool) (N Bool) (O Int) (P Int) (Q Int) ) 
    (=>
      (and
        (state A B C D E F G H)
        (let ((a!1 (and J K (not L) (not M) N I (= G O) (= H P)))
      (a!3 (and J K (not L) (not M) N (not I) (= G O) (= H P)))
      (a!5 (not (<= (+ G (* (- 2) H)) 0)))
      (a!6 (not (<= 0 (+ (* 3 G) (* (- 1) H)))))
      (a!7 (and (not J) K (not L) (not M) (not N) I (= G O) (= H P)))
      (a!8 (and J
                (not K)
                L
                M
                (not N)
                (not I)
                (= H P)
                (= (+ G (* (- 1) O)) (- 2))))
      (a!9 (and J
                (not K)
                L
                (not M)
                (not N)
                (not I)
                (= H P)
                (= (+ G (* (- 1) O)) (- 2))))
      (a!10 (and J K L M (not N) I (= H P) (= (+ G (* (- 1) O)) (- 1))))
      (a!11 (and J
                 (not K)
                 (not L)
                 M
                 (not N)
                 (not I)
                 (= H P)
                 (= (+ G (* (- 1) O)) (- 1))))
      (a!12 (and J
                 (not K)
                 (not L)
                 M
                 (not N)
                 I
                 (= G O)
                 (= (+ H (* (- 1) P)) (- 3))))
      (a!13 (and (not J)
                 (not K)
                 (not L)
                 (not M)
                 N
                 (not I)
                 (= G O)
                 (= (+ H (* (- 1) P)) (- 2))))
      (a!14 (and J (not K) L M (not N) I (= G O) (= (+ H (* (- 1) P)) (- 1))))
      (a!15 (and J
                 (not K)
                 L
                 (not M)
                 (not N)
                 I
                 (= G O)
                 (= (+ H (* (- 1) P)) (- 1))))
      (a!16 (and (not J)
                 (not K)
                 (not L)
                 (not M)
                 (not N)
                 (not I)
                 (= G O)
                 (= H P))))
(let ((a!2 (or A (not B) C D E (not F) a!1 (<= (+ G (* (- 2) H)) 0)))
      (a!4 (or (not A) (not B) C D E (not F) a!3 (<= 0 (+ (* 3 G) (* (- 1) H))))))
  (and (or A
           (not B)
           (not C)
           (not D)
           E
           F
           (and J K L (not M) (not N) I (= G O) (= H P))
           (not (<= 7 G)))
       (or A
           (not B)
           (not C)
           (not D)
           E
           F
           (and J K L (not M) (not N) (not I) (= G O) (= H P))
           (<= 7 G))
       (or A
           (not B)
           (not C)
           D
           (not E)
           F
           (and J K (not L) M (not N) I (= G O) (= H P))
           (not (<= 5 G)))
       (or A
           (not B)
           (not C)
           D
           (not E)
           F
           (and J K (not L) M (not N) (not I) (= G O) (= H P))
           (<= 5 G))
       a!2
       a!4
       (or (not A)
           B
           (not C)
           D
           E
           F
           (and J K (not L) (not M) (not N) I (= G O) (= H P))
           (not (= Q 0)))
       (or A
           (not B)
           (not C)
           D
           E
           F
           (and J K (not L) (not M) (not N) (not I) (= G O) (= H P))
           (not (= Q 0)))
       (or A
           (not B)
           C
           D
           E
           (not F)
           (and J (not K) (not L) (not M) N (not I) (= G O) (= H P))
           a!5)
       (or A
           (not B)
           C
           D
           E
           F
           (and J (not K) (not L) (not M) (not N) I (= G O) (= H P))
           (not (= G 0)))
       (or A
           (not B)
           C
           D
           E
           F
           (and J (not K) (not L) (not M) (not N) (not I) (= G O) (= H P))
           (= G 0))
       (or A
           B
           (not C)
           (not D)
           (not E)
           F
           (and (not J) K L M (not N) I (= G O) (= H P))
           (<= G 4))
       (or A
           B
           (not C)
           D
           (not E)
           F
           (and (not J) K L M (not N) (not I) (= G O) (= H P))
           (= Q 0))
       (or A
           B
           (not C)
           (not D)
           E
           F
           (and (not J) K L (not M) (not N) I (= G O) (= H P))
           (not (= Q 0)))
       (or (not A)
           B
           (not C)
           D
           E
           F
           (and (not J) K L (not M) (not N) (not I) (= G O) (= H P))
           (= Q 0))
       (or A
           B
           (not C)
           D
           (not E)
           F
           (and (not J) K (not L) M (not N) I (= G O) (= H P))
           (not (= Q 0)))
       (or A
           B
           (not C)
           (not D)
           E
           F
           (and (not J) K (not L) M (not N) (not I) (= G O) (= H P))
           (= Q 0))
       (or (not A)
           (not B)
           C
           D
           E
           (not F)
           (and (not J) K (not L) (not M) N (not I) (= G O) (= H P))
           a!6)
       (or (not A) (not B) C D E F a!7 (not (= H 0)))
       (or (not A)
           (not B)
           C
           D
           E
           F
           (and (not J) K (not L) (not M) (not N) (not I) (= G O) (= H P))
           (= H 0))
       (or (not A)
           (not B)
           (not C)
           D
           (not E)
           F
           (and (not J) (not K) L M (not N) I (= G O) (= H P))
           (not (<= G 7)))
       (or (not A)
           (not B)
           (not C)
           D
           (not E)
           F
           (and (not J) (not K) L M (not N) (not I) (= G O) (= H P))
           (<= G 7))
       (or (not A)
           (not B)
           (not C)
           D
           E
           F
           (and (not J) (not K) L (not M) (not N) I (= G O) (= H P))
           (not (<= 9 G)))
       (or (not A)
           (not B)
           (not C)
           D
           E
           F
           (and (not J) (not K) L (not M) (not N) (not I) (= G O) (= H P))
           (<= 9 G))
       (or (not A)
           (not B)
           (not C)
           (not D)
           E
           F
           (and (not J) (not K) (not L) M (not N) I (= G O) (= H P))
           (not (<= G 9)))
       (or (not A)
           (not B)
           (not C)
           (not D)
           E
           F
           (and (not J) (not K) (not L) M (not N) (not I) (= G O) (= H P))
           (<= G 9))
       (or A
           (not B)
           (not C)
           D
           E
           F
           (and (not J) (not K) (not L) (not M) N I (= G O) (= H P))
           (= Q 0))
       (or A (not B) C (not D) (not E) F a!8)
       (or A (not B) C (not D) E F a!9)
       (or (not A) B (not C) (not D) (not E) F a!10)
       (or A (not B) C D (not E) F a!11)
       (or (not A) B C D (not E) F a!12)
       (or (not A) (not B) (not C) (not D) (not E) F a!13)
       (or (not A) B C (not D) (not E) F a!14)
       (or (not A) B C (not D) E F a!15)
       (or (not A) (not B) (not C) D E (not F) a!1)
       (or (not A) B (not C) D E (not F) a!3)
       (or A B C D E (not F) (and J (not K) L M (not N) I (= G O) (= H P)))
       (or (not A)
           (not B)
           C
           D
           (not E)
           F
           (and J (not K) L (not M) (not N) I (= G O) (= H P)))
       (or (not A)
           (not B)
           C
           (not D)
           (not E)
           F
           (and J (not K) (not L) M (not N) I (= G O) (= H P)))
       (or (not A)
           B
           C
           D
           E
           (not F)
           (and J (not K) (not L) (not M) N I (= G O) (= H P)))
       (or A
           B
           (not C)
           D
           E
           (not F)
           (and (not J) K (not L) (not M) N I (= G O) (= H P)))
       (or (not A) (not B) C (not D) E F a!7)
       (or A B C D E F a!16)
       (or A B C D (not E) F a!16)
       (or A B C (not D) E F a!16)
       (or A B C (not D) (not E) F a!16)
       (or A B (not C) D E F a!16)
       (or A (not B) (not C) D E (not F) a!16)
       (or A (not B) (not C) (not D) (not E) F a!16)
       (or (not A) B C D E F a!16)
       (or (not A) B (not C) D (not E) F a!16)
       (or (not A) B (not C) (not D) E F a!16)
       (or A
           B
           (not C)
           (not D)
           (not E)
           F
           (and J K L M (not N) (not I) (= G O) (= H P))
           (not (<= G 4))))))
      )
      (state J I K L M N O P)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Bool) (E Bool) (F Bool) (G Int) (H Int) ) 
    (=>
      (and
        (state A B C D E F G H)
        (or (and A (not B) C (not D) (not E) F) (and A B C (not D) (not E) F))
      )
      false
    )
  )
)

(check-sat)
(exit)
