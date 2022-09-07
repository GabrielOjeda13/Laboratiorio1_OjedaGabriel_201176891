#lang racket
(provide (all-defined-out))

;---------- TDA IMAGE ----------.

;----- Constructor -----.

(define (image width height . pixels )
  (list width height pixels))

  
;----- Selectores (GET)-----.
;Selector del element width, ancho de la imagen.
;Dom: Lista
;Rec: numero (int)
(define (get-width lista) (car lista))

;Selector del element height, largo de la imagen.
;Dom: Lista
;Rec: numero (int)
(define (get-height lista) (cadr lista))

;Selector del element pixel, pixel de la iamgen.
;Dom: Lista
;Rec: Lista
(define (get-pixels lista) (caddr lista))



;----- Modificadores (SET) -----.
;Modificador del element width, ancho de la imagen.
;Dom: Lista x lista
;Rec: Lista
(define (set-width mi-image new-width)
  (image new-width
         (get-height mi-image)
         (get-pixels mi-image)))

;Modificador del element height, largo de la imagen.
;Dom: Lista x lista
;Rec: Lista
(define (set-height mi-image new-height)
  (image (get-width mi-image)
         new-height
         (get-pixels mi-image)))