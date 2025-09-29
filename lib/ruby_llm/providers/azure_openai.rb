# frozen_string_literal: true

module RubyLLM
  module Providers
    class AzureOpenAI < OpenAI
      include AzureOpenAI::Chat
    end
  end
end
