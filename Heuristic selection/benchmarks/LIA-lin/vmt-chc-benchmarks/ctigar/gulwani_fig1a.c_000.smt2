(set-logic HORN)

(declare-fun |state| ( Bool Bool Bool Bool Int Int ) Bool)

(assert
  (forall ( (A Int) (B Int) (C Bool) (D Bool) (E Bool) (F Bool) ) 
    (=>
      (and
        (and (= E true) (not D) (not C) (not F))
      )
      (state F E D C A B)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Bool) (E Int) (F Int) (G Int) (H Int) (I Bool) (J Bool) (K Bool) (L Bool) ) 
    (=>
      (and
        (state L K J I F H)
        (let ((a!1 (and (not D) C (not B) (not A) (= H G) (= (+ F (* (- 1) E) H) 0)))
      (a!2 (and (not D) C (not B) A (= F E) (= (+ H (* (- 1) G)) (- 1))))
      (a!3 (and D (not C) (not B) A (= F E) (= H G)))
      (a!4 (and (not D) (not C) (not B) (not A) (= F E) (= H G))))
  (and (or I (not J) K (not L) (and (not D) C B A (= F E) (= H G)) (<= H 0))
       (or I
           J
           K
           (not L)
           (and (not D) C B (not A) (= F E) (= H G))
           (not (<= 0 F)))
       (or I J K (not L) (and (not D) (not C) B A (= F E) (= H G)) (<= 0 F))
       (or I J (not K) (not L) a!1)
       (or I (not J) K L a!2)
       (or (not I) J (not K) L a!3)
       (or I
           (not J)
           (not K)
           (not L)
           (and D (not C) (not B) (not A) (= F E) (= H G)))
       (or I (not J) (not K) L (and (not D) (not C) B (not A) (= F E) (= H G)))
       (or I J K L a!4)
       (or (not I) J K L a!4)
       (or I J (not K) L (and (not D) (not C) B (not A) (= E (- 50)) (= H G)))
       (or I (not J) K (not L) a!3 (not (<= H 0)))))
      )
      (state B A C D E G)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Bool) (E Bool) (F Bool) ) 
    (=>
      (and
        (state F E D C A B)
        (and (= E true) (not D) (= C true) (not F))
      )
      false
    )
  )
)

(check-sat)
(exit)
