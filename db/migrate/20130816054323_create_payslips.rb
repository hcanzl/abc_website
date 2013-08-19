class CreatePayslips < ActiveRecord::Migration
  def change
    create_table :payslips do |t|
      t.string :pay_period

      t.timestamps
    end
  end
end
