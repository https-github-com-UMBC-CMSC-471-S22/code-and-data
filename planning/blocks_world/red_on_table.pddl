;; The arm is empty and there are three blocks, a blue block A that's
;; on a rad block B that's on a green block C.  ensure that all of the red blocks are on the
;; table.

(define (problem red_on_table)
  (:requirements strips)
  (:domain bw)
  (:objects A B C)
  (:init (arm-empty)
         (color A blue)
  	     (on A B)
	     (clear A)
         (color B red)
         (on B C)
         (color C green)
    	 (on-table C))
  (:goal (forall (?x) (imply (color ?x red) (on-table ?x)))))

  