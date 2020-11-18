(set-logic HORN)

(declare-fun |state| ( Bool Bool Bool Bool Int Int Int Int ) Bool)

(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Bool) ) 
    (=>
      (and
        (and (= A true) (not C) (not H) (not B))
      )
      (state C A B H D E F G)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Bool) (E Bool) (F Bool) (G Bool) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Bool) ) 
    (=>
      (and
        (state C A B Q I K M O)
        (let ((a!1 (and (not G)
                F
                E
                (not D)
                (= I H)
                (= K J)
                (= O N)
                (= (+ I K (* (- 1) L)) 0)))
      (a!2 (and (not G) F E D (= I H) (= K J) (= M L) (= (+ I K (* (- 1) N)) 0)))
      (a!3 (and G (not F) E D (= I H) (= K J) (= M L) (= O N)))
      (a!4 (and (not G) (not F) (not E) (not D) (= I H) (= K J) (= M L) (= O N))))
  (and (or A
           B
           C
           (not Q)
           (and G (not F) (not E) D (= I H) (= K J) (= M L) (= O N))
           (not (<= 1 O)))
       (or A
           B
           (not C)
           Q
           (and G (not F) (not E) (not D) (= I H) (= K J) (= M L) (= O N))
           (= P 0))
       (or A
           B
           (not C)
           Q
           (and (not G) (not F) E D (= I H) (= K J) (= M L) (= O N))
           (not (= P 0)))
       (or (not A) (not B) C Q a!1)
       (or A (not B) (not C) Q a!2)
       (or (not A) B (not C) (not Q) a!3)
       (or (not A)
           B
           C
           (not Q)
           (and G (not F) E (not D) (= I H) (= K J) (= M L) (= O N)))
       (or (not A)
           (not B)
           (not C)
           Q
           (and (not G) (not F) E (not D) (= I H) (= K J) (= M L) (= O N)))
       (or A B C Q a!4)
       (or A B (not C) (not Q) a!4)
       (or (not A)
           B
           (not C)
           Q
           (and (not G) F (not E) (not D) (= H M) (= K J) (= M L) (= O N)))
       (or A
           (not B)
           C
           Q
           (and (not G) F (not E) D (= J O) (= I H) (= M L) (= O N)))
       (or (not A)
           B
           C
           Q
           (and (not G) (not F) E (not D) (= N 1) (= L 1) (= I H) (= K J)))
       (or A B C (not Q) a!3 (<= 1 O))))
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
        (and (= A true) (= C true) (= H true) (not B))
      )
      false
    )
  )
)

(check-sat)
(exit)
