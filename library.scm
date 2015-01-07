(define (append L1 L2)
  (cond ((null? L1) L2)
        (else (cons (car L1)  (append (cdr L1) L2)))
        ))
		
(define (map f L)
   (cond ((null? L) '())
         (else (cons (f (car L)) (map f (cdr L))))))	


(define (assoc var L1)
	(cond ((null? L1) #f)
	((eq? var (car (car L1))) (car L1))
	(else (assoc var (cdr L1)))))
	
(define (equal? L1 L2)
  (cond ((and (pair? L1) (pair? L2)) (and (equal? (car L1) (car L2))
                                          (equal? (cdr L1) (cdr L2))))
        (else (eq? L1 L2))))	

(define ( not exp )
		( if exp #f #t ))	

(define (and x y)
  (if x y #f))	
  
(define (or x y)
  (if x #t y))  
  
(define ( caar L )
		( car ( car L) ))  

(define ( cadr L )
		(car (cdr L)))
		
(define ( cdar L )
		( cdr ( car L )))
		
(define ( cddr L)
		( cdr ( cdr L )))
		
(define	( cadar L )
		( car ( cdr ( car L ))))
		
(define ( caddr L )
		( car ( cdr ( cdr L ))))
		
(define ( cadddr L )
		( car ( cdr ( cdr ( cdr L )))))
		
		
		 
  

		 
