class SetupsController < ApplicationController
  def index
    @setups = Setup.all
  end

  def show
    @setup = Setup.find(params[:id])
  end

  def new
    @setup = Setup.new
  end

  def create
    @setup = Setup.new(params[:setup])
    if @setup.save
      redirect_to @setup, :notice => "Successfully created setup."
    else
      render :action => 'new'
    end
  end

  def edit
    @setup = Setup.find(params[:id])
  end

  def update
    @setup = Setup.find(params[:id])
    if @setup.update_attributes(params[:setup])
      redirect_to @setup, :notice  => "Successfully updated setup."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @setup = Setup.find(params[:id])
    @setup.destroy
    redirect_to setups_url, :notice => "Successfully destroyed setup."
  end
end
