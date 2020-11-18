(set-logic HORN)

(declare-fun |state| ( Bool Bool Bool Bool Bool Bool Int Int ) Bool)

(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Bool) (E Bool) (F Int) (G Int) (H Bool) ) 
    (=>
      (and
        (and (= D true) (not C) (not H) (not A) (not B) (not E))
      )
      (state E D C A B H F G)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Bool) (E Bool) (F Bool) (G Bool) (H Bool) (I Bool) (J Bool) (K Bool) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Bool) ) 
    (=>
      (and
        (state E D C A B Q M O)
        (let ((a!1 (and K (not J) (not I) H (not G) F (= M L) (= O N)))
      (a!3 (not (<= 0 (+ (* 3 M) (* (- 1) O)))))
      (a!4 (not (<= (+ M (* (- 2) O)) 0)))
      (a!5 (and (not K) (not J) (not I) H G (not F) (= M L) (= O N)))
      (a!6 (and (not K)
                J
                I
                (not H)
                (not G)
                F
                (= O N)
                (= (+ M (* (- 1) L)) (- 2))))
      (a!7 (and (not K)
                (not J)
                I
                (not H)
                (not G)
                F
                (= O N)
                (= (+ M (* (- 1) L)) (- 2))))
      (a!8 (and (not K) J I H G F (= O N) (= (+ M (* (- 1) L)) (- 1))))
      (a!9 (and (not K)
                J
                (not I)
                (not H)
                (not G)
                F
                (= O N)
                (= (+ M (* (- 1) L)) (- 1))))
      (a!10 (and (not K)
                 J
                 (not I)
                 (not H)
                 G
                 F
                 (= M L)
                 (= (+ O (* (- 1) N)) (- 3))))
      (a!11 (and K
                 (not J)
                 (not I)
                 (not H)
                 (not G)
                 (not F)
                 (= M L)
                 (= (+ O (* (- 1) N)) (- 2))))
      (a!12 (and (not K) J I (not H) G F (= M L) (= (+ O (* (- 1) N)) (- 1))))
      (a!13 (and (not K)
                 (not J)
                 I
                 (not H)
                 G
                 F
                 (= M L)
                 (= (+ O (* (- 1) N)) (- 1))))
      (a!14 (and K (not J) (not I) H G F (= M L) (= O N)))
      (a!15 (and (not K)
                 (not J)
                 (not I)
                 (not H)
                 (not G)
                 (not F)
                 (= M L)
                 (= O N))))
(let ((a!2 (or A B C (not D) (not E) (not Q) a!1 (<= 0 (+ (* 3 M) (* (- 1) O)))))
      (a!16 (or A B C (not D) E (not Q) a!14 (<= (+ M (* (- 2) O)) 0))))
  (and a!2
       (or A
           B
           C
           (not D)
           (not E)
           (not Q)
           (and K (not J) (not I) H (not G) (not F) (= M L) (= O N))
           a!3)
       (or A
           B
           (not C)
           (not D)
           E
           Q
           (and K (not J) (not I) (not H) G (not F) (= M L) (= O N))
           (= P 0))
       (or A
           B
           C
           (not D)
           E
           (not Q)
           (and K (not J) (not I) (not H) (not G) F (= M L) (= O N))
           a!4)
       (or (not A)
           (not B)
           (not C)
           D
           E
           Q
           (and (not K) J I H G (not F) (= M L) (= O N))
           (<= M 4))
       (or (not A)
           (not B)
           (not C)
           D
           E
           Q
           (and (not K) J I H (not G) F (= M L) (= O N))
           (not (<= M 4)))
       (or A
           (not B)
           (not C)
           D
           E
           Q
           (and (not K) J I H (not G) (not F) (= M L) (= O N))
           (= P 0))
       (or A
           (not B)
           (not C)
           (not D)
           (not E)
           Q
           (and (not K) J I (not H) G (not F) (= M L) (= O N))
           (not (<= M 7)))
       (or A
           (not B)
           (not C)
           (not D)
           (not E)
           Q
           (and (not K) J I (not H) (not G) (not F) (= M L) (= O N))
           (<= M 7))
       (or A
           (not B)
           (not C)
           (not D)
           E
           Q
           (and (not K) J (not I) H G F (= M L) (= O N))
           (not (<= 5 M)))
       (or A
           (not B)
           (not C)
           D
           E
           Q
           (and (not K) J (not I) H G (not F) (= M L) (= O N))
           (not (= P 0)))
       (or A
           (not B)
           (not C)
           (not D)
           E
           Q
           (and (not K) J (not I) H (not G) F (= M L) (= O N))
           (<= 5 M))
       (or (not A)
           B
           (not C)
           D
           E
           Q
           (and (not K) J (not I) H (not G) (not F) (= M L) (= O N))
           (= P 0))
       (or (not A)
           B
           (not C)
           (not D)
           (not E)
           Q
           (and (not K) J (not I) (not H) G (not F) (= M L) (= O N))
           (not (<= M 9)))
       (or (not A)
           B
           (not C)
           (not D)
           (not E)
           Q
           (and (not K) J (not I) (not H) (not G) (not F) (= M L) (= O N))
           (<= M 9))
       (or (not A)
           B
           (not C)
           (not D)
           E
           Q
           (and (not K) (not J) I H G F (= M L) (= O N))
           (not (<= 7 M)))
       (or (not A)
           B
           (not C)
           D
           E
           Q
           (and (not K) (not J) I H G (not F) (= M L) (= O N))
           (not (= P 0)))
       (or (not A)
           B
           (not C)
           (not D)
           E
           Q
           (and (not K) (not J) I H (not G) F (= M L) (= O N))
           (<= 7 M))
       (or A
           B
           (not C)
           D
           (not E)
           Q
           (and (not K) (not J) I H (not G) (not F) (= M L) (= O N))
           (= P 0))
       (or A
           B
           (not C)
           (not D)
           (not E)
           Q
           (and (not K) (not J) I (not H) G (not F) (= M L) (= O N))
           (not (<= 9 M)))
       (or A
           B
           (not C)
           (not D)
           (not E)
           Q
           (and (not K) (not J) I (not H) (not G) (not F) (= M L) (= O N))
           (<= 9 M))
       (or A
           B
           (not C)
           D
           (not E)
           Q
           (and (not K) (not J) (not I) H G F (= M L) (= O N))
           (not (= P 0)))
       (or A B C (not D) (not E) Q a!5 (not (= O 0)))
       (or A
           B
           (not C)
           (not D)
           E
           Q
           (and (not K) (not J) (not I) H (not G) F (= M L) (= O N))
           (not (= P 0)))
       (or A
           B
           C
           (not D)
           (not E)
           Q
           (and (not K) (not J) (not I) H (not G) (not F) (= M L) (= O N))
           (= O 0))
       (or A
           B
           C
           (not D)
           E
           Q
           (and (not K) (not J) (not I) (not H) G F (= M L) (= O N))
           (not (= M 0)))
       (or A
           B
           C
           (not D)
           E
           Q
           (and (not K) (not J) (not I) (not H) (not G) F (= M L) (= O N))
           (= M 0))
       (or (not A) (not B) C (not D) E Q a!6)
       (or (not A) B C (not D) E Q a!7)
       (or (not A) (not B) (not C) D (not E) Q a!8)
       (or A (not B) C (not D) E Q a!9)
       (or A (not B) C D (not E) Q a!10)
       (or (not A) (not B) (not C) (not D) (not E) Q a!11)
       (or (not A) (not B) C D (not E) Q a!12)
       (or (not A) B C D (not E) Q a!13)
       (or A B (not C) (not D) (not E) (not Q) a!14)
       (or A
           B
           (not C)
           D
           E
           (not Q)
           (and K (not J) (not I) H G (not F) (= M L) (= O N)))
       (or A B (not C) D (not E) (not Q) a!1)
       (or A
           B
           C
           D
           (not E)
           (not Q)
           (and K (not J) (not I) (not H) G F (= M L) (= O N)))
       (or A B C D E (not Q) (and (not K) J I (not H) G F (= M L) (= O N)))
       (or (not A)
           (not B)
           C
           (not D)
           (not E)
           Q
           (and (not K) J (not I) (not H) G F (= M L) (= O N)))
       (or A
           (not B)
           C
           (not D)
           (not E)
           Q
           (and (not K) (not J) I (not H) G F (= M L) (= O N)))
       (or (not A) B C (not D) (not E) Q a!5)
       (or A B C D E Q a!15)
       (or A B C D (not E) Q a!15)
       (or A B (not C) D E Q a!15)
       (or A B (not C) (not D) E (not Q) a!15)
       (or A (not B) C D E Q a!15)
       (or A (not B) (not C) D (not E) Q a!15)
       (or (not A) B C D E Q a!15)
       (or (not A) B (not C) D (not E) Q a!15)
       (or (not A) (not B) C D E Q a!15)
       (or (not A) (not B) (not C) (not D) E Q a!15)
       a!16)))
      )
      (state F G H I J K L N)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Bool) (E Bool) (F Int) (G Int) (H Bool) ) 
    (=>
      (and
        (state E D C A B H F G)
        (or (and (not B) (not A) H C (not D) E) (and (not B) (not A) H C D E))
      )
      false
    )
  )
)

(check-sat)
(exit)
