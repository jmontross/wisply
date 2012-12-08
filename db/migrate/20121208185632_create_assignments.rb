class CreateAssignments < ActiveRecord::Migration
  def change
    create_table :assignments do |t|
      t.string :title
      t.string :location
      t.string :educationalUse
      t.string :intendedEndUserRole
      t.string :timeRequired
      t.string :typicalAgeRange
      t.string :interactivityType
      t.string :learningResourceType
      t.string :commonCore
      t.string :useRightsUrl
      t.string :isBasedOnUrl
      t.string :description
      t.string :author
      t.integer :publisherId
      t.string :inLanguage

      t.timestamps
    end
  end
end
