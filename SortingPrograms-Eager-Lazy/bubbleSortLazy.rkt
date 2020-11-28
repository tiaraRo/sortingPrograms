#lang lazy

;random-list: number -> list of random numbers
(define (random-list n)
  (if (= n 0) empty
      (cons (random 0 10000) (random-list (- n 1))))
      )

;bubblesort
(define (bubblesort lista) 
   (cond
     ((null? (cdr lista)) lista)
     ((> (car lista) (cadr lista)) 
           (cons (cadr lista) (bubblesort (cons (car lista) (cdr (cdr lista))))) 
     )
     (else (cons (car lista) (bubblesort (cdr lista))) 
     )
   )
)

;actualsort
(define (actualsort listb size)
  (if (eq? size 1)
         (bubblesort listb) 
        (actualsort (bubblesort listb) (- size 1)) 
        )
)
;actualsort2
(define (actualsort2 listf)
  (actualsort listf (length listf))
  )

;run
(display (actualsort2 (random-list 10)))
