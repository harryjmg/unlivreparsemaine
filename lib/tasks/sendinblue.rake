namespace :sendinblue do
  task :add_prospects => [ :environment ] do

    # Initialize
    list_ids = [13]
    api_instance = SibApiV3Sdk::ContactsApi.new

    # Run for all
    Prospect.where(added_to_mailing_list: false).each do |prospect|
      create_contact = SibApiV3Sdk::CreateContact.new
      create_contact = {
        'email'=> prospect.email,
        'attributes'=> {"PRENOM": prospect.name},
        'listIds'=> list_ids,
        'updateEnabled'=> true
      }
      begin
        result = api_instance.create_contact(create_contact)
        prospect.update_attribute :added_to_mailing_list, true
        puts "Added : #{prospect.email}"
      rescue SibApiV3Sdk::ApiError => e
        puts "Exception when calling ContactsApi->create_contact: #{e}"
      end
    end

  end
end
