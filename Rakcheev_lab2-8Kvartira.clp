(deftemplate Sellkvartira
	(slot transport)
	(slot novostroika)
        (slot remont)
	(slot ipoteka)
        )
(deffacts Sellkvartirafacts
	(Sellkvartira (transport metro))
	(Sellkvartira (novostroika yes))
        (Sellkvartira (remont yes))
	(Sellkvartira (ipoteka yes))
	)
(defrule sellMoscowVetkinadom7kv15
        (Sellkvartira (transport avtobus,metro))
	(Sellkvartira (novostroika yes))
        (Sellkvartira (remont yes))
	(Sellkvartira (ipoteka no))
=> 
(printout t sellMoscowvetkinadom7kv12 crlf)
)
(defrule sellMoscowDoroninadom15kv123
        (Sellkvartira (transport metro))
	(Sellkvartira(novostroika no))
        (Sellkvartira (remont yes))
	(Sellkvartira (ipoteka no))
=> 
(printout t sellMoscowDoroninadom15kv123 crlf)
)
(defrule sellReutovAshhabadskayadom51kv512 
        (Sellkvartira (transport avtobus.enectrichka))
	(Sellkvartira (novostroika yes))
        (Sellkvartira (remont yes))
	(Sellkvartira (ipoteka yes))
=> 
(printout t sellReutovAshhabadskayadom51kv512 crlf)
)
(defrule sellHimkiAkademika-Gryshinadom53kv321
        (Sellkvartira (transport no))
	(Sellkvartira (novostroika yes))
        (Sellkvartira (remont no))
	(Sellkvartira (ipoteka yes))
=> 
(printout t sellHimkiAkademika-Gryshinadom53kv321 crlf)
)
(defrule sellMoscowGorlov-Tupikdom32kv75
        (Sellkvartira (transport metro))
	(Sellkvartira (novostroika no))
        (Sellkvartira (remont no))
	(Sellkvartira (ipoteka yes))
=> 
(printout t sellMoscowGorlov-Tupikdom32kv75 crlf)
)
(defrule sellMoscowDoroznaiadom44kv53
        (Sellkvartira (transport metro))
	(Sellkvartira (novostroika yes))
        (Sellkvartira (remont no))
	(Sellkvartira (ipoteka no))
=> 
(printout t sellMoscowDoroznaiadom44kv53 crlf)
)
(defrule ZelenogradAndreevkadom83kv15
        (Sellkvartira (transport no))
	(Sellkvartira (novostroika no))
        (Sellkvartira (remont yes))
	(Sellkvartira(ipoteka  no))
=> 
(printout t sellZelenogradAndreevkadom83kv15 crlf)
)
(defrule nosell
	(or
	(Sellkvartira (transport no))
	(Sellkvartira (novostroika no))
        (Sellkvartira (remont no))
	)	
	=> 
	(printout t nosell crlf)
	)