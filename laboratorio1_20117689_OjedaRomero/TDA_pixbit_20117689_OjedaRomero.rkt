#lang racket
(provide (all-defined-out))
(require "FuncionesBase_20117689_OjedaRomero.rkt")

;---------- TDA PIXBIT-D ----------.

;----- Constructor -----.
(define (pixbit-d x y bit d)
  (list x y bit d))

;----- Selectores (GET)-----.
;Selector del element bit, bit (color) del pixbit.
;Dom: Lista
;Rec: numero (int)
(define (get-bit lista) (caddr lista))


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


