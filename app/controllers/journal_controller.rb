class JournalController < ApplicationController

  def show
    @journal = Journal.find(params[:id])
  end

  def create_promt
    Journal.new
  end
end
