(set-logic HORN)

(declare-fun |state| ( Bool Bool Bool Bool Bool Bool Int Int Int Int Int ) Bool)

(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Bool) (E Bool) (F Bool) (G Int) (H Int) (I Int) (J Int) (K Int) ) 
    (=>
      (and
        (and (= E true) (not D) (not C) (not B) (not A) (not F))
      )
      (state F E D B A C G H I J K)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Bool) (E Bool) (F Bool) (G Bool) (H Bool) (I Bool) (J Bool) (K Bool) (L Bool) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) (T Int) (U Int) (V Int) (W Int) ) 
    (=>
      (and
        (state F E D B A C N P R T V)
        (let ((a!1 (and L K J (not I) (not H) G (= N M) (= P O) (= R Q) (= T S) (= V U)))
      (a!2 (and L K (not J) I H G (= N M) (= P O) (= R Q) (= T S) (= V U)))
      (a!4 (and L K (not J) I (not H) G (= N M) (= P O) (= R Q) (= T S) (= V U)))
      (a!5 (and L K (not J) (not I) H G (= N M) (= P O) (= R Q) (= T S) (= V U)))
      (a!7 (and L
                K
                (not J)
                (not I)
                (not H)
                G
                (= N M)
                (= P O)
                (= R Q)
                (= T S)
                (= V U)))
      (a!8 (not (<= (+ (* 2 R) (* (- 1) T)) 1)))
      (a!9 (not (<= (+ (* 2 N) (* (- 1) P)) 0)))
      (a!10 (not (<= 0 (+ (* 2 N) (* (- 1) P)))))
      (a!11 (not (<= (+ P (* (- 1) T)) (- 1))))
      (a!12 (or A
                (not B)
                C
                (not D)
                (not E)
                (not F)
                (and (not L)
                     K
                     (not J)
                     (not I)
                     (not H)
                     (not G)
                     (= N M)
                     (= P O)
                     (= R Q)
                     (= T S)
                     (= V U))
                (<= (+ P (* (- 1) T)) (- 1))))
      (a!13 (not (<= 0 (+ (* 2 R) (* (- 1) V)))))
      (a!14 (or A
                (not B)
                C
                D
                (not E)
                F
                (and (not L)
                     (not K)
                     J
                     (not I)
                     (not H)
                     G
                     (= N M)
                     (= P O)
                     (= R Q)
                     (= T S)
                     (= V U))
                (<= 0 (+ (* 2 R) (* (- 1) V)))))
      (a!15 (and (not L)
                 (not K)
                 (not J)
                 I
                 H
                 G
                 (= N M)
                 (= P O)
                 (= R Q)
                 (= T S)
                 (= V U)))
      (a!16 (not (<= (+ (* 2 R) (* (- 1) V)) 1)))
      (a!17 (not (= (+ P (* (- 2) R)) 0)))
      (a!18 (or A
                (not B)
                C
                D
                (not E)
                (not F)
                (and (not L)
                     (not K)
                     (not J)
                     (not I)
                     H
                     G
                     (= N M)
                     (= P O)
                     (= R Q)
                     (= T S)
                     (= V U))
                (<= (+ (* 2 R) (* (- 1) V)) 1)))
      (a!19 (or A
                B
                C
                (not D)
                (not E)
                (not F)
                (and (not L)
                     (not K)
                     (not J)
                     (not I)
                     (not H)
                     G
                     (= N M)
                     (= P O)
                     (= R Q)
                     (= T S)
                     (= V U))
                (= (+ P (* (- 2) R)) 0)))
      (a!20 (and L
                 (not K)
                 (not J)
                 (not I)
                 (not H)
                 (not G)
                 (= P O)
                 (= R Q)
                 (= T S)
                 (= V U)
                 (= (+ M (* (- 1) R)) (- 1))))
      (a!21 (and (not L)
                 K
                 J
                 (not I)
                 (not H)
                 (not G)
                 (= P O)
                 (= R Q)
                 (= T S)
                 (= V U)
                 (= (+ M (* (- 1) P)) 1)))
      (a!22 (and (not L)
                 K
                 J
                 I
                 (not H)
                 (not G)
                 (= N M)
                 (= R Q)
                 (= T S)
                 (= V U)
                 (= (+ (* 2 P) (* (- 1) O)) (- 2))))
      (a!23 (and (not L)
                 K
                 (not J)
                 I
                 (not H)
                 G
                 (= N M)
                 (= R Q)
                 (= T S)
                 (= V U)
                 (= (+ (* 2 P) (* (- 1) O)) 0)))
      (a!24 (and L
                 (not K)
                 (not J)
                 I
                 (not H)
                 (not G)
                 (= N M)
                 (= R Q)
                 (= T S)
                 (= V U)
                 (= (+ O (* (- 2) R)) (- 2))))
      (a!25 (and L
                 (not K)
                 J
                 (not I)
                 (not H)
                 G
                 (= N M)
                 (= R Q)
                 (= T S)
                 (= V U)
                 (= (+ O (* (- 2) R)) 0)))
      (a!26 (and L
                 (not K)
                 J
                 (not I)
                 (not H)
                 (not G)
                 (= N M)
                 (= P O)
                 (= T S)
                 (= V U)
                 (= (+ R (* (- 1) Q)) 1)))
      (a!27 (and L
                 (not K)
                 J
                 (not I)
                 H
                 (not G)
                 (= N M)
                 (= P O)
                 (= R Q)
                 (= V U)
                 (= (+ T (* (- 1) S)) 1)))
      (a!28 (and L K J I (not H) G (= N M) (= P O) (= R Q) (= T S) (= V U)))
      (a!29 (and (not L)
                 (not K)
                 (not J)
                 (not I)
                 (not H)
                 (not G)
                 (= N M)
                 (= P O)
                 (= R Q)
                 (= T S)
                 (= V U))))
(let ((a!3 (or A
               (not B)
               (not C)
               D
               (not E)
               (not F)
               a!2
               (<= 0 (+ (* 2 N) (* (- 1) P)))))
      (a!6 (or A
               (not B)
               (not C)
               (not D)
               (not E)
               F
               a!5
               (<= (+ (* 2 N) (* (- 1) P)) 0)))
      (a!30 (or A
                (not B)
                (not C)
                (not D)
                (not E)
                (not F)
                a!28
                (<= (+ (* 2 R) (* (- 1) T)) 1))))
  (and (or (not A)
           B
           (not C)
           (not D)
           (not E)
           F
           (and L K J (not I) H (not G) (= N M) (= P O) (= R Q) (= T S) (= V U))
           (not (<= T V)))
       (or (not A) B (not C) D (not E) F a!1 (<= 2 T))
       (or (not A)
           B
           (not C)
           D
           (not E)
           F
           (and L
                K
                J
                (not I)
                (not H)
                (not G)
                (= N M)
                (= P O)
                (= R Q)
                (= T S)
                (= V U))
           (not (<= 2 T)))
       a!3
       (or (not A) B (not C) D (not E) (not F) a!4 (<= 1 R))
       a!6
       (or (not A)
           B
           (not C)
           D
           (not E)
           (not F)
           (and L
                K
                (not J)
                (not I)
                H
                (not G)
                (= N M)
                (= P O)
                (= R Q)
                (= T S)
                (= V U))
           (not (<= 1 R)))
       (or (not A) B (not C) (not D) (not E) F a!7 (<= T V))
       (or A
           (not B)
           (not C)
           (not D)
           (not E)
           (not F)
           (and L
                K
                (not J)
                (not I)
                (not H)
                (not G)
                (= N M)
                (= P O)
                (= R Q)
                (= T S)
                (= V U))
           a!8)
       (or A
           B
           (not C)
           (not D)
           E
           (not F)
           (and L (not K) J I H (not G) (= N M) (= P O) (= R Q) (= T S) (= V U))
           (<= 3 T))
       (or A
           (not B)
           C
           (not D)
           (not E)
           F
           (and L (not K) J I (not H) G (= N M) (= P O) (= R Q) (= T S) (= V U))
           (= W 0))
       (or (not A)
           (not B)
           C
           D
           E
           (not F)
           (and L
                (not K)
                J
                I
                (not H)
                (not G)
                (= N M)
                (= P O)
                (= R Q)
                (= T S)
                (= V U))
           (= W 0))
       (or A
           (not B)
           (not C)
           (not D)
           (not E)
           F
           (and L (not K) J (not I) H G (= N M) (= P O) (= R Q) (= T S) (= V U))
           a!9)
       (or A
           B
           (not C)
           D
           (not E)
           (not F)
           (and L
                (not K)
                (not J)
                I
                H
                (not G)
                (= N M)
                (= P O)
                (= R Q)
                (= T S)
                (= V U))
           (not (<= R 1)))
       (or A
           (not B)
           (not C)
           D
           (not E)
           (not F)
           (and L
                (not K)
                (not J)
                (not I)
                H
                G
                (= N M)
                (= P O)
                (= R Q)
                (= T S)
                (= V U))
           a!10)
       (or A
           B
           (not C)
           D
           (not E)
           (not F)
           (and L
                (not K)
                (not J)
                (not I)
                H
                (not G)
                (= N M)
                (= P O)
                (= R Q)
                (= T S)
                (= V U))
           (<= R 1))
       (or A
           B
           (not C)
           (not D)
           E
           (not F)
           (and L
                (not K)
                (not J)
                (not I)
                (not H)
                G
                (= N M)
                (= P O)
                (= R Q)
                (= T S)
                (= V U))
           (not (<= 3 T)))
       (or (not A)
           (not B)
           C
           (not D)
           (not E)
           F
           (and (not L) K J I H G (= N M) (= P O) (= R Q) (= T S) (= V U))
           (not (<= 2 T)))
       (or (not A)
           B
           C
           (not D)
           (not E)
           F
           (and (not L) K J I H (not G) (= N M) (= P O) (= R Q) (= T S) (= V U))
           (not (<= P T)))
       (or (not A)
           (not B)
           C
           D
           E
           (not F)
           (and (not L) K J I (not H) G (= N M) (= P O) (= R Q) (= T S) (= V U))
           (not (= W 0)))
       (or (not A)
           (not B)
           C
           (not D)
           (not E)
           F
           (and (not L) K J (not I) H G (= N M) (= P O) (= R Q) (= T S) (= V U))
           (<= 2 T))
       (or (not A)
           B
           C
           (not D)
           (not E)
           F
           (and (not L)
                K
                J
                (not I)
                H
                (not G)
                (= N M)
                (= P O)
                (= R Q)
                (= T S)
                (= V U))
           (<= P T))
       (or (not A)
           B
           C
           (not D)
           E
           F
           (and (not L)
                K
                J
                (not I)
                (not H)
                G
                (= N M)
                (= P O)
                (= R Q)
                (= T S)
                (= V U))
           (= W 0))
       (or (not A)
           (not B)
           C
           D
           (not E)
           (not F)
           (and (not L) K (not J) I H G (= N M) (= P O) (= R Q) (= T S) (= V U))
           (not (<= 2 R)))
       (or (not A)
           B
           C
           (not D)
           E
           F
           (and (not L)
                K
                (not J)
                I
                H
                (not G)
                (= N M)
                (= P O)
                (= R Q)
                (= T S)
                (= V U))
           (not (= W 0)))
       (or A
           (not B)
           C
           (not D)
           (not E)
           (not F)
           (and (not L)
                K
                (not J)
                I
                (not H)
                (not G)
                (= N M)
                (= P O)
                (= R Q)
                (= T S)
                (= V U))
           a!11)
       (or (not A)
           (not B)
           C
           D
           (not E)
           (not F)
           (and (not L)
                K
                (not J)
                (not I)
                H
                G
                (= N M)
                (= P O)
                (= R Q)
                (= T S)
                (= V U))
           (<= 2 R))
       (or A
           (not B)
           C
           (not D)
           E
           (not F)
           (and (not L)
                K
                (not J)
                (not I)
                H
                (not G)
                (= N M)
                (= P O)
                (= R Q)
                (= T S)
                (= V U))
           (= W 0))
       a!12
       (or A
           (not B)
           C
           (not D)
           E
           (not F)
           (and (not L) (not K) J I H G (= N M) (= P O) (= R Q) (= T S) (= V U))
           (not (= W 0)))
       (or A
           B
           C
           (not D)
           (not E)
           F
           (and (not L)
                (not K)
                J
                I
                H
                (not G)
                (= N M)
                (= P O)
                (= R Q)
                (= T S)
                (= V U))
           (not (= N R)))
       (or A
           (not B)
           C
           D
           (not E)
           F
           (and (not L)
                (not K)
                J
                I
                (not H)
                G
                (= N M)
                (= P O)
                (= R Q)
                (= T S)
                (= V U))
           a!13)
       (or A
           B
           C
           D
           (not E)
           F
           (and (not L)
                (not K)
                J
                I
                (not H)
                (not G)
                (= N M)
                (= P O)
                (= R Q)
                (= T S)
                (= V U))
           (not (<= 2 V)))
       (or A
           (not B)
           C
           (not D)
           (not E)
           F
           (and (not L)
                (not K)
                J
                (not I)
                H
                G
                (= N M)
                (= P O)
                (= R Q)
                (= T S)
                (= V U))
           (not (= W 0)))
       (or A
           B
           C
           (not D)
           (not E)
           F
           (and (not L)
                (not K)
                J
                (not I)
                H
                (not G)
                (= N M)
                (= P O)
                (= R Q)
                (= T S)
                (= V U))
           (= N R))
       a!14
       (or A
           B
           C
           D
           (not E)
           F
           (and (not L)
                (not K)
                J
                (not I)
                (not H)
                (not G)
                (= N M)
                (= P O)
                (= R Q)
                (= T S)
                (= V U))
           (<= 2 V))
       (or A (not B) C D (not E) (not F) a!15 a!16)
       (or A
           B
           C
           D
           (not E)
           (not F)
           (and (not L)
                (not K)
                (not J)
                I
                H
                (not G)
                (= N M)
                (= P O)
                (= R Q)
                (= T S)
                (= V U))
           (not (= T V)))
       (or A
           B
           C
           (not D)
           (not E)
           (not F)
           (and (not L)
                (not K)
                (not J)
                I
                (not H)
                G
                (= N M)
                (= P O)
                (= R Q)
                (= T S)
                (= V U))
           a!17)
       a!18
       (or A
           B
           C
           D
           (not E)
           (not F)
           (and (not L)
                (not K)
                (not J)
                (not I)
                H
                (not G)
                (= N M)
                (= P O)
                (= R Q)
                (= T S)
                (= V U))
           (= T V))
       a!19
       (or (not A) (not B) C (not D) (not E) (not F) a!20)
       (or (not A) B C D (not E) F a!21)
       (or (not A) B C D E (not F) a!22)
       (or (not A) (not B) C D E F a!23)
       (or A B (not C) D E F a!24)
       (or A (not B) (not C) D (not E) F a!25)
       (or A B (not C) D (not E) F a!26)
       (or A B (not C) (not D) (not E) F a!27)
       (or (not A)
           B
           (not C)
           (not D)
           E
           (not F)
           (and L K J I H (not G) (= N M) (= P O) (= R Q) (= T S) (= V U)))
       (or (not A) (not B) (not C) D (not E) (not F) a!28)
       (or (not A)
           B
           (not C)
           D
           E
           (not F)
           (and L K J I (not H) (not G) (= N M) (= P O) (= R Q) (= T S) (= V U)))
       (or (not A) (not B) (not C) D E (not F) a!1)
       (or (not A) (not B) (not C) (not D) (not E) F a!2)
       (or (not A)
           B
           (not C)
           (not D)
           E
           F
           (and L K (not J) I H (not G) (= N M) (= P O) (= R Q) (= T S) (= V U)))
       (or (not A) (not B) (not C) D (not E) F a!4)
       (or (not A)
           B
           (not C)
           D
           E
           F
           (and L
                K
                (not J)
                I
                (not H)
                (not G)
                (= N M)
                (= P O)
                (= R Q)
                (= T S)
                (= V U)))
       (or (not A) (not B) (not C) (not D) E F a!5)
       (or (not A) (not B) (not C) D E F a!7)
       (or A
           (not B)
           (not C)
           (not D)
           E
           (not F)
           (and L (not K) J I H G (= N M) (= P O) (= R Q) (= T S) (= V U)))
       (or A
           (not B)
           (not C)
           D
           E
           (not F)
           (and L
                (not K)
                J
                (not I)
                (not H)
                (not G)
                (= N M)
                (= P O)
                (= R Q)
                (= T S)
                (= V U)))
       (or A
           (not B)
           (not C)
           (not D)
           E
           F
           (and L (not K) (not J) I H G (= N M) (= P O) (= R Q) (= T S) (= V U)))
       (or (not A)
           (not B)
           C
           D
           (not E)
           F
           (and (not L)
                K
                J
                I
                (not H)
                (not G)
                (= N M)
                (= P O)
                (= R Q)
                (= T S)
                (= V U)))
       (or A
           B
           (not C)
           D
           E
           (not F)
           (and (not L)
                K
                (not J)
                I
                (not H)
                G
                (= N M)
                (= P O)
                (= R Q)
                (= T S)
                (= V U)))
       (or (not A) B C D (not E) (not F) a!15)
       (or A B C D E F a!29)
       (or A B C D E (not F) a!29)
       (or A B C (not D) E F a!29)
       (or A B C (not D) E (not F) a!29)
       (or A B (not C) (not D) E F a!29)
       (or A B (not C) (not D) (not E) (not F) a!29)
       (or A (not B) C D E F a!29)
       (or A (not B) C D E (not F) a!29)
       (or A (not B) C (not D) E F a!29)
       (or (not A) B C D E F a!29)
       (or (not A) B C (not D) E (not F) a!29)
       (or (not A) B (not C) (not D) (not E) (not F) a!29)
       (or (not A) (not B) C (not D) E F a!29)
       (or (not A) (not B) C (not D) E (not F) a!29)
       (or A
           (not B)
           (not C)
           D
           E
           F
           (and L
                (not K)
                (not J)
                I
                (not H)
                G
                (= M R)
                (= P O)
                (= R Q)
                (= T S)
                (= V U)))
       (or (not A)
           B
           C
           (not D)
           (not E)
           (not F)
           (and (not L)
                K
                (not J)
                (not I)
                (not H)
                G
                (= M P)
                (= P O)
                (= R Q)
                (= T S)
                (= V U)))
       a!30)))
      )
      (state J I H G K L M O Q S U)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Bool) (E Bool) (F Bool) (G Int) (H Int) (I Int) (J Int) (K Int) ) 
    (=>
      (and
        (state F E D B A C G H I J K)
        (or (and A B C (not D) (not E) (not F))
    (and A B C (not D) (not E) F)
    (and A B C (not D) E (not F))
    (and A B C (not D) E F)
    (and A B C D (not E) (not F))
    (and A B C D E (not F)))
      )
      false
    )
  )
)

(check-sat)
(exit)
