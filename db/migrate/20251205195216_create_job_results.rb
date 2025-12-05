class CreateJobResults < ActiveRecord::Migration[8.1]
  def change
    create_table :job_results do |t|
      t.string :message

      t.timestamps
    end
  end
end
