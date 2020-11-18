(set-logic HORN)

(declare-fun |state| ( Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool ) Bool)

(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Bool) (E Bool) (F Bool) (G Bool) (H Bool) (I Bool) (J Bool) ) 
    (=>
      (and
        (and (= C A)
     (= E D)
     (= G F)
     (= H true)
     (= B true)
     (not C)
     (not E)
     (not G)
     (= B I))
      )
      (state G E C H B F D A I J)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Bool) (E Bool) (F Bool) (G Bool) (H Bool) (I Bool) (J Bool) (K Bool) (L Bool) (M Bool) (N Bool) (O Bool) (P Bool) (Q Bool) (R Bool) (S Bool) (T Bool) ) 
    (=>
      (and
        (state G E C H B F D A R S)
        (let ((a!1 (= K (or (and A D) (and (not A) F))))
      (a!2 (= I (or (and (not A) D) (and A (not D) (not F))))))
  (and (= J (not A))
       a!1
       (= M I)
       (= N (= H (not M)))
       (= O N)
       (= P J)
       (= Q K)
       (= G F)
       (= E D)
       (= D L)
       (= C A)
       (= B R)
       a!2))
      )
      (state K I J L N Q M P O T)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Bool) (E Bool) (F Bool) (G Bool) (H Bool) (I Bool) (J Bool) ) 
    (=>
      (and
        (state G E C H B F D A I J)
        (not I)
      )
      false
    )
  )
)

(check-sat)
(exit)
