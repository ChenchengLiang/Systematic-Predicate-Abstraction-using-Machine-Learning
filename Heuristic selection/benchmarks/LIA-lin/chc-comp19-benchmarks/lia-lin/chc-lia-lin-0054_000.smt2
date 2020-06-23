(set-logic HORN)

(declare-fun |init$unknown:6| ( Int Int Int Int ) Bool)
(declare-fun |init$unknown:4| ( Int Int Int Int ) Bool)
(declare-fun |update$unknown:15| ( Int Int Int Int ) Bool)
(declare-fun |mk_array$unknown:9| ( Int Int Int ) Bool)
(declare-fun |update$unknown:12| ( Int Int Int ) Bool)

(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) ) 
    (=>
      (and
        (|update$unknown:15| F G E B)
        (and (= 0 A) (= E 1) (= D (+ 1 B)) (= (not (= 0 A)) (>= B C)))
      )
      (|init$unknown:4| F G C D)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) ) 
    (=>
      (and
        (|init$unknown:4| D E C B)
        (and (not (= 0 A)) (= (not (= 0 A)) (>= B C)))
      )
      (|init$unknown:6| D E C B)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) ) 
    (=>
      (and
        (|init$unknown:4| E F C B)
        (and (= 0 A) (= D 1) (= (not (= 0 A)) (>= B C)))
      )
      (|update$unknown:12| E F B)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) ) 
    (=>
      (and
        (|init$unknown:6| F G C D)
        (and (= 0 A) (= E 1) (= D (+ 1 B)) (= (not (= 0 A)) (>= B C)))
      )
      (|init$unknown:6| F G C B)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) ) 
    (=>
      (and
        (|mk_array$unknown:9| B C D)
        (= A 0)
      )
      (|init$unknown:4| B C D A)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) ) 
    (=>
      (and
        (let ((a!1 (= (not (= 0 A)) (and (not (= 0 B)) (not (= 0 C))))))
  (and a!1
       (not (= 0 A))
       (= F 0)
       (= (= 0 C) (<= E D))
       (= (not (= 0 B)) (<= 0 D))))
      )
      (|mk_array$unknown:9| F D E)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) ) 
    (=>
      (and
        (let ((a!1 (= (not (= 0 A)) (and (not (= 0 B)) (not (= 0 C))))))
  (and a!1 (= 0 A) (= F (- 1)) (= (= 0 C) (<= E D)) (= (not (= 0 B)) (<= 0 D))))
      )
      (|mk_array$unknown:9| F D E)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) ) 
    (=>
      (and
        (|update$unknown:12| E B C)
        (and (= 0 A) (= D E) (= (not (= 0 A)) (= B C)))
      )
      (|update$unknown:15| D B F C)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) ) 
    (=>
      (and
        (and (not (= 0 A)) (= D E) (= (not (= 0 A)) (= B C)))
      )
      (|update$unknown:15| D B E C)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) ) 
    (=>
      (and
        (|init$unknown:6| C G H A)
        (let ((a!1 (= (not (= 0 D)) (and (not (= 0 E)) (not (= 0 F))))))
  (and a!1
       (= (not (= 0 B)) (>= C 1))
       (not (= 0 D))
       (= 0 B)
       (= A 0)
       (= (= 0 F) (<= H G))
       (= (not (= 0 E)) (<= 0 G))))
      )
      false
    )
  )
)

(check-sat)
(exit)
