#lang racket
(provide (all-defined-out))
(require "FuncionesBase_20117689_OjedaRomero.rkt")
(require "TDA_pixbit_20117689_OjedaRomero.rkt")
(require "TDA_pixhex_20117689_OjedaRomero.rkt")
(require "TDA_pixrgb_20117689_OjedaRomero.rkt")

;---------- TDA IMAGE ----------.

;----- Constructor -----.
;Función constructora de imagenes, ya sea bitmaps, hexmaps o pixmaps que incluye la información de la profundidad.
;Dom: Width (int) X Height (int) X [pixbit-d* |  pixrgb-d* | pixhex-d*]
;Rec: image
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

;Selector del element pixel, pixel de la imagen.
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

;Función que permite determinar si la imagen corresponde a un bitmap-d.
;Utiliza la funcion pixbit? del TDA pixbit para validar los pixeles de la imagen bitmap.
;Dom: image
;Rec: boolean
(define bitmap?(lambda(imagen)
    (if(andmap pixbit? (get-pixels imagen))
       #t
       #f)))

;Función que permite determinar si la imagen corresponde a un pixmap-d.
;Utiliza la funcion pixrgb? del TDA pixbit para validar los pixeles de la imagen bitmap.
;Dom: image
;Rec: boolean
(define pixmap?(lambda(imagen)
    (if(andmap pixrgb?(get-pixels imagen))
       #t
       #f)))

;Función que permite determinar si la imagen corresponde a un hexmap-d.
;Utiliza la funcion pixrgb? del TDA pixbit para validar los pixeles de la imagen bitmap.
;Dom: image
;Rec: boolean
(define hexmap?(lambda(imagen)
    (if(andmap pixhex?(get-pixels imagen))
       #t
       #f)))



















