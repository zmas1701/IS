(deftemplate TarifiRostelecom
        (slot skorost)
	(slot WiFi)
	(slot antivirus)
	(slot igrovie.opzii)
)
(deffacts Allfacts
        (TarifiRostelecom (skorost 100Mbs))
        (TarifiRostelecom (WiFi yes))
	(TarifiRostelecom (antivirus yes))
	(TarifiRostelecom (igrovie.opzii yes))

)
(defrule Tarif1
	(and
       		(TarifiRostelecom (skorost 200Mbs))
       		(TarifiRostelecom (WiFi yes))
		(TarifiRostelecom (antivirus yes))
		(TarifiRostelecom (igrovie.opzii no))
	)
=> (printout t tarif.Bolshoi crlf)
)
(defrule Tarif2
	(and
        	(TarifiRostelecom (skorost 100Mbs))
       		(TarifiRostelecom (WiFi yes))
		(TarifiRostelecom (antivirus yes))
		(TarifiRostelecom (igrovie.opzii no))
	)

	=> (printout t tarif.normal crlf)
)
(defrule Tarif3
	(and
        	(TarifiRostelecom (skorost 60Mbs))
       		(TarifiRostelecom (WiFi yes))
		(TarifiRostelecom (antivirus yes))
		(TarifiRostelecom (igrovie.opzii no))
	)

	=> (printout t tarif.mini crlf)
)
(defrule Tarif4
	(and
        	(TarifiRostelecom (skorost 30Mbs))
       		(TarifiRostelecom (WiFi yes))
		(TarifiRostelecom (antivirus yes))
		(TarifiRostelecom (igrovie.opzii no))
	)

	=> (printout t tarif.nano crlf)
)
(defrule Tarif5
	(and
        	(TarifiRostelecom (skorost 100Mbs))
       		(TarifiRostelecom (WiFi yes))
		(TarifiRostelecom (antivirus no))
		(TarifiRostelecom (igrovie.opzii yes))
	)

	=> (printout t tarif.igrovoi crlf)
)
(defrule Tarif6
	(and
        	(TarifiRostelecom (skorost 100Mbs))
       		(TarifiRostelecom (WiFi no))
		(TarifiRostelecom (antivirus yes))
		(TarifiRostelecom (igrovie.opzii yes))
	)

	=> (printout t tarif.lichnii crlf)
)
(defrule Tarif7
	(and
        	(TarifiRostelecom (skorost 100Mbs))
       		(TarifiRostelecom (WiFi yes))
		(TarifiRostelecom (antivirus yes))
		(TarifiRostelecom (igrovie.opzii yes))
	)

	=> (printout t tarif.polnii crlf)
)
