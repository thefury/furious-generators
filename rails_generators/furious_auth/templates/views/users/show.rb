%p
  %b Login:
  =h @user.login


%p
  %b Login count:
  =h @user.login_count


%p
  %b Last request at:
  =h @user.last_request_at


%p
  %b Last login at:
  =h @user.last_login_at


%p
  %b Current login at:
  =h @user.current_login_at


%p
  %b Last login ip:
  =h @user.last_login_ip


%p
  %b Current login ip:
  =h @user.current_login_ip



= link_to 'Edit', edit_account_path
