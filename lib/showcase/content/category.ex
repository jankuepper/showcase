defmodule Showcase.Content.Category do
  use Ash.Resource,
    otp_app: :showcase,
    domain: Showcase.Content,
    data_layer: AshPostgres.DataLayer

  postgres do
    table "categories"
    repo Showcase.Repo
  end

  actions do
    defaults [:read, :destroy]

    create :create do
      accept [:name]
    end

    update :update do
      accept [:name]
    end
  end

  attributes do
    uuid_primary_key :id

    attribute :name, :string do
      allow_nil? false
      public? true
    end

    timestamps()
  end
end
