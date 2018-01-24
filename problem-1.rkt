#lang racket

;This is a file to solve problem No.1 from Racket problem sheet
; Student: Mindaugas Vainauskas. Year 4, Software Development course. GMIT 2018

'(Problem 1. Rewrite expressions in Racket)

; expression is done in order but value are calculated in their own mini expressions first.
'(a: (3 × (5 + (10 ÷ 5))))
(* 3 (+ 5 (/ 10 5)))

; Simple addition
'(b: (2 + 3 + 4 + 5))
(+ 2 3 4 5)

;Add numbers part is simple. Division is done by itself and result added to the remaining values in addition function
; returned value is a fraction because 3 is an integer.
'(c: (1 + (5 + (2 + (10 ÷ 3)))))
(+ 1 5 2 (/ 10 3))

; same expression as before but with float number 3.0.
;Returns a decimal value when dividing 10 by 3.0 instead of fraction.
'(d: (1 + (5 + (2 + (10 ÷ 3.0)))))
(+ 1 5 2 (/ 10 3.0))

;Multiplication of value received from evaluating mini expressions first.
'(e: (3 + 5) × (10 ÷ 2))
(* (+ 3 5) (/ 10 2))

;Longest expression of the lot. Used adition first as it doesn't matter if multiplied values are added before
; or after expressions on the right side are calculated.
'(f: (3 + 5) × (10 ÷ 2) + (1 + (5 + (2 + (10 ÷ 3)))))
; 8 * 5 + 1 + 5 + 2 + 3 1/3 -> above expression simplified to the values it produces
(+ 1 5 2 (/ 10 3) (* (+ 3 5) (/ 10 2)))