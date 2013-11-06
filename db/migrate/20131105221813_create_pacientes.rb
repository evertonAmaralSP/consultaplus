class CreatePacientes < ActiveRecord::Migration
  def change
    create_table :pacientes do |t|

    	t.string :name, :null => false, :limit => 100
      t.integer :telefone, :null => false
      t.date :data_nascimento, :null => false
      
      t.timestamps
    end
  end
end
