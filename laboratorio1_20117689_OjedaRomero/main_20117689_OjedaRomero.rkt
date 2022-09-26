 #lang racket
(provide (all-defined-out))
(require "TDA_image_20117689_OjedaRomero.rkt")
(require "TDA_pixbit_20117689_OjedaRomero.rkt")
(require "TDA_pixhex_20117689_OjedaRomero.rkt")
(require "TDA_pixrgb_20117689_OjedaRomero.rkt")
(require "FuncionesBase_20117689_OjedaRomero.rkt")

; ------ FUNCION MAIN -------.

;Bloque de modificadores (Funciones) que aplican para el TDA image y en consiguiente los TDAs de cada pixels.

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
