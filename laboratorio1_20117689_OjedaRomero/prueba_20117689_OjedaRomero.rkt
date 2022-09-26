#lang racket
(provide (all-defined-out))
(require "main_20117689_OjedaRomero.rkt")
(require "TDA_image_20117689_OjedaRomero.rkt")
(require "TDA_pixbit_20117689_OjedaRomero.rkt")
(require "TDA_pixhex_20117689_OjedaRomero.rkt")
(require "TDA_pixrgb_20117689_OjedaRomero.rkt")
(require "FuncionesBase_20117689_OjedaRomero.rkt")

;---------- Scrip de Pruebas ----------.

;---- Scrip Enunciado ----.
;Creación de una imagen de 2 x 2 del tipo pixmap
(define img1 (image 2 2
                  (pixrgb-d 0 0 255 0 0 10)
                  (pixrgb-d 0 1 0 255 0 20)
                  (pixrgb-d 1 0 0 0 255 10)
                  (pixrgb-d 1 1 255 255 255  1)))

(define img2 (image 2 2
                  (pixbit-d 0 0 0 10)
                  (pixbit-d 0 1 1 20)
                  (pixbit-d 1 0 1 10)
                  (pixbit-d 1 1 0 255))
 )
;(display (image->string img1 pixrgb->string)

;(define img3 (imgRGB->imgHex img1))

(bitmap? img1) ; la respuesta debería ser #f
(bitmap? img2)  ; la respuesta debería ser #t
;(bitmap? img3)  ; la respuesta debería ser #f

(pixmap? img1) ; la respuesta debería ser #t
(pixmap? img2)  ; la respuesta debería ser #f
;(pixmap? img3)  ; la respuesta debería ser #f

(hexmap? img1) ; la respuesta debería ser #f
(hexmap? img2)  ; la respuesta debería ser #f
;(hexmap? img3)  ; la respuesta debería ser #t

;(compressed? img1) ; la respuesta debería ser #f
;(compressed? img2) ; la respuesta debería ser #f
;(compressed? img3) ; la respuesta debería ser #f

(flipH img1)
(flipH img2)
;(flipH img3)

(flipV img1)
(flipV img2)
;(flipV img3)

