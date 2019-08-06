class CreateAnswers < ActiveRecord::Migration[5.2]
  def change
    create_table :answers do |t|
      t.column(:answer, :string)
      t.column(:question_id, :integer)
      t.column(:score, :integer)
    end
  end
end
