         CLIPS (6.30 3/17/15)
CLIPS> (defrule propagate-purpose ""

(goal is ?purpose)

(rule (if ?variable $?)

(then ?purpose ? ?value))

=>

(assert (purpose is ?variable)))

(defrule purpose-satified ""

(declare (salience 30))

?f <- (purpose is ?purpose)

(variable ?purpose ?value)

(answer ? ?text ?purpose)

=>

(retract ?f)

(format t "%s%s%n" ?text ?value))

(defrule remove-rule-no-match ""

(declare (salience 20))

(variable ?variable ?value)

?f <- (rule (if ?variable ? ~?value $?))

=>

(retract ?f))

(defrule modify-rule-match ""

(declare (salience 20))

(variable ?variable ?value)

?f <- (rule (if ?variable ? ?value and $?rest))

=>

(modify ?f (if ?rest)))

(defrule rule-satisfied ""

(declare (salience 20))

(variable ?variable ?value)

?f <- (rule (if ?variable ? ?value)

(then ?purpose ? ?purpose-value))

=>

(retract ?f)

(assert (variable ?purpose ?purpose-value)))

(defrule ask-question-no-legalvalues ""

(declare (salience 10))

(not (legalanswers $?))

?f1 <- (purpose is ?variable)

?f2 <- (question ?variable ? ?text)

=>

(retract ?f1 ?f2)

(format t "%s " ?text)

(assert (variable ?variable (read))))

(defrule ask-question-legalvalues ""

(declare (salience 10))

(legalanswers ? $?answers)

?f1 <- (purpose is ?variable)

?f2 <- (question ?variable ? ?text)

=>

(retract ?f1)

(format t "%s " ?text)

(printout t ?answers " ")

(bind ?reply (read))

(if (member (lowcase ?reply) ?answers)

then (assert (variable ?variable ?reply))

(retract ?f2)

else (assert (goal is ?variable))))
(deftemplate rule
(multislot if)
(multislot then))
CLIPS> (deffacts apartmentchoice
(purpose is choice of apartment)
(legalanswers are yes no)
(rule(if new is yes(then apartment is new))
(rule(if new is no(then apartment is secondary))
(question new is "Vam nuzhna kvartira v novom dome?")
(rule(if apartment is new and big is yes)(then house is "on Yasenevo"))
(rule(if apartment is new and big is no)(then house is "on Yakimanka"))
(question big is "Vam nuzhna bolshaya kvartira?"))
(rule(if apartment is secondary and with parking is yes)(then type of house is with parking))
(rule(if apartment is secondary and with parking is no)(then type of house is other))
(question with parking is "Vam nuzhna kvartira s parkovkoy?")
(rule(if house with parking and school/kindergarden is yes)(then house is "on Strogino"))
(rule(if house with parking and school/kindergarden is no)(then house is "on Krasnaya Presnya'))
(questuion school/kindergarden is "Vam nuzny shkoly i detskiye sady vblizi doma?")
(rule(if type of house is other and park is yes)(then house area with park))
(rule(if type of house is other and park is no)(then house area "on Romashkino"))
(question park is "Vam nuzhen park vblizi doma?")
(answer is "Ya dumayu chto vam bolshe vsego podhodit apartment"apartment))
