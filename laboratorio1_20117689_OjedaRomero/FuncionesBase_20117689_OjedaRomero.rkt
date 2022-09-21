#lang scheme
(provide (all-defined-out))
;Seccion de funciones transversales que se usaran en todos los TDAs

;----- Selectores (GET)-----.
;Selector del element x, cordenada x de cualquier TDA de pixel.
;Dom: Lista
;Rec: numero (int)
(define (get-x lista) (car lista))

;Selector del element y, cordenada y del cualquier pixel.
;Dom: Lista
;Rec: numero (int)
(define (get-y lista) (cadr lista))

;Selector del element d, deph (profundidad) de cualquier TDA de pixel.
;Dom: Lista
;Rec: numero (int)
(define (get-d lista) (last lista))