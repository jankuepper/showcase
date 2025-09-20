defmodule Showcase.Content do
  use Ash.Domain,
    otp_app: :showcase

  resources do
    resource Showcase.Content.Post
    resource Showcase.Content.Category
  end
end
