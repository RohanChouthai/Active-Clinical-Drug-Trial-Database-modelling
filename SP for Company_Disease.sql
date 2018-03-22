Delimiter //

Create procedure Company_Disease ( in Company_Name varchar(30))
Begin
select Disease_Name, StartDate, Company_Name
from disease as d, clinical_trial as c, company as co
where d.Disease_ID=c.Disease_ID and c.Company_ID=co.Company_ID 
order by Disease_Name;

End
//
