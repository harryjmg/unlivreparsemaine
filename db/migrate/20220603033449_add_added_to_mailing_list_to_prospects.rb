class AddAddedToMailingListToProspects < ActiveRecord::Migration[7.0]
  def change
    add_column :prospects, :added_to_mailing_list, :boolean, default: false
  end
end
