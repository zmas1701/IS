(deffacts factors
           (metro far)
           (cockroaches 1)
	  )
(defrule dangerous
     (cockroaches ?is)
     (test (= 1 ?is))
=> (printout t "Run away!" crlf))

(defrule ideal
	   (and (metro near)
            (repair 1)
	    (cockroaches 0)
	    (floor high)
	     (or (room 3)
                 (room 4)))
=> (printout t "Perfect option" crlf))

(defrule SoSo
	   (and (metro near)
	        (cockroaches 0)
	     (not (floor high))
	         (room 1))
=> (printout t "You should think" crlf))

(defrule search
	   (forall (metro far)
                   (repair 0))
=> (printout t "You should continue search" crlf))

(defrule bad
	   (and (metro far)
	    	(not (floor high))
	        (not (or (room 3)
                      (room 4)))
                (repair 0))

=> (printout t "Worst option" crlf))

(defrule search2
	   (forall (room 1)
                   (repair 0))
=> (printout t "You should continue search" crlf))

(defrule maybe
	   (repair 1)
           (metro near)

=> (printout t "It's good!" crlf))
