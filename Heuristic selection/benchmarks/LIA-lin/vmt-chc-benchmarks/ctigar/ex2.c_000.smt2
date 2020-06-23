(set-logic HORN)

(declare-fun |state| ( Bool Bool Bool Bool Bool Bool Int ) Bool)

(assert
  (forall ( (A Bool) (B Bool) (C Int) (D Bool) (E Bool) (F Bool) (G Bool) ) 
    (=>
      (and
        (and (= A true) (not G) (not F) (not E) (not D) (not B))
      )
      (state B A G F D E C)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Bool) (E Bool) (F Bool) (G Bool) (H Bool) (I Int) (J Int) (K Int) (L Bool) (M Bool) (N Bool) (O Bool) ) 
    (=>
      (and
        (state B A O N L M J)
        (let ((a!1 (and (not H) G F E D (not C) (= J I)))
      (a!2 (and H G (not F) (not E) D (not C) (= (+ J (* (- 1) I)) (- 22))))
      (a!3 (and H (not G) F E D C (= (+ J (* (- 1) I)) (- 20))))
      (a!4 (and H (not G) F (not E) D C (= (+ J (* (- 1) I)) (- 18))))
      (a!5 (and H (not G) F E D (not C) (= (+ J (* (- 1) I)) (- 16))))
      (a!6 (and H (not G) F (not E) D (not C) (= (+ J (* (- 1) I)) (- 14))))
      (a!7 (and H (not G) (not F) E D C (= (+ J (* (- 1) I)) (- 12))))
      (a!8 (and H (not G) (not F) (not E) D C (= (+ J (* (- 1) I)) (- 10))))
      (a!9 (and H (not G) (not F) E D (not C) (= (+ J (* (- 1) I)) (- 8))))
      (a!10 (and H
                 (not G)
                 (not F)
                 (not E)
                 D
                 (not C)
                 (= (+ J (* (- 1) I)) (- 6))))
      (a!11 (and (not H) G F E D C (= (+ J (* (- 1) I)) (- 4))))
      (a!12 (and (not H) G F (not E) D C (= (+ J (* (- 1) I)) (- 2))))
      (a!13 (and (not H)
                 G
                 F
                 (not E)
                 (not D)
                 (not C)
                 (= (+ J (* (- 1) I)) (- 1))))
      (a!14 (and (not H) G (not F) E (not D) C (= (+ J (* (- 1) I)) (- 1))))
      (a!15 (and (not H)
                 G
                 (not F)
                 E
                 (not D)
                 (not C)
                 (= (+ J (* (- 1) I)) (- 1))))
      (a!16 (and (not H)
                 G
                 (not F)
                 (not E)
                 (not D)
                 C
                 (= (+ J (* (- 1) I)) (- 1))))
      (a!17 (and (not H)
                 G
                 (not F)
                 (not E)
                 (not D)
                 (not C)
                 (= (+ J (* (- 1) I)) (- 1))))
      (a!18 (and (not H) (not G) F E (not D) C (= (+ J (* (- 1) I)) (- 1))))
      (a!19 (and (not H)
                 (not G)
                 F
                 E
                 (not D)
                 (not C)
                 (= (+ J (* (- 1) I)) (- 1))))
      (a!20 (and (not H)
                 (not G)
                 F
                 (not E)
                 (not D)
                 C
                 (= (+ J (* (- 1) I)) (- 1))))
      (a!21 (and (not H)
                 (not G)
                 F
                 (not E)
                 (not D)
                 (not C)
                 (= (+ J (* (- 1) I)) (- 1))))
      (a!22 (and (not H)
                 (not G)
                 (not F)
                 E
                 (not D)
                 C
                 (= (+ J (* (- 1) I)) (- 1))))
      (a!23 (and (not H)
                 (not G)
                 (not F)
                 (not E)
                 (not D)
                 C
                 (= (+ J (* (- 1) I)) (- 1))))
      (a!24 (and (not H) (not G) (not F) (not E) (not D) (not C) (= J I))))
  (and (or A B L M N (not O) (and H (not G) F E (not D) C (= J I)) (= K 0))
       (or A
           B
           L
           M
           (not N)
           O
           (and H (not G) F E (not D) (not C) (= J I))
           (= K 0))
       (or A
           (not B)
           L
           M
           N
           (not O)
           (and H (not G) F (not E) (not D) C (= J I))
           (= K 0))
       (or A
           (not B)
           L
           M
           (not N)
           O
           (and H (not G) F (not E) (not D) (not C) (= J I))
           (= K 0))
       (or A
           B
           L
           M
           (not N)
           (not O)
           (and H (not G) (not F) E (not D) C (= J I))
           (= K 0))
       (or A
           B
           (not L)
           M
           N
           O
           (and H (not G) (not F) E (not D) (not C) (= J I))
           (= K 0))
       (or A
           (not B)
           L
           M
           (not N)
           (not O)
           (and H (not G) (not F) (not E) (not D) C (= J I))
           (= K 0))
       (or A
           (not B)
           (not L)
           M
           N
           O
           (and H (not G) (not F) (not E) (not D) (not C) (= J I))
           (= K 0))
       (or A B (not L) M (not N) O a!1 (<= J 132))
       (or A
           B
           (not L)
           M
           N
           (not O)
           (and (not H) G F E (not D) C (= J I))
           (= K 0))
       (or A
           B
           (not L)
           M
           (not N)
           O
           (and (not H) G F (not E) D (not C) (= J I))
           (not (<= J 132)))
       (or A
           (not B)
           (not L)
           M
           N
           (not O)
           (and (not H) G F (not E) (not D) C (= J I))
           (= K 0))
       (or A
           (not B)
           (not L)
           M
           N
           (not O)
           (and (not H) G (not F) E D C (= J I))
           (not (= K 0)))
       (or A
           (not B)
           (not L)
           M
           N
           O
           (and (not H) G (not F) E D (not C) (= J I))
           (not (= K 0)))
       (or A
           B
           (not L)
           M
           N
           (not O)
           (and (not H) G (not F) (not E) D C (= J I))
           (not (= K 0)))
       (or A
           B
           (not L)
           M
           N
           O
           (and (not H) G (not F) (not E) D (not C) (= J I))
           (not (= K 0)))
       (or A
           (not B)
           L
           M
           (not N)
           (not O)
           (and (not H) (not G) F E D C (= J I))
           (not (= K 0)))
       (or A
           (not B)
           L
           M
           (not N)
           O
           (and (not H) (not G) F E D (not C) (= J I))
           (not (= K 0)))
       (or A
           B
           L
           M
           (not N)
           (not O)
           (and (not H) (not G) F (not E) D C (= J I))
           (not (= K 0)))
       (or A
           B
           L
           M
           (not N)
           O
           (and (not H) (not G) F (not E) D (not C) (= J I))
           (not (= K 0)))
       (or A
           (not B)
           L
           M
           N
           (not O)
           (and (not H) (not G) (not F) E D C (= J I))
           (not (= K 0)))
       (or A
           (not B)
           L
           M
           N
           O
           (and (not H) (not G) (not F) E D (not C) (= J I))
           (not (= K 0)))
       (or A
           B
           L
           M
           N
           (not O)
           (and (not H) (not G) (not F) (not E) D C (= J I))
           (not (= K 0)))
       (or A B (not L) (not M) N O a!2)
       (or A (not B) L (not M) (not N) (not O) a!3)
       (or A B L (not M) (not N) (not O) a!4)
       (or A (not B) L (not M) (not N) O a!5)
       (or A B L (not M) (not N) O a!6)
       (or A (not B) L (not M) N (not O) a!7)
       (or A B L (not M) N (not O) a!8)
       (or A (not B) L (not M) N O a!9)
       (or A B L (not M) N O a!10)
       (or A (not B) (not L) M (not N) (not O) a!11)
       (or A B (not L) M (not N) (not O) a!12)
       (or (not A) (not B) (not L) M N (not O) a!13)
       (or (not A) B (not L) M N (not O) a!14)
       (or (not A) B (not L) M N O a!15)
       (or (not A) (not B) (not L) M N O a!16)
       (or (not A) (not B) L M (not N) (not O) a!17)
       (or (not A) B L M (not N) (not O) a!18)
       (or (not A) B L M (not N) O a!19)
       (or (not A) (not B) L M (not N) O a!20)
       (or (not A) (not B) L M N (not O) a!21)
       (or (not A) B L M N (not O) a!22)
       (or (not A) (not B) L M N O a!23)
       (or (not A) (not B) (not L) M (not N) O a!1)
       (or (not A)
           B
           (not L)
           M
           (not N)
           O
           (and (not H) G F E (not D) (not C) (= J I)))
       (or (not A)
           B
           (not L)
           M
           (not N)
           (not O)
           (and (not H) G F (not E) (not D) (not C) (= J I)))
       (or (not A)
           (not B)
           (not L)
           M
           (not N)
           (not O)
           (and (not H) G (not F) E (not D) C (= J I)))
       (or (not A)
           (not B)
           L
           (not M)
           N
           O
           (and (not H) G (not F) E (not D) (not C) (= J I)))
       (or (not A)
           B
           L
           (not M)
           N
           O
           (and (not H) G (not F) (not E) (not D) C (= J I)))
       (or (not A)
           B
           L
           (not M)
           N
           (not O)
           (and (not H) G (not F) (not E) (not D) (not C) (= J I)))
       (or (not A)
           (not B)
           L
           (not M)
           N
           (not O)
           (and (not H) (not G) F E (not D) C (= J I)))
       (or (not A)
           (not B)
           L
           (not M)
           (not N)
           O
           (and (not H) (not G) F E (not D) (not C) (= J I)))
       (or (not A)
           B
           L
           (not M)
           (not N)
           O
           (and (not H) (not G) F (not E) (not D) C (= J I)))
       (or (not A)
           B
           L
           (not M)
           (not N)
           (not O)
           (and (not H) (not G) F (not E) (not D) (not C) (= J I)))
       (or (not A)
           (not B)
           L
           (not M)
           (not N)
           (not O)
           (and (not H) (not G) (not F) E (not D) C (= J I)))
       (or (not A)
           B
           (not L)
           (not M)
           N
           O
           (and (not H) (not G) (not F) (not E) (not D) C (= J I)))
       (or A B L M N O a!24)
       (or A (not B) (not L) M (not N) O a!24)
       (or (not A)
           B
           L
           M
           N
           O
           (and (not H) (not G) (not F) E (not D) (not C) (= I 0)))
       (or A
           (not B)
           L
           M
           N
           O
           (and H G (not F) (not E) (not D) (not C) (= J I))
           (= K 0))))
      )
      (state E D C F G H I)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Int) (D Bool) (E Bool) (F Bool) (G Bool) ) 
    (=>
      (and
        (state B A G F D E C)
        (and (= A true) (not G) (= F true) (not E) (= D true) (= B true))
      )
      false
    )
  )
)

(check-sat)
(exit)
