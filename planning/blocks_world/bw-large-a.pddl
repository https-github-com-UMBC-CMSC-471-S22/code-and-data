;;; bw-large-a
;;;
;;; Initial:  B3/B2/B1   B5/B4   B9/B8/B7/B6
;;; Goal:     B1/B5     B8/B9/B4/    B2/B3/B7/B6
;;; Length: twelve

(define (problem bw-large-a)
  (:domain bw)
  (:objects B1 B2 B3 B4 B5 B6 B7 B8 B9)
  (:init (arm-empty)
	 (on B3 B2)
	 (on B2 B1)
	 (on-table B1)
	 (on B5 B4)
	 (on-table B4)
	 (on B9 B8)
	 (on B8 B7)
	 (on B7 B6)
	 (on-table B6)
	 (clear B3)
	 (clear B5)
	 (clear B9))
  (:goal (and
	  (on B1 B5)
	  (on-table B5)
	  (on B8 B9)
	  (on B9 B4)
	  (on-table B4)
	  (on B2 B3)
	  (on B3 B7)
	  (on B7 B6)
	  (on-table B6)
	  (clear B1)
	  (clear B8)
	  (clear B2)
	  )))
