(deftemplate Trydnosti
        (slot slojenie)
	(slot umnojenie)
	(slot vichitanie)
	(slot delenie)
)
(deffacts Allfacts
        (Trydnosti (slojenie no))
        (Trydnosti (umnojenie no))
	(Trydnosti (vichitanie no))
	(Trydnosti (delenie no))
)
(defrule ok
        (Trydnosti (slojenie no))
        (Trydnosti (umnojenie no))
	(Trydnosti (vichitanie no))
	(Trydnosti (delenie no))
=> (printout t Trydnosti.net crlf)
)
(defrule bad1
	(or
        	(Trydnosti (slojenie yes))
       	)

	=> (printout t Trydnosti.so.slojeniem crlf)
	
)
(defrule bad2
	(or
        	(Trydnosti (umnojenie yes))
       	)

	=> (printout t Trydnosti.s.umnojeniem crlf)
	
)
(defrule bad3
	(or
        	(Trydnosti (vichitanie yes))
       	)

	=> (printout t Trydnosti.s.vichitaniem crlf)
	
)
(defrule bad4
	(or
        	(Trydnosti (delenie yes))
       	)

	=> (printout t Trydnosti.s.deleniem crlf)
	
)
(defrule bad5
	(and
        	(Trydnosti (slojenie yes))
        	(Trydnosti (umnojenie yes))
		(Trydnosti (vichitanie yes))
		(Trydnosti (delenie yes))
       	)

	=> (printout t Trydnosti.s.arifmetikoy crlf)
	
)
