SELECT * FROM finaldbproject.participant;
Delimiter //
CREATE  TRIGGER `New_Entry`
  before
  INSERT
  ON `Participant`
  FOR EACH ROW
  BEGIN
   set new.Age= TIMESTAMPDIFF(YEAR,new.Date_Of_Birth,CURDATE());
     
END //

 
