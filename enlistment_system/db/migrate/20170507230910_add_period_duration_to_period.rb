class AddPeriodDurationToPeriod < ActiveRecord::Migration[5.0]
  def change
    add_column :periods, :period_duration, :datetime
  end
end
