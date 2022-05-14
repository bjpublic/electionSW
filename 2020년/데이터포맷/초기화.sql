delete from ele_tprecsbs;
delete from ele_tpreclocal;
delete from ele_tcandsbs;
delete from ele_tcandlocal;

insert into ele_tprecsbs
select eleccatgr, precid, 0, 0, '0.0', 'N', 0, '0.0', 'N', '00', '', 0, '', 'N' from ele_tprec;


insert into ele_tpreclocal
select eleccatgr, precid, 'N', 0, 0, '0.0', 'N', 0, '0.0', 'N', '00', '', 0, '', 'N' from ele_tprec;


insert into ele_tcandsbs
select eleccatgr, precid, ordno, 0, '0.0', 0, 'N' from ele_tcand;


insert into ele_tcandlocal
select eleccatgr, precid, ordno, 0, '0.0', 0, 'N' from ele_tcand;
