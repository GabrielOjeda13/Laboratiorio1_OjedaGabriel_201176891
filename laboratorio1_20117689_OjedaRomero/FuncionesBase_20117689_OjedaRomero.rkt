#lang racket
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


;----- Modificadores (SET) -----.
;Tipo Recursión: Recursión Natural
;Función que invierte los valores de la coordenada x de un pixel, dado un valor.
;Dominio: Int X Lista X Lista
;Recorrido: Pixels
(define (flip-x width pixels xinvert)
  (if (null? (cdr pixels))
      (list (xinvert [car pixels] [- width (car (car pixels))] ))
      (append (list (xinvert [car pixels] [- width (car (car pixels))] )) (flip-x width (cdr pixels) xinvert))))

;Tipo Recursión: Recursión Natural
;Función que invierte los valores de la coordenada y de un pixel, dado un valor.
;Dominio: Int X Lista X Lista
;Recorrido: Pixels
(define (flip-y height pixels yinvert)
  (if (null? (cdr pixels))
      (list (yinvert [car pixels] [- height (cadr(car pixels))] ))
      (append (list (yinvert [car pixels] [- height (cadr(car pixels))] )) (flip-y height (cdr pixels) yinvert))))