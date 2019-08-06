class CreateChosenAnswers < ActiveRecord::Migration[5.2]
  def change
    create_table :chosen_answers do |t|
      t.column(:score, :integer)
    end
  end
end
