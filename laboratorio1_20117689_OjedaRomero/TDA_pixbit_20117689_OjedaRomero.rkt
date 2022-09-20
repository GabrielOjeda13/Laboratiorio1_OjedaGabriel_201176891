#lang racket
(provide (all-defined-out))
;---------- TDA PIXBIT-D ----------.

;----- Constructor -----.
(define (pixbit-d x y bit d)
  (list x y bit d))

;----- Selectores (GET)-----.
;Selector del element x, cordenada x del pixbit.
;Dom: Lista
;Rec: numero (int)
(define (get-x lista) (car lista))

;Selector del element y, cordenada y del pixbit.
;Dom: Lista
;Rec: numero (int)
(define (get-y lista) (cadr lista))

;Selector del element bit, bit (color) del pixbit.
;Dom: Lista
;Rec: numero (int)
(define (get-bit lista) (caddr lista))

;Selector del element d, deph (profundidad) del pixbit.
;Dom: Lista
;Rec: numero (int)
(define (get-d lista) (last lista))


;----- Modificadores (SET) -----.
;Modificador del element x, cordenada x del pixbit.
;Dom: Lista x lista
;Rec: Lista
(define (set-x mi-pixbit new-x)
  (pixbit-d new-x
         (get-y mi-pixbit)
         (get-bit mi-pixbit)
         (get-d mi-pixbit)))

;Modificador del element y, cordenada y del pixbit.
;Dom: Lista x lista
;Rec: Lista
(define (set-y mi-pixbit new-y)
  (pixbit-d (get-x mi-pixbit)
            new-y
            (get-bit mi-pixbit)
            (get-d mi-pixbit)))