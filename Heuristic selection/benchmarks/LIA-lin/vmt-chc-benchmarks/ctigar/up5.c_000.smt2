(set-logic HORN)

(declare-fun |state| ( Bool Bool Bool Bool Int Int Int Int ) Bool)

(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Bool) ) 
    (=>
      (and
        (and (not B) (= A true) (not H) (not C))
      )
      (state C A B H G F E D)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Bool) (E Bool) (F Bool) (G Bool) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Bool) ) 
    (=>
      (and
        (state C A B P O M K I)
        (let ((a!1 (and G F (not E) D (= I H) (= K J) (= M L) (= O N)))
      (a!2 (and (not G)
                F
                (not E)
                (not D)
                (= K J)
                (= M L)
                (= O N)
                (= (+ I (* (- 1) H)) (- 1))))
      (a!3 (and G
                (not F)
                E
                D
                (= I H)
                (= M L)
                (= O N)
                (= (+ K (* (- 1) J)) (- 2))))
      (a!4 (and (not G)
                F
                (not E)
                D
                (= I H)
                (= K J)
                (= O N)
                (= (+ M (* (- 1) L)) (- 2))))
      (a!5 (and G
                F
                (not E)
                (not D)
                (= I H)
                (= K J)
                (= O N)
                (= (+ M (* (- 1) L)) 1)))
      (a!6 (and (not G) (not F) (not E) (not D) (= I H) (= K J) (= M L) (= O N))))
  (and (or A B C (not P) a!1 (not (<= M 0)))
       (or A
           B
           C
           (not P)
           (and G (not F) (not E) D (= I H) (= K J) (= M L) (= O N))
           (<= M 0))
       (or (not A)
           (not B)
           (not C)
           P
           (and G (not F) (not E) (not D) (= I H) (= K J) (= M L) (= O N))
           (<= O K))
       (or A
           B
           (not C)
           P
           (and (not G) F E (not D) (= I H) (= K J) (= M L) (= O N))
           (not (<= O I)))
       (or A
           B
           (not C)
           P
           (and (not G) (not F) E D (= I H) (= K J) (= M L) (= O N))
           (<= O I))
       (or (not A) B (not C) P a!2)
       (or A B (not C) (not P) a!3)
       (or A (not B) C P a!4)
       (or (not A) B (not C) (not P) a!5)
       (or (not A) (not B) C (not P) a!1)
       (or (not A)
           B
           C
           (not P)
           (and G (not F) E (not D) (= I H) (= K J) (= M L) (= O N)))
       (or A
           (not B)
           C
           (not P)
           (and (not G) F E D (= I H) (= K J) (= M L) (= O N)))
       (or (not A)
           (not B)
           C
           P
           (and (not G) (not F) E (not D) (= I H) (= K J) (= M L) (= O N)))
       (or A B C P a!6)
       (or A (not B) (not C) (not P) a!6)
       (or A
           (not B)
           (not C)
           P
           (and (not G) F E D (= J 0) (= I H) (= M L) (= O N)))
       (or (not A)
           B
           C
           P
           (and (not G) (not F) E (not D) (= L 0) (= H 0) (= K J) (= O N)))
       (or (not A)
           (not B)
           (not C)
           P
           (and G F E (not D) (= I H) (= K J) (= M L) (= O N))
           (not (<= O K)))))
      )
      (state E D F G N L J H)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Bool) ) 
    (=>
      (and
        (state C A B H G F E D)
        (and (= B true) (= A true) (= H true) (not C))
      )
      false
    )
  )
)

(check-sat)
(exit)
