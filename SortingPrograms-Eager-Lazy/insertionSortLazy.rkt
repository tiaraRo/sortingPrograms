#lang lazy

;random-list: number -> list of random numbers
(define (random-list n)
  (if (= n 0) empty
      (cons (random 0 10000) (random-list (- n 1))))
      )

;insert
(define (insert n lon)
    (cond
        [(empty? lon) (cons n lon)] 
        [(<= n (first lon)) (cons n lon)] 
        (else 
            (cons (first lon) (insert n (rest lon))) )))


;insertion-sort: list -> sortedList
(define (insertion-sort listb)
  (if (empty? listb)
      listb
      (insert (first listb) (insertion-sort (rest listb)))))

;run
 (display (insertion-sort (random-list 10)))