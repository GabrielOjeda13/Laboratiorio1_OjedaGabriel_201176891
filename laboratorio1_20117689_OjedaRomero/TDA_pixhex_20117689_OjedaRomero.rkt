#lang racket
;----- Constructor -----.
(define (pixhex-d x y hex d)
  (list x y r g b d))

;----- Selectores (GET)-----.
;Selector del element x, cordenada x del pixhex.
;Dom: Lista
;Rec: numero (int)
;(define (get-x lista) (car lista))

;Selector del element y, cordenada y del pixhex.
;Dom: Lista
;Rec: numero (int)
;(define (get-y lista) (cadr lista))

;Selector del element hex, numera hexadecimal en formato string del pixhex.
;Dom: Lista
;Rec: numero (int)
(define (get-hex lista) (caddr lista))

;Selector del element d, deph (profundidad) del pixhex.
;Dom: Lista
;Rec: numero (int)
;(define (get-d lista) (cadddr lista))


;----- Modificadores (SET) -----.
;Modificador del element hex, numera hexadecimal en formato string del pixhex
;Dom: Lista x lista
;Rec: Lista
