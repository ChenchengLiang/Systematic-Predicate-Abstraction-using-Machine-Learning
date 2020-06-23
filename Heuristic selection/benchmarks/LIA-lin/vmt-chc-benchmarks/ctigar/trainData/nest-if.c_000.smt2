(set-logic HORN)

(declare-fun |state| ( Bool Bool Bool Bool Bool Int Int Int ) Bool)

(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Int) (E Int) (F Int) (G Bool) (H Bool) ) 
    (=>
      (and
        (and (= B true) (not A) (not H) (not G) (not C))
      )
      (state C B A H G F E D)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Bool) (E Bool) (F Bool) (G Bool) (H Bool) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Bool) (P Bool) ) 
    (=>
      (and
        (state C B A P O N L J)
        (let ((a!1 (and H (not G) (not F) (not E) (not D) (= J I) (= L K) (= N M)))
      (a!2 (and (not H) G (not F) (not E) D (= J I) (= L K) (= N M)))
      (a!3 (and (not H)
                G
                F
                E
                (not D)
                (= L K)
                (= N M)
                (= (+ J (* (- 1) I)) (- 1))))
      (a!4 (and (not H)
                G
                (not F)
                (not E)
                (not D)
                (= L K)
                (= N M)
                (= (+ J (* (- 1) I)) (- 1))))
      (a!5 (and H
                (not G)
                (not F)
                (not E)
                D
                (= J I)
                (= N M)
                (= (+ L (* (- 1) K)) (- 1))))
      (a!6 (and (not H) (not G) (not F) (not E) (not D) (= J I) (= L K) (= N M))))
  (and (or A B (not C) O (not P) a!1 (not (<= N J)))
       (or (not A)
           B
           C
           O
           (not P)
           (and (not H) G F E D (= J I) (= L K) (= N M))
           (not (<= N J)))
       (or (not A)
           B
           C
           O
           (not P)
           (and (not H) G F (not E) D (= J I) (= L K) (= N M))
           (<= N J))
       (or A
           B
           (not C)
           O
           (not P)
           (and (not H) G (not F) E D (= J I) (= L K) (= N M))
           (<= N J))
       (or (not A)
           B
           C
           O
           P
           (and (not H) G (not F) E (not D) (= J I) (= L K) (= N M))
           (not (<= N J)))
       (or (not A) (not B) C O P a!2 (<= 1 L))
       (or (not A)
           (not B)
           C
           O
           P
           (and (not H) (not G) F E (not D) (= J I) (= L K) (= N M))
           (not (<= 1 L)))
       (or (not A)
           B
           C
           O
           P
           (and (not H) (not G) F (not E) D (= J I) (= L K) (= N M))
           (<= N J))
       (or A
           B
           (not C)
           O
           P
           (and (not H) (not G) (not F) E D (= J I) (= L K) (= N M))
           (<= N L))
       (or (not A) (not B) C O (not P) a!3)
       (or (not A) (not B) (not C) O P a!4)
       (or A B C (not O) P a!5)
       (or (not A) (not B) (not C) O (not P) a!1)
       (or (not A)
           B
           (not C)
           O
           (not P)
           (and (not H) G F (not E) (not D) (= J I) (= L K) (= N M)))
       (or A (not B) C O (not P) a!2)
       (or (not A)
           B
           (not C)
           O
           P
           (and (not H) (not G) F E D (= J I) (= L K) (= N M)))
       (or A
           B
           C
           O
           (not P)
           (and (not H) (not G) F (not E) (not D) (= J I) (= L K) (= N M)))
       (or A
           (not B)
           C
           (not O)
           P
           (and (not H) (not G) (not F) E (not D) (= J I) (= L K) (= N M)))
       (or A B C O P a!6)
       (or A B (not C) (not O) P a!6)
       (or A
           (not B)
           (not C)
           O
           (not P)
           (and (not H) G F (not E) (not D) (= I 1) (= L K) (= N M)))
       (or A
           (not B)
           (not C)
           O
           P
           (and (not H) (not G) F (not E) (not D) (= I 1) (= L K) (= N M)))
       (or A
           (not B)
           C
           O
           P
           (and (not H) (not G) (not F) E (not D) (= K 1) (= J I) (= N M)))
       (or A
           B
           (not C)
           O
           P
           (and H (not G) (not F) E (not D) (= J I) (= L K) (= N M))
           (not (<= N L)))))
      )
      (state E D F G H M K I)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Int) (E Int) (F Int) (G Bool) (H Bool) ) 
    (=>
      (and
        (state C B A H G F E D)
        (and (= B true) (not A) (= H true) (not G) (not C))
      )
      false
    )
  )
)

(check-sat)
(exit)
