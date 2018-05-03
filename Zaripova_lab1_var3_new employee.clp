(deftemplate properties
	(slot ExperienceYear)
	(slot education)
	(slot AcademicTitle))

(deffacts somefacts
	(properties (ExperienceYear no))
	(properties (education yes))
	(properties (AcademicTitle no))
	)
	
(defrule reject 
	(properties (ExperienceYear no))
	=> (printout t Reject crlf)
	)
	
(defrule engineer 
	(properties (ExperienceYear yes))
	(properties (education yes))
	(properties (AcademicTitle no))
	=> (printout t Design Engineer crlf)
	)

(defrule researcher 
	(properties (ExperienceYear yes))
	(properties (education yes))
	(properties (AcademicTitle yes))
	=> (printout t Researcher crlf)
	)
