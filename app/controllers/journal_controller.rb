class JournalController < ApplicationController
  validates :prompt, length: { minimum: 120 }

  def show
    @journal = Journal.find(params[:id])
  end

  def create_promt
    Journal.new
  end
end
