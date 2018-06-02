(deffacts factors
            (weather WARM)
            (rain LIGHT)
	    (snow_in_mountains LOT)
	  )
(defrule be
         (flood (level_river HIGH))
	 (weather WARM)
         (rain HEAVY)
	 (snow_in_mountains LOT)
=> (printout t "Will be flood" crlf))
(defrule not
   (or   (flood (level_river LOW))
         (weather COLD)
         (rain LIGHT)
         (snow_in_mountains LITTLE) 
)
=> (printout t "There will not be floods" crlf))