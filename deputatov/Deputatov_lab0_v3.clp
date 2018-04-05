(deffacts pogoda
(uroven_vodi visokiy)
(dozhdi silnie)
(pogoda teplaya)
(sneg mnogo)
)

(defrule budet_navodnenie
(uroven_vodi visokiy)
(dozhdi silnie)
(pogoda teplaya)
(sneg mnogo)
=>
(printout t "spapaites, budet navodnenie!!!!" crlf)	
)) 

(defrule nebudet_navodnenie1
(uroven_vodi nizkiy)
=>
(printout t "vse ok, navodneniya ne budet" crlf)	
)) 

(defrule nebudet_navodnenie2
(dozhdi slabie)
=>
(printout t "vse ok, navodneniya ne budet" crlf)	
)) 

(defrule nebudet_navodnenie3
(pogoda holodnaya)
=>
(printout t "vse ok, navodneniya ne budet" crlf)	
)) 

(defrule nebudet_navodnenie4
(sneg malo)
=>
(printout t "vse ok, navodneniya ne budet" crlf)	
)) 


