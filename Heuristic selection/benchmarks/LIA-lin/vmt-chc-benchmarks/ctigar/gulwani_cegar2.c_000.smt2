(set-logic HORN)

(declare-fun |state| ( Bool Bool Bool Bool Bool Int Int Int ) Bool)

(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Int) (E Int) (F Int) (G Bool) (H Bool) ) 
    (=>
      (and
        (and (= B true) (not A) (not H) (not G) (not C))
      )
      (state C B A H G D E F)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Bool) (E Bool) (F Bool) (G Bool) (H Bool) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Bool) (Q Bool) ) 
    (=>
      (and
        (state C B A Q P J L N)
        (let ((a!1 (and (not H) G F E (not D) (= J I) (= L K) (= N M)))
      (a!2 (and (not H) (not G) (not F) E D (= J I) (= L K) (= N M)))
      (a!3 (and (not H) (not G) (not F) (not E) D (= J I) (= L K) (= N M)))
      (a!4 (and H
                (not G)
                (not F)
                (not E)
                (not D)
                (= L K)
                (= N M)
                (= (+ J (* (- 1) I)) (- 1))))
      (a!5 (and H G F E (not D) (= J I) (= L K) (= N M)))
      (a!6 (and (not H) (not G) (not F) (not E) (not D) (= J I) (= L K) (= N M))))
  (and (or (not A)
           B
           C
           P
           (not Q)
           (and H G (not F) E (not D) (= J I) (= L K) (= N M))
           (<= N L))
       (or A
           B
           (not C)
           P
           (not Q)
           (and H (not G) F E (not D) (= J I) (= L K) (= N M))
           (not (<= 0 L)))
       (or A
           (not B)
           C
           P
           (not Q)
           (and H (not G) F (not E) (not D) (= J I) (= L K) (= N M))
           (<= N 0))
       (or A
           (not B)
           (not C)
           P
           Q
           (and H (not G) (not F) E (not D) (= J I) (= L K) (= N M))
           (not (<= N J)))
       (or (not A) B C P Q a!1 (= O 0))
       (or (not A)
           B
           C
           P
           Q
           (and (not H) G (not F) E (not D) (= J I) (= L K) (= N M))
           (not (= O 0)))
       (or A
           (not B)
           (not C)
           P
           Q
           (and (not H) G (not F) (not E) (not D) (= J I) (= L K) (= N M))
           (<= N J))
       (or A B (not C) P (not Q) a!2 (<= 0 L))
       (or (not A) B C P (not Q) a!3 (not (<= N L)))
       (or (not A) (not B) (not C) P Q a!4)
       (or (not A) B (not C) P (not Q) a!5)
       (or (not A)
           (not B)
           C
           P
           (not Q)
           (and H G F (not E) (not D) (= J I) (= L K) (= N M)))
       (or A
           (not B)
           (not C)
           P
           (not Q)
           (and H G (not F) (not E) (not D) (= J I) (= L K) (= N M)))
       (or (not A) B (not C) P Q a!1)
       (or A
           B
           C
           P
           (not Q)
           (and (not H) (not G) F E (not D) (= J I) (= L K) (= N M)))
       (or A (not B) C (not P) Q a!2)
       (or A B C (not P) Q a!3)
       (or A B C P Q a!6)
       (or (not A) (not B) (not C) P (not Q) a!6)
       (or (not A)
           (not B)
           C
           P
           Q
           (and (not H) G F (not E) (not D) (= J K) (= J I) (= N M)))
       (or A
           (not B)
           C
           P
           Q
           (and (not H) (not G) F (not E) (not D) (= I 0) (= L K) (= N M)))
       (or A
           B
           (not C)
           P
           Q
           (and (not H) (not G) F E (not D) (= K 0) (= J I) (= N M)))
       (or A (not B) C P (not Q) a!5 (not (<= N 0)))))
      )
      (state F E G H D I K M)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Int) (E Int) (F Int) (G Bool) (H Bool) ) 
    (=>
      (and
        (state C B A H G D E F)
        (or (and G (not H) (not A) (not B) (not C)) (and G (not H) (not A) B (not C)))
      )
      false
    )
  )
)

(check-sat)
(exit)
