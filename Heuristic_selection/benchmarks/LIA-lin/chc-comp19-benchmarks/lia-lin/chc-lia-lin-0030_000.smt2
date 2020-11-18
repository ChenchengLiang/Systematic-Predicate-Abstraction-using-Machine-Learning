(set-logic HORN)

(declare-fun |twice$unknown:11| ( Int Int ) Bool)
(declare-fun |twice$unknown:9| ( Int Int ) Bool)
(declare-fun |g$unknown:3| ( Int Int Int ) Bool)
(declare-fun |neg$unknown:7| ( Int Int ) Bool)
(declare-fun |twice$unknown:13| ( Int Int ) Bool)
(declare-fun |twice$unknown:15| ( Int Int ) Bool)
(declare-fun |neg$unknown:5| ( Int Int ) Bool)

(assert
  (forall ( (A Int) (B Int) (C Int) ) 
    (=>
      (and
        (= A B)
      )
      (|g$unknown:3| A C B)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) ) 
    (=>
      (and
        (|g$unknown:3| D E B)
        (and (not (= 0 A)) (= C 1) (= (not (= 0 A)) (>= B 0)))
      )
      (|twice$unknown:13| D E)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) ) 
    (=>
      (and
        (|neg$unknown:5| C A)
        (and (= B (* (- 1) C)) (= A 1))
      )
      (|neg$unknown:7| B D)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) ) 
    (=>
      (and
        (|twice$unknown:11| A B)
        true
      )
      (|twice$unknown:9| A B)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) ) 
    (=>
      (and
        (|twice$unknown:11| B C)
        (= A B)
      )
      (|twice$unknown:15| A C)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) ) 
    (=>
      (and
        (|twice$unknown:13| A B)
        true
      )
      (|twice$unknown:9| A B)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) ) 
    (=>
      (and
        (|twice$unknown:9| A B)
        (and (not (= 0 C)) (= E 1) (= (not (= 0 C)) (>= D 0)))
      )
      (|neg$unknown:5| A B)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) ) 
    (=>
      (and
        (|neg$unknown:7| A B)
        (and (not (= 0 C)) (= E 1) (= (not (= 0 C)) (>= D 0)))
      )
      (|twice$unknown:11| A B)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) ) 
    (=>
      (and
        (|twice$unknown:15| E C)
        (and (= (not (= 0 D)) (>= E 0))
     (not (= 0 A))
     (= 0 D)
     (= C 1)
     (= (not (= 0 A)) (>= B 0)))
      )
      false
    )
  )
)

(check-sat)
(exit)
