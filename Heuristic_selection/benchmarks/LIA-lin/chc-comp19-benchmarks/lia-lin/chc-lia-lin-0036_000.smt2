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
  (forall ( (A Bool) (B Bool) (C Bool) (D Bool) (E Int) (F Int) (G Bool) (H Bool) (I Bool) (J Bool) (K Int) (L Int) ) 
    (=>
      (and
        (state A B C D E F)
        (let ((a!1 (and (not G) H (not I) J (= E K) (= F L)))
      (a!2 (and (not G) (not H) I (not J) (= F L) (= (+ E (* (- 1) K) F) 0)))
      (a!3 (and (not G) H I (not J) (= E K) (= (+ F (* (- 1) L)) (- 1))))
      (a!4 (and (not G) (not H) (not I) (not J) (= E K) (= F L))))
  (and (or (not A) B C D (and G H (not I) (not J) (= E K) (= F L)) (<= 0 E))
       (or (not A)
           B
           C
           D
           (and G (not H) I (not J) (= E K) (= F L))
           (not (<= 0 E)))
       (or (not A) B (not C) D a!1 (<= 0 F))
       (or (not A) (not B) C D a!2)
       (or A B (not C) D a!3)
       (or A (not B) (not C) D (and G (not H) (not I) (not J) (= E K) (= F L)))
       (or A (not B) C (not D) a!1)
       (or (not A)
           (not B)
           (not C)
           D
           (and (not G) (not H) (not I) J (= E K) (= F L)))
       (or A B C D a!4)
       (or A B C (not D) a!4)
       (or A (not B) C D (and G (not H) (not I) (not J) (= K (- 50)) (= F L)))
       (or (not A)
           B
           (not C)
           D
           (and G H I (not J) (= E K) (= F L))
           (not (<= 0 F)))))
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
        (and (not C) (= B true) (not A) (= D true))
      )
      false
    )
  )
)

(check-sat)
(exit)
