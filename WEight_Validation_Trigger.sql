
delimiter //
CREATE  TRIGGER `Weight_validation`
  BEFORE
  INSERT
  ON `participant`
  FOR EACH ROW
  BEGIN
    if new.Weight < '40' 
    then 
    signal sqlstate value '45000'
    set message_text ='The Participant is not fit for the Clinical Trial';
    end if;
    
END
;//
