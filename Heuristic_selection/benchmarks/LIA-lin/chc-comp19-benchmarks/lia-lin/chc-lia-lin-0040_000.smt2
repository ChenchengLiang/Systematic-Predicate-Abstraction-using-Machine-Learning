(set-logic HORN)

(declare-fun |state| ( Bool Bool Bool Bool Int Int ) Bool)

(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Bool) (E Int) (F Int) ) 
    (=>
      (and
        (and (not C) (= B true) (not A) (not D))
      )
      (state A B C D E F)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Bool) (E Int) (F Int) (G Bool) (H Bool) (I Bool) (J Bool) (K Int) (L Int) (M Int) ) 
    (=>
      (and
        (state A B C D E F)
        (let ((a!1 (and (not H) I (not J) G (= E K) (= F L)))
      (a!2 (and (not H) I (not J) (not G) (= F L) (= (+ E (* (- 1) K)) (- 4))))
      (a!3 (and (not H) (not I) J (not G) (= F L) (= (+ E (* (- 1) K)) 4)))
      (a!4 (and H I (not J) (not G) (= E K) (= (+ F (* (- 1) L)) (- 1))))
      (a!5 (and H (not I) J (not G) (= E K) (= (+ F (* (- 1) L)) 1)))
      (a!6 (and H I J (not G) (= E K) (= F L)))
      (a!7 (and (not H) (not I) (not J) (not G) (= E K) (= F L))))
  (and (or (not A) B (not C) D (and H I (not J) G (= E K) (= F L)) (<= E 0))
       (or (not A) B C (not D) (and H (not I) J G (= E K) (= F L)) (<= F (- 1)))
       (or (not A)
           B
           C
           D
           (and H (not I) (not J) G (= E K) (= F L))
           (not (= M 0)))
       (or (not A) B C D a!1 (= M 0))
       (or (not A)
           B
           (not C)
           D
           (and (not H) (not I) J G (= E K) (= F L))
           (not (<= E 0)))
       (or (not A) (not B) C D a!2)
       (or (not A) (not B) (not C) D a!3)
       (or A B (not C) D a!4)
       (or A B C (not D) a!5)
       (or A (not B) (not C) (not D) a!6)
       (or (not A) (not B) C (not D) (and (not H) I J (not G) (= E K) (= F L)))
       (or A (not B) C (not D) a!1)
       (or A (not B) (not C) D (and (not H) (not I) (not J) G (= E K) (= F L)))
       (or A B C D a!7)
       (or A B (not C) (not D) a!7)
       (or A (not B) C D (and (not H) (not I) (not J) G (= L 0) (= K 0)))
       (or (not A) B C (not D) a!6 (not (<= F (- 1))))))
      )
      (state G H I J K L)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Bool) (E Int) (F Int) ) 
    (=>
      (and
        (state A B C D E F)
        (and (= C true) (= B true) (not A) (= D true))
      )
      false
    )
  )
)

(check-sat)
(exit)
