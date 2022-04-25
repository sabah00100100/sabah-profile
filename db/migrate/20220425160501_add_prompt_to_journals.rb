class AddPromptToJournals < ActiveRecord::Migration[6.1]
  def change
    def change
      add_column :journals, :prompt, :string
    end
  end
end
