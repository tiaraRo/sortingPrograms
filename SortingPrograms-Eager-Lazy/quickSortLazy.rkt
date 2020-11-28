#lang lazy

;random-list: number -> list of random numbers
(define (random-list n)
  (if (= n 0) empty
      (cons (random 0 10000) (random-list (- n 1))))
      )

;quickSort: list -> sortedList
(define (quickSort list)
  (cond [(empty? list) list]
        [(= 1 (length list)) list]
        [else (let [(pivot (first list))]
                (append (quickSort (filter (lambda (x) (< x pivot)) (rest list)))
                        (cons pivot empty)
                        (quickSort (filter (lambda (x) (>= x pivot)) (rest list)))))]))

;run
(display (quickSort (random-list 10)))
