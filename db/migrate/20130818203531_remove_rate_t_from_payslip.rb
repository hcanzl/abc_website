class RemoveRateTFromPayslip < ActiveRecord::Migration
  def up
    remove_column :payslips, :rate
  end

  def down
    add_column :payslips, :rate, :float
  end
end
