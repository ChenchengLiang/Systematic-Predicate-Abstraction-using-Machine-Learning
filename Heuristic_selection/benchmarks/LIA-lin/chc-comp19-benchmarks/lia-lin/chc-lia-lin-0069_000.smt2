(set-logic HORN)

(declare-fun |state| ( Bool Bool Bool Bool Bool Int Int Int ) Bool)

(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Bool) (E Bool) (F Int) (G Int) (H Int) ) 
    (=>
      (and
        (and (not D) (not C) (= B true) (not A) (not E))
      )
      (state A B C D E F G H)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Bool) (E Bool) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Bool) (M Bool) (N Bool) (O Bool) (P Bool) ) 
    (=>
      (and
        (state A B C D E F G H)
        (let ((a!1 (not (<= (+ G (* (- 1) H)) (- 1))))
      (a!2 (and L (not M) (not N) (not O) P (= F I) (= G J) (= H K)))
      (a!3 (and L (not M) (not N) (not O) (not P) (= F I) (= G J) (= H K)))
      (a!4 (and (not L) M N O P (= F I) (= G J) (= H K)))
      (a!6 (not (<= (+ (* 2 G) (* (- 1) H)) (- 3))))
      (a!7 (and (not L) (not M) N (not O) (not P) (= F I) (= G J) (= H K)))
      (a!8 (and (not L)
                (not M)
                N
                O
                P
                (= G J)
                (= H K)
                (= (+ F (* (- 1) I)) (- 1))))
      (a!9 (and L (not M) N O P (= G J) (= H K) (= (+ F (* (- 1) I)) 1)))
      (a!10 (and L
                 (not M)
                 N
                 (not O)
                 (not P)
                 (= F I)
                 (= G J)
                 (= (+ H (* (- 1) K)) (- 1))))
      (a!11 (and L (not M) (not N) O (not P) (= F I) (= G J) (= H K)))
      (a!12 (and (not L)
                 (not M)
                 (not N)
                 (not O)
                 (not P)
                 (= F I)
                 (= G J)
                 (= H K)))
      (a!13 (or A
                (not B)
                (not C)
                D
                (not E)
                (and L M (not N) (not O) (not P) (= F I) (= G J) (= H K))
                (<= (+ G (* (- 1) H)) (- 1)))))
(let ((a!5 (or (not A)
               (not B)
               C
               (not D)
               E
               a!4
               (<= (+ (* 2 G) (* (- 1) H)) (- 3)))))
  (and (or A
           (not B)
           (not C)
           D
           (not E)
           (and L (not M) N O (not P) (= F I) (= G J) (= H K))
           a!1)
       (or A
           (not B)
           (not C)
           D
           E
           (and L (not M) N (not O) P (= F I) (= G J) (= H K))
           (<= H G))
       (or (not A)
           (not B)
           (not C)
           D
           E
           (and L (not M) (not N) O P (= F I) (= G J) (= H K))
           (not (<= 0 F)))
       (or A (not B) C (not D) E a!2 (<= 0 G))
       (or (not A) B C (not D) E a!3 (= F (- 1)))
       a!5
       (or (not A)
           (not B)
           C
           (not D)
           E
           (and (not L) M N (not O) (not P) (= F I) (= G J) (= H K))
           a!6)
       (or (not A)
           B
           C
           (not D)
           E
           (and (not L) M (not N) O P (= F I) (= G J) (= H K))
           (not (= F (- 1))))
       (or A
           (not B)
           C
           (not D)
           E
           (and (not L) M (not N) O (not P) (= F I) (= G J) (= H K))
           (not (<= 0 G)))
       (or (not A)
           (not B)
           (not C)
           D
           E
           (and (not L) M (not N) (not O) (not P) (= F I) (= G J) (= H K))
           (<= 0 F))
       (or A
           (not B)
           (not C)
           D
           E
           (and (not L) (not M) N O (not P) (= F I) (= G J) (= H K))
           (not (<= H G)))
       (or (not A) B C D E a!7 (not (<= 0 G)))
       (or (not A)
           B
           C
           D
           E
           (and (not L) (not M) (not N) O P (= F I) (= G J) (= H K))
           (<= 0 G))
       (or A
           (not B)
           C
           D
           E
           (and (not L) (not M) (not N) O (not P) (= G J) (= I 0) (= K 0)))
       (or (not A) B (not C) D E a!8)
       (or (not A) B (not C) D (not E) a!9)
       (or (not A) (not B) C D (not E) a!10)
       (or A B (not C) (not D) E a!11)
       (or (not A) B C D (not E) a!11)
       (or A B C D (not E) a!2)
       (or (not A) (not B) (not C) (not D) E a!3)
       (or (not A) B (not C) (not D) E a!4)
       (or A
           (not B)
           (not C)
           (not D)
           E
           (and (not L) M N O (not P) (= F I) (= G J) (= H K)))
       (or A
           B
           C
           (not D)
           E
           (and (not L) M (not N) (not O) P (= F I) (= G J) (= H K)))
       (or (not A)
           (not B)
           (not C)
           D
           (not E)
           (and (not L) (not M) N O P (= F I) (= G J) (= H K)))
       (or A
           B
           (not C)
           D
           E
           (and (not L) (not M) N (not O) P (= F I) (= G J) (= H K)))
       (or A B (not C) D (not E) a!7)
       (or A B C D E a!12)
       (or A B C (not D) (not E) a!12)
       (or A (not B) C D (not E) a!12)
       (or (not A) (not B) C D E a!12)
       a!13)))
      )
      (state O P N M L I J K)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Bool) (E Bool) (F Int) (G Int) (H Int) ) 
    (=>
      (and
        (state A B C D E F G H)
        (and (not D) (not C) (not B) (= A true) (= E true))
      )
      false
    )
  )
)

(check-sat)
(exit)
