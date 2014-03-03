use mitlibrary_eal_dk;
SELECT c.bibid, c.copyid, m.mbrid, c.barcode_nmbr, b.title, b.author, c.status_begin_dt, c.due_back_dt, m.barcode_nmbr member_bcode, concat( m.last_name, ', ', m.first_name ) name
FROM biblio b, biblio_copy c, member m
WHERE b.bibid = c.bibid
AND c.mbrid = m.mbrid
AND c.status_cd = 'out'
ORDER BY c.due_back_dt DESC;
