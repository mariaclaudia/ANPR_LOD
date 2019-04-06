SELECT ANPR.`__data_aggiornamento` as ANPR_data_aggiornamento,
   ANPR.`__data_cessazione` as ANPR_data_cessazione,
   ANPR.`__data_istituzione` as ANPR_data_istituzione,
   ANPR.altradenomtraslitterata as ANPR_altradenomtraslitterata,
   ANPR.altradenominazione as ANPR_altradenominazione,
   ANPR.cod_denom as ANPR_cod_denom,
   ANPR.codcatastale as ANPR_codcatastale,
   ANPR.codistat as ANPR_codistat,
   ANPR.datacessazione as ANPR_datacessazione,
   ANPR.dataistituzione as ANPR_dataistituzione,
   ANPR.dataultimoagg as ANPR_dataultimoagg,
   ANPR.denominazione_it as ANPR_denominazione_it,
   ANPR.denomtraslitterata as ANPR_denomtraslitterata,
   ANPR.altradenominazione as 'lingua_DE',
   ANPR.fonte as ANPR_fonte,
   ANPR.id as ANPR_id,
   ANPR.idprefettura as ANPR_idprefettura,
   ANPR.idprovincia as ANPR_idprovincia,
   ANPR.idregione as ANPR_idregione,
   ANPR.siglaprovincia as ANPR_siglaprovincia,
   ANPR.stato as ANPR_stato,
   ISTAT.popolazione_legale_2011,
   ISTAT.codice_nuts1_2006 as ISTAT_codice_nuts1_2006,
   ISTAT.codice_nuts1_2010 as ISTAT_codice_nuts1_2010,
   ISTAT.codice_nuts2_2006 as ISTAT_codice_nuts2_2006,
   ISTAT.codice_nuts2_2010 as ISTAT_codice_nuts2_2010,
   ISTAT.codice_nuts3_2006 as ISTAT_codice_nuts3_2006,
   ISTAT.codice_nuts3_2010 as ISTAT_codice_nuts3_2010,
   ISTAT.codice_comune_numerico_con_103_province_1995_2005 as ISTAT_codice_comune_numerico_con_103_province_1995_2005,
   ISTAT.codice_comune_numerico_con_107_province_2006_2009 as ISTAT_codice_comune_numerico_con_107_province_2006_2009,
   ISTAT.codice_comune_numerico_con_110_province_2010_2016 as ISTAT_codice_comune_numerico_con_110_province_2010_2016,
   ISTAT.codice_citta_metropolitana as ISTAT_codice_citta_metropolitana,
   ISTAT.codice_ripartizione_geografica AS ISTAT_ripartizione_geografica_id,
   TRIM(ISTAT.codice_comune_formato_numerico) AS ISTAT_codice_comune_formato_numerico,
   TRIM(ISTAT.progressivo_comune) AS ISTAT_progressivo_comune,
   TRIM(ISTAT.codice_comune_formato_alfanumerico) AS ISTAT_codice_comune_formato_alfanumerico
FROM anpr_comuni_italiani_view AS ANPR
   LEFT JOIN istat_comuni_italiani_view AS ISTAT
   ON TRIM(ISTAT.codice_comune_formato_alfanumerico)=ANPR.codistat
   where ANPR.altradenominazione is not NULL and length(ANPR.altradenominazione)>0 and ANPR.idregione='06'
   