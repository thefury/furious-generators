%h1 Register For An Account

- form_for @user, :url => account_path do |f|
  = f.error_messages
  = render :partial => "form", :object => f
  = f.submit "Register"

%br/
= link_to "My Profile", account_path
