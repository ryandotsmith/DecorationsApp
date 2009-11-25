class BasecampAccountsController < ApplicationController

  def create
    @basecamp_account = current_user \
      .basecamp_accounts \
      .build( params[:basecamp_account] )
    if @basecamp_account.save! #and @basecamp_account.can_connect?
      flash[:notice] = "BaseCamp Account Added!"
    end
    redirect_to profile_page_path( :id => current_user.id )
  end

end
