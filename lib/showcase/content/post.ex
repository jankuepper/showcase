defmodule Showcase.Content.Post do
  use Ash.Resource,
    otp_app: :showcase,
    domain: Showcase.Content,
    data_layer: AshPostgres.DataLayer

  postgres do
    table "posts"
    repo Showcase.Repo
  end

  actions do
    defaults [:read, :destroy]

    create :create do
      accept [:title, :animal_name, :img_url]
    end

    update :update do
      accept [:title, :animal_name, :img_url]
    end
  end

  attributes do
    uuid_primary_key :id

    attribute :title, :string do
      allow_nil? false
      public? true
    end

    attribute :animal_name, :string do
      allow_nil? false
      public? true
    end

    attribute :img_url, :string do
      allow_nil? false
      public? true
    end

    timestamps()
  end
end
