(deftemplate weather	
		(slot highriver)
		(slot strongrain)
		(slot hightemperature)
		(slot alotsnow))
(deffacts allfacts
		(weather (highriver yes))
		(weather (strongrain no))
		(weather (hightemperature yes))
		(weather (alotsnow yes)))
(defrule Navodnenie
        (weather (highriver yes))
		(weather (strongrain yes))
		(weather (hightemperature yes))
		(weather (alotsnow yes))
=> (printout t Navodnenie crlf))
(defrule allfine
    (or   
			(weather (highriver no))
			(weather (strongrain no))
			(weather (hightemperature no))
			(weather (alotsnow no))
	)
	=> (printout t allfine crlf)
)
