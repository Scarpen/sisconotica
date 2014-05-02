class CreateTipoFuncionarios < ActiveRecord::Migration
  def change
    create_table :tipo_funcionarios do |t|
      t.string :tipo

      t.timestamps
    end
  end
end
