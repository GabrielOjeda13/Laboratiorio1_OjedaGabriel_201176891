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
;Dom: Lista x Int
;Rec: Lista
(define (set-width mi-image new-width)
  (image new-width
         (get-height mi-image)
         (get-pixels mi-image)))

;Modificador del element height, largo de la imagen.
;Dom: Lista x Int
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
;Utiliza la funcion pixrgb? del TDA pixrgb para validar los pixeles de la imagen pixmap.
;Dom: image
;Rec: boolean
(define pixmap?(lambda(imagen)
    (if(andmap pixrgb?(get-pixels imagen))
       #t
       #f)))

;Función que permite determinar si la imagen corresponde a un hexmap-d.
;Utiliza la funcion pixhex? del TDA pixhex para validar los pixeles de la imagen hexmap.
;Dom: image
;Rec: boolean
(define hexmap?(lambda(imagen)
    (if(andmap pixhex?(get-pixels imagen))
       #t
       #f)))

;Función que permite invertir una imágen horizontalmente.
;Primero se debe validar el tipo de imagen para utilizar el selector que corresponda a cada tipo de imagen.
;Luego enlista los valores de la imagen y llama a la funcion flip-x que invierte los valores de la coordenada x de manera recursiva.
;Dominio: image
;Recorrido: image
(define (flipH imagen)
  (cond
    [(pixmap? imagen) (list (get-width imagen) (get-height imagen) (flip-x (get-width imagen) (get-pixels imagen) set-xrgb))]
    [(bitmap? imagen) (list (get-width imagen) (get-height imagen) (flip-x (get-width imagen) (get-pixels imagen) set-xbit))]
    [(hexmap? imagen) (list (get-width imagen) (get-height imagen) (flip-x (get-width imagen) (get-pixels imagen) set-xhex))]
    [else #f]))


;Función que permite invertir una imágen Verticalmente.
;Primero se debe validar el tipo de imagen para utilizar el selector que corresponda a cada tipo de imagen.
;Luego enlista los valores de la imagen y llama a la funcion flip-y que invierte los valores de la coordenada y de manera recursiva.
;Dominio: image
;Recorrido: image
(define (flipV imagen)
  (cond
    [(pixmap? imagen) (list (get-width imagen) (get-height imagen) (flip-y (get-width imagen) (get-pixels imagen) set-yrgb))]
    [(bitmap? imagen) (list (get-width imagen) (get-height imagen) (flip-y (get-width imagen) (get-pixels imagen) set-ybit))]
    [(hexmap? imagen) (list (get-width imagen) (get-height imagen) (flip-y (get-width imagen) (get-pixels imagen) set-yhex))]
    [else #f]))













