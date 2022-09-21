#lang racket
(provide (all-defined-out))
(require "FuncionesBase_20117689_OjedaRomero.rkt")

;---------- TDA PIXHEX-D ----------.

;----- Constructor -----.
(define (pixhex-d x y hex d)
  (list x y hex d))

;----- Selectores (GET)-----.
;Selector del element hex, numera hexadecimal en formato string del pixhex.
;Dom: Lista
;Rec: numero (int)
(define (get-hex lista) (caddr lista))

;----- Modificadores (SET) -----.
;Modificador del element hex, numera hexadecimal en formato string del pixhex
;Dom: Lista x lista
;Rec: Lista
