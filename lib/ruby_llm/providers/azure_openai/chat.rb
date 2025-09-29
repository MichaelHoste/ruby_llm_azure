# frozen_string_literal: true

module RubyLLM
  module Providers
    class AzureOpenAI
      module Chat
        extend OpenAI::Chat

        module_function

        def render_payload(messages, tools:, temperature:, model:, stream: false, schema: nil)
          # Hold model_id in instance variable for use in completion_url and stream_url
          @model_id = model.id
          super
        end
      end
    end
  end
end
