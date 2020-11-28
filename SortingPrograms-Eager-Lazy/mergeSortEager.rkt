#lang play

;random-list: number -> list of random numbers
(define (random-list n)
  (if (= n 0) empty
      (cons (random 0 10000) (random-list (- n 1))))
      )

;merge: list1, list2 -> mergedSortedList
(define (merge list1 list2)
    (cond
      [(empty? list1) list2]
      [(empty? list2) list1]  
      [else (if (< (car list1) (car list2))
                (cons (car list1) (merge (cdr list1) list2))
                (cons (car list2) (merge list1 (cdr list2)))
             )]
     )
  )

;mergesort-num: list -> sortedList
(define (mergesort-num list)
  (if (<= (length list) 1) 
       list
       (let
          ([pivote (quotient (length list) 2)])
          (merge (mergesort-num (take list pivote)) (mergesort-num (drop list pivote)))
       )
   ) 
)

;run
(display (mergesort-num (random-list 10)))

