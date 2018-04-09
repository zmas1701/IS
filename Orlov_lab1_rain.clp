(deftemplate Willberain
        (slot collector)
	(slot way)
        (slot passenger)
)

(defrule Yes
        (Willberain (collector yes))
        (Willberain (way no))
        (Willberain (passenger no))
=> (printout t Yes crlf)
)

(defrule Maybe
        (Willberain (collector no))
        (Willberain (way yes))
        (Willberain (passenger no))
=> (printout t Maybe crlf)
)

(defrule No
        (Willberain (collector no))
        (Willberain (way yes))
        (Willberain (passenger yes))
=> (printout t No crlf)
)




(deffacts Allfacts
        (Willberain (collector no))
        (Willberain (way yes))
        (Willberain (passenger no))
)
