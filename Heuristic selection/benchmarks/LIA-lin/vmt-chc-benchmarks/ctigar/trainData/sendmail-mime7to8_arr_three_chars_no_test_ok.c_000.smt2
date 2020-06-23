(set-logic HORN)

(declare-fun |state| ( Bool Bool Bool Bool Bool Bool Int Int ) Bool)

(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Bool) (E Int) (F Int) (G Bool) (H Bool) ) 
    (=>
      (and
        (and (= C true) (not B) (not H) (not G) (not A) (not D))
      )
      (state D C B A H G E F)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Bool) (E Bool) (F Bool) (G Bool) (H Bool) (I Bool) (J Bool) (K Int) (L Int) (M Int) (N Int) (O Int) (P Bool) (Q Bool) ) 
    (=>
      (and
        (state D C B A Q P L N)
        (let ((a!1 (and J I H G (not F) (not E) (= L K) (= N M)))
      (a!2 (and J I H (not G) F (not E) (= L K) (= N M)))
      (a!3 (and J I H (not G) (not F) (not E) (= L K) (= N M)))
      (a!4 (and J I (not H) G F (not E) (= L K) (= N M)))
      (a!5 (and J I (not H) G (not F) (not E) (= L K) (= N M)))
      (a!7 (not (<= (+ L (* (- 1) N)) 1)))
      (a!8 (and J (not I) (not H) G (not F) (not E) (= L K) (= N M)))
      (a!10 (and J (not I) (not H) (not G) (not F) E (= L K) (= N M)))
      (a!11 (and (not J) I H G F (not E) (= L K) (= N M)))
      (a!12 (and (not J) I H G (not F) (not E) (= L K) (= N M)))
      (a!13 (and (not J) I H (not G) F (not E) (= L K) (= N M)))
      (a!14 (and (not J) I (not H) G (not F) E (= L K) (= N M)))
      (a!16 (and (not J) (not I) H G F (not E) (= L K) (= N M)))
      (a!17 (and J (not I) H G F (not E) (= L K) (= (+ N (* (- 1) M)) (- 1))))
      (a!18 (and (not J) I H G F E (= L K) (= (+ N (* (- 1) M)) (- 1))))
      (a!19 (and (not J) (not I) H G F E (= L K) (= (+ N (* (- 1) M)) (- 1))))
      (a!20 (and J I H G F (not E) (= L K) (= N M)))
      (a!21 (and (not J)
                 (not I)
                 (not H)
                 (not G)
                 (not F)
                 (not E)
                 (= L K)
                 (= N M))))
(let ((a!6 (or A (not B) (not C) (not D) (not P) Q a!5 (<= (+ L (* (- 1) N)) 1)))
      (a!9 (or (not A)
               (not B)
               (not C)
               (not D)
               P
               (not Q)
               a!8
               (<= (+ L (* (- 1) N)) 1)))
      (a!15 (or A
                (not B)
                (not C)
                (not D)
                P
                (not Q)
                a!14
                (<= (+ L (* (- 1) N)) 1))))
  (and (or (not A) B C (not D) P (not Q) a!1 (<= 0 N))
       (or (not A) (not B) C D P (not Q) a!2 (not (<= L N)))
       (or A B C (not D) (not P) Q a!3 (<= 0 N))
       (or A (not B) C D (not P) Q a!4 (not (<= L N)))
       a!6
       (or A
           (not B)
           (not C)
           (not D)
           (not P)
           Q
           (and J I (not H) (not G) (not F) (not E) (= L K) (= N M))
           a!7)
       (or A
           (not B)
           C
           D
           (not P)
           Q
           (and J (not I) H (not G) F (not E) (= L K) (= N M))
           (<= L N))
       (or A
           B
           C
           (not D)
           (not P)
           Q
           (and J (not I) (not H) G F (not E) (= L K) (= N M))
           (not (<= 0 N)))
       a!9
       (or A B C (not D) P (not Q) a!10 (<= 0 N))
       (or (not A)
           (not B)
           (not C)
           (not D)
           P
           (not Q)
           (and J (not I) (not H) (not G) (not F) (not E) (= L K) (= N M))
           a!7)
       (or (not A) B C D P Q a!11 (<= 0 N))
       (or (not A) B C (not D) P Q a!12 (not (<= L N)))
       (or (not A)
           (not B)
           C
           D
           P
           (not Q)
           (and (not J) I H (not G) F E (= L K) (= N M))
           (<= L N))
       (or A (not B) (not C) (not D) P Q a!13 (not (<= N 0)))
       (or (not A)
           B
           C
           (not D)
           P
           (not Q)
           (and (not J) I (not H) G F E (= L K) (= N M))
           (not (<= 0 N)))
       (or (not A)
           B
           C
           (not D)
           P
           Q
           (and (not J) I (not H) G F (not E) (= L K) (= N M))
           (<= L N))
       a!15
       (or (not A)
           B
           C
           D
           P
           Q
           (and (not J) I (not H) (not G) F (not E) (= L K) (= N M))
           (not (<= 0 N)))
       (or A
           (not B)
           (not C)
           (not D)
           P
           (not Q)
           (and (not J) I (not H) (not G) (not F) E (= L K) (= N M))
           a!7)
       (or A
           (not B)
           (not C)
           (not D)
           P
           Q
           (and (not J) I (not H) (not G) (not F) (not E) (= L K) (= N M))
           (<= N 0))
       (or A (not B) C D P Q a!16 (= O 0))
       (or A
           (not B)
           (not C)
           D
           P
           Q
           (and (not J) (not I) H G (not F) (not E) (= L K) (= N M))
           (not (= O 0)))
       (or A
           (not B)
           C
           D
           P
           (not Q)
           (and (not J) (not I) H (not G) F E (= L K) (= N M))
           (<= L N))
       (or A
           (not B)
           C
           D
           P
           Q
           (and (not J) (not I) H (not G) F (not E) (= L K) (= N M))
           (not (= O 0)))
       (or A
           B
           C
           (not D)
           P
           (not Q)
           (and (not J) (not I) (not H) G F E (= L K) (= N M))
           (not (<= 0 N)))
       (or A
           B
           (not C)
           D
           P
           Q
           (and (not J) (not I) (not H) G F (not E) (= L K) (= N M))
           (<= L 0))
       (or A
           B
           C
           D
           P
           (not Q)
           (and (not J) (not I) (not H) G (not F) E (= L K) (= N M))
           (= O 0))
       (or A
           B
           (not C)
           D
           P
           Q
           (and (not J) (not I) (not H) G (not F) (not E) (= L K) (= N M))
           (not (<= L 0)))
       (or A
           B
           C
           D
           P
           (not Q)
           (and (not J) (not I) (not H) (not G) F E (= L K) (= N M))
           (not (= O 0)))
       (or A
           (not B)
           (not C)
           D
           P
           Q
           (and (not J) (not I) (not H) (not G) (not F) E (= L K) (= N M))
           (= O 0))
       (or A (not B) C (not D) (not P) Q a!17)
       (or (not A) (not B) C (not D) P (not Q) a!18)
       (or A (not B) C (not D) P (not Q) a!19)
       (or (not A) (not B) (not C) (not D) (not P) Q a!20)
       (or (not A) (not B) C (not D) (not P) Q a!1)
       (or (not A) (not B) (not C) D (not P) Q a!2)
       (or (not A) (not B) C D (not P) Q a!3)
       (or (not A) B (not C) (not D) (not P) Q a!4)
       (or (not A) B (not C) D (not P) Q a!5)
       (or A
           (not B)
           (not C)
           D
           (not P)
           Q
           (and J (not I) H G (not F) (not E) (= L K) (= N M)))
       (or A
           B
           (not C)
           (not D)
           (not P)
           Q
           (and J (not I) H (not G) (not F) (not E) (= L K) (= N M)))
       (or A B (not C) D (not P) Q a!8)
       (or A B C D (not P) (not Q) a!10)
       (or (not A) (not B) (not C) (not D) P Q a!11)
       (or (not A)
           (not B)
           (not C)
           D
           P
           (not Q)
           (and (not J) I H G (not F) E (= L K) (= N M)))
       (or (not A) (not B) C (not D) P Q a!12)
       (or (not A) (not B) C D P Q a!13)
       (or (not A)
           B
           (not C)
           (not D)
           P
           (not Q)
           (and (not J) I H (not G) (not F) E (= L K) (= N M)))
       (or (not A)
           B
           (not C)
           (not D)
           P
           Q
           (and (not J) I H (not G) (not F) (not E) (= L K) (= N M)))
       (or (not A) B (not C) D P (not Q) a!14)
       (or (not A)
           B
           (not C)
           D
           P
           Q
           (and (not J) I (not H) G (not F) (not E) (= L K) (= N M)))
       (or A B (not C) D P (not Q) a!16)
       (or A (not B) C (not D) P Q a!16)
       (or A
           (not B)
           (not C)
           D
           P
           (not Q)
           (and (not J) (not I) H G (not F) E (= L K) (= N M)))
       (or A
           B
           (not C)
           (not D)
           P
           (not Q)
           (and (not J) (not I) H (not G) (not F) E (= L K) (= N M)))
       (or (not A)
           B
           C
           (not D)
           (not P)
           Q
           (and (not J) (not I) H (not G) (not F) (not E) (= L K) (= N M)))
       (or A B C D P Q a!21)
       (or A B C (not D) P Q a!21)
       (or (not A) (not B) (not C) D P Q a!21)
       (or (not A)
           B
           C
           D
           (not P)
           Q
           (and J I (not H) (not G) F (not E) (= M 0) (= L K)))
       (or A
           B
           C
           D
           (not P)
           Q
           (and J (not I) (not H) (not G) F (not E) (= M 0) (= L K)))
       (or (not A)
           B
           C
           D
           P
           (not Q)
           (and (not J) I (not H) (not G) F E (= M 0) (= L K)))
       (or A
           B
           (not C)
           (not D)
           P
           Q
           (and (not J) (not I) H (not G) (not F) (not E) (= M 0) (= L K)))
       (or A (not B) C D P (not Q) a!20 (not (<= L N))))))
      )
      (state G F H I E J K M)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Bool) (E Int) (F Int) (G Bool) (H Bool) ) 
    (=>
      (and
        (state D C B A H G E F)
        (or (and (not A) G H (not B) (not C) (not D))
    (and A (not G) (not H) B (not C) D)
    (and A (not G) (not H) B C D)
    (and A G (not H) (not B) C D)
    (and A G (not H) B (not C) (not D))
    (and A G (not H) B (not C) D)
    (and A G (not H) B C (not D))
    (and A G (not H) B C D))
      )
      false
    )
  )
)

(check-sat)
(exit)
