




; -------------------------------------
; ------Various Objects Needed --------
; -------------------------------------

(deftemplate Year (slot year))
(deftemplate Run (slot run))
(deftemplate Suspension (slot suspension))
(deftemplate Bodywork (slot bodywork))
(deftemplate Owner (slot owner))
(deftemplate Documentation (slot documentation))
(deftemplate Dijacking (slot dijacking))
(deftemplate Cost (slot cost))

; ------------------------
; ------INPUT-------------
; ------------------------

(defrule Run
   (declare (salience 800))
   =>
   (printout t "What is the mileage of the car? : ")
   (bind ?response (read))
   (assert (Run (run ?response))))

(defrule Owner
   (declare (salience 850))
   (Owner (owner ?1))
   (test (< ?l 5))
   =>
   (printout t "This car has more than 3 owners?(yes/no): ")
   (bind ?response (read))
   (assert (Owner (owner ?response))))

(defrule Suspension
   (declare (salience 500))
   (not (car ?))
   =>
   (printout t "What is the condition of the suspension? (good/bad/repair): ")
   (bind ?response (read))
   (assert (Suspension (suspension ?response))))

(defrule Bodywork
   (declare (salience 500))
   (not (car ?))
   =>
   (printout t "What is the condition of the car body? (broken/chips/painting/ideal): ")
   (bind ?response (read))
   (assert (Bodywork (bodywork ?response))))

(defrule Year
   (declare (salience 490))
   (not (car ?))
   =>
   (printout t "By age, this car is old or fresh? : ")
   (bind ?response (read))
   (assert (Year (year ?response))))

(defrule Documentation
   (declare (salience 480))
   (not (car ?))
   =>
   (printout t "Are all the documents in order? (yes/no): ")
   (bind ?response (read))
   (assert (Documentation (documentation ?response))))

(defrule Dijacking
	(declare (salience 750))
	(Owner (owner 5))
	=>
	(printout t "Is the car reported stolen?? (yes/no): ")
	(bind ?response (read))
	(assert (Dijacking (dijacking ?response))))

(defrule Cost
   (declare (salience 700))
   (not (car ?))
   =>
   (printout t "how much does it cost?? (many/little/no): ")
   (bind ?response (read))
   (assert (Cost (cost ?response))))

;---------------------------
;--------RULES--------------
;---------------------------

(defrule Questionable
	(declare (salience 600))
	(Owner (owner yes))
	=>
	(assert (car questionable))
	(printout t "This car is questionable" crlf))

(defrule Expensive
	(declare (salience 680))
	(and (Owner (owner yes)) (Cost (cost many)))
	=>
	(assert (car expensive))
	(printout t "This car is expensive" crlf))

(defrule Hijacked
	(declare (salience 749))
	(Dijacking (dijacking yes))
	=>
	(assert (car hijacked))
	(printout t "This car is reported stolen!" crlf))

(defrule Well
	(declare (salience 650))
	(Owner (owner ?2))
	(and (test (= ?l 2)) (Bodywork (bodywork ideal)) (Cost (cost no)) (Suspension (suspension good)))
	=>
	(assert (car well))
	(printout t "This car is well" crlf))

(defrule Looked
	(declare (salience 100))
	(Owner (owner 3))
	(Documentation (documentation yes))
	(Year (year old))
	(Cost (cost looked))
	=>
	(assert (car look-attentively))
	(printout t "This car should be looked at" crlf))

(defrule Crashed
	(declare (salience 100))
	(Owner (owner 5))
	(Documentation(documentation no))
	(Bodywork (bodywork painting))
	(Suspension (suspension bad))
	=>
	(assert (car crashed))
	(printout t "This machine is crashed" crlf))

(defrule upgraded
	(declare (salience 200))
	(Owner (owner 4))
	(Documentation (documentation yes))
	(Bodywork (bodywork chips))
	(Suspension (suspension repair))
	(Year (year old))
	(Cost(cost little))
	=>
	(assert (car upgraded))
	(printout t "This car needs to be fully upgraded or repaired only suspension" crlf))





