#lang racket
(provide (all-defined-out))

;---------- TDA IMAGE ----------.

;----- Constructor -----.
(define (image width height . pixel )
  (list width height pixel))

  
;----- Selectores -----.
(define (get-width lista) (car image))

(define (get-height lista) (cadr image))





;----- Modificadores -----.
