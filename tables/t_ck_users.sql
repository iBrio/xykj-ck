create table t_ck_users(
id number primary key,
loginname varchar2(32),
username varchar2(64),
pwd varchar2(64),
status number,
emp_id number
)
/
create sequence seq_t_ck_users;
/
create or replace trigger tri_t_ck_users
before insert
on t_ck_users
for each row
begin
  if :new.id is null then
    :new.id := seq_t_ck_users.nextval();
end;
