(set-logic HORN)

(declare-fun |state| ( Bool Bool Bool Bool Int Int ) Bool)

(assert
  (forall ( (A Bool) (B Int) (C Int) (D Bool) (E Bool) (F Bool) ) 
    (=>
      (and
        (and (= F true) (not E) (not D) (not A))
      )
      (state A F E D B C)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Bool) (E Bool) (F Int) (G Int) (H Int) (I Int) (J Bool) (K Bool) (L Bool) ) 
    (=>
      (and
        (state A L K J G I)
        (let ((a!1 (and (not E) D (not C) (not B) (= G F) (= I H)))
      (a!2 (and (not E) D (not C) B (= I H) (= (+ G (* (- 1) F)) (- 1))))
      (a!3 (and E (not D) (not C) B (= G F) (= I H)))
      (a!4 (and (not E) (not D) (not C) (not B) (= G F) (= I H))))
  (and (or (not A)
           J
           (not K)
           (not L)
           (and E (not D) (not C) (not B) (= G F) (= I H))
           (not (<= G I)))
       (or A J (not K) L (and (not E) D C B (= G F) (= I H)) (not (<= I G)))
       (or A J (not K) L (and (not E) D C (not B) (= G F) (= I H)) (<= I G))
       (or (not A) J K L a!1 (<= I 0))
       (or (not A)
           J
           K
           L
           (and (not E) (not D) C B (= G F) (= I H))
           (not (<= I 0)))
       (or A J (not K) (not L) a!2)
       (or A (not J) K L (and E (not D) C (not B) (= G F) (= I H)))
       (or (not A) (not J) K L a!3)
       (or (not A) J (not K) L a!1)
       (or A J K L a!4)
       (or A (not J) K (not L) a!4)
       (or (not A) J K (not L) a!4)
       (or A J K (not L) (and (not E) (not D) (not C) B (= F 0) (= I H)))
       (or (not A) J (not K) (not L) a!3 (<= G I))))
      )
      (state B C D E F H)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Bool) (E Bool) (F Bool) ) 
    (=>
      (and
        (state A F E D B C)
        (and (not F) (not E) (= D true) (= A true))
      )
      false
    )
  )
)

(check-sat)
(exit)
