;; The arm is empty and there are two blocks, a read block A that's
;; on a blue block B.  ensure that all of the red blocks are on the
;; table.

(define (problem red_on_blue)
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
  (:goal (forall (?x) (imply (color ?x red)
                             (exists (?y) 
                                (and (color ?y blue) 
                                     (on ?x ?y)))))))
                                     
                                     


  



