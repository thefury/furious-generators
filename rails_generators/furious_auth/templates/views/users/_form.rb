= form.label :login 
%br/
= form.text_field :login 
%br/
%br/
= form.label :email 
%br/
= form.text_field :email 
%br/
%br/
= form.label :password, form.object.new_record? ? nil : "Change password" 
%br/
= form.password_field :password 
%br/
%br/
= form.label :password_confirmation 
%br/
= form.password_field :password_confirmation 
%br/
