#lang racket
;;; Copyright (c) 2000-2013 Dipanwita Sarkar, Andrew W. Keep, R. Kent Dybvig, Oscar Waddell
;;; See the accompanying file Copyright for details

(require rackunit
         rackunit/text-ui
         "compiler-test.rkt"
         "helpers.rkt"
         "unit-tests.rkt"
         "../private/helpers.rkt")

(printf "Running unit tests\n")
(void
 (run-tests unit-tests)
 (run-tests ensure-correct-identifiers)
 (run-tests maybe-tests)
 (run-tests maybe-dots-tests)
 (run-tests maybe-unparse-tests)
 (run-tests language-dot-support)
 (run-tests error-messages))
(printf "Compiler loaded, running all tests (quietly)\n")
(time
  (begin
    (run-all-tests)
    (run-all-tests)
    (run-all-tests)
    (run-all-tests)
    (run-all-tests)
    (run-all-tests)
    (run-all-tests)
    (run-all-tests)
    (run-all-tests)
    (run-all-tests)))
