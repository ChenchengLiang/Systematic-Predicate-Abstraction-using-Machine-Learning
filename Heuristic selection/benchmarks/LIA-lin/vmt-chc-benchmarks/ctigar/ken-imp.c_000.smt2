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
        (let ((a!1 (and G (not F) (not E) D (= I H) (= K J) (= M L) (= O N)))
      (a!2 (and (not G)
                (not F)
                E
                D
                (= I H)
                (= K J)
                (= O N)
                (= (+ M (* (- 1) L)) 1)))
      (a!3 (and (not G)
                F
                (not E)
                D
                (= I H)
                (= K J)
                (= M L)
                (= (+ O (* (- 1) N)) 1)))
      (a!4 (and G F E (not D) (= I H) (= K J) (= M L) (= O N)))
      (a!5 (and (not G) (not F) (not E) (not D) (= I H) (= K J) (= M L) (= O N))))
  (and (or A
           B
           C
           (not P)
           (and G (not F) E (not D) (= I H) (= K J) (= M L) (= O N))
           (not (= O 0)))
       (or A B C (not P) a!1 (= O 0))
       (or (not A)
           (not B)
           (not C)
           P
           (and G (not F) (not E) (not D) (= I H) (= K J) (= M L) (= O N))
           (not (= I K)))
       (or (not A)
           B
           (not C)
           P
           (and (not G) F E D (= I H) (= K J) (= M L) (= O N))
           (not (= M 0)))
       (or (not A)
           B
           (not C)
           P
           (and (not G) (not F) (not E) D (= I H) (= K J) (= M L) (= O N))
           (= M 0))
       (or A (not B) C P a!2)
       (or (not A) (not B) C P a!3)
       (or A B (not C) (not P) a!4)
       (or (not A)
           B
           C
           (not P)
           (and G F (not E) (not D) (= I H) (= K J) (= M L) (= O N)))
       (or A (not B) C (not P) a!1)
       (or A
           (not B)
           (not C)
           P
           (and (not G) F E (not D) (= I H) (= K J) (= M L) (= O N)))
       (or A B C P a!5)
       (or (not A) B (not C) (not P) a!5)
       (or A
           B
           (not C)
           P
           (and (not G) F E (not D) (= I H) (= K N) (= K J) (= M L)))
       (or (not A)
           B
           C
           P
           (and (not G) F (not E) (not D) (= I L) (= I H) (= K J) (= O N)))
       (or (not A) (not B) (not C) P a!4 (= I K))))
      )
      (state F E D G H J L N)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Bool) ) 
    (=>
      (and
        (state C A B H D E F G)
        (and (= B true) (not A) (= H true) (not C))
      )
      false
    )
  )
)

(check-sat)
(exit)