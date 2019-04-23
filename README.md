
# ANPR Archivio storico dei comuni

Data processing per creazione Elenco Storico dei comuni italiani arricchito 

Data processing che partendo dal dataset di [ANPR](https://www.anpr.interno.it/portale/) contenente l'Archivio storico dei comuni (02-04-2019) - xls predispone e arricchisce il dataset in modo che possa essere importato in DAF e  interoperabile con il dataset rilasciato da ISTAT.

Il dataset verrà poi utilizzato come dataset master anche per l'arricchimento delle informazioni ad oggi contenute in IPA oltre ad essere collegato a diverse grafi come ISPRA, DBPedia...

Su DAF è presente il dataset originario 
https://dataportal.daf.teamdigitale.it/#/private/dataset/anpr_comuni_italiani

Sul dataset pubblicato da ANPR abbiamo aperto degli issue richiedendo che il dataset venga propriamente pubblicato seguendo le linee guida

- https://github.com/italia/anpr/issues/1252
- https://github.com/italia/anpr/issues/1253
 

Operazioni da fare pre processing:

- scraper dataset: non c'è una permament uri
- utilizzo encoding corretto
- gestione campi null
- il codice istat deve essere letto come string 
- campo IDPROVINCIA deve essere su tre char con padding a 0 per poter fare join con ISTAT
- formattazione campi data
- formattazione campi nome comune per denominazione in altra lingua 
- formattazione campi nome comune it e denominazione translitterata

Post processing:
- script SQL per estrarre i blocchi di comuni con denominazione in DE e FR per interlinking con Giorgia

