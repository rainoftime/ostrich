(set-logic QF_S)

(declare-fun x () String)
(declare-fun y () String)
(declare-fun z () String)

(assert (= x (str.replaceall y "e" z)))
(assert (str.in.re y (str.to.re "hello")))
(assert (str.in.re z (str.to.re "b")))
(assert (str.in.re x (str.to.re "hbllo")))

(check-sat)
(get-model)
