(set-logic HORN)

(declare-fun |f$unknown:2| ( Int Int ) Bool)
(declare-fun |f$unknown:4| ( Int Int ) Bool)
(declare-fun |incr$unknown:6| ( Int Int ) Bool)

(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) ) 
    (=>
      (and
        (|f$unknown:2| D E)
        (and (= A (- 4)) (= (= 0 B) (<= (- 3) C)) (not (= 0 B)))
      )
      (|f$unknown:2| D E)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) ) 
    (=>
      (and
        (|f$unknown:2| E F)
        (and (= 0 D)
     (= 0 C)
     (= A (+ (- 2) B))
     (= (= 0 D) (<= (- 3) B))
     (= (not (= 0 C)) (<= B 1)))
      )
      (|f$unknown:2| E F)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) ) 
    (=>
      (and
        (|f$unknown:4| E F)
        (and (= 0 D)
     (= 0 C)
     (= A (+ (- 2) B))
     (= (= 0 D) (<= (- 3) B))
     (= (not (= 0 C)) (<= B 1)))
      )
      (|f$unknown:2| E F)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) ) 
    (=>
      (and
        (|incr$unknown:6| B C)
        (= A 3)
      )
      (|f$unknown:2| B C)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) ) 
    (=>
      (and
        (|f$unknown:2| E B)
        (and (= 0 C)
     (not (= 0 A))
     (= D E)
     (= (= 0 C) (<= (- 3) B))
     (= (not (= 0 A)) (<= B 1)))
      )
      (|f$unknown:4| D B)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) ) 
    (=>
      (and
        (|f$unknown:4| E A)
        (and (= D E) (= A (- 4)) (= (= 0 B) (<= (- 3) C)) (not (= 0 B)))
      )
      (|f$unknown:4| D C)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) ) 
    (=>
      (and
        (|f$unknown:4| F A)
        (and (= 0 D)
     (= 0 C)
     (= A (+ (- 2) B))
     (= E F)
     (= (= 0 D) (<= (- 3) B))
     (= (not (= 0 C)) (<= B 1)))
      )
      (|f$unknown:4| E B)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) ) 
    (=>
      (and
        (= A (+ 1 B))
      )
      (|incr$unknown:6| A B)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) ) 
    (=>
      (and
        (|f$unknown:4| B C)
        (and (= 0 A) (= C 3) (= (not (= 0 A)) (>= B (- 3))))
      )
      false
    )
  )
)

(check-sat)
(exit)
