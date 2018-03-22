select sum(Estimated_Cost) as total
 from clinical_trial;
 
 select phase_number,sum(Estimated_Cost) as total, duration from clinical_trial c
 inner join phase p
 on c.Trial_ID=p.Trial_ID
 where Phase_Number=3;
 
 Delimiter //
create procedure Phase_Costs( In PN int)
begin
select phase_number, sum(Estimated_Cost) as Cost, avg(duration) from clinical_trial ct
join
phase p
on ct.Trial_ID=p.Trial_ID
where PN=phase_number;
end //

call Phase_Costs (3); 

drop procedure Phase_Costs; 