#lang racket
(provide (all-defined-out))
(require "FuncionesBase_20117689_OjedaRomero.rkt")

;---------- TDA PIXRGB-D ----------.

;----- Constructor -----.
;Función constructora de pixhex, incluye la información de las coordenadas x e y,
;los valores de de r g y b, y de la profundidad.
;Dom: x (int) X y (int) X r (C) X g (C) X b(C) X d (int)
;Rec: pixrgb-d
(define (pixrgb-d x y r g b d)
  (list x y r g b d))

;----- Selectores (GET)-----.
;Selector del element r, numero del 0 al 255 del pixrgb.
;Dom: Lista
;Rec: numero (int)
(define (get-r lista) (caddr lista))

;Selector del element g, numero del 0 al 255 del pixrgb.
;Dom: Lista
;Rec: numero (int)
(define (get-g lista) (cadddr lista))

;Selector del element b, numero del 0 al 255 del pixrgb.
;Dom: Lista
;Rec: numero (int)
(define (get-b lista) (car(cdr(cdddr lista))))

;----- Modificadores (SET) -----.
;Modificador del element x, cordenada x del pixrgb.
;Dom: Lista x Int
;Rec: Lista
(define (set-xrgb mi-pixrgb new-x)
  (pixrgb-d new-x
            (get-y mi-pixrgb)
            (get-r mi-pixrgb)
            (get-g mi-pixrgb)
            (get-b mi-pixrgb)
            (get-d mi-pixrgb)))

;Modificador del element y, cordenada y del pixrgb.
;Dom: Lista x Int
;Rec: Lista
(define (set-yrgb mi-pixrgb new-y)
  (pixrgb-d (get-x mi-pixrgb)
            new-y
            (get-r mi-pixrgb)
            (get-g mi-pixrgb)
            (get-b mi-pixrgb)
            (get-d mi-pixrgb)))


;Modificador del element r, numero del 0 al 255 del pixrgb.
;Dom: Lista x int
;Rec: Lista
(define (set-rrgb mi-pixrgb new-r)
  (pixrgb-d (get-x mi-pixrgb)
            (get-y mi-pixrgb)
            new-r
            (get-g mi-pixrgb)
            (get-b mi-pixrgb)
            (get-d mi-pixrgb)))

;Modificador del element g, numero del 0 al 255 del pixrgb.
;Dom: Lista x int
;Rec: Lista
(define (set-grgb mi-pixrgb new-g)
  (pixrgb-d (get-x mi-pixrgb)
            (get-y mi-pixrgb)
            (get-r mi-pixrgb)
            new-g
            (get-b mi-pixrgb)
            (get-d mi-pixrgb)))

;Modificador del element b, numero del 0 al 255 del pixrgb.
;Dom: Lista x int
;Rec: Lista
(define (set-brgb mi-pixrgb new-b)
  (pixrgb-d (get-x mi-pixrgb)
            (get-y mi-pixrgb)
            (get-r mi-pixrgb)
            (get-g mi-pixrgb)
            new-b
            (get-d mi-pixrgb)))

;Modificador del element d, profundiad del pixrgb.
;Dom: Lista x int
;Rec: Lista
(define (set-drgb mi-pixrgb new-d)
  (pixrgb-d (get-x mi-pixrgb)
            (get-y mi-pixrgb)
            (get-r mi-pixrgb)
            (get-g mi-pixrgb)
            (get-b mi-pixrgb)
            new-d))

;Función de pertenencia que valida si un pixels es de tipo pixhex.
;Dom: Pixels
;Rec: Booleano
;Para no anidar todas las condiciones en puros "and", se valida con el "cond" las negaciones de las condiciones
;que se utilizan para que el pixel no sea pixrgb, de esta manera recorre todas las condicionales,
;y si no cabe en ninguna significa que cumple para ser pixrgb.
(define pixrgb?(lambda(pixels)
    (cond
      [(empty? pixels)#f]
      [(not(equal?(length pixels)2))#f]
      [(not(equal?(length(cadr pixels))))#f]
      [(not(number?(car(car pixels))))#f]
      [(not(number?(cadr(car pixels))))#f]
      [(not(number?(fourth(cadr pixels))))#f]
      [(not(or(<=(car(cadr pixels))255(>=(car(cadr pixels))0))))#f]
      [(not(or(<=(cadr(cadr pixels))255(>=(cadr(cadr pixels))0))))#f]
      [(not(or(<=(caddr(cadr pixels))255(>=(caddr(cadr pixels))0))))#f]
      [else #t])))






