#lang racket
(provide (all-defined-out))


(define (game jugadores setCartas mode rndFn)
  (list jugadores setCartas mode rndFn)
  )

;Selector : 
;Dom: Lista x lista
;Rec: Lista
(define (getJugadores jugadores)
  (cadr jugadores)
  )
;Selector : 
;Dom: Lista x lista
;Rec: Lista
(define (getsetCartas setCartas)
  (caddr setCartas)
  )
;Selector : 
;Dom: Lista x lista
;Rec: Lista
(define (getMode mode)
  (cadddr mode)
  )
;Selector : 
;Dom: Lista x lista
;Rec: Lista
(define (getRndFn rndFn)
  (cadddr(cdr rndFn))
  )

