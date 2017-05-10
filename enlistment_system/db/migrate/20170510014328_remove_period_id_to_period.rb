class RemovePeriodIdToPeriod < ActiveRecord::Migration[5.0]
  def change
    remove_column :periods, :period_id, :string
  end
end
