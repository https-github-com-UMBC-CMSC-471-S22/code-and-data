(define (problem bw-12step)           ; graphplan 12 steps
  ;; Relatively hard. Requires 12 steps and takes graphplan 20 seconds.
  (:domain bw)
  (:length (:parallel 12) (:serial 12))
  (:objects A B C D E F G)
  (:init (on-table A) (clear A)
	 (on-table B) (clear B)
	 (on-table G)
	 (on F G)
	 (on E F)
	 (on D E)
	 (on C D) (clear C)
	 (arm-empty))
  (:goal (and (on B C) (on-table A) (on F A) (on C D)))
  )
