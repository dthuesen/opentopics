class CreateOpenTopics < ActiveRecord::Migration
  def change
    create_table :open_topics do |t|
      t.boolean :shortlist
      t.integer :number
      t.text :summary
      t.text :description
      t.text :option
      t.string :component
      t.string :category
      t.string :prio
      t.string :responsible
      t.string :state
      t.string :costmodel
      t.string :affects_version
      t.string :issue_ticket
      t.text :ticket_text
      t.text :notes
      t.string :in_sprint

      t.timestamps null: false
    end
  end
end
