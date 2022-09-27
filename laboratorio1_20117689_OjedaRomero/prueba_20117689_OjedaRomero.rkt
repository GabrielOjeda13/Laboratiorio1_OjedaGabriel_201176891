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
(display "SCRIP ENUNCIADO\n")

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

;(display img1)
(flipH img1)
(flipH img2)
;(flipH img3)

(flipV img1)
(flipV img2)
;(flipV img3)


;---- SCRIP SOLICITADO ----.
(display "\n--------------- SCRIP SOLICITADO ---------------\n")

(display "\nCreación de Imagenes, 1 de cada tipo\n")
;Creación de una imagen de 2 x 2 del tipo pixmap
(define imga1 (image 2 2
                  (pixrgb-d 0 0 215 215 125 14)
                  (pixrgb-d 0 1 0 255 0 23)
                  (pixrgb-d 1 0 0 0 255 45)
                  (pixrgb-d 1 1 0 0 0  1)))
(display "\nIMAGEN 1 - RGB\n")
(display imga1)
(display "\n")

;Creación de una imagen de 2 x 2 del tipo pixbit.
(define imga2 (image 2 2
                  (pixbit-d 0 0 1 0)
                  (pixbit-d 0 1 0 50)
                  (pixbit-d 1 0 0 100)
                  (pixbit-d 1 1 1 150))
 )

(display "\nIMAGEN 2 - BIT\n")
(display imga2)
(display "\n")

;Creación de una imagen de 2 x 2 del tipo pixbit.
(define imga3 (image 2 2
                  (pixhex-d 0 0 "00000D" 10)
                  (pixhex-d 0 1 "13AB85" 20)
                  (pixhex-d 1 0 "00000A" 10)
                  (pixhex-d 1 1 "000002" 255))
 )

(display "\nIMAGEN 3 - HEX\n")
(display imga3)
(display "\n")

(display "\nSe valida si es de tipo RGB cada imagen en su orden correspondiente de creación\n")
(pixmap? imga1) ; la respuesta debería ser #t
(pixmap? imga2)  ; la respuesta debería ser #f
(pixmap? imga3)  ; la respuesta debería ser #f

(display "\nSe valida si es de tipo BIT cada imagen en su orden correspondiente de creación\n")
(bitmap? imga1) ; la respuesta debería ser #f
(bitmap? imga2)  ; la respuesta debería ser #t
(bitmap? imga3)  ; la respuesta debería ser #f


(display "\nSe valida si es de tipo  HEX cada imagen en su orden correspondiente de creación\n")
(hexmap? imga1) ; la respuesta debería ser #f
(hexmap? imga2)  ; la respuesta debería ser #f
(hexmap? imga3)  ; la respuesta debería ser #t

;(compressed? img1) ; la respuesta debería ser #f
;(compressed? img2) ; la respuesta debería ser #f
;(compressed? img3) ; la respuesta debería ser #f

(display "\nSe invierten Horizontalmente las 3 imagenes\n")
(flipH imga1)
(flipH imga2)
(flipH imga3)

(display "\nSe invierten Verticalmente las 3 imagenes\n")
(flipV imga1)
(flipV imga2)
(flipV imga3)