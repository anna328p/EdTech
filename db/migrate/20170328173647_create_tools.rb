class CreateTools < ActiveRecord::Migration[5.0]
  def change
    create_table :tools do |t|
      t.string :name
      t.text :description
      t.string :picture_url
      t.string :platform
      t.integer :price
      t.integer :grade_low
      t.integer :grade_high
      t.boolean :creativity
      t.boolean :communication
      t.boolean :collaboration
      t.boolean :citizenship
      t.boolean :critical_thinking
      t.boolean :empowered_learner
      t.boolean :digital_citizen
      t.boolean :knowledge_constructor
      t.boolean :innovative_designer
      t.boolean :computational_thinker
      t.boolean :creative_communicator
      t.boolean :global_collaborator

      t.timestamps
    end
  end
end
