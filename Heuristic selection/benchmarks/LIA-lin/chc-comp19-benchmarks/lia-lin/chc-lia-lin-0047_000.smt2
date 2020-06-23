(set-logic HORN)

(declare-fun |state| ( Bool Bool Bool Bool Int Int Int ) Bool)

(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Bool) (E Int) (F Int) (G Int) ) 
    (=>
      (and
        (and (not C) (= B true) (not A) (not D))
      )
      (state A B C D E F G)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Bool) (E Int) (F Int) (G Int) (H Bool) (I Bool) (J Bool) (K Bool) (L Int) (M Int) (N Int) ) 
    (=>
      (and
        (state A B C D E F G)
        (let ((a!1 (and H
                (not I)
                J
                (not K)
                (= F M)
                (= G N)
                (= (+ (* 2 E) (* (- 1) L)) 0)))
      (a!2 (and H I J (not K) (= F M) (= G N) (= (+ (* 3 E) (* (- 1) L)) 0)))
      (a!3 (and H I (not J) K (= E L) (= F M) (= G N)))
      (a!4 (and (not H) (not I) (not J) (not K) (= E L) (= F M) (= G N))))
  (and (or (not A)
           B
           C
           D
           (and H I (not J) (not K) (= E L) (= F M) (= G N))
           (<= G E))
       (or A
           B
           C
           (not D)
           (and H (not I) (not J) K (= E L) (= F M) (= G N))
           (<= E 0))
       (or (not A)
           (not B)
           C
           D
           (and (not H) I J (not K) (= E L) (= F M) (= G N))
           (not (<= F 0)))
       (or (not A)
           (not B)
           C
           D
           (and (not H) (not I) J (not K) (= E L) (= F M) (= G N))
           (<= F 0))
       (or (not A)
           B
           C
           D
           (and (not H) (not I) (not J) K (= E L) (= F M) (= G N))
           (not (<= G E)))
       (or A B (not C) D a!1)
       (or (not A) B (not C) D a!2)
       (or (not A) (not B) C (not D) a!3)
       (or (not A)
           (not B)
           (not C)
           D
           (and H (not I) J (not K) (= E L) (= F M) (= G N)))
       (or A
           (not B)
           C
           (not D)
           (and (not H) I (not J) K (= E L) (= F M) (= G N)))
       (or A
           (not B)
           (not C)
           D
           (and (not H) I (not J) (not K) (= E L) (= F M) (= G N)))
       (or A B C D a!4)
       (or (not A) B C (not D) a!4)
       (or A
           (not B)
           C
           D
           (and (not H) I (not J) (not K) (= L 1) (= F M) (= G N)))
       (or A B C (not D) a!3 (not (<= E 0)))))
      )
      (state I H J K L M N)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Bool) (E Int) (F Int) (G Int) ) 
    (=>
      (and
        (state A B C D E F G)
        (and (not C) (= B true) (= A true) (= D true))
      )
      false
    )
  )
)

(check-sat)
(exit)
