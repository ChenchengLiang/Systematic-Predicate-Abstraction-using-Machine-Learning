(set-logic HORN)

(declare-fun |state| ( Bool Bool Bool Bool Bool Bool Int Int Int Int Int Int Int Int Int ) Bool)

(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Bool) (K Bool) (L Bool) (M Bool) (N Bool) (O Bool) ) 
    (=>
      (and
        (and (not N) (not M) (not L) (not K) (not J) (= O true))
      )
      (state J O N M L K I H G F E D C B A)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Bool) (E Bool) (F Bool) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) (T Int) (U Int) (V Int) (W Int) (X Int) (Y Int) (Z Bool) (A1 Bool) (B1 Bool) (C1 Bool) (D1 Bool) (E1 Bool) ) 
    (=>
      (and
        (state Z E1 D1 C1 B1 A1 X V T R P N L J H)
        (let ((a!1 (and F
                E
                D
                (not C)
                (not B)
                A
                (= H G)
                (= J I)
                (= L K)
                (= N M)
                (= P O)
                (= R Q)
                (= T S)
                (= V U)
                (= X W)))
      (a!2 (and F
                E
                D
                (not C)
                (not B)
                (not A)
                (= H G)
                (= J I)
                (= L K)
                (= N M)
                (= P O)
                (= R Q)
                (= T S)
                (= V U)
                (= X W)))
      (a!3 (and F
                E
                (not D)
                C
                B
                A
                (= H G)
                (= J I)
                (= L K)
                (= N M)
                (= P O)
                (= R Q)
                (= T S)
                (= V U)
                (= X W)))
      (a!4 (and F
                E
                (not D)
                C
                B
                (not A)
                (= H G)
                (= J I)
                (= L K)
                (= N M)
                (= P O)
                (= R Q)
                (= T S)
                (= V U)
                (= X W)))
      (a!5 (not (<= (- 1) (+ L (* (- 1) H)))))
      (a!6 (and F
                E
                (not D)
                (not C)
                B
                (not A)
                (= H G)
                (= J I)
                (= L K)
                (= N M)
                (= P O)
                (= R Q)
                (= T S)
                (= V U)
                (= X W)))
      (a!8 (and F
                E
                (not D)
                (not C)
                (not B)
                (not A)
                (= H G)
                (= J I)
                (= L K)
                (= N M)
                (= P O)
                (= R Q)
                (= T S)
                (= V U)
                (= X W)))
      (a!9 (and F
                (not E)
                D
                C
                B
                (not A)
                (= H G)
                (= J I)
                (= L K)
                (= N M)
                (= P O)
                (= R Q)
                (= T S)
                (= V U)
                (= X W)))
      (a!10 (and F
                 (not E)
                 D
                 (not C)
                 B
                 A
                 (= H G)
                 (= J I)
                 (= L K)
                 (= N M)
                 (= P O)
                 (= R Q)
                 (= T S)
                 (= V U)
                 (= X W)))
      (a!12 (and (not F)
                 E
                 D
                 C
                 B
                 (not A)
                 (= H G)
                 (= J I)
                 (= L K)
                 (= N M)
                 (= P O)
                 (= R Q)
                 (= T S)
                 (= V U)
                 (= X W)))
      (a!13 (and (not F)
                 E
                 D
                 (not C)
                 B
                 A
                 (= H G)
                 (= J I)
                 (= L K)
                 (= N M)
                 (= P O)
                 (= R Q)
                 (= T S)
                 (= V U)
                 (= X W)))
      (a!14 (and (not F)
                 E
                 D
                 (not C)
                 (not B)
                 A
                 (= J I)
                 (= L K)
                 (= N M)
                 (= P O)
                 (= R Q)
                 (= T S)
                 (= V U)
                 (= X W)
                 (= (+ H (* (- 1) G)) (- 1))))
      (a!15 (and (not F)
                 (not E)
                 D
                 (not C)
                 (not B)
                 A
                 (= H G)
                 (= J I)
                 (= L K)
                 (= N M)
                 (= P O)
                 (= R Q)
                 (= T S)
                 (= V U)
                 (= X W)))
      (a!16 (and (not F)
                 (not E)
                 (not D)
                 (not C)
                 (not B)
                 (not A)
                 (= H G)
                 (= J I)
                 (= L K)
                 (= N M)
                 (= P O)
                 (= R Q)
                 (= T S)
                 (= V U)
                 (= X W))))
(let ((a!7 (or Z
               (not A1)
               (not B1)
               C1
               D1
               (not E1)
               a!6
               (<= (- 1) (+ L (* (- 1) H)))))
      (a!11 (or (not Z)
                (not A1)
                B1
                (not C1)
                D1
                E1
                a!10
                (<= (- 1) (+ L (* (- 1) H))))))
  (and (or Z
           A1
           B1
           (not C1)
           D1
           (not E1)
           (and F
                E
                D
                C
                (not B)
                (not A)
                (= H G)
                (= J I)
                (= L K)
                (= N M)
                (= P O)
                (= R Q)
                (= T S)
                (= V U)
                (= X W))
           (= Y 0))
       (or (not Z) A1 B1 (not C1) D1 E1 a!1 (<= 0 R))
       (or Z A1 B1 (not C1) (not D1) E1 a!2 (<= R L))
       (or (not Z) A1 (not B1) (not C1) (not D1) (not E1) a!3 (<= 0 P))
       (or Z (not A1) B1 C1 D1 (not E1) a!4 (<= P L))
       (or Z
           (not A1)
           (not B1)
           C1
           D1
           (not E1)
           (and F
                E
                (not D)
                C
                (not B)
                (not A)
                (= H G)
                (= J I)
                (= L K)
                (= N M)
                (= P O)
                (= R Q)
                (= T S)
                (= V U)
                (= X W))
           a!5)
       (or Z
           (not A1)
           (not B1)
           C1
           D1
           E1
           (and F
                E
                (not D)
                (not C)
                B
                A
                (= H G)
                (= J I)
                (= L K)
                (= N M)
                (= P O)
                (= R Q)
                (= T S)
                (= V U)
                (= X W))
           (= Y 0))
       a!7
       (or Z
           (not A1)
           (not B1)
           C1
           D1
           E1
           (and F
                E
                (not D)
                (not C)
                (not B)
                A
                (= H G)
                (= J I)
                (= L K)
                (= N M)
                (= P O)
                (= R Q)
                (= T S)
                (= V U)
                (= X W))
           (not (= Y 0)))
       (or (not Z) (not A1) B1 C1 D1 (not E1) a!8 (not (<= H L)))
       (or Z
           (not A1)
           B1
           C1
           (not D1)
           E1
           (and F
                (not E)
                D
                C
                B
                A
                (= H G)
                (= J I)
                (= L K)
                (= N M)
                (= P O)
                (= R Q)
                (= T S)
                (= V U)
                (= X W))
           (= Y 0))
       (or Z (not A1) B1 (not C1) D1 E1 a!9 (<= 0 H))
       (or (not Z)
           (not A1)
           B1
           (not C1)
           D1
           E1
           (and F
                (not E)
                D
                C
                (not B)
                A
                (= H G)
                (= J I)
                (= L K)
                (= N M)
                (= P O)
                (= R Q)
                (= T S)
                (= V U)
                (= X W))
           a!5)
       a!11
       (or Z
           (not A1)
           B1
           (not C1)
           D1
           E1
           (and F
                (not E)
                D
                (not C)
                (not B)
                A
                (= H G)
                (= J I)
                (= L K)
                (= N M)
                (= P O)
                (= R Q)
                (= T S)
                (= V U)
                (= X W))
           (not (<= 0 H)))
       (or Z
           (not A1)
           B1
           C1
           (not D1)
           (not E1)
           (and F
                (not E)
                D
                (not C)
                (not B)
                (not A)
                (= H G)
                (= J I)
                (= L K)
                (= N M)
                (= P O)
                (= R Q)
                (= T S)
                (= V U)
                (= X W))
           (= Y 0))
       (or Z
           (not A1)
           B1
           C1
           (not D1)
           (not E1)
           (and F
                (not E)
                (not D)
                C
                B
                (not A)
                (= H G)
                (= J I)
                (= L K)
                (= N M)
                (= P O)
                (= R Q)
                (= T S)
                (= V U)
                (= X W))
           (not (= Y 0)))
       (or Z
           (not A1)
           B1
           C1
           D1
           (not E1)
           (and F
                (not E)
                (not D)
                C
                (not B)
                (not A)
                (= H G)
                (= J I)
                (= L K)
                (= N M)
                (= P O)
                (= R Q)
                (= T S)
                (= V U)
                (= X W))
           (not (<= P L)))
       (or Z
           (not A1)
           B1
           C1
           (not D1)
           E1
           (and F
                (not E)
                (not D)
                (not C)
                B
                A
                (= H G)
                (= J I)
                (= L K)
                (= N M)
                (= P O)
                (= R Q)
                (= T S)
                (= V U)
                (= X W))
           (not (= Y 0)))
       (or (not Z)
           (not A1)
           B1
           C1
           D1
           (not E1)
           (and F
                (not E)
                (not D)
                (not C)
                B
                (not A)
                (= H G)
                (= J I)
                (= L K)
                (= N M)
                (= P O)
                (= R Q)
                (= T S)
                (= V U)
                (= X W))
           (<= H L))
       (or (not Z)
           A1
           (not B1)
           (not C1)
           (not D1)
           (not E1)
           (and F
                (not E)
                (not D)
                (not C)
                (not B)
                (not A)
                (= H G)
                (= J I)
                (= L K)
                (= N M)
                (= P O)
                (= R Q)
                (= T S)
                (= V U)
                (= X W))
           (not (<= 0 P)))
       (or Z A1 (not B1) C1 (not D1) E1 a!12 (<= 0 H))
       (or Z
           A1
           (not B1)
           (not C1)
           D1
           (not E1)
           (and (not F)
                E
                D
                C
                (not B)
                A
                (= H G)
                (= J I)
                (= L K)
                (= N M)
                (= P O)
                (= R Q)
                (= T S)
                (= V U)
                (= X W))
           (= Y 0))
       (or Z
           A1
           (not B1)
           (not C1)
           D1
           (not E1)
           (and (not F)
                E
                D
                C
                (not B)
                (not A)
                (= H G)
                (= J I)
                (= L K)
                (= N M)
                (= P O)
                (= R Q)
                (= T S)
                (= V U)
                (= X W))
           (not (= Y 0)))
       (or (not Z) A1 (not B1) C1 (not D1) E1 a!13 (<= H L))
       (or (not Z)
           A1
           (not B1)
           C1
           (not D1)
           E1
           (and (not F)
                E
                (not D)
                C
                B
                A
                (= H G)
                (= J I)
                (= L K)
                (= N M)
                (= P O)
                (= R Q)
                (= T S)
                (= V U)
                (= X W))
           (not (<= H L)))
       (or (not Z)
           A1
           (not B1)
           C1
           D1
           E1
           (and (not F)
                E
                (not D)
                C
                (not B)
                A
                (= H G)
                (= J I)
                (= L K)
                (= N M)
                (= P O)
                (= R Q)
                (= T S)
                (= V U)
                (= X W))
           (<= H L))
       (or Z
           A1
           (not B1)
           C1
           (not D1)
           E1
           (and (not F)
                E
                (not D)
                (not C)
                B
                A
                (= H G)
                (= J I)
                (= L K)
                (= N M)
                (= P O)
                (= R Q)
                (= T S)
                (= V U)
                (= X W))
           (not (<= 0 H)))
       (or (not Z)
           A1
           (not B1)
           C1
           D1
           E1
           (and (not F)
                E
                (not D)
                (not C)
                B
                (not A)
                (= H G)
                (= J I)
                (= L K)
                (= N M)
                (= P O)
                (= R Q)
                (= T S)
                (= V U)
                (= X W))
           (not (<= H L)))
       (or (not Z)
           A1
           B1
           (not C1)
           (not D1)
           E1
           (and (not F)
                E
                (not D)
                (not C)
                (not B)
                (not A)
                (= H G)
                (= J I)
                (= L K)
                (= N M)
                (= P O)
                (= R Q)
                (= T S)
                (= V U)
                (= X W))
           (= Y 0))
       (or (not Z)
           A1
           B1
           (not C1)
           (not D1)
           E1
           (and (not F)
                (not E)
                D
                C
                B
                A
                (= H G)
                (= J I)
                (= L K)
                (= N M)
                (= P O)
                (= R Q)
                (= T S)
                (= V U)
                (= X W))
           (not (= Y 0)))
       (or (not Z)
           A1
           B1
           (not C1)
           D1
           E1
           (and (not F)
                (not E)
                D
                C
                (not B)
                A
                (= H G)
                (= J I)
                (= L K)
                (= N M)
                (= P O)
                (= R Q)
                (= T S)
                (= V U)
                (= X W))
           (not (<= 0 R)))
       (or Z
           A1
           B1
           (not C1)
           D1
           (not E1)
           (and (not F)
                (not E)
                D
                C
                (not B)
                (not A)
                (= H G)
                (= J I)
                (= L K)
                (= N M)
                (= P O)
                (= R Q)
                (= T S)
                (= V U)
                (= X W))
           (not (= Y 0)))
       (or Z
           A1
           B1
           (not C1)
           (not D1)
           E1
           (and (not F)
                (not E)
                D
                (not C)
                B
                A
                (= H G)
                (= J I)
                (= L K)
                (= N M)
                (= P O)
                (= R Q)
                (= T S)
                (= V U)
                (= X W))
           (not (<= R L)))
       (or Z
           A1
           B1
           C1
           D1
           (not E1)
           (and (not F)
                (not E)
                (not D)
                C
                (not B)
                (not A)
                (= H G)
                (= J I)
                (= L K)
                (= N M)
                (= P O)
                (= R Q)
                (= T S)
                (= V U)
                (= X W))
           (<= L 0))
       (or Z A1 (not B1) (not C1) D1 E1 a!14)
       (or Z
           A1
           (not B1)
           C1
           D1
           E1
           (and (not F)
                E
                (not D)
                (not C)
                (not B)
                A
                (= J I)
                (= L K)
                (= G 0)
                (= N M)
                (= P O)
                (= R Q)
                (= T S)
                (= V U)
                (= X W)))
       (or (not Z)
           A1
           B1
           C1
           D1
           E1
           (and (not F)
                (not E)
                (not D)
                C
                (not B)
                A
                (= H G)
                (= I 0)
                (= L K)
                (= N M)
                (= P O)
                (= R Q)
                (= T S)
                (= V U)
                (= X W)))
       (or Z (not A1) (not B1) (not C1) D1 (not E1) a!1)
       (or Z (not A1) (not B1) (not C1) D1 E1 a!2)
       (or (not Z) (not A1) (not B1) C1 (not D1) (not E1) a!3)
       (or (not Z) (not A1) (not B1) C1 (not D1) E1 a!4)
       (or (not Z)
           (not A1)
           (not B1)
           C1
           D1
           E1
           (and F
                E
                (not D)
                C
                (not B)
                A
                (= H G)
                (= J I)
                (= L K)
                (= N M)
                (= P O)
                (= R Q)
                (= T S)
                (= V U)
                (= X W)))
       (or Z (not A1) (not B1) C1 (not D1) E1 a!6)
       (or (not Z) (not A1) B1 (not C1) (not D1) (not E1) a!8)
       (or (not Z) (not A1) B1 (not C1) (not D1) E1 a!9)
       (or Z
           (not A1)
           B1
           (not C1)
           D1
           (not E1)
           (and F
                (not E)
                D
                C
                (not B)
                (not A)
                (= H G)
                (= J I)
                (= L K)
                (= N M)
                (= P O)
                (= R Q)
                (= T S)
                (= V U)
                (= X W)))
       (or Z (not A1) B1 (not C1) (not D1) (not E1) a!10)
       (or (not Z)
           (not A1)
           B1
           (not C1)
           D1
           (not E1)
           (and F
                (not E)
                D
                (not C)
                B
                (not A)
                (= H G)
                (= J I)
                (= L K)
                (= N M)
                (= P O)
                (= R Q)
                (= T S)
                (= V U)
                (= X W)))
       (or (not Z)
           (not A1)
           B1
           C1
           D1
           E1
           (and F
                (not E)
                (not D)
                C
                (not B)
                A
                (= H G)
                (= J I)
                (= L K)
                (= N M)
                (= P O)
                (= R Q)
                (= T S)
                (= V U)
                (= X W)))
       (or Z
           (not A1)
           B1
           C1
           D1
           E1
           (and F
                (not E)
                (not D)
                (not C)
                (not B)
                A
                (= H G)
                (= J I)
                (= L K)
                (= N M)
                (= P O)
                (= R Q)
                (= T S)
                (= V U)
                (= X W)))
       (or (not Z) A1 (not B1) (not C1) (not D1) E1 a!12)
       (or Z A1 (not B1) (not C1) (not D1) (not E1) a!13)
       (or (not Z)
           A1
           (not B1)
           (not C1)
           D1
           (not E1)
           (and (not F)
                E
                D
                (not C)
                B
                (not A)
                (= H G)
                (= J I)
                (= L K)
                (= N M)
                (= P O)
                (= R Q)
                (= T S)
                (= V U)
                (= X W)))
       (or (not Z)
           A1
           (not B1)
           C1
           (not D1)
           (not E1)
           (and (not F)
                E
                D
                (not C)
                (not B)
                (not A)
                (= H G)
                (= J I)
                (= L K)
                (= N M)
                (= P O)
                (= R Q)
                (= T S)
                (= V U)
                (= X W)))
       (or Z
           A1
           (not B1)
           C1
           (not D1)
           (not E1)
           (and (not F)
                E
                (not D)
                C
                B
                (not A)
                (= H G)
                (= J I)
                (= L K)
                (= N M)
                (= P O)
                (= R Q)
                (= T S)
                (= V U)
                (= X W)))
       (or Z
           A1
           (not B1)
           C1
           D1
           (not E1)
           (and (not F)
                E
                (not D)
                C
                (not B)
                (not A)
                (= H G)
                (= J I)
                (= L K)
                (= N M)
                (= P O)
                (= R Q)
                (= T S)
                (= V U)
                (= X W)))
       (or Z
           A1
           (not B1)
           (not C1)
           (not D1)
           E1
           (and (not F)
                E
                (not D)
                (not C)
                (not B)
                A
                (= H G)
                (= J I)
                (= L K)
                (= N M)
                (= P O)
                (= R Q)
                (= T S)
                (= V U)
                (= X W)))
       (or Z
           A1
           B1
           (not C1)
           (not D1)
           (not E1)
           (and (not F)
                (not E)
                D
                C
                B
                (not A)
                (= H G)
                (= J I)
                (= L K)
                (= N M)
                (= P O)
                (= R Q)
                (= T S)
                (= V U)
                (= X W)))
       (or (not Z)
           A1
           B1
           (not C1)
           D1
           (not E1)
           (and (not F)
                (not E)
                D
                (not C)
                B
                (not A)
                (= H G)
                (= J I)
                (= L K)
                (= N M)
                (= P O)
                (= R Q)
                (= T S)
                (= V U)
                (= X W)))
       (or Z (not A1) B1 (not C1) (not D1) E1 a!15)
       (or Z (not A1) (not B1) C1 (not D1) (not E1) a!15)
       (or (not Z) A1 B1 (not C1) (not D1) (not E1) a!15)
       (or (not Z) (not A1) (not B1) C1 D1 (not E1) a!15)
       (or Z A1 B1 C1 D1 E1 a!16)
       (or (not Z) A1 (not B1) C1 D1 (not E1) a!16)
       (or (not Z) A1 (not B1) (not C1) D1 E1 a!16)
       (or (not Z) (not A1) B1 C1 (not D1) (not E1) a!16)
       (or (not Z) (not A1) (not B1) (not C1) D1 E1 a!16)
       (or (not Z) (not A1) (not B1) (not C1) D1 (not E1) a!16)
       (or (not Z)
           A1
           B1
           C1
           (not D1)
           E1
           (and (not F)
                (not E)
                (not D)
                C
                B
                A
                (= M 0)
                (= H G)
                (= J I)
                (= L K)
                (= P O)
                (= R Q)
                (= T S)
                (= V U)
                (= X W)))
       (or (not Z)
           A1
           B1
           C1
           (not D1)
           (not E1)
           (and (not F)
                (not E)
                D
                (not C)
                (not B)
                (not A)
                (= O L)
                (= H G)
                (= J I)
                (= L K)
                (= N M)
                (= R Q)
                (= T S)
                (= V U)
                (= X W)))
       (or (not Z)
           A1
           B1
           C1
           D1
           (not E1)
           (and (not F)
                (not E)
                (not D)
                (not C)
                B
                (not A)
                (= Q 0)
                (= H G)
                (= J I)
                (= L K)
                (= N M)
                (= P O)
                (= T S)
                (= V U)
                (= X W)))
       (or Z
           A1
           B1
           C1
           (not D1)
           E1
           (and (not F)
                (not E)
                (not D)
                (not C)
                B
                A
                (= S L)
                (= H G)
                (= J I)
                (= L K)
                (= N M)
                (= P O)
                (= R Q)
                (= V U)
                (= X W)))
       (or Z
           A1
           B1
           C1
           (not D1)
           (not E1)
           (and (not F)
                (not E)
                (not D)
                C
                B
                (not A)
                (= U 0)
                (= H G)
                (= J I)
                (= L K)
                (= N M)
                (= P O)
                (= R Q)
                (= T S)
                (= X W)))
       (or (not Z)
           (not A1)
           B1
           C1
           (not D1)
           E1
           (and F
                (not E)
                (not D)
                C
                B
                A
                (= W 5)
                (= H G)
                (= J I)
                (= L K)
                (= N M)
                (= P O)
                (= R Q)
                (= T S)
                (= V U)))
       (or Z
           A1
           B1
           (not C1)
           D1
           E1
           (and (not F)
                (not E)
                D
                (not C)
                (not B)
                A
                (= W 0)
                (= H G)
                (= J I)
                (= L K)
                (= N M)
                (= P O)
                (= R Q)
                (= T S)
                (= V U)))
       (or Z
           A1
           B1
           C1
           D1
           (not E1)
           (and F
                E
                D
                C
                (not B)
                A
                (= H G)
                (= J I)
                (= L K)
                (= N M)
                (= P O)
                (= R Q)
                (= T S)
                (= V U)
                (= X W))
           (not (<= L 0))))))
      )
      (state C A B D E F W U S Q O M K I G)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Bool) (K Bool) (L Bool) (M Bool) (N Bool) (O Bool) ) 
    (=>
      (and
        (state J O N M L K I H G F E D C B A)
        (or (and (not J) (not K) L M N O)
    (and (not J) K (not L) M N O)
    (and (not J) K L (not M) N (not O))
    (and (not J) K L M (not N) (not O))
    (and (not J) K L M (not N) O)
    (and J (not K) L M N (not O))
    (and J K (not L) M N (not O))
    (and J K L (not M) N (not O))
    (and J K L (not M) N O))
      )
      false
    )
  )
)

(check-sat)
(exit)
