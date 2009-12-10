%h1 Login


- form_for @user_session, :url => user_session_path do |f|
  = f.error_messages

  = f.label :login
  %br/
  = f.text_field :login
  %br/
  %br/

  = f.label :password
  %br/
  = f.password_field :password
  %br/
  %br/
  = f.check_box :remember_me
  = f.label :remember_me
  %br/
  %br/
  = f.submit "Login"

