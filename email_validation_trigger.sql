delimiter //
CREATE  TRIGGER `email_validation`
  BEFORE
  INSERT
  ON `DOCTORS`
  FOR EACH ROW
  BEGIN
    if new.Email not like '%_@%_._%'
    then 
    signal sqlstate value '45000'
    set message_text ='The entered Email is invalid';
    end if;
    
END
;//