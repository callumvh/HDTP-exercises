  #lang htdp/bsl+

  (require 2htdp/batch-io)
  (require 2htdp/image)
  (require 2htdp/universe)

  (write-file "calInput.txt" "212")

  (define (C f)
    (* 5/9 (- f 32)))

  (define (convert in out)
    (write-file out
                (string-append
                (number->string
                  (C
                  (string->number
                    (read-file in))))
                "\n")))

  (convert "calInput.txt" "calOutput.txt")


  (define (number->square s)
    (square s "solid" "red"))

  (number->square 5)

#| (big-bang 100 [to-draw number->square]) |#

(big-bang 100
    [to-draw number->square]
    [on-tick sub1]
    [stop-when zero?])
