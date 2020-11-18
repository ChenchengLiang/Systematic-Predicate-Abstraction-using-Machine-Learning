(set-logic HORN)

(declare-fun |state| ( Bool Bool Bool Bool Int Int Int ) Bool)

(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Int) (E Int) (F Int) (G Bool) ) 
    (=>
      (and
        (and (= A true) (not B) (not G) (not C))
      )
      (state C A B G D E F)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Bool) (E Bool) (F Bool) (G Bool) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Bool) ) 
    (=>
      (and
        (state C A B N I K M)
        (let ((a!1 (or A
               B
               C
               (not N)
               (and G (not F) (not E) D (= I H) (= K J) (= M L))
               (<= 1 (+ K (* (- 1) M)))))
      (a!2 (and (not G) F (not E) (not D) (= I H) (= K J) (= M L)))
      (a!3 (and (not G) F E (not D) (= K J) (= M L) (= (+ I (* (- 1) H)) (- 1))))
      (a!4 (and (not G) F E D (= I H) (= M L) (= (+ K (* (- 1) J)) (- 1))))
      (a!5 (and G (not F) E D (= I H) (= K J) (= M L)))
      (a!6 (and (not G) (not F) (not E) (not D) (= I H) (= K J) (= M L)))
      (a!7 (not (<= 1 (+ K (* (- 1) M))))))
  (and a!1
       (or A
           (not B)
           C
           N
           (and G (not F) (not E) (not D) (= I H) (= K J) (= M L))
           (not (<= M I)))
       (or A
           (not B)
           C
           N
           (and (not G) F (not E) D (= I H) (= K J) (= M L))
           (<= M I))
       (or A B (not C) N a!2 (not (<= 0 M)))
       (or A
           B
           (not C)
           N
           (and (not G) (not F) E D (= I H) (= K J) (= M L))
           (<= 0 M))
       (or (not A) (not B) C N a!3)
       (or A (not B) (not C) N a!4)
       (or (not A) B (not C) (not N) a!5)
       (or (not A)
           B
           C
           (not N)
           (and G (not F) E (not D) (= I H) (= K J) (= M L)))
       (or (not A) (not B) (not C) N a!2)
       (or A B C N a!6)
       (or A B (not C) (not N) a!6)
       (or (not A) B (not C) N a!6)
       (or (not A)
           B
           C
           N
           (and (not G) (not F) E (not D) (= J 0) (= H 0) (= M L)))
       (or A B C (not N) a!5 a!7)))
      )
      (state E D F G H J L)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Int) (E Int) (F Int) (G Bool) ) 
    (=>
      (and
        (state C A B G D E F)
        (and (= A true) (not B) (= G true) (= C true))
      )
      false
    )
  )
)

(check-sat)
(exit)
