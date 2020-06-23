(set-logic HORN)

(declare-fun |state| ( Bool Bool Bool Bool Bool Int Int Int Int ) Bool)

(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Bool) (E Int) (F Int) (G Int) (H Int) (I Bool) ) 
    (=>
      (and
        (and (= C true) (not B) (not A) (not I) (not D))
      )
      (state D C A B I E F G H)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Bool) (E Bool) (F Bool) (G Bool) (H Bool) (I Bool) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Bool) ) 
    (=>
      (and
        (state D C A B S K M O Q)
        (let ((a!1 (and (not I)
                (not H)
                (not G)
                (not F)
                E
                (= K J)
                (= M L)
                (= O N)
                (= Q P)))
      (a!3 (and I
                (not H)
                (not G)
                F
                (not E)
                (= M L)
                (= O N)
                (= Q P)
                (= (+ J (* (- 1) O) (* 2 Q)) 0)))
      (a!4 (and I
                (not H)
                G
                (not F)
                (not E)
                (= K J)
                (= O N)
                (= Q P)
                (= (+ L (* (- 2) O) (* (- 1) Q)) 0)))
      (a!5 (and (not I)
                H
                (not G)
                (not F)
                (not E)
                (= K J)
                (= M L)
                (= Q P)
                (= (+ K (* 2 M) (* (- 1) N)) 0)))
      (a!6 (and (not I)
                H
                G
                (not F)
                (not E)
                (= K J)
                (= M L)
                (= Q P)
                (= (+ O (* (- 1) N)) (- 1))))
      (a!7 (and (not I)
                H
                (not G)
                F
                (not E)
                (= K J)
                (= M L)
                (= O N)
                (= (+ (* 2 K) (* (- 1) M) P) 0)))
      (a!8 (and I
                H
                (not G)
                (not F)
                (not E)
                (= K J)
                (= M L)
                (= O N)
                (= (+ O (* (- 1) Q) P) 0)))
      (a!9 (and I
                (not H)
                (not G)
                (not F)
                (not E)
                (= K J)
                (= M L)
                (= O N)
                (= (+ O Q (* (- 1) P)) 0)))
      (a!10 (and (not I)
                 (not H)
                 (not G)
                 (not F)
                 (not E)
                 (= K J)
                 (= M L)
                 (= O N)
                 (= Q P)))
      (a!11 (not (<= 0 (+ K (* 2 M))))))
(let ((a!2 (or (not A) (not B) (not C) D S a!1 (<= 0 (+ K (* 2 M))))))
  (and (or A
           B
           C
           (not D)
           S
           (and I H (not G) F (not E) (= K J) (= M L) (= O N) (= Q P))
           (= R 0))
       (or (not A)
           B
           C
           (not D)
           S
           (and I (not H) G F (not E) (= K J) (= M L) (= O N) (= Q P))
           (= R 0))
       (or (not A)
           B
           C
           (not D)
           S
           (and (not I) H G F (not E) (= K J) (= M L) (= O N) (= Q P))
           (not (= R 0)))
       (or A
           B
           C
           (not D)
           S
           (and (not I) (not H) G F (not E) (= K J) (= M L) (= O N) (= Q P))
           (not (= R 0)))
       a!2
       (or A (not B) C D S a!3)
       (or A (not B) (not C) D S a!4)
       (or A B (not C) (not D) S a!5)
       (or (not A) B (not C) D S a!6)
       (or (not A) B C D S a!7)
       (or A (not B) (not C) (not D) S a!8)
       (or (not A) B (not C) (not D) S a!9)
       (or (not A)
           (not B)
           C
           (not D)
           S
           (and I H G F (not E) (= K J) (= M L) (= O N) (= Q P)))
       (or (not A)
           (not B)
           C
           D
           S
           (and I
                (not H)
                (not G)
                (not F)
                (not E)
                (= K J)
                (= M L)
                (= O N)
                (= Q P)))
       (or A
           (not B)
           C
           (not D)
           S
           (and (not I)
                (not H)
                G
                (not F)
                (not E)
                (= K J)
                (= M L)
                (= O N)
                (= Q P)))
       (or A B C D (not S) a!1)
       (or A B C D S a!10)
       (or (not A) (not B) (not C) (not D) S a!10)
       (or A
           B
           (not C)
           D
           S
           (and (not I)
                (not H)
                G
                (not F)
                (not E)
                (= L 0)
                (= J 0)
                (= O N)
                (= Q P)))
       (or (not A)
           (not B)
           (not C)
           D
           S
           (and I H G (not F) (not E) (= K J) (= M L) (= O N) (= Q P))
           a!11))))
      )
      (state G F H I E J L N P)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Bool) (E Int) (F Int) (G Int) (H Int) (I Bool) ) 
    (=>
      (and
        (state D C A B I E F G H)
        (and (not C) (not B) (not A) (= I true) (not D))
      )
      false
    )
  )
)

(check-sat)
(exit)
