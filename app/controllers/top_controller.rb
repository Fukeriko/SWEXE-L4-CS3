class TopController < ApplicationController
  def main
    if session[:login_uid]
      render 'main'
    else
      render 'login'
    end
  end
  
  def login
    login_password = BCrypt::Password.new("$2a$12$bCWQUG9RcrzDXlxjngaw0ua.Ecd4NPT0A1bhH8p9nkftFwzctCrkm")
    if login_password == params[:pass]
     #if User.find_by(uid: params[:uid], pass: params[:pass])
   # if params[:uid] == 'kindai' and params[:pass] == 'sanriko'
       session[:login_uid] = params[:uid]
       redirect_to root_path
    else
      render 'login_failed'
    end
  end
  
  def logout
    session.delete(:login_uid)
    redirect_to root_path
  end
  
end

