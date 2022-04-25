class JournalController < ApplicationController

  def index

  end

  def this_week
    # {:created_at => @selected_date.beginning_of_day..@selected_date.end_of_day}
    # (:reference_date => 3.months.ago..Time.now)
    # { :date => 1.week.ago..Time.now }
    # where("created_at < ?", 2.days.ago)
    @journals = Journal.where('date < ?', 1.week.ago)
  end

  def show
    @journal = Journal.find(params[:id])
  end

  def create_promt
    Journal.new
  end
end
