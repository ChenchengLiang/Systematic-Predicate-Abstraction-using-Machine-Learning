(set-logic HORN)

(declare-fun |state| ( Bool Bool Bool Bool Bool Bool Int Int Int Int Int Int Int Int ) Bool)

(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Bool) (E Bool) (F Bool) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) ) 
    (=>
      (and
        (and (= E true) (not D) (not C) (not B) (not A) (not F))
      )
      (state F E D C B A N M L K J I H G)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Bool) (E Bool) (F Bool) (G Bool) (H Bool) (I Bool) (J Bool) (K Bool) (L Bool) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) (T Int) (U Int) (V Int) (W Int) (X Int) (Y Int) (Z Int) (A1 Int) (B1 Int) (C1 Int) ) 
    (=>
      (and
        (state F E D C B A B1 Z X V T R P N)
        (let ((a!1 (and L
                (not K)
                (not J)
                (not I)
                (not H)
                (not G)
                (= N M)
                (= P O)
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)))
      (a!2 (and (not L)
                (not K)
                J
                I
                (not H)
                (not G)
                (= P O)
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= (+ N (* (- 1) M)) (- 1))))
      (a!3 (and (not L)
                K
                J
                I
                H
                (not G)
                (= N M)
                (= P O)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= (+ R (* (- 1) Q)) (- 1))))
      (a!4 (and (not L)
                K
                (not J)
                I
                H
                (not G)
                (= N M)
                (= P O)
                (= R Q)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= (+ X T (* (- 1) S)) 0)))
      (a!5 (and (not L)
                K
                J
                (not I)
                (not H)
                (not G)
                (= N M)
                (= P O)
                (= R Q)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= (+ V T (* (- 1) S)) 0)))
      (a!6 (and (not L)
                K
                (not J)
                (not I)
                H
                G
                (= N M)
                (= P O)
                (= R Q)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= (+ T (* (- 1) S) P) 0)))
      (a!7 (and (not L)
                K
                J
                I
                H
                G
                (= N M)
                (= P O)
                (= R Q)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= (+ T (* (- 1) S)) 1)))
      (a!8 (and (not L)
                (not K)
                (not J)
                (not I)
                (not H)
                (not G)
                (= N M)
                (= P O)
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1))))
  (and (or A (not B) (not C) D (not E) (not F) a!1 (not (<= T 0)))
       (or A
           (not B)
           (not C)
           D
           (not E)
           (not F)
           (and (not L)
                K
                J
                I
                (not H)
                (not G)
                (= N M)
                (= P O)
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1))
           (<= T 0))
       (or A
           (not B)
           (not C)
           D
           E
           (not F)
           (and (not L)
                K
                J
                (not I)
                H
                G
                (= N M)
                (= P O)
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1))
           (<= B1 R))
       (or A
           B
           (not C)
           D
           E
           (not F)
           (and (not L)
                K
                J
                (not I)
                (not H)
                G
                (= N M)
                (= P O)
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1))
           (not (<= B1 N)))
       (or A
           (not B)
           C
           (not D)
           E
           F
           (and (not L)
                K
                (not J)
                I
                H
                G
                (= N M)
                (= P O)
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1))
           (= Z 1))
       (or A
           (not B)
           C
           (not D)
           E
           F
           (and (not L)
                K
                (not J)
                I
                (not H)
                G
                (= N M)
                (= P O)
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1))
           (not (= Z 1)))
       (or A
           (not B)
           C
           D
           (not E)
           F
           (and (not L)
                K
                (not J)
                I
                (not H)
                (not G)
                (= N M)
                (= P O)
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1))
           (= Z 0))
       (or A
           (not B)
           C
           D
           (not E)
           F
           (and (not L)
                K
                (not J)
                (not I)
                H
                (not G)
                (= N M)
                (= P O)
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1))
           (not (= Z 0)))
       (or A
           B
           (not C)
           (not D)
           (not E)
           (not F)
           (and (not L)
                K
                (not J)
                (not I)
                (not H)
                G
                (= N M)
                (= P O)
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1))
           (<= 2 Z))
       (or A
           B
           (not C)
           (not D)
           (not E)
           (not F)
           (and (not L)
                K
                (not J)
                (not I)
                (not H)
                (not G)
                (= N M)
                (= P O)
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1))
           (not (<= 2 Z)))
       (or A
           B
           (not C)
           (not D)
           (not E)
           F
           (and (not L)
                (not K)
                J
                I
                H
                G
                (= N M)
                (= P O)
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1))
           (not (<= 0 Z)))
       (or A
           B
           (not C)
           (not D)
           (not E)
           F
           (and (not L)
                (not K)
                J
                I
                H
                (not G)
                (= N M)
                (= P O)
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1))
           (<= 0 Z))
       (or A
           B
           (not C)
           D
           E
           (not F)
           (and (not L)
                (not K)
                J
                (not I)
                H
                G
                (= N M)
                (= P O)
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1))
           (<= B1 N))
       (or A
           B
           C
           (not D)
           E
           (not F)
           (and (not L)
                (not K)
                J
                (not I)
                (not H)
                (not G)
                (= N M)
                (= P O)
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1))
           (not (<= 0 B1)))
       (or A
           B
           C
           (not D)
           E
           (not F)
           (and (not L)
                (not K)
                (not J)
                I
                H
                G
                (= N M)
                (= P O)
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1))
           (<= 0 B1))
       (or A
           B
           C
           (not D)
           E
           F
           (and (not L)
                (not K)
                (not J)
                I
                H
                (not G)
                (= N M)
                (= P O)
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1))
           (<= 10 B1))
       (or A
           B
           C
           (not D)
           E
           F
           (and (not L)
                (not K)
                (not J)
                I
                (not H)
                G
                (= N M)
                (= P O)
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1))
           (not (<= 10 B1)))
       (or A B (not C) D (not E) (not F) a!2)
       (or A
           B
           (not C)
           D
           (not E)
           F
           (and (not L)
                (not K)
                J
                (not I)
                H
                (not G)
                (= P O)
                (= M 0)
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)))
       (or A (not B) (not C) (not D) (not E) F a!3)
       (or A (not B) C (not D) (not E) F a!4)
       (or A (not B) C (not D) (not E) (not F) a!5)
       (or A (not B) C D E (not F) a!6)
       (or A (not B) (not C) (not D) E (not F) a!7)
       (or (not A) B C D E F a!1)
       (or A
           (not B)
           (not C)
           (not D)
           E
           F
           (and (not L)
                K
                J
                I
                (not H)
                G
                (= N M)
                (= P O)
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)))
       (or A
           (not B)
           (not C)
           (not D)
           (not E)
           (not F)
           (and (not L)
                K
                J
                (not I)
                H
                (not G)
                (= N M)
                (= P O)
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)))
       (or A
           (not B)
           (not C)
           D
           E
           F
           (and (not L)
                K
                (not J)
                I
                H
                (not G)
                (= N M)
                (= P O)
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)))
       (or A
           (not B)
           C
           (not D)
           E
           (not F)
           (and (not L)
                K
                (not J)
                (not I)
                H
                G
                (= N M)
                (= P O)
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)))
       (or A
           (not B)
           C
           D
           (not E)
           (not F)
           (and (not L)
                (not K)
                J
                (not I)
                H
                (not G)
                (= N M)
                (= P O)
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)))
       (or A B C D E F a!8)
       (or A B C (not D) (not E) F a!8)
       (or A B C (not D) (not E) (not F) a!8)
       (or A B (not C) (not D) E (not F) a!8)
       (or A (not B) C D E F a!8)
       (or (not A) B C D (not E) F a!8)
       (or A
           B
           C
           D
           (not E)
           F
           (and (not L)
                (not K)
                (not J)
                (not I)
                H
                (not G)
                (= N M)
                (= O 4000)
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)))
       (or A
           (not B)
           (not C)
           D
           (not E)
           F
           (and (not L)
                K
                J
                (not I)
                H
                (not G)
                (= Q 0)
                (= N M)
                (= P O)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)))
       (or A
           B
           (not C)
           D
           E
           F
           (and (not L)
                (not K)
                J
                (not I)
                (not H)
                G
                (= S 0)
                (= N M)
                (= P O)
                (= R Q)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)))
       (or A
           B
           C
           D
           (not E)
           (not F)
           (and (not L)
                (not K)
                (not J)
                I
                (not H)
                (not G)
                (= U 10000)
                (= N M)
                (= P O)
                (= R Q)
                (= T S)
                (= X W)
                (= Z Y)
                (= B1 A1)))
       (or A
           B
           C
           D
           E
           (not F)
           (and (not L)
                (not K)
                (not J)
                (not I)
                H
                G
                (= W 2000)
                (= N M)
                (= P O)
                (= R Q)
                (= T S)
                (= V U)
                (= Z Y)
                (= B1 A1)))
       (or A
           B
           (not C)
           (not D)
           E
           F
           (and (not L)
                (not K)
                J
                I
                (not H)
                G
                (= Y C1)
                (= N M)
                (= P O)
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= B1 A1)))
       (or A
           (not B)
           (not C)
           D
           E
           (not F)
           (and L
                (not K)
                (not J)
                (not I)
                (not H)
                G
                (= N M)
                (= P O)
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1))
           (not (<= B1 R)))))
      )
      (state H G I J K L A1 Y W U S Q O M)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Bool) (E Bool) (F Bool) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) ) 
    (=>
      (and
        (state F E D C B A N M L K J I H G)
        (and (not E) (not D) (not C) (not B) (= A true) (not F))
      )
      false
    )
  )
)

(check-sat)
(exit)
