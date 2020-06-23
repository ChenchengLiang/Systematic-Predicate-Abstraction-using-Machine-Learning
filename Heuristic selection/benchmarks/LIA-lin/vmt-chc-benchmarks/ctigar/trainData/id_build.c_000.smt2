(set-logic HORN)

(declare-fun |state| ( Bool Bool Bool Bool Int Int Int Int Int ) Bool)

(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Bool) ) 
    (=>
      (and
        (and (not B) (= A true) (not I) (not C))
      )
      (state C A B I H G F E D)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Bool) (E Bool) (F Bool) (G Bool) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Bool) ) 
    (=>
      (and
        (state C A B R Q O M K I)
        (let ((a!1 (and G F (not E) (not D) (= I H) (= K J) (= M L) (= O N) (= Q P)))
      (a!3 (and G (not F) E D (= I H) (= K J) (= M L) (= O N) (= Q P)))
      (a!4 (not (<= 1 (+ K (* (- 1) I)))))
      (a!5 (and G
                F
                E
                (not D)
                (= K J)
                (= M L)
                (= O N)
                (= Q P)
                (= (+ I (* (- 1) H)) (- 1))))
      (a!6 (and G
                (not F)
                E
                (not D)
                (= I H)
                (= K J)
                (= O N)
                (= Q P)
                (= (+ M (* (- 1) L)) (- 1))))
      (a!7 (and (not G)
                (not F)
                (not E)
                (not D)
                (= I H)
                (= K J)
                (= M L)
                (= O N)
                (= Q P))))
(let ((a!2 (or (not A) (not B) C R a!1 (<= 1 (+ K (* (- 1) I))))))
  (and (or A
           (not B)
           C
           R
           (and G F (not E) D (= I H) (= K J) (= M L) (= O N) (= Q P))
           (not (<= 8 M)))
       a!2
       (or (not A) (not B) (not C) R a!3 (not (<= I (- 1))))
       (or (not A)
           (not B)
           (not C)
           R
           (and G
                (not F)
                (not E)
                (not D)
                (= I H)
                (= K J)
                (= M L)
                (= O N)
                (= Q P))
           (<= I (- 1)))
       (or (not A)
           (not B)
           C
           R
           (and (not G) F E (not D) (= I H) (= K J) (= M L) (= O N) (= Q P))
           a!4)
       (or A
           (not B)
           C
           R
           (and (not G) F (not E) D (= I H) (= K J) (= M L) (= O N) (= Q P))
           (<= 8 M))
       (or A
           B
           (not C)
           R
           (and (not G) (not F) E D (= I H) (= K J) (= M L) (= O N) (= Q P))
           (<= K I))
       (or (not A) (not B) C (not R) a!5)
       (or (not A) B C (not R) a!6)
       (or A (not B) C (not R) a!1)
       (or (not A) B (not C) (not R) a!3)
       (or A
           B
           C
           (not R)
           (and G (not F) (not E) D (= I H) (= K J) (= M L) (= O N) (= Q P)))
       (or A
           (not B)
           (not C)
           R
           (and (not G) F E D (= I H) (= K J) (= M L) (= O N) (= Q P)))
       (or A
           B
           (not C)
           (not R)
           (and (not G)
                F
                (not E)
                (not D)
                (= I H)
                (= K J)
                (= M L)
                (= O N)
                (= Q P)))
       (or A
           (not B)
           (not C)
           (not R)
           (and (not G)
                (not F)
                E
                (not D)
                (= I H)
                (= K J)
                (= M L)
                (= O N)
                (= Q P)))
       (or A B C R a!7)
       (or (not A) (not B) (not C) (not R) a!7)
       (or (not A)
           B
           C
           R
           (and (not G)
                (not F)
                E
                (not D)
                (= H 0)
                (= K J)
                (= M L)
                (= O N)
                (= Q P)))
       (or (not A)
           B
           (not C)
           R
           (and (not G)
                F
                (not E)
                (not D)
                (= L 0)
                (= I H)
                (= K J)
                (= O N)
                (= Q P)))
       (or A
           B
           (not C)
           R
           (and G F E D (= I H) (= K J) (= M L) (= O N) (= Q P))
           (not (<= K I))))))
      )
      (state E D F G P N L J H)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Bool) ) 
    (=>
      (and
        (state C A B I H G F E D)
        (or (and I (not A) B (not C)) (and I A (not B) C))
      )
      false
    )
  )
)

(check-sat)
(exit)
