class AddRateToPayslip < ActiveRecord::Migration
  def change
    add_column :payslips, :rate, :float
  end
end
