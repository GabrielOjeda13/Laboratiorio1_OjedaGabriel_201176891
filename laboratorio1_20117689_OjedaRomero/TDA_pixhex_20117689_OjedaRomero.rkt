#lang racket
(provide (all-defined-out))
(require "FuncionesBase_20117689_OjedaRomero.rkt")

;---------- TDA PIXHEX-D ----------.

;----- Constructor -----.
;Función constructora de pixhex, incluye la información de las coordenadas x e y,
;el valor en hexadecimal, y la profundidad.
;Dom: x (int) X y (int) X hex(String) X d (int)
;Rec: pixhex-d
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
(define (set-hex mi-pixhex new-hex)
  (pixhex-d (get-x mi-pixhex)
            (get-y mi-pixhex)
            new-hex
            (get-d mi-pixhex)))


;Función de pertenencia que valida si un pixels es de tipo pixhex.
;Dom: Pixels
;Rec: Booleano
;Para no anidar todas las condiciones en puros "and", se valida con el "cond" las negaciones de las condiciones
;que se utilizan para que el pixel no sea pixhex, de esta manera recorre todas las condicionales,
;y si no cabe en ninguna significa que cumple para ser pixhex.
(define pixhex?(lambda(pixels)
    (cond
      [(empty? pixel)#f]
      [(not(number?(car(car pixels))))#f]
      [(not(number?(cadr(car pixels))))#f]
      [(not(number?(cadr(car pixels))))#f]
      [(not(equal?(length pixels)2))#f]
      [(not(equal?(length(cadr pixels))2))#f]
      [(not(equal?(string-length(car(cadr pixels)))6))#f]
      [(not(string?(car(cadr pixels))))#f]
      [else #t])))


