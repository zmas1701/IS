(deftemplate PC
			(slot D_GPU)
			(slot RAM)
			(slot HDD)
			(slot CPU)
			(slot USB)
			(slot DVD)
			(slot Stock))
(defrule d_gpu
	=>
		(printout t "Does it have discrete GPU (yes/no): ")
		(bind ?response (read))
		(assert (PC (D_GPU ?response))))
(defrule ram 
	=>
		(printout t "How many RAM? (2GB/4GB/8GB): ")
		(bind ?response (read))
		(assert (PC (RAM ?response))))
(defrule hdd
	=> 
		(printout t "HDD or SSD? (HDD/SSD): ")
		(bind ?response (read))
		(assert (PC (HDD ?response))))
(defrule cpu
	=>
		(printout t "How many cores CPU? (2/4/8): ")
		(bind ?response (read))
		(assert (PC (CPU ?response))))
(defrule usb
	=>
		(printout t "USB type? (2.0/3.0): ")
		(bind ?response (read))
		(assert (PC (USB ?response))))
(defrule dvd
	=>
		(printout t "Does it have DVD (yes/no): ")
		(bind ?response (read))
		(assert (PC (DVD ?response))))
(defrule in_stock
	=>
		(printout t "Does it in stock need to order (stock/order): ")
		(bind ?response (read))
		(assert (PC (Stock ?response))))

		
(defrule HomePC
		(PC(D_GPU no))
		(PC(RAM 2GB))
		(PC(HDD HDD))
		(PC(CPU 2))
		(PC(USB 2.0))
		(PC(DVD no))
		(PC(Stock stock))
	=>
		(printout t "You'd like to get a Home PC!" crlf))
(defrule GoodHomePC
		(PC(D_GPU no))
		(PC(RAM 4GB))
		(PC(HDD HDD))
		(PC(CPU 4))
		(PC(USB 2.0))
		(PC(DVD yes))
		(PC(Stock stock))
	=>
		(printout t "You'd like to get a Good Home PC!" crlf))
(defrule VeryGoodHomePC
		(PC(D_GPU no))
		(PC(RAM 8GB))
		(PC(HDD HDD))
		(PC(CPU 4))
		(PC(USB 3.0))
		(PC(DVD yes))
		(PC(Stock stock))
	=>
		(printout t "You'd like to get a Very Good Home PC!" crlf))
(defrule GamePC
		(PC(D_GPU yes))
		(PC(RAM 8GB))
		(PC(HDD HDD))
		(PC(CPU 4))
		(PC(USB 2.0))
		(PC(DVD yes))
		(PC(Stock stock))
	=>
		(printout t "You'd like to get a Game PC!" crlf))
(defrule GoodGamePC
		(PC(D_GPU yes))
		(PC(RAM 8GB))
		(PC(HDD SSD))
		(PC(CPU 8))
		(PC(USB 3.0))
		(PC(DVD yes))
		(PC(Stock stock))
	=>
		(printout t "You'd like to get a Good Game PC!" crlf))

