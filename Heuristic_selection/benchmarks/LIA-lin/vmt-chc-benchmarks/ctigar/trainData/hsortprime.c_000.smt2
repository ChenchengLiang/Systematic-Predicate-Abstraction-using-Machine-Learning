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
        (let ((a!1 (not (<= (+ (* 2 R) (* (- 1) T)) 1)))
      (a!2 (not (<= (+ P (* (- 1) T)) (- 1))))
      (a!3 (or A
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
      (a!4 (and (not L)
                (not K)
                J
                I
                H
                (not G)
                (= N M)
                (= P O)
                (= R Q)
                (= T S)
                (= V U)))
      (a!5 (not (<= (+ (* 2 R) (* (- 1) V)) 1)))
      (a!6 (or A
               (not B)
               C
               D
               (not E)
               (not F)
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
               (<= (+ (* 2 R) (* (- 1) V)) 1)))
      (a!7 (not (<= 0 (+ (* 2 R) (* (- 1) V)))))
      (a!8 (not (= (+ P (* (- 2) R)) 0)))
      (a!9 (or A
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
      (a!10 (or A
                B
                C
                (not D)
                (not E)
                (not F)
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
                (= (+ P (* (- 2) R)) 0)))
      (a!11 (and L
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
      (a!12 (and (not L)
                 K
                 (not J)
                 (not I)
                 (not H)
                 G
                 (= P O)
                 (= R Q)
                 (= T S)
                 (= V U)
                 (= (+ M (* (- 1) P)) 1)))
      (a!13 (and (not L)
                 K
                 (not J)
                 (not I)
                 H
                 G
                 (= N M)
                 (= R Q)
                 (= T S)
                 (= V U)
                 (= (+ (* 2 P) (* (- 1) O)) (- 2))))
      (a!14 (and (not L)
                 K
                 J
                 (not I)
                 H
                 (not G)
                 (= N M)
                 (= R Q)
                 (= T S)
                 (= V U)
                 (= (+ (* 2 P) (* (- 1) O)) 0)))
      (a!15 (and L
                 (not K)
                 (not J)
                 (not I)
                 H
                 (not G)
                 (= N M)
                 (= R Q)
                 (= T S)
                 (= V U)
                 (= (+ O (* (- 2) R)) (- 2))))
      (a!16 (and L
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
      (a!17 (and L
                 (not K)
                 (not J)
                 (not I)
                 (not H)
                 G
                 (= N M)
                 (= P O)
                 (= T S)
                 (= V U)
                 (= (+ R (* (- 1) Q)) 1)))
      (a!18 (and L
                 (not K)
                 (not J)
                 I
                 (not H)
                 G
                 (= N M)
                 (= P O)
                 (= R Q)
                 (= V U)
                 (= (+ T (* (- 1) S)) 1)))
      (a!19 (and L
                 (not K)
                 J
                 I
                 (not H)
                 G
                 (= N M)
                 (= P O)
                 (= R Q)
                 (= T S)
                 (= V U)))
      (a!20 (and (not L)
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
(let ((a!21 (or A
                (not B)
                (not C)
                D
                (not E)
                (not F)
                a!19
                (<= (+ (* 2 R) (* (- 1) T)) 1))))
  (and (or A
           (not B)
           (not C)
           D
           (not E)
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
           a!1)
       (or A
           (not B)
           C
           (not D)
           (not E)
           F
           (and L (not K) J (not I) H G (= N M) (= P O) (= R Q) (= T S) (= V U))
           (= W 0))
       (or A
           B
           (not C)
           (not D)
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
                (= V U))
           (not (<= 3 T)))
       (or A
           B
           (not C)
           (not D)
           E
           (not F)
           (and L (not K) (not J) I H G (= N M) (= P O) (= R Q) (= T S) (= V U))
           (<= 3 T))
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
           B
           (not C)
           D
           (not E)
           (not F)
           (and L
                (not K)
                (not J)
                I
                (not H)
                (not G)
                (= N M)
                (= P O)
                (= R Q)
                (= T S)
                (= V U))
           (<= R 1))
       (or (not A)
           (not B)
           C
           D
           E
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
           (= W 0))
       (or (not A)
           (not B)
           C
           (not D)
           (not E)
           F
           (and (not L) K J I H G (= N M) (= P O) (= R Q) (= T S) (= V U))
           (not (<= 2 T)))
       (or (not A)
           (not B)
           C
           D
           (not E)
           (not F)
           (and (not L) K J I H (not G) (= N M) (= P O) (= R Q) (= T S) (= V U))
           (not (<= 2 R)))
       (or (not A)
           (not B)
           C
           (not D)
           (not E)
           F
           (and (not L) K J I (not H) G (= N M) (= P O) (= R Q) (= T S) (= V U))
           (<= 2 T))
       (or (not A)
           (not B)
           C
           D
           (not E)
           (not F)
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
                (= V U))
           (<= 2 R))
       (or (not A)
           (not B)
           C
           D
           E
           (not F)
           (and (not L) K J (not I) H G (= N M) (= P O) (= R Q) (= T S) (= V U))
           (not (= W 0)))
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
           B
           C
           (not D)
           (not E)
           F
           (and (not L) K (not J) I H G (= N M) (= P O) (= R Q) (= T S) (= V U))
           (not (<= P T)))
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
       (or (not A)
           B
           C
           (not D)
           (not E)
           F
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
                (= V U))
           (<= P T))
       (or A
           (not B)
           C
           (not D)
           E
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
           (= W 0))
       (or A
           (not B)
           C
           (not D)
           (not E)
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
           a!2)
       a!3
       (or A
           (not B)
           C
           (not D)
           E
           (not F)
           (and (not L) (not K) J I H G (= N M) (= P O) (= R Q) (= T S) (= V U))
           (not (= W 0)))
       (or A (not B) C D (not E) (not F) a!4 a!5)
       (or A
           (not B)
           C
           (not D)
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
           (not (= W 0)))
       a!6
       (or A
           (not B)
           C
           D
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
           a!7)
       (or A
           B
           C
           (not D)
           (not E)
           (not F)
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
           a!8)
       a!9
       a!10
       (or A
           B
           C
           (not D)
           (not E)
           F
           (and (not L)
                (not K)
                (not J)
                I
                H
                G
                (= N M)
                (= P O)
                (= R Q)
                (= T S)
                (= V U))
           (not (= N R)))
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
           F
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
           (= N R))
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
                (not H)
                (not G)
                (= N M)
                (= P O)
                (= R Q)
                (= T S)
                (= V U))
           (= T V))
       (or A
           B
           C
           D
           (not E)
           F
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
           (not (<= 2 V)))
       (or A
           B
           C
           D
           (not E)
           F
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
           (<= 2 V))
       (or (not A) (not B) C (not D) (not E) (not F) a!11)
       (or (not A) B C D (not E) F a!12)
       (or (not A) B C D E (not F) a!13)
       (or (not A) (not B) C D E F a!14)
       (or A B (not C) D E F a!15)
       (or A (not B) (not C) D (not E) F a!16)
       (or A B (not C) D (not E) F a!17)
       (or A B (not C) (not D) (not E) F a!18)
       (or A
           (not B)
           (not C)
           (not D)
           E
           F
           (and L (not K) J I H (not G) (= N M) (= P O) (= R Q) (= T S) (= V U)))
       (or A (not B) (not C) (not D) E (not F) a!19)
       (or A
           (not B)
           (not C)
           D
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
                (= V U)))
       (or A
           B
           (not C)
           D
           E
           (not F)
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
                (= V U)))
       (or (not A)
           (not B)
           C
           D
           (not E)
           F
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
                (= V U)))
       (or (not A) B C D (not E) (not F) a!4)
       (or A B C D E F a!20)
       (or A B C D E (not F) a!20)
       (or A B C (not D) E F a!20)
       (or A B C (not D) E (not F) a!20)
       (or A B (not C) (not D) E F a!20)
       (or A B (not C) (not D) (not E) (not F) a!20)
       (or A (not B) C D E F a!20)
       (or A (not B) C D E (not F) a!20)
       (or A (not B) C (not D) E F a!20)
       (or A (not B) (not C) (not D) (not E) F a!20)
       (or (not A) B C D E F a!20)
       (or (not A) B C (not D) E (not F) a!20)
       (or (not A) (not B) C (not D) E F a!20)
       (or (not A) (not B) C (not D) E (not F) a!20)
       (or A
           (not B)
           (not C)
           D
           E
           F
           (and L
                (not K)
                J
                (not I)
                H
                (not G)
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
                J
                (not I)
                (not H)
                (not G)
                (= M P)
                (= P O)
                (= R Q)
                (= T S)
                (= V U)))
       a!21)))
      )
      (state G H I J K L M O Q S U)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Bool) (E Bool) (F Bool) (G Int) (H Int) (I Int) (J Int) (K Int) ) 
    (=>
      (and
        (state F E D B A C G H I J K)
        (and (not E) (= D true) (= C true) (= B true) (not A) (= F true))
      )
      false
    )
  )
)

(check-sat)
(exit)
