



Delimiter //
create procedure Company_Drug( In CN varchar(30))
begin
select d.Drug_Name,c.Company_Name,d.disease_name from company c
join
drug  d
on d.Company_ID=c.Company_ID
where CN=c.Company_Name;
end //

call Company_Drug('sanofi')