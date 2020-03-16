# == Route Map
#
#                                Prefix Verb   URI Pattern                                                                              Controller#Action
#                              toppings GET    /toppings(.:format)                                                                      toppings#index
#                                       POST   /toppings(.:format)                                                                      toppings#create
#                               topping GET    /toppings/:id(.:format)                                                                  toppings#show
#                                       PATCH  /toppings/:id(.:format)                                                                  toppings#update
#                                       PUT    /toppings/:id(.:format)                                                                  toppings#update
#                                       DELETE /toppings/:id(.:format)                                                                  toppings#destroy
#                        pizza_toppings GET    /pizzas/:pizza_id/toppings(.:format)                                                     pizza_toppings#index
#                                       POST   /pizzas/:pizza_id/toppings(.:format)                                                     pizza_toppings#create
#                         pizza_topping GET    /pizzas/:pizza_id/toppings/:id(.:format)                                                 pizza_toppings#show
#                                       PATCH  /pizzas/:pizza_id/toppings/:id(.:format)                                                 pizza_toppings#update
#                                       PUT    /pizzas/:pizza_id/toppings/:id(.:format)                                                 pizza_toppings#update
#                                       DELETE /pizzas/:pizza_id/toppings/:id(.:format)                                                 pizza_toppings#destroy
#                                pizzas GET    /pizzas(.:format)                                                                        pizzas#index
#                                       POST   /pizzas(.:format)                                                                        pizzas#create
#                                 pizza GET    /pizzas/:id(.:format)                                                                    pizzas#show
#                                       PATCH  /pizzas/:id(.:format)                                                                    pizzas#update
#                                       PUT    /pizzas/:id(.:format)                                                                    pizzas#update
#                                       DELETE /pizzas/:id(.:format)                                                                    pizzas#destroy
#         rails_mandrill_inbound_emails POST   /rails/action_mailbox/mandrill/inbound_emails(.:format)                                  action_mailbox/ingresses/mandrill/inbound_emails#create
#         rails_postmark_inbound_emails POST   /rails/action_mailbox/postmark/inbound_emails(.:format)                                  action_mailbox/ingresses/postmark/inbound_emails#create
#            rails_relay_inbound_emails POST   /rails/action_mailbox/relay/inbound_emails(.:format)                                     action_mailbox/ingresses/relay/inbound_emails#create
#         rails_sendgrid_inbound_emails POST   /rails/action_mailbox/sendgrid/inbound_emails(.:format)                                  action_mailbox/ingresses/sendgrid/inbound_emails#create
#          rails_mailgun_inbound_emails POST   /rails/action_mailbox/mailgun/inbound_emails/mime(.:format)                              action_mailbox/ingresses/mailgun/inbound_emails#create
#        rails_conductor_inbound_emails GET    /rails/conductor/action_mailbox/inbound_emails(.:format)                                 rails/conductor/action_mailbox/inbound_emails#index
#                                       POST   /rails/conductor/action_mailbox/inbound_emails(.:format)                                 rails/conductor/action_mailbox/inbound_emails#create
#         rails_conductor_inbound_email GET    /rails/conductor/action_mailbox/inbound_emails/:id(.:format)                             rails/conductor/action_mailbox/inbound_emails#show
#                                       PATCH  /rails/conductor/action_mailbox/inbound_emails/:id(.:format)                             rails/conductor/action_mailbox/inbound_emails#update
#                                       PUT    /rails/conductor/action_mailbox/inbound_emails/:id(.:format)                             rails/conductor/action_mailbox/inbound_emails#update
#                                       DELETE /rails/conductor/action_mailbox/inbound_emails/:id(.:format)                             rails/conductor/action_mailbox/inbound_emails#destroy
# rails_conductor_inbound_email_reroute POST   /rails/conductor/action_mailbox/:inbound_email_id/reroute(.:format)                      rails/conductor/action_mailbox/reroutes#create
#                    rails_service_blob GET    /rails/active_storage/blobs/:signed_id/*filename(.:format)                               active_storage/blobs#show
#             rails_blob_representation GET    /rails/active_storage/representations/:signed_blob_id/:variation_key/*filename(.:format) active_storage/representations#show
#                    rails_disk_service GET    /rails/active_storage/disk/:encoded_key/*filename(.:format)                              active_storage/disk#show
#             update_rails_disk_service PUT    /rails/active_storage/disk/:encoded_token(.:format)                                      active_storage/disk#update
#                  rails_direct_uploads POST   /rails/active_storage/direct_uploads(.:format)                                           active_storage/direct_uploads#create

Rails.application.routes.draw do
  resources :toppings

  resources :pizzas do
    resources :toppings, controller: :pizza_toppings
  end
end
