# frozen_string_literal: true

class TextComponent < ViewComponent::Base
  def initialize(text:)
    @text = text
  end
end
