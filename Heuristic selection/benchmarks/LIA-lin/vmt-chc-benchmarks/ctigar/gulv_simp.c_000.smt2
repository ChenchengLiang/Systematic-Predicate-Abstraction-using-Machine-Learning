(set-logic HORN)

(declare-fun |state| ( Bool Bool Bool Bool Bool Int Int ) Bool)

(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Int) (E Int) (F Bool) (G Bool) ) 
    (=>
      (and
        (and (= B true) (not A) (not G) (not F) (not C))
      )
      (state C B A G F D E)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Bool) (E Bool) (F Bool) (G Bool) (H Bool) (I Int) (J Int) (K Int) (L Int) (M Int) (N Bool) (O Bool) ) 
    (=>
      (and
        (state C B A O N J L)
        (let ((a!1 (and (not H) G F E (not D) (= J I) (= L K)))
      (a!2 (and (not H) G F (not E) D (= J I) (= L K)))
      (a!3 (and (not H) G (not F) E D (= L K) (= (+ J (* (- 1) I)) (- 1))))
      (a!4 (and (not H) (not G) F (not E) D (= L K) (= (+ J (* (- 1) I)) (- 1))))
      (a!5 (and (not H) (not G) F E D (= J I) (= (+ L (* (- 1) K)) (- 100))))
      (a!6 (and (not H) G F (not E) (not D) (= J I) (= (+ L (* (- 1) K)) (- 1))))
      (a!7 (and H (not G) (not F) (not E) D (= J I) (= L K)))
      (a!8 (and (not H) (not G) (not F) (not E) (not D) (= J I) (= L K))))
  (and (or A (not B) (not C) N O (and (not H) G F E D (= J I) (= L K)) (= M 0))
       (or A (not B) C N (not O) a!1 (<= 4 J))
       (or A B C N (not O) a!2 (= M 0))
       (or A
           B
           C
           N
           (not O)
           (and (not H) G (not F) E (not D) (= J I) (= L K))
           (not (= M 0)))
       (or A
           (not B)
           C
           N
           (not O)
           (and (not H) G (not F) (not E) D (= J I) (= L K))
           (not (<= 4 J)))
       (or (not A)
           B
           C
           N
           O
           (and (not H) G (not F) (not E) (not D) (= J I) (= L K))
           (= M 0))
       (or (not A)
           B
           C
           N
           O
           (and (not H) (not G) F E (not D) (= J I) (= L K))
           (not (= M 0)))
       (or A
           (not B)
           (not C)
           N
           O
           (and (not H) (not G) F (not E) (not D) (= J I) (= L K))
           (not (= M 0)))
       (or (not A)
           (not B)
           (not C)
           N
           (not O)
           (and (<= L 2) (<= 4 J))
           (and H (not G) (not F) (not E) (not D) (= J I) (= L K)))
       (or A B (not C) N (not O) a!3)
       (or (not A) (not B) C N O a!4)
       (or (not A) B (not C) N O a!5)
       (or A (not B) (not C) N (not O) a!6)
       (or A B C (not N) O (and H (not G) (not F) E (not D) (= J I) (= L K)))
       (or A B (not C) (not N) O a!7)
       (or (not A) B C N (not O) a!1)
       (or (not A) (not B) C N (not O) a!2)
       (or (not A)
           B
           (not C)
           N
           (not O)
           (and (not H) (not G) F E D (= J I) (= L K)))
       (or (not A)
           (not B)
           (not C)
           N
           O
           (and (not H) (not G) (not F) E D (= J I) (= L K)))
       (or A B C N O a!8)
       (or A (not B) C (not N) O a!8)
       (or A
           (not B)
           C
           N
           O
           (and (not H) (not G) (not F) (not E) D (= I 0) (= L K)))
       (or A B (not C) N O (and (not H) (not G) (not F) E D (= K 0) (= J I)))
       (or (not A) (not B) (not C) N (not O) a!7 (not (<= L 2)) (not (<= 4 J)))))
      )
      (state D E F G H I K)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Int) (E Int) (F Bool) (G Bool) ) 
    (=>
      (and
        (state C B A G F D E)
        (and (not B) (not A) (not G) (= F true) (= C true))
      )
      false
    )
  )
)

(check-sat)
(exit)
