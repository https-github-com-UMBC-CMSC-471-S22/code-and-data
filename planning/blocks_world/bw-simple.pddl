;; a on b => a on table

(define (problem bw-simple)
  (:domain bw)
  (:objects a b )
  (:init (clear a) (arm-empty) (on a b) (on-table b))
  (:goal (and (on-table a) (clear b))))
