#lang play

;random-list: number -> list of random numbers
(define (random-list n)
  (if (= n 0) empty
      (cons (random 0 10000) (random-list (- n 1))))
      )

;selectionSort: list -> sortedList
(define (selectionSort list)
  (if (empty? list) list
  (let [(m (foldl (λ (a b) (min a b)) (first list) list))]
  (cons m (selectionSort (remove m list))))
  ))

;run
(display (selectionSort (random-list 10)))


