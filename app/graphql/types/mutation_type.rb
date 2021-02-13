module Types
  class MutationType < Types::BaseObject
    field :create_link, mutation: Mutations::CreateLink
    field :create_user, mutation: Mutations::CreateUser
    field :signin_user, mutation: Mutations::SignInUser
    field :update_review, mutation: Mutations::UpdateReview

    field :create_new_user, mutation: Mutations::CreateNewUser
    field :create_old_user, mutation: Mutations::CreateOldUser
  end
end
