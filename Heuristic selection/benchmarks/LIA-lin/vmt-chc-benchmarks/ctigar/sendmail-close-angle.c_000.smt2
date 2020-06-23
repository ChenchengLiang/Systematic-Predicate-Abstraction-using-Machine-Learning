(set-logic HORN)

(declare-fun |state| ( Bool Bool Bool Bool Bool Bool Int Int Int Int Int ) Bool)

(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Bool) (E Int) (F Int) (G Int) (H Int) (I Int) (J Bool) (K Bool) ) 
    (=>
      (and
        (and (= C true) (not B) (not A) (not K) (not J) (not D))
      )
      (state D C A B K J E F G H I)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Bool) (E Bool) (F Bool) (G Bool) (H Bool) (I Bool) (J Bool) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) (T Int) (U Int) (V Bool) (W Bool) ) 
    (=>
      (and
        (state D C A B W V L N P R T)
        (let ((a!1 (and J
                (not I)
                (not H)
                G
                (not F)
                E
                (= L K)
                (= N M)
                (= P O)
                (= R Q)
                (= T S)))
      (a!2 (and J
                (not I)
                (not H)
                (not G)
                F
                E
                (= L K)
                (= N M)
                (= P O)
                (= R Q)
                (= T S)))
      (a!3 (and J
                (not I)
                (not H)
                (not G)
                (not F)
                E
                (= L K)
                (= N M)
                (= P O)
                (= R Q)
                (= T S)))
      (a!4 (and (not J) I (not H) G F E (= L K) (= N M) (= P O) (= R Q) (= T S)))
      (a!5 (and (not J)
                I
                (not H)
                G
                (not F)
                E
                (= L K)
                (= N M)
                (= P O)
                (= R Q)
                (= T S)))
      (a!6 (and (not J)
                I
                (not H)
                (not G)
                F
                E
                (= L K)
                (= N M)
                (= P O)
                (= R Q)
                (= T S)))
      (a!7 (and (not J)
                I
                (not H)
                (not G)
                (not F)
                E
                (= L K)
                (= N M)
                (= P O)
                (= R Q)
                (= T S)))
      (a!8 (and (not J)
                (not I)
                H
                G
                (not F)
                E
                (= L K)
                (= N M)
                (= P O)
                (= R Q)
                (= T S)))
      (a!9 (and J
                (not I)
                (not H)
                (not G)
                F
                (not E)
                (= L K)
                (= P O)
                (= R Q)
                (= T S)
                (= (+ N (* (- 1) M)) (- 1))))
      (a!10 (and (not J)
                 (not I)
                 (not H)
                 (not G)
                 F
                 E
                 (= L K)
                 (= N M)
                 (= R Q)
                 (= T S)
                 (= (+ L (* (- 1) O)) 2)))
      (a!11 (and J
                 (not I)
                 (not H)
                 G
                 (not F)
                 (not E)
                 (= L K)
                 (= N M)
                 (= P O)
                 (= R Q)
                 (= (+ T (* (- 1) S)) (- 1))))
      (a!12 (and (not J)
                 I
                 H
                 G
                 F
                 (not E)
                 (= L K)
                 (= N M)
                 (= P O)
                 (= R Q)
                 (= (+ T (* (- 1) S)) (- 1))))
      (a!13 (and (not J)
                 I
                 (not H)
                 (not G)
                 F
                 (not E)
                 (= L K)
                 (= N M)
                 (= P O)
                 (= R Q)
                 (= (+ T (* (- 1) S)) (- 1))))
      (a!14 (and J
                 (not I)
                 H
                 G
                 F
                 (not E)
                 (= L K)
                 (= N M)
                 (= P O)
                 (= R Q)
                 (= T S)))
      (a!15 (and (not J)
                 (not I)
                 (not H)
                 (not G)
                 (not F)
                 (not E)
                 (= L K)
                 (= N M)
                 (= P O)
                 (= R Q)
                 (= T S))))
  (and (or (not A)
           B
           C
           D
           (not V)
           W
           (and J
                (not I)
                H
                G
                (not F)
                (not E)
                (= L K)
                (= N M)
                (= P O)
                (= R Q)
                (= T S))
           (<= R N))
       (or A
           B
           C
           (not D)
           (not V)
           W
           (and J
                (not I)
                (not H)
                G
                F
                (not E)
                (= L K)
                (= N M)
                (= P O)
                (= R Q)
                (= T S))
           (not (<= 0 N)))
       (or (not A) (not B) C (not D) V (not W) a!1 (not (<= L T)))
       (or (not A) (not B) C D V (not W) a!2 (<= 0 T))
       (or A B C (not D) (not V) W a!3 (<= 0 N))
       (or (not A)
           (not B)
           C
           (not D)
           V
           (not W)
           (and (not J) I H G F E (= L K) (= N M) (= P O) (= R Q) (= T S))
           (<= L T))
       (or (not A)
           (not B)
           C
           D
           V
           (not W)
           (and (not J) I H G (not F) E (= L K) (= N M) (= P O) (= R Q) (= T S))
           (not (<= 0 T)))
       (or (not A)
           B
           C
           D
           V
           (not W)
           (and (not J)
                I
                H
                G
                (not F)
                (not E)
                (= L K)
                (= N M)
                (= P O)
                (= R Q)
                (= T S))
           (<= L T))
       (or A
           (not B)
           (not C)
           (not D)
           V
           W
           (and (not J)
                I
                H
                (not G)
                (not F)
                E
                (= L K)
                (= N M)
                (= P O)
                (= R Q)
                (= T S))
           (= P T))
       (or (not A) (not B) (not C) D V W a!4 (<= 0 T))
       (or A
           B
           C
           (not D)
           V
           (not W)
           (and (not J)
                I
                (not H)
                G
                F
                (not E)
                (= L K)
                (= N M)
                (= P O)
                (= R Q)
                (= T S))
           (not (<= 0 T)))
       (or A B C (not D) V (not W) a!5 (<= 0 T))
       (or (not A) (not B) (not C) (not D) V W a!6 (not (<= L T)))
       (or (not A) B C D V (not W) a!7 (not (<= L T)))
       (or (not A)
           (not B)
           (not C)
           (not D)
           V
           W
           (and (not J)
                I
                (not H)
                (not G)
                (not F)
                (not E)
                (= L K)
                (= N M)
                (= P O)
                (= R Q)
                (= T S))
           (<= L T))
       (or (not A)
           B
           (not C)
           D
           V
           W
           (and (not J)
                (not I)
                H
                G
                F
                (not E)
                (= L K)
                (= N M)
                (= P O)
                (= R Q)
                (= T S))
           (<= R L))
       (or A (not B) C (not D) V W a!8 (= U 0))
       (or A
           B
           (not C)
           (not D)
           V
           W
           (and (not J)
                (not I)
                H
                G
                (not F)
                (not E)
                (= L K)
                (= N M)
                (= P O)
                (= R Q)
                (= T S))
           (<= R 0))
       (or (not A)
           (not B)
           (not C)
           D
           V
           W
           (and (not J)
                (not I)
                H
                (not G)
                F
                E
                (= L K)
                (= N M)
                (= P O)
                (= R Q)
                (= T S))
           (not (<= 0 T)))
       (or (not A)
           B
           (not C)
           D
           V
           W
           (and (not J)
                (not I)
                H
                (not G)
                F
                (not E)
                (= L K)
                (= N M)
                (= P O)
                (= R Q)
                (= T S))
           (not (<= R L)))
       (or A
           (not B)
           (not C)
           (not D)
           V
           W
           (and (not J)
                (not I)
                H
                (not G)
                (not F)
                E
                (= L K)
                (= N M)
                (= P O)
                (= R Q)
                (= T S))
           (not (= P T)))
       (or A
           B
           (not C)
           (not D)
           V
           W
           (and (not J)
                (not I)
                H
                (not G)
                (not F)
                (not E)
                (= L K)
                (= N M)
                (= P O)
                (= R Q)
                (= T S))
           (not (<= R 0)))
       (or A
           (not B)
           C
           (not D)
           V
           W
           (and (not J)
                (not I)
                (not H)
                G
                F
                E
                (= L K)
                (= N M)
                (= P O)
                (= R Q)
                (= T S))
           (not (= U 0)))
       (or A
           B
           (not C)
           D
           V
           W
           (and (not J)
                (not I)
                (not H)
                G
                F
                (not E)
                (= L K)
                (= N M)
                (= P O)
                (= R Q)
                (= T S))
           (<= L 1))
       (or A
           B
           (not C)
           D
           V
           W
           (and (not J)
                (not I)
                (not H)
                (not G)
                F
                (not E)
                (= L K)
                (= N M)
                (= P O)
                (= R Q)
                (= T S))
           (not (<= L 1)))
       (or A B (not C) D (not V) W a!9)
       (or A (not B) (not C) D V W a!10)
       (or A B C D (not V) W a!11)
       (or (not A) B C (not D) V (not W) a!12)
       (or A B (not C) D V (not W) a!13)
       (or (not A) B (not C) (not D) (not V) W a!14)
       (or (not A)
           B
           (not C)
           D
           (not V)
           W
           (and J
                (not I)
                H
                (not G)
                F
                (not E)
                (= L K)
                (= N M)
                (= P O)
                (= R Q)
                (= T S)))
       (or A
           B
           (not C)
           (not D)
           (not V)
           W
           (and J
                (not I)
                H
                (not G)
                (not F)
                (not E)
                (= L K)
                (= N M)
                (= P O)
                (= R Q)
                (= T S)))
       (or A (not B) (not C) D (not V) W a!1)
       (or A (not B) C (not D) (not V) W a!2)
       (or A (not B) C D (not V) W a!3)
       (or (not A)
           (not B)
           (not C)
           (not D)
           V
           (not W)
           (and J
                (not I)
                (not H)
                (not G)
                (not F)
                (not E)
                (= L K)
                (= N M)
                (= P O)
                (= R Q)
                (= T S)))
       (or (not A)
           (not B)
           (not C)
           D
           V
           (not W)
           (and (not J) I H (not G) F E (= L K) (= N M) (= P O) (= R Q) (= T S)))
       (or (not A)
           B
           (not C)
           D
           V
           (not W)
           (and (not J)
                I
                H
                (not G)
                F
                (not E)
                (= L K)
                (= N M)
                (= P O)
                (= R Q)
                (= T S)))
       (or A
           B
           (not C)
           (not D)
           V
           (not W)
           (and (not J)
                I
                H
                (not G)
                (not F)
                (not E)
                (= L K)
                (= N M)
                (= P O)
                (= R Q)
                (= T S)))
       (or A (not B) (not C) (not D) V (not W) a!4)
       (or A (not B) (not C) D V (not W) a!5)
       (or A
           B
           C
           D
           V
           (not W)
           (and (not J)
                I
                (not H)
                G
                (not F)
                (not E)
                (= L K)
                (= N M)
                (= P O)
                (= R Q)
                (= T S)))
       (or A (not B) C (not D) V (not W) a!6)
       (or A (not B) C D V (not W) a!7)
       (or (not A)
           (not B)
           C
           (not D)
           V
           W
           (and (not J) (not I) H G F E (= L K) (= N M) (= P O) (= R Q) (= T S)))
       (or (not A) (not B) C D V W a!8)
       (or (not A)
           B
           C
           (not D)
           (not V)
           W
           (and (not J)
                (not I)
                (not H)
                (not G)
                F
                E
                (= L K)
                (= N M)
                (= P O)
                (= R Q)
                (= T S)))
       (or A B C D V W a!15)
       (or A B C (not D) V W a!15)
       (or (not A) B C D V W a!15)
       (or (not A) B C (not D) V W a!15)
       (or (not A) B (not C) (not D) V (not W) a!15)
       (or A
           (not B)
           C
           D
           V
           W
           (and (not J)
                (not I)
                (not H)
                G
                (not F)
                E
                (= M 0)
                (= L K)
                (= P O)
                (= R Q)
                (= T S)))
       (or (not A)
           B
           (not C)
           (not D)
           V
           W
           (and (not J)
                (not I)
                (not H)
                (not G)
                (not F)
                E
                (= S 0)
                (= L K)
                (= N M)
                (= P O)
                (= R Q)))
       (or (not A) B C D (not V) W a!14 (not (<= R N)))))
      )
      (state F G H E I J K M O Q S)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Bool) (E Int) (F Int) (G Int) (H Int) (I Int) (J Bool) (K Bool) ) 
    (=>
      (and
        (state D C A B K J E F G H I)
        (or (and (not J) K (not A) B (not C) (not D))
    (and (not J) K (not A) B (not C) D)
    (and (not J) K (not A) B C (not D))
    (and (not J) K (not A) B C D)
    (and J (not K) (not A) B (not C) (not D))
    (and J (not K) (not A) B (not C) D)
    (and J (not K) (not A) B C (not D))
    (and J (not K) A (not B) C D))
      )
      false
    )
  )
)

(check-sat)
(exit)
