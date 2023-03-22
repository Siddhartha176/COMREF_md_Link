---Merge logic as per TD:

merge into mrg_table1 mrg 
using other_table otd
on(mrg.id=otd.id)
when matched then 
update 
set name=otd.name,
ind_flg=otd.ind_flg
when not matched then 
insert 
(id,name,otd_flg)
values(otd.id,otd.name,otd.od_flg);


---Upsert logic
update mrg_table 
set otd_flg='N'
where id=9
else insert into mrg_table(7,'TD','Y');
------Update logic
update merge_table mrg 
with temp_table tmp
set  mrg.emp_name=tmp.emp_name,
mrg.emp_id=tmp.emp_id,
mrg.emp_dept=tmp.emp_dept,
mrg.emp_job=tmp.emp_job,
mrg.emp_mngr=tmp.emp_mngr,
mrg.emp_addr=tmp.emp_addr,
mrg.emp_tel=tmp.emp_tel,
mrg.emp_fax=tmp.emp_fax,
mrg.emp_email=tmp.emp_email,
mrg.emp_note=tmp.emp_note,
mrg.emp_status=tmp.emp_status,
mrg.emp_hiredate=tmp.emp_hiredate,
mrg.emp_firedate=tmp.emp_firedate,
mrg.emp_mngr_id=tmp.emp_mngr_id,
mrg.emp_mngr_dept=tmp.emp_mngr_dept,
mrg.emp_mngr_job=tmp.emp_mngr_job,
mrg.emp_mngr_addr=tmp.emp_mngr_addr,
mrg.emp_mngr_tel=tmp.emp_mngr_tel,
mrg.emp_mngr_fax=tmp.emp_mngr_fax,
mrg.emp_mngr_email=tmp.emp_mngr_email,
mrg.emp_mngr_note=tmp.emp_mngr_note,
mrg.emp_mngr_status=tmp.emp_mngr_status,
mrg.emp_mngr_hiredate=tmp.emp_mngr_hiredate,
mrg.emp_mngr_firedate=tmp.emp_mngr_firedate,
mrg.emp_mngr_mngr_id=tmp.emp_mngr_mngr_id,
mrg.emp_mngr_mngr_dept=tmp.emp_mngr_mngr_dept,
mrg.emp_mngr_mngr_job=tmp.emp_mngr_mngr_job,
mrg.emp_mngr_mngr_addr=tmp.emp_mngr_mngr_addr,
mrg.emp_mngr_mngr_tel=tmp.emp_mngr_mngr_tel,
mrg.emp_mngr_mngr_fax=tmp.emp_mngr_mngr_fax,
mrg.emp_mngr_mngr_email=tmp.emp_mngr_mngr_email,
mrg.emp_mngr_mngr_note=tmp.emp_mngr_mngr_note,

mrg.emp_mngr_mngr_status=tmp.emp_mngr_mngr_status,




mrg.emp_mngr_mngr_hiredate=tmp.emp_mngr_mngr_hiredate
where mrg.emp_id=tmp.emp_id;
