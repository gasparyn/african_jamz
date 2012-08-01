class CreateBioInfos < ActiveRecord::Migration
  def change
    create_table :bio_infos do |t|
      t.datetime :dob
      t.integer :country_id
      t.boolean :married

      t.timestamps
    end
  end
end
