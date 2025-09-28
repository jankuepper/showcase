defmodule Showcase.Content do
  use Ash.Domain, otp_app: :showcase, extensions: [AshAdmin.Domain]

  admin do
    show? true
  end

  resources do
    resource Showcase.Content.Post do
      define :read_posts, action: :read
    end

    resource Showcase.Content.Category do
      define :read_categories, action: :read
    end
  end
end
