namespace :add_prospects_to_sendinblue do
  task :add_prospects do

    # 1. Récupérer la liste des prospects pas encore ajoutés à SIB

    # 2. Parcourir cette liste et les ajouter chacun leur tour

    def sendinblue_add_contact(email, list_ids)
      api_instance = SibApiV3Sdk::ContactsApi.new

      create_contact = SibApiV3Sdk::CreateContact.new
      create_contact = {
        'email'=> email,
        'listIds'=> list_ids,
        'updateEnabled'=> true
      }

      begin
        result = api_instance.create_contact(create_contact)

        if result.nil?
          $mixpanel_tracker.track(unique_visitor_id, "Already existing contact") if Rails.env.production?
        else
          $mixpanel_tracker.track(unique_visitor_id, "New contact") if Rails.env.production?
        end

      rescue SibApiV3Sdk::ApiError => e
        puts "Exception when calling ContactsApi->create_contact: #{e}"
      end
    end
  end
end
