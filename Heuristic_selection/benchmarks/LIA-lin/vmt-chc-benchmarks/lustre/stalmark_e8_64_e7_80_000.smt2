(set-logic HORN)

(declare-fun |state| ( Bool Bool Bool Bool Bool Bool Bool Bool ) Bool)

(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Bool) (E Bool) (F Bool) (G Bool) (H Bool) ) 
    (=>
      (and
        (let ((a!1 (and (not A) (not F) H (or (not F) (and A (not H))))))
(let ((a!2 (and (or (not A) (not F) (not H))
                (or (and (not A) F (not H)) (and A F H) a!1))))
  (and (= D A) (= B F) (= C H) (not D) (= B true) (not C) (= a!2 E))))
      )
      (state D C B A H F E G)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Bool) (E Bool) (F Bool) (G Bool) (H Bool) (I Bool) (J Bool) (K Bool) (L Bool) (M Bool) (N Bool) (O Bool) (P Bool) ) 
    (=>
      (and
        (state D C B A P M L N)
        (let ((a!1 (and (not A) (not M) P (or (not M) (and A (not P)))))
      (a!3 (and (not K) J (not I) (or (not I) (and K (not J))))))
(let ((a!2 (and (or (not A) (not M) (not P))
                (or (and (not A) M (not P)) (and A M P) a!1)))
      (a!4 (and (or (not K) (not J) (not I))
                (or (and (not K) (not J) I) (and K J I) a!3))))
  (and (= a!2 L)
       (= P G)
       (= M F)
       (= I E)
       (= J F)
       (= K G)
       (= D A)
       (= C P)
       (= B M)
       (= A E)
       (= a!4 H))))
      )
      (state G F E K J I H O)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Bool) (E Bool) (F Bool) (G Bool) (H Bool) ) 
    (=>
      (and
        (state D C B A H F E G)
        (not E)
      )
      false
    )
  )
)

(check-sat)
(exit)
