#lang racket
(provide (all-defined-out))
(require "FuncionesBase_20117689_OjedaRomero.rkt")

;---------- TDA PIXRGB-D ----------.

;----- Constructor -----.
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
(define (get-b lista) (car(cdddr lista)))

;----- Modificadores (SET) -----.
;Modificador del element r, numero del 0 al 255 del pixrgb.
;Dom: Lista x lista
;Rec: Lista
(define (set-r mi-pixrgb new-r)
  (pixrgb-d (get-x mi-pixrgb)
            (get-y mi-pixrgb)
            new-r
            (get-g mi-pixrgb)
            (get-b mi-pixrgb)
            (get-d mi-pixrgb)))

;Modificador del element g, numero del 0 al 255 del pixrgb.
;Dom: Lista x lista
;Rec: Lista
(define (set-g mi-pixrgb new-g)
  (pixrgb-d (get-x mi-pixrgb)
            (get-y mi-pixrgb)
            (get-r mi-pixrgb)
            new-g
            (get-b mi-pixrgb)
            (get-d mi-pixrgb)))

;Modificador del element b, numero del 0 al 255 del pixrgb.
;Dom: Lista x lista
;Rec: Lista
(define (set-b mi-pixrgb new-b)
  (pixrgb-d (get-x mi-pixrgb)
            (get-y mi-pixrgb)
            (get-r mi-pixrgb)
            (get-g mi-pixrgb)
            new-b
            (get-d mi-pixrgb)))

