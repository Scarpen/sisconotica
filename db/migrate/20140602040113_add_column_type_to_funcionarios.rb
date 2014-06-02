class AddColumnTypeToFuncionarios < ActiveRecord::Migration
  def change
  		 add_column :funcionarios, :type, :string
  end
end
