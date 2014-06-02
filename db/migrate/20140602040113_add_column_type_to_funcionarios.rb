class AddColumnTypeToFuncionarios < ActiveRecord::Migration
  def change
  		 add_column :funcionarios, :tipo, :string
  end
end
