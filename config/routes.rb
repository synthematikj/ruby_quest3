Rails.application.routes.draw do
   root "home#index"

   get "/knight", to: "home#knight"

   get "/mage", to: "home#mage"

   get "/medusa", to: "home#medusa"

   get "/jinn", to: "home#jinn"

   get "/destroy_jinn", to: "home#destroy_jinn"

   get "/destroy_mage", to: "home#destroy_mage"

   get "/destroy_medusa", to: "home#destroy_medusa"

   get "/destroy_knight", to: "home#destroy_knight"

   get "/team1_ultimate", to: "home#team1_ultimate"

   get "/team2_ultimate", to: "home#team2_ultimate"

end
