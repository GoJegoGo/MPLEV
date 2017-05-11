class AddPeriodEndToPeriods < ActiveRecord::Migration[5.0]
  def change
    add_column :periods, :period_end, :date
  end
end
