;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-lambda-reader.ss" "lang")((modname assignment-racket11) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(require 2htdp/image)
(require spd/tags)

;; In our quest to populate the universe, a group of astronauts are stationed
;; on another planet in our galaxy. On the planet, rivers function differently
;; than they do on earth. On the planet rivers there are interconnected in a
;; variety of ways. For instance,  while river A cannot flow into itself, River
;; A can flow into River B, and River B can flow into River A. In addition,
;; some rivers may not flow into any other river.

;; Note that they are fictional rivers that exist on some other planet in our
;; galaxy, they are not representative of how rivers behave on Earth.

;; Below is a partial data definition of a river. Before you begin working
;; on the problems, it is imperative that you draw out the fish river network
;; on paper so as to aid your understanding of the data.
;;



(@htdd River)
(define-struct river (name bac? size dest fishes))
;; River is (make-river String Boolean Natural (listof River) (listof String))
;; interp. a river with a name, whether it contains harmful bacteria or not,
;;         the size of the river in kilometers squared, a list of other rivers
;;         that it flows into and a list of fish species that live in it. 

(define LOS-MT empty)
(define LOS1 (list "dace" "barbel" "bream"))
(define LOS2 (list "dace" "carp" "salmon"))
(define LOS3 (list "salmon" "catfish"))
(define LOS4 (list "bream"))

(define RFN
  (shared ((-YAM- (make-river "Yammarhead" false 2000
                              (list -FRA- -MAC- -OTT-) LOS1))
           (-FRA- (make-river "Frambone" true 1000 (list -PEA- -OTT-) LOS2))
           (-MAC- (make-river "Macnuff" true 1530 (list -OTT-) LOS3))
           (-ASB- (make-river "Asbonny" false 6781 (list -MAC- -PEA-) LOS1))
           (-PEA- (make-river "Peakin" true 3411 (list -YAM-) empty))
           (-OTT- (make-river "Otterhand" false 2198 (list -LIA-) LOS3))
           (-LIA- (make-river "Liaskone" true 1515 (list -BEA- -MAC-) LOS4))
           (-BEA- (make-river "Beagripe" true 2991 empty empty)))

    (list -YAM- -FRA- -MAC- -ASB- -PEA- -OTT- -LIA- -BEA-)))


(define YAM (first RFN))
(define FRA (list-ref RFN 1))
(define MAC (list-ref RFN 2))
(define ASB (list-ref RFN 3))
(define PEA (list-ref RFN 4))
(define OTT (list-ref RFN 5))
(define LIA (list-ref RFN 6))
(define BEA (list-ref RFN 7))

          
(@problem 1)
;;
;; Complete the data definition so that it includes a template for a function
;; that consumes a River. In other words, write out the encapsulated template
;; for operating on a River graph.
;; 




(@problem 2)
;;
;; Design a function that consumes a River and fish species and produces a list
;; of the names of rivers reachable from the original river that have that kind
;; of fish in them. The function should be tail-recursive.
;;
(@htdf names-with-fish)
(@signature River String -> (listof String))
;; produce the names of rivers that have the given fish species

(define (names-with-fish r species) empty)



(@problem 3)
;;
;; Design a function that consumes a River to start at, a destination river's
;; name, and a minimum number of fish species and determines if there is a path
;; to the given river name in which all rivers on the path has at least the
;; minimum number of fish species. The function should be tail-recursive.
;;

(@htdf river-reachable?)
(@signature River String Natural -> Boolean)
;; produce true if dest is reachable from r0 & all rivers on route >=n species

(define (river-reachable? r dest num) false)

(@problem 4)
;;
;; Design a function that will consume a River, and produce the name of the
;; largest river reachable from the given river. The function should be
;; tail-recursive.
;;
(@htdf largest-river-name)
(@signature River -> String)
;; produce the name of the largest river reachable from the given river

(define (largest-river-name r) "")





(@problem 5)
;;
;; Design a function that consumes a river to start at, a destination river's
;; name, and produces the minimum number of rivers on the shortest path between
;; the starting river and the destination river (inclusively) or false if there
;; is no route between them. The function does NOT have to be tail-recursive.
;; NOTE: We are not asking that you produce the names of rivers on the shortest
;; path, but the number of rivers on it. 
;;
;; For example (min-num-rivers YAM "Yammarhead") should produce 1
;;             (min-num-rivers YAM "Otterhand")  should produce 2
;;

(@htdf min-num-rivers)
(@signature River String -> Natural or false)
;; produce the number of rivers on shortest route between two rivers or false

(define (min-num-rivers r str) false)
