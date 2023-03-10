CREATE EXTERNAL TABLE mytable
(
pojazd_id int,
marka string,
kategoria string,
rodzaj string,
podrodzaj string,
przeznaczenie string,
pochodzenie string,
rodzaj_tab_znamionowej string,
rok_produkcji smallint,
sposob_produkcji string,
data_pierwszej_rej date,
data_rejestracji_ost date,
data_pierwszej_rej_za_granica date, 
pojemnosc_silnika decimal,
moc_do_masy decimal,
moc_silnika decimal,
moc_silnika_hybrydowego decimal,
masa_wlasna smallint,
masa_pgj smallint,
dopuszczalna_masa_calkowita smallint,
maksymalna_masa_calkowita smallint,
dopuszczalna_ladownosc_calk smallint,
maksymalna_ladownosc_calk smallint,
dopuszczalna_masa_ciag_zesp smallint,
liczba_osi smallint,
naj_dopuszczalny_nacisk_osi smallint,
naj_maksymalny_nacisk_osi smallint,
max_masa_przyczepy_z_hamulcem smallint,
max_masa_przyczepy_bez_ham smallint,
liczba_miejsc_ogolem smallint,
liczba_miejsc_siedzacych smallint,
liczba_miejsc_stojacych smallint,
rodzaj_paliwa string,
rodzaj_paliwa_alternatywnego string,
rodzaj_paliwa_alternatywnego2 string,
sr_zuzycie_pal decimal,
rodzaj_zawieszenia string,
radar string,
hak string,
kierownica_polozenie binary,
kierownica_z_prawej string,
katalizator string,
producent_podstawowy string,
kod_ident string,
rozstaw_osi_kierowanej decimal,
rozstaw_kol_max decimal,
rozstaw_kol_sred decimal,
rozstaw_kol_min decimal,
emisja_co2_redukcja decimal,
wersja_rpp string,
kod_rpp string,
data_wyrejestrowania date,
przyczyna_wyrejestrowania string,
data_wprowadzenia_danych date,
akt_miejsce_rej_wojwe string,
akt_miejsce_rej_powiat string,
akt_miejsce_rej_gmina string,
siedziba_wlasciciela_woj string,
siedziba_wlasciciela_pow string,
siedziba_wlasciciela_gmina string,
data_pierwszej_rej_w_kraju date,
createtimestamp string,
modifytimestamp string,
siedziba_wlasciciela_woj_teryt decimal,
akt_miejsce_rej_wojew_teryt smallint,
emisja_co2 decimal,
emisja_co2_pal_alternatywne1 decimal
) 
STORED AS ORC
location '/project_hive';
