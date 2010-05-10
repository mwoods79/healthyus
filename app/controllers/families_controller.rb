class FamiliesController < ApplicationController
  
  before_filter :check_credentials, :except => [:index, :add_member, :create]
  
  def index
    @families = Family.all
    @new_family = Family.new
  end

  def add_member
    #family = Family.find_by_name(params[:name])
    if @family = Family.find(:first, :conditions => ['name LIKE ?', "%#{params[:family]}%"])
      current_user.family = @family
      if current_user.save
        flash[:notice] = "Congratulations you have joined the #{@family.name}'s family."
        redirect_to root_url
      else
        flash[:error] = "An error occured, please try again."
        redirect_to families_url
      end
    else
      flash[:error] = "Family #{params[:family]} does not exist."
      redirect_to families_url
    end
  end
  
  def create
    @family = Family.new(:name => params[:family][:name])
    if @family.save
      current_user.family = @family
      if current_user.save
        flash[:notice] = "Congratulations, you have created and added yourself to the #{@family.name}'s"
        redirect_to root_url
      else
        flash[:error] = "Family was created but an error prevented you from joining.  Please try joining your newly created family."
        redirect_to families_url
      end
    else
      flash[:error] = "An error prevented the family from being created."
      redirect_to families_url
    end
  end
  
  def destroy
    @family = Family.find(params[:id])
    @family.destroy
    flash[:notice] = "Successfully destroyed family."
    redirect_to root_url
  end

end
