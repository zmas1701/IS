(deftemplate Transport
        (slot collector)
	(slot way)
        (slot passenger)
)

(defrule Bus
        (Transport (collector no))
        (Transport (way road))
        (Transport (passenger 50))
=> (printout t Bus crlf)
)

(defrule Trolleybus
        (Transport (collector yes))
        (Transport (way road))
        (Transport (passenger 50))
=> (printout t Trolleybus crlf)
)

(defrule Tram
        (Transport (collector yes))
        (Transport (way rail))
        (Transport (passenger 40))
=> (printout t Tram crlf)
)

(defrule Horsecar
        (Transport (collector no))
(or
        (Transport (way rail))
        (Transport (way horse))
)
        (Transport (passenger 20))
=> (printout t Horsecar crlf)
)

(defrule Unknown
        (Transport (collector yes))
        (Transport (way air))
        (Transport (passenger 400))
=> (printout t Unknown crlf)
)


(deffacts Allfacts
        (Transport (collector no))
        (Transport (way horse))
        (Transport (passenger 20))
)
