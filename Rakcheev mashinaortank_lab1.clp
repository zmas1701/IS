(deftemplate tankmashina
        (slot luk)
		(slot pushka)
        (slot dver)
		(slot koleso)
		(slot kuzov)
)

(defrule tank
        (tankmashina(luk yes))
        (tankmashina (pushka yes))
        (tankmashina (dver no))
		(tankmashina (koleso no))
		(tankmashina (kuzov yes))
=> (printout t tank crlf)
)

(defrule mashina
        (tankmashina (luk no))
        (tankmashina (pushka no))
        (tankmashina (dver yes))
		(tankmashina (koleso yes))
		(tankmashina (kuzov yes))
=> (printout t mashina crlf)
)
