(set-logic HORN)

(declare-fun |INV1| ( Int Int Int Int Int Int Int Int ) Bool)

(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) ) 
    (=>
      (and
        (INV1 A B C D E J I H)
        (and (= K L) (= I (+ (- 2) F)) (<= I 9) (not (<= B 9)) (= (* 2 I) (+ (- 4) G)))
      )
      (INV1 A B C D E F G H)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) ) 
    (=>
      (and
        (INV1 A I K D E L J H)
        (and (= (* 2 I) (+ (- 4) B))
     (= M N)
     (= J (+ (- 2) F))
     (= I (+ (- 2) C))
     (<= J 9)
     (<= I 9)
     (= (* 2 J) (+ (- 4) G)))
      )
      (INV1 A B C D E F G H)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) ) 
    (=>
      (and
        (INV1 A I J D E F G H)
        (and (= K L) (= I (+ (- 2) C)) (<= I 9) (not (<= G 9)) (= (* 2 I) (+ (- 4) B)))
      )
      (INV1 A B C D E F G H)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) ) 
    (=>
      (and
        (and (= F 0) (= C 0) (= B 1) (= A E) (= G 1))
      )
      (INV1 A B C D E F G H)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) ) 
    (=>
      (and
        (INV1 C A D E F G B H)
        (let ((a!1 (not (= (+ (* 2 A) (* (- 2) B)) 0))))
  (and (= I J) (not (<= B 9)) (not (<= A 9)) a!1))
      )
      false
    )
  )
)

(check-sat)
(exit)
