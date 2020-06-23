(set-logic HORN)

(declare-fun |state| ( Bool Bool Bool Bool Bool Bool Int Int Int Int Int Int Int Int Int ) Bool)

(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Bool) (E Bool) (F Bool) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) ) 
    (=>
      (and
        (and (not E) (not D) (not C) (= B true) (not A) (not F))
      )
      (state A B C D E F G H I J K L M N O)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Bool) (E Bool) (F Bool) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) (T Int) (U Int) (V Int) (W Int) (X Int) (Y Bool) (Z Bool) (A1 Bool) (B1 Bool) (C1 Bool) (D1 Bool) (E1 Int) ) 
    (=>
      (and
        (state A B C D E F G H I J K L M N O)
        (let ((a!1 (and Y
                Z
                A1
                (not B1)
                (not C1)
                D1
                (= G P)
                (= H Q)
                (= I R)
                (= J S)
                (= K T)
                (= L U)
                (= M V)
                (= N W)
                (= O X)))
      (a!2 (and Y
                Z
                A1
                (not B1)
                (not C1)
                (not D1)
                (= G P)
                (= H Q)
                (= I R)
                (= J S)
                (= K T)
                (= L U)
                (= M V)
                (= N W)
                (= O X)))
      (a!3 (and Y
                Z
                (not A1)
                B1
                C1
                D1
                (= G P)
                (= H Q)
                (= I R)
                (= J S)
                (= K T)
                (= L U)
                (= M V)
                (= N W)
                (= O X)))
      (a!4 (and Y
                Z
                (not A1)
                B1
                C1
                (not D1)
                (= G P)
                (= H Q)
                (= I R)
                (= J S)
                (= K T)
                (= L U)
                (= M V)
                (= N W)
                (= O X)))
      (a!5 (and Y
                Z
                (not A1)
                B1
                (not C1)
                (not D1)
                (= G P)
                (= H Q)
                (= I R)
                (= J S)
                (= K T)
                (= L U)
                (= M V)
                (= N W)
                (= O X)))
      (a!7 (not (<= (- 1) (+ M (* (- 1) O)))))
      (a!8 (and Y
                Z
                (not A1)
                (not B1)
                (not C1)
                (not D1)
                (= G P)
                (= H Q)
                (= I R)
                (= J S)
                (= K T)
                (= L U)
                (= M V)
                (= N W)
                (= O X)))
      (a!9 (and Y
                (not Z)
                A1
                B1
                C1
                (not D1)
                (= G P)
                (= H Q)
                (= I R)
                (= J S)
                (= K T)
                (= L U)
                (= M V)
                (= N W)
                (= O X)))
      (a!10 (and Y
                 (not Z)
                 A1
                 B1
                 (not C1)
                 D1
                 (= G P)
                 (= H Q)
                 (= I R)
                 (= J S)
                 (= K T)
                 (= L U)
                 (= M V)
                 (= N W)
                 (= O X)))
      (a!12 (and (not Y)
                 Z
                 A1
                 B1
                 C1
                 (not D1)
                 (= G P)
                 (= H Q)
                 (= I R)
                 (= J S)
                 (= K T)
                 (= L U)
                 (= M V)
                 (= N W)
                 (= O X)))
      (a!13 (and (not Y)
                 Z
                 A1
                 B1
                 (not C1)
                 D1
                 (= G P)
                 (= H Q)
                 (= I R)
                 (= J S)
                 (= K T)
                 (= L U)
                 (= M V)
                 (= N W)
                 (= O X)))
      (a!14 (and (not Y)
                 Z
                 A1
                 (not B1)
                 (not C1)
                 D1
                 (= G P)
                 (= H Q)
                 (= I R)
                 (= J S)
                 (= K T)
                 (= L U)
                 (= M V)
                 (= N W)
                 (= (+ O (* (- 1) X)) (- 1))))
      (a!15 (and (not Y)
                 (not Z)
                 A1
                 (not B1)
                 (not C1)
                 D1
                 (= G P)
                 (= H Q)
                 (= I R)
                 (= J S)
                 (= K T)
                 (= L U)
                 (= M V)
                 (= N W)
                 (= O X)))
      (a!16 (and (not Y)
                 (not Z)
                 (not A1)
                 (not B1)
                 (not C1)
                 (not D1)
                 (= G P)
                 (= H Q)
                 (= I R)
                 (= J S)
                 (= K T)
                 (= L U)
                 (= M V)
                 (= N W)
                 (= O X))))
(let ((a!6 (or A (not B) C D (not E) (not F) a!5 (<= (- 1) (+ M (* (- 1) O)))))
      (a!11 (or (not A) B C (not D) E (not F) a!10 (<= (- 1) (+ M (* (- 1) O))))))
  (and (or A
           (not B)
           C
           (not D)
           E
           F
           (and Y
                Z
                A1
                (not B1)
                C1
                (not D1)
                (= G P)
                (= H Q)
                (= I R)
                (= J S)
                (= K T)
                (= L U)
                (= M V)
                (= N W)
                (= O X))
           (= E1 0))
       (or (not A) B C (not D) E F a!1 (<= 0 J))
       (or A B (not C) (not D) E F a!2 (<= J M))
       (or (not A) (not B) (not C) (not D) (not E) F a!3 (<= 0 K))
       (or A (not B) C D E (not F) a!4 (<= K M))
       (or A
           B
           C
           D
           (not E)
           (not F)
           (and Y
                Z
                (not A1)
                B1
                (not C1)
                D1
                (= G P)
                (= H Q)
                (= I R)
                (= J S)
                (= K T)
                (= L U)
                (= M V)
                (= N W)
                (= O X))
           (= E1 0))
       a!6
       (or A
           (not B)
           C
           D
           (not E)
           (not F)
           (and Y
                Z
                (not A1)
                (not B1)
                C1
                (not D1)
                (= G P)
                (= H Q)
                (= I R)
                (= J S)
                (= K T)
                (= L U)
                (= M V)
                (= N W)
                (= O X))
           a!7)
       (or A
           B
           C
           D
           (not E)
           (not F)
           (and Y
                Z
                (not A1)
                (not B1)
                (not C1)
                D1
                (= G P)
                (= H Q)
                (= I R)
                (= J S)
                (= K T)
                (= L U)
                (= M V)
                (= N W)
                (= O X))
           (not (= E1 0)))
       (or (not A) (not B) C D E (not F) a!8 (not (<= O M)))
       (or A
           B
           (not C)
           D
           E
           (not F)
           (and Y
                (not Z)
                A1
                B1
                C1
                D1
                (= G P)
                (= H Q)
                (= I R)
                (= J S)
                (= K T)
                (= L U)
                (= M V)
                (= N W)
                (= O X))
           (= E1 0))
       (or A B C (not D) E (not F) a!9 (<= 0 O))
       a!11
       (or (not A)
           B
           C
           (not D)
           E
           (not F)
           (and Y
                (not Z)
                A1
                (not B1)
                C1
                D1
                (= G P)
                (= H Q)
                (= I R)
                (= J S)
                (= K T)
                (= L U)
                (= M V)
                (= N W)
                (= O X))
           a!7)
       (or A
           B
           C
           (not D)
           E
           (not F)
           (and Y
                (not Z)
                A1
                (not B1)
                (not C1)
                D1
                (= G P)
                (= H Q)
                (= I R)
                (= J S)
                (= K T)
                (= L U)
                (= M V)
                (= N W)
                (= O X))
           (not (<= 0 O)))
       (or A
           (not B)
           (not C)
           D
           E
           (not F)
           (and Y
                (not Z)
                A1
                (not B1)
                (not C1)
                (not D1)
                (= G P)
                (= H Q)
                (= I R)
                (= J S)
                (= K T)
                (= L U)
                (= M V)
                (= N W)
                (= O X))
           (= E1 0))
       (or A
           (not B)
           (not C)
           D
           E
           (not F)
           (and Y
                (not Z)
                (not A1)
                B1
                C1
                (not D1)
                (= G P)
                (= H Q)
                (= I R)
                (= J S)
                (= K T)
                (= L U)
                (= M V)
                (= N W)
                (= O X))
           (not (= E1 0)))
       (or A
           B
           (not C)
           D
           E
           (not F)
           (and Y
                (not Z)
                (not A1)
                B1
                (not C1)
                D1
                (= G P)
                (= H Q)
                (= I R)
                (= J S)
                (= K T)
                (= L U)
                (= M V)
                (= N W)
                (= O X))
           (not (= E1 0)))
       (or (not A)
           (not B)
           C
           D
           E
           (not F)
           (and Y
                (not Z)
                (not A1)
                B1
                (not C1)
                (not D1)
                (= G P)
                (= H Q)
                (= I R)
                (= J S)
                (= K T)
                (= L U)
                (= M V)
                (= N W)
                (= O X))
           (<= O M))
       (or A
           (not B)
           C
           D
           E
           (not F)
           (and Y
                (not Z)
                (not A1)
                (not B1)
                C1
                (not D1)
                (= G P)
                (= H Q)
                (= I R)
                (= J S)
                (= K T)
                (= L U)
                (= M V)
                (= N W)
                (= O X))
           (not (<= K M)))
       (or (not A)
           (not B)
           (not C)
           (not D)
           (not E)
           F
           (and Y
                (not Z)
                (not A1)
                (not B1)
                (not C1)
                (not D1)
                (= G P)
                (= H Q)
                (= I R)
                (= J S)
                (= K T)
                (= L U)
                (= M V)
                (= N W)
                (= O X))
           (not (<= 0 K)))
       (or A B (not C) D (not E) F a!12 (<= 0 O))
       (or (not A) B (not C) D (not E) F a!13 (<= O M))
       (or A
           (not B)
           C
           (not D)
           (not E)
           F
           (and (not Y)
                Z
                A1
                (not B1)
                C1
                D1
                (= G P)
                (= H Q)
                (= I R)
                (= J S)
                (= K T)
                (= L U)
                (= M V)
                (= N W)
                (= O X))
           (= E1 0))
       (or A
           (not B)
           C
           (not D)
           (not E)
           F
           (and (not Y)
                Z
                A1
                (not B1)
                C1
                (not D1)
                (= G P)
                (= H Q)
                (= I R)
                (= J S)
                (= K T)
                (= L U)
                (= M V)
                (= N W)
                (= O X))
           (not (= E1 0)))
       (or (not A)
           B
           (not C)
           D
           (not E)
           F
           (and (not Y)
                Z
                (not A1)
                B1
                C1
                D1
                (= G P)
                (= H Q)
                (= I R)
                (= J S)
                (= K T)
                (= L U)
                (= M V)
                (= N W)
                (= O X))
           (not (<= O M)))
       (or A
           B
           (not C)
           D
           (not E)
           F
           (and (not Y)
                Z
                (not A1)
                B1
                (not C1)
                D1
                (= G P)
                (= H Q)
                (= I R)
                (= J S)
                (= K T)
                (= L U)
                (= M V)
                (= N W)
                (= O X))
           (not (<= 0 O)))
       (or (not A)
           B
           C
           D
           (not E)
           F
           (and (not Y)
                Z
                (not A1)
                B1
                (not C1)
                (not D1)
                (= G P)
                (= H Q)
                (= I R)
                (= J S)
                (= K T)
                (= L U)
                (= M V)
                (= N W)
                (= O X))
           (not (<= O M)))
       (or (not A)
           B
           C
           D
           (not E)
           F
           (and (not Y)
                Z
                (not A1)
                (not B1)
                C1
                D1
                (= G P)
                (= H Q)
                (= I R)
                (= J S)
                (= K T)
                (= L U)
                (= M V)
                (= N W)
                (= O X))
           (<= O M))
       (or (not A)
           B
           (not C)
           (not D)
           E
           F
           (and (not Y)
                Z
                (not A1)
                (not B1)
                (not C1)
                (not D1)
                (= G P)
                (= H Q)
                (= I R)
                (= J S)
                (= K T)
                (= L U)
                (= M V)
                (= N W)
                (= O X))
           (= E1 0))
       (or (not A)
           B
           (not C)
           (not D)
           E
           F
           (and (not Y)
                (not Z)
                A1
                B1
                C1
                D1
                (= G P)
                (= H Q)
                (= I R)
                (= J S)
                (= K T)
                (= L U)
                (= M V)
                (= N W)
                (= O X))
           (not (= E1 0)))
       (or A
           B
           (not C)
           (not D)
           E
           F
           (and (not Y)
                (not Z)
                A1
                B1
                (not C1)
                D1
                (= G P)
                (= H Q)
                (= I R)
                (= J S)
                (= K T)
                (= L U)
                (= M V)
                (= N W)
                (= O X))
           (not (<= J M)))
       (or (not A)
           B
           C
           (not D)
           E
           F
           (and (not Y)
                (not Z)
                A1
                (not B1)
                C1
                D1
                (= G P)
                (= H Q)
                (= I R)
                (= J S)
                (= K T)
                (= L U)
                (= M V)
                (= N W)
                (= O X))
           (not (<= 0 J)))
       (or A
           (not B)
           C
           (not D)
           E
           F
           (and (not Y)
                (not Z)
                A1
                (not B1)
                C1
                (not D1)
                (= G P)
                (= H Q)
                (= I R)
                (= J S)
                (= K T)
                (= L U)
                (= M V)
                (= N W)
                (= O X))
           (not (= E1 0)))
       (or A
           (not B)
           C
           D
           E
           F
           (and (not Y)
                (not Z)
                (not A1)
                (not B1)
                C1
                (not D1)
                (= G P)
                (= H Q)
                (= I R)
                (= J S)
                (= K T)
                (= L U)
                (= M V)
                (= N W)
                (= O X))
           (<= M 0))
       (or (not A)
           B
           (not C)
           D
           E
           (not F)
           (and Y
                (not Z)
                (not A1)
                B1
                C1
                D1
                (= H Q)
                (= I R)
                (= J S)
                (= K T)
                (= L U)
                (= M V)
                (= N W)
                (= O X)
                (= P 5)))
       (or A
           B
           C
           (not D)
           E
           F
           (and (not Y)
                (not Z)
                A1
                (not B1)
                (not C1)
                D1
                (= H Q)
                (= I R)
                (= J S)
                (= K T)
                (= L U)
                (= M V)
                (= N W)
                (= O X)
                (= P 0)))
       (or A
           (not B)
           (not C)
           D
           E
           F
           (and (not Y)
                (not Z)
                (not A1)
                B1
                C1
                (not D1)
                (= G P)
                (= I R)
                (= J S)
                (= K T)
                (= L U)
                (= M V)
                (= N W)
                (= O X)
                (= Q 0)))
       (or A
           B
           (not C)
           D
           E
           F
           (and (not Y)
                (not Z)
                (not A1)
                B1
                (not C1)
                D1
                (= G P)
                (= H Q)
                (= J S)
                (= K T)
                (= L U)
                (= M V)
                (= N W)
                (= O X)
                (= R M)))
       (or (not A)
           (not B)
           C
           D
           E
           F
           (and (not Y)
                (not Z)
                (not A1)
                B1
                (not C1)
                (not D1)
                (= G P)
                (= H Q)
                (= I R)
                (= K T)
                (= L U)
                (= M V)
                (= N W)
                (= O X)
                (= S 0)))
       (or (not A)
           (not B)
           (not C)
           D
           E
           F
           (and (not Y)
                (not Z)
                A1
                (not B1)
                (not C1)
                (not D1)
                (= G P)
                (= H Q)
                (= I R)
                (= J S)
                (= L U)
                (= M V)
                (= N W)
                (= O X)
                (= T M)))
       (or (not A)
           B
           (not C)
           D
           E
           F
           (and (not Y)
                (not Z)
                (not A1)
                B1
                C1
                D1
                (= G P)
                (= H Q)
                (= I R)
                (= J S)
                (= K T)
                (= M V)
                (= N W)
                (= O X)
                (= U 0)))
       (or A B C (not D) (not E) F a!14)
       (or A (not B) C (not D) (not E) (not F) a!1)
       (or A B C (not D) (not E) (not F) a!2)
       (or (not A) (not B) (not C) D (not E) (not F) a!3)
       (or (not A) B (not C) D (not E) (not F) a!4)
       (or A B (not C) D (not E) (not F) a!5)
       (or (not A)
           B
           C
           D
           (not E)
           (not F)
           (and Y
                Z
                (not A1)
                (not B1)
                C1
                D1
                (= G P)
                (= H Q)
                (= I R)
                (= J S)
                (= K T)
                (= L U)
                (= M V)
                (= N W)
                (= O X)))
       (or (not A) (not B) (not C) (not D) E (not F) a!8)
       (or (not A) B (not C) (not D) E (not F) a!9)
       (or A (not B) (not C) (not D) E (not F) a!10)
       (or (not A)
           (not B)
           C
           (not D)
           E
           (not F)
           (and Y
                (not Z)
                A1
                B1
                (not C1)
                (not D1)
                (= G P)
                (= H Q)
                (= I R)
                (= J S)
                (= K T)
                (= L U)
                (= M V)
                (= N W)
                (= O X)))
       (or A
           (not B)
           C
           (not D)
           E
           (not F)
           (and Y
                (not Z)
                A1
                (not B1)
                C1
                (not D1)
                (= G P)
                (= H Q)
                (= I R)
                (= J S)
                (= K T)
                (= L U)
                (= M V)
                (= N W)
                (= O X)))
       (or (not A)
           B
           C
           D
           E
           (not F)
           (and Y
                (not Z)
                (not A1)
                (not B1)
                C1
                D1
                (= G P)
                (= H Q)
                (= I R)
                (= J S)
                (= K T)
                (= L U)
                (= M V)
                (= N W)
                (= O X)))
       (or A
           B
           C
           D
           E
           (not F)
           (and Y
                (not Z)
                (not A1)
                (not B1)
                (not C1)
                D1
                (= G P)
                (= H Q)
                (= I R)
                (= J S)
                (= K T)
                (= L U)
                (= M V)
                (= N W)
                (= O X)))
       (or (not A) B (not C) (not D) (not E) F a!12)
       (or A (not B) (not C) (not D) (not E) F a!13)
       (or (not A)
           (not B)
           C
           (not D)
           (not E)
           F
           (and (not Y)
                Z
                A1
                B1
                (not C1)
                (not D1)
                (= G P)
                (= H Q)
                (= I R)
                (= J S)
                (= K T)
                (= L U)
                (= M V)
                (= N W)
                (= O X)))
       (or (not A)
           (not B)
           (not C)
           D
           (not E)
           F
           (and (not Y)
                Z
                A1
                (not B1)
                (not C1)
                (not D1)
                (= G P)
                (= H Q)
                (= I R)
                (= J S)
                (= K T)
                (= L U)
                (= M V)
                (= N W)
                (= O X)))
       (or A
           (not B)
           (not C)
           D
           (not E)
           F
           (and (not Y)
                Z
                (not A1)
                B1
                C1
                (not D1)
                (= G P)
                (= H Q)
                (= I R)
                (= J S)
                (= K T)
                (= L U)
                (= M V)
                (= N W)
                (= O X)))
       (or A
           (not B)
           C
           D
           (not E)
           F
           (and (not Y)
                Z
                (not A1)
                (not B1)
                C1
                (not D1)
                (= G P)
                (= H Q)
                (= I R)
                (= J S)
                (= K T)
                (= L U)
                (= M V)
                (= N W)
                (= O X)))
       (or A
           B
           (not C)
           (not D)
           (not E)
           F
           (and (not Y)
                Z
                (not A1)
                (not B1)
                (not C1)
                D1
                (= G P)
                (= H Q)
                (= I R)
                (= J S)
                (= K T)
                (= L U)
                (= M V)
                (= N W)
                (= O X)))
       (or A
           (not B)
           (not C)
           (not D)
           E
           F
           (and (not Y)
                (not Z)
                A1
                B1
                C1
                (not D1)
                (= G P)
                (= H Q)
                (= I R)
                (= J S)
                (= K T)
                (= L U)
                (= M V)
                (= N W)
                (= O X)))
       (or (not A)
           (not B)
           C
           (not D)
           E
           F
           (and (not Y)
                (not Z)
                A1
                B1
                (not C1)
                (not D1)
                (= G P)
                (= H Q)
                (= I R)
                (= J S)
                (= K T)
                (= L U)
                (= M V)
                (= N W)
                (= O X)))
       (or A B (not C) (not D) E (not F) a!15)
       (or A (not B) (not C) D (not E) (not F) a!15)
       (or (not A) (not B) C D (not E) (not F) a!15)
       (or (not A) (not B) (not C) (not D) E F a!15)
       (or A B C D E F a!16)
       (or (not A) B C (not D) (not E) F a!16)
       (or (not A) B C (not D) (not E) (not F) a!16)
       (or (not A) (not B) C D (not E) F a!16)
       (or (not A) (not B) C (not D) (not E) (not F) a!16)
       (or (not A) (not B) (not C) D E (not F) a!16)
       (or A
           B
           C
           D
           (not E)
           F
           (and (not Y)
                Z
                (not A1)
                (not B1)
                (not C1)
                D1
                (= X 0)
                (= G P)
                (= H Q)
                (= I R)
                (= J S)
                (= K T)
                (= L U)
                (= M V)
                (= N W)))
       (or (not A)
           B
           C
           D
           E
           F
           (and (not Y)
                (not Z)
                (not A1)
                (not B1)
                C1
                D1
                (= W 0)
                (= G P)
                (= H Q)
                (= I R)
                (= J S)
                (= K T)
                (= L U)
                (= M V)
                (= O X)))
       (or A
           (not B)
           C
           D
           E
           F
           (and Y
                Z
                A1
                (not B1)
                C1
                D1
                (= G P)
                (= H Q)
                (= I R)
                (= J S)
                (= K T)
                (= L U)
                (= M V)
                (= N W)
                (= O X))
           (not (<= M 0))))))
      )
      (state C1 D1 B1 A1 Z Y P Q R S T U V W X)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Bool) (E Bool) (F Bool) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) ) 
    (=>
      (and
        (state A B C D E F G H I J K L M N O)
        (or (and (not A) (not B) (not C) D E F)
    (and (not A) (not B) C (not D) E F)
    (and (not A) B (not C) D E F)
    (and (not A) B C D (not E) F)
    (and (not A) B C D E (not F))
    (and A (not B) C (not D) E F)
    (and A (not B) C D (not E) F)
    (and A (not B) C D E (not F))
    (and A B C (not D) E F))
      )
      false
    )
  )
)

(check-sat)
(exit)
