#lang racket
(provide (all-defined-out))
(require "FuncionesBase_20117689_OjedaRomero.rkt")

;---------- TDA PIXBIT-D ----------.

;----- Constructor -----.
;Función constructora de pixbit, incluye la información de las coordenadas, bit y de la profundidad.
;Dom: x (int) X y (int) X bit ([0|1]) X depth (int))
;Rec: pixbit-d
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

;Función de pertenencia que valida si un pixels es de tipo pixbit.
;Dom: Pixels
;Rec: Booleano
;Para no anidar todas las condiciones en puros "and", se valida con el "cond" las negaciones de las condiciones
;que se utilizan para que el pixel no sea pixbit, de esta manera recorre todas las condicionales,
;y si no cabe en ninguna significa que cumple para ser pixbit.
(define pixbit?(lambda(pixels)
    (cond
      [(empty? pixels)#f]
      [(not(number?(car(car pixels))))#f]
      [(not(number?(cadr(car pixels))))#f]
      [(not(number?(cadr(cadr pixels))))#f]
      [(not(or(equal?(car(cadr pixels))0 equal?(car(cadr pixels))1)))#f]
      [(not(=(length pixels)2))#f]
      [(not(=(length(cadr pixels))2))#f]
      [else #t])))


