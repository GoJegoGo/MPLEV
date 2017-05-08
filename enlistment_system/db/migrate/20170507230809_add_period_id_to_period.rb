class AddPeriodIdToPeriod < ActiveRecord::Migration[5.0]
  def change
    add_column :periods, :period_id, :string
  end
end
