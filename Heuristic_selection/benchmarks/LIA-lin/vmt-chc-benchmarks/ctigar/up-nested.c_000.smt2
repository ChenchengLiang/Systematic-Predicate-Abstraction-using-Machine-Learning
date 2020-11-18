(set-logic HORN)

(declare-fun |state| ( Bool Bool Bool Bool Int Int Int Int ) Bool)

(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Bool) ) 
    (=>
      (and
        (and (not B) (= A true) (not H) (not C))
      )
      (state C A B H D E F G)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Bool) (E Bool) (F Bool) (G Bool) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Bool) ) 
    (=>
      (and
        (state C A B P I K M O)
        (let ((a!1 (and (not G) F (not E) (not D) (= I H) (= K J) (= M L) (= O N)))
      (a!2 (and (not G) (not F) (not E) (not D) (= I H) (= K J) (= M L) (= O N)))
      (a!3 (and (not G)
                F
                E
                D
                (= I H)
                (= M L)
                (= O N)
                (= (+ K (* (- 1) J)) (- 1))))
      (a!4 (and G (not F) E D (= I H) (= K J) (= M L) (= O N))))
  (and (or A
           B
           C
           (not P)
           (and G (not F) (not E) D (= I H) (= K J) (= M L) (= O N))
           (not (<= 0 I)))
       (or A
           (not B)
           C
           P
           (and G (not F) (not E) (not D) (= I H) (= K J) (= M L) (= O N))
           (<= K O))
       (or (not A)
           (not B)
           C
           P
           (and (not G) F E (not D) (= I H) (= K J) (= M L) (= O N))
           (not (<= 0 I)))
       (or A
           (not B)
           C
           P
           (and (not G) F (not E) D (= I H) (= K J) (= M L) (= O N))
           (not (<= K O)))
       (or (not A) B (not C) P a!1 (not (<= K O)))
       (or (not A) (not B) C P a!2 (<= 0 I))
       (or (not A) B (not C) P a!2 (<= K O))
       (or A (not B) (not C) P a!3)
       (or (not A) B (not C) (not P) a!4)
       (or (not A)
           B
           C
           (not P)
           (and G (not F) E (not D) (= I H) (= K J) (= M L) (= O N)))
       (or (not A) (not B) (not C) P a!1)
       (or A B C P a!2)
       (or A B (not C) (not P) a!2)
       (or (not A)
           B
           C
           P
           (and (not G) (not F) E (not D) (= H 0) (= K J) (= M L) (= O N)))
       (or A
           B
           (not C)
           P
           (and (not G) (not F) E D (= L 0) (= I H) (= K J) (= O N)))
       (or A B C (not P) a!4 (<= 0 I))))
      )
      (state E D F G H J L N)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Bool) ) 
    (=>
      (and
        (state C A B H D E F G)
        (and (not B) (= A true) (= H true) (= C true))
      )
      false
    )
  )
)

(check-sat)
(exit)
