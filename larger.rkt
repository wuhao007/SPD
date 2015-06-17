;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname larger) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
(require 2htdp/image)

;; Image, Image -> Boolean
;; prduce true if the first image is larger the other
(check-expect (larger? (rectangle 3 3 "solid" "red") (rectangle 2 3 "solid" "red")) true)
(check-expect (larger? (rectangle 2 2 "solid" "red") (rectangle 2 3 "solid" "red")) false)
(check-expect (larger? (rectangle 2 3 "solid" "red") (rectangle 2 3 "solid" "red")) false)

;(define (larger? img1 img2) false)    ;stub

;(define (larger? img1 img2)
;  (... img))

(define (area img) (* (image-height img) (image-width img)))

(define (larger? img1 img2)
  (> (area img1) (area img2))) 