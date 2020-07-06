(set-logic HORN)

(declare-fun |INV1| ( Int Int Int Int Int Int ) Bool)

(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (v_9 Int) ) 
    (=>
      (and
        (INV1 C E B F D G)
        (and (not (= D 0)) (= A 0) (not (>= C 1)) (<= B 9) (= H I) (= v_9 F))
      )
      (INV1 C E B F A v_9)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) ) 
    (=>
      (and
        (INV1 E G D B F H)
        (and (= I J)
     (not (= F 0))
     (= B (+ (- 2) C))
     (not (>= E 1))
     (<= D 999)
     (not (<= D 99))
     (not (<= D 9))
     (= A 0))
      )
      (INV1 E G D B A C)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) ) 
    (=>
      (and
        (INV1 E G D A F H)
        (and (= I J)
     (not (= F 0))
     (>= (+ (* 10000 C) (* (- 1) D)) (- 9999))
     (>= (+ D (* (- 10000) C)) 0)
     (not (>= E 1))
     (not (<= D 9999))
     (not (<= D 999))
     (not (<= D 99))
     (not (<= D 9))
     (= A (+ (- 4) B)))
      )
      (INV1 E G C B F H)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) ) 
    (=>
      (and
        (INV1 E G D B F H)
        (and (= I J)
     (not (= F 0))
     (= B (+ (- 3) C))
     (not (>= E 1))
     (<= D 9999)
     (not (<= D 999))
     (not (<= D 99))
     (not (<= D 9))
     (= A 0))
      )
      (INV1 E G D B A C)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) ) 
    (=>
      (and
        (INV1 E G D B F H)
        (and (= I J)
     (not (= F 0))
     (= B (+ (- 1) C))
     (not (>= E 1))
     (<= D 99)
     (not (<= D 9))
     (= A 0))
      )
      (INV1 E G D B A C)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (v_11 Int) ) 
    (=>
      (and
        (INV1 E A F H G I)
        (and (= J K)
     (not (= G 0))
     (= C 0)
     (>= (+ (* 10 D) (* (- 1) E)) (- 9))
     (>= (+ E (* (- 10) D)) 0)
     (>= E 1)
     (<= F 9)
     (= A (+ (- 1) B))
     (= v_11 H))
      )
      (INV1 D B F H C v_11)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) ) 
    (=>
      (and
        (INV1 G A H D I J)
        (and (= C 0)
     (= K L)
     (not (= I 0))
     (= D (+ (- 2) E))
     (>= (+ (* 10 F) (* (- 1) G)) (- 9))
     (>= (+ G (* (- 10) F)) 0)
     (>= G 1)
     (<= H 999)
     (not (<= H 99))
     (not (<= H 9))
     (= A (+ (- 1) B)))
      )
      (INV1 F B H D C E)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) ) 
    (=>
      (and
        (INV1 H A F C I J)
        (and (= C (+ (- 4) D))
     (= K L)
     (not (= I 0))
     (>= (+ (* 10000 E) (* (- 1) F)) (- 9999))
     (>= (+ (* 10 G) (* (- 1) H)) (- 9))
     (>= (+ H (* (- 10) G)) 0)
     (>= (+ F (* (- 10000) E)) 0)
     (>= H 1)
     (not (<= F 9999))
     (not (<= F 999))
     (not (<= F 99))
     (not (<= F 9))
     (= A (+ (- 1) B)))
      )
      (INV1 G B E D I J)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) ) 
    (=>
      (and
        (INV1 G A H D I J)
        (and (= C 0)
     (= K L)
     (not (= I 0))
     (= D (+ (- 3) E))
     (>= (+ (* 10 F) (* (- 1) G)) (- 9))
     (>= (+ G (* (- 10) F)) 0)
     (>= G 1)
     (<= H 9999)
     (not (<= H 999))
     (not (<= H 99))
     (not (<= H 9))
     (= A (+ (- 1) B)))
      )
      (INV1 F B H D C E)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) ) 
    (=>
      (and
        (INV1 G A H D I J)
        (and (= C 0)
     (= K L)
     (not (= I 0))
     (= D (+ (- 1) E))
     (>= (+ (* 10 F) (* (- 1) G)) (- 9))
     (>= (+ G (* (- 10) F)) 0)
     (>= G 1)
     (<= H 99)
     (not (<= H 9))
     (= A (+ (- 1) B)))
      )
      (INV1 F B H D C E)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) ) 
    (=>
      (and
        (INV1 D A F G E H)
        (and (= I J)
     (= E 0)
     (>= (+ (* 10 C) (* (- 1) D)) (- 9))
     (>= (+ D (* (- 10) C)) 0)
     (>= D 1)
     (= A (+ (- 1) B)))
      )
      (INV1 C B F G E H)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) ) 
    (=>
      (and
        (and (= D (- 1))
     (= C 1)
     (= B 1)
     (= A 1)
     (>= (+ (* 10 E) (* (- 1) F)) (- 9))
     (>= (+ F (* (- 10) E)) 0)
     (= F G))
      )
      (INV1 E A G B C D)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) ) 
    (=>
      (and
        (INV1 C A E F D B)
        (and (= D 0) (not (= A B)) (not (>= C 1)) (= G H))
      )
      false
    )
  )
)

(check-sat)
(exit)