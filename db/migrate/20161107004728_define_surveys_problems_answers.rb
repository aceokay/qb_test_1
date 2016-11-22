class DefineSurveysProblemsAnswers < ActiveRecord::Migration[5.0]
  def change
    create_table(:surveys) do |t|
      t.string  :name
      t.string  :body

      t.timestamps
    end

    create_table(:questions) do |t|
      t.integer   :question_position
      t.string    :question_text # We might want a text object to allow for fine-grain control of contents
      t.integer   :survey_id

      t.timestamps
    end

    create_table(:option_options) do |t|
      t.integer   :question_id
      t.references :option, polymorphic: true, index: true

      t.timestamps
    end

    create_table(:open_options) do |t|
      t.integer   :option_position
      t.string    :option_content # We might want a text object to allow for fine-grain control of contents
      t.integer   :question_id

      t.timestamps
    end

    create_table(:numerical_options) do |t|
      t.integer   :option_position
      t.integer   :option_content
      t.integer   :question_id

      t.timestamps
    end

    # Users will want to implement a selection model to handle user
    # selections. They'll want users too if they don't have them yet.
    # create_table(:selection) do |t|
    #   t.integer   :numerical_options
    #   t.integer   :option_content
    #   t.integer   :question_id
    #
    #   t.timestamps
    # end
  end
end
