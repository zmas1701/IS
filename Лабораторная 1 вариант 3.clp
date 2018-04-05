(deftemplate Employee
	(slot education)
	(slot experience)
        (slot scientist)
	)
(deffacts AllEmployeefacts
	(Employee (experience more1year))
	(Employee (scientist yes))
        (Employee (education high)))
(defrule YouHiredByScientist
        (Employee (experience more1year))
	(Employee (scientist yes))
        (Employee (education high))
=> (printout t YouHiredByScientist crlf)
)
(defrule YouHiredByAnEngineer
        (Employee (experience more1year))
	(Employee (scientist no))
        (Employee (education high))
=> (printout t YouHiredByAnEngineer crlf)
)
(defrule Refuse
	(or
        (Employee (experience less1year))
	(Employee (scientist no))
        (Employee (education nothigh))
	)

	=> (printout t Refuse crlf)
)