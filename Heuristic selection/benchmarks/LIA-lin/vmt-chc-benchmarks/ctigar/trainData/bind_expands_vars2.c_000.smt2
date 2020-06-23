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
        (let ((a!1 (and G (not F) E D (= I H) (= K J) (= M L) (= O N) (= Q P)))
      (a!2 (not (<= 0 (+ Q (* (- 2) M) I))))
      (a!3 (or (not A)
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
               (<= 0 (+ Q (* (- 2) M) I))))
      (a!4 (not (<= (+ O (* (- 2) M) K) 0)))
      (a!5 (not (<= 0 (+ (* 2 M) (* (- 1) K)))))
      (a!6 (and (not G)
                (not F)
                (not E)
                (not D)
                (= I H)
                (= K J)
                (= M L)
                (= O N)
                (= Q P)))
      (a!9 (and G
                (not F)
                E
                (not D)
                (= K J)
                (= M L)
                (= O N)
                (= Q P)
                (= (+ I (* (- 1) H)) (- 1)))))
(let ((a!7 (or A B (not C) R a!6 (<= 0 (+ (* 2 M) (* (- 1) K)))))
      (a!8 (or A (not B) C R a!6 (<= (+ O (* (- 2) M) K) 0))))
  (and (or (not A) (not B) (not C) R a!1 a!2)
       a!3
       (or A
           (not B)
           (not C)
           R
           (and (not G) F E D (= I H) (= K J) (= M L) (= O N) (= Q P))
           (<= O I))
       (or A
           (not B)
           C
           R
           (and (not G) F (not E) D (= I H) (= K J) (= M L) (= O N) (= Q P))
           a!4)
       (or (not A)
           B
           (not C)
           R
           (and (not G)
                F
                (not E)
                (not D)
                (= I H)
                (= K J)
                (= M L)
                (= O N)
                (= Q P))
           (not (<= Q K)))
       (or A
           B
           (not C)
           R
           (and (not G) (not F) E D (= I H) (= K J) (= M L) (= O N) (= Q P))
           a!5)
       (or (not A)
           B
           C
           R
           (and (not G)
                (not F)
                E
                (not D)
                (= I H)
                (= K J)
                (= M L)
                (= O N)
                (= Q P))
           (<= M 0))
       a!7
       a!8
       (or (not A) B (not C) R a!6 (<= Q K))
       (or (not A) B C R a!6 (not (<= M 0)))
       (or (not A) B C (not R) a!9)
       (or (not A) B (not C) (not R) a!1)
       (or A
           B
           C
           (not R)
           (and G (not F) (not E) D (= I H) (= K J) (= M L) (= O N) (= Q P)))
       (or A
           B
           (not C)
           (not R)
           (and (not G) F E (not D) (= I H) (= K J) (= M L) (= O N) (= Q P)))
       (or A B C R a!6)
       (or A (not B) C (not R) a!6)
       (or (not A)
           (not B)
           C
           R
           (and (not G) F E (not D) (= H 0) (= K J) (= M L) (= O N) (= Q P)))
       (or A
           (not B)
           (not C)
           R
           (and G F (not E) (not D) (= I H) (= K J) (= M L) (= O N) (= Q P))
           (not (<= O I))))))
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
        (and (not B) (= A true) (= I true) (= C true))
      )
      false
    )
  )
)

(check-sat)
(exit)
