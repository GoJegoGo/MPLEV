class AddPeriodStartToPeriods < ActiveRecord::Migration[5.0]
  def change
    add_column :periods, :period_start, :date
  end
end
