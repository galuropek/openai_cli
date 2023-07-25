module OpenaiChat
  class ChatGPTClient

    def initialize
      @chat_gpt_client = OpenAI::Client.new(access_token: ENV.fetch("CHATGPT_ACCESS_TOKEN"))
    end

    def chat(params)
      @chat_gpt_client.chat(parameters: params)
    end
  end
end
