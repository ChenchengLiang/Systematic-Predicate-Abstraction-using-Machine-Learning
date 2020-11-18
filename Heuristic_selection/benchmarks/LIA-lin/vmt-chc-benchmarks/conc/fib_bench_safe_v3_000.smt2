(set-logic HORN)

(declare-fun |state| ( Int Int Bool Bool Int Int Bool Bool Int Int ) Bool)

(assert
  (forall ( (A Int) (B Int) (C Bool) (D Bool) (E Int) (F Int) (G Int) (H Int) (I Bool) (J Bool) ) 
    (=>
      (and
        (and (= E 0) (= F 1) (= B 1) (not C) (not D) (not J) (not I) (= A 0))
      )
      (state F E D C B A J I H G)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Bool) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Bool) (L Bool) (M Bool) (N Int) (O Int) (P Int) (Q Bool) (R Bool) (S Bool) (T Int) (U Bool) (V Bool) ) 
    (=>
      (and
        (state F E D C B A V U T H)
        (let ((a!1 (and L K (= A J) (= B I) (= H G)))
      (a!2 (and R Q (= E P) (= F O) (= T N)))
      (a!3 (and (not L) (not K) (= B I) (= H G) (= (+ A (* (- 1) J)) (- 1))))
      (a!4 (and (not L) K (= A J) (= H G) (= (+ B (* (- 1) I) H) 0)))
      (a!5 (and (not R) (not Q) (= F O) (= T N) (= (+ E (* (- 1) P)) (- 1))))
      (a!6 (and (not R) Q (= E P) (= T N) (= (+ F (* (- 1) O) T) 0))))
  (and (or (not M) U V a!1 (not (<= 5 A)))
       (or (not M) U V (and L (not K) (= A J) (= B I) (= F G)) (<= 5 A))
       (or C D (not S) a!2 (not (<= 5 E)))
       (or C D (not S) (and R (not Q) (= B N) (= E P) (= F O)) (<= 5 E))
       (or (not M) U (not V) a!3)
       (or (not M) (not U) V a!4)
       (or (not M) (not U) (not V) a!1)
       (or C (not D) (not S) a!5)
       (or (not C) D (not S) a!6)
       (or (not C) (not D) (not S) a!2)
       (or M (and (= A J) (= B I) (= H G) (= U L) (= V K)))
       (or S (and (= E P) (= F O) (= T N) (= C R) (= D Q)))
       (= S (not M))))
      )
      (state O P Q R I J K L N G)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Bool) (E Int) (F Int) (G Int) (H Int) (I Bool) (J Bool) ) 
    (=>
      (and
        (state F E D C B A J I H G)
        (or (not (<= B 144)) (not (<= F 144)))
      )
      false
    )
  )
)

(check-sat)
(exit)
