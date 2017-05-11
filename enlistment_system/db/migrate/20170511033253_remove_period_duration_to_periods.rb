class RemovePeriodDurationToPeriods < ActiveRecord::Migration[5.0]
  def change
    remove_column :periods, :period_duration, :datetime
  end
end
