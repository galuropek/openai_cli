require 'openai'
require 'dotenv/load'

require 'app/runner'
require 'lib/clients/chat_gpt_client'
require 'app/services/chat_gpt_service'

module OpenaiChat
  class Application
    def call
      puts 'exit - to stop chat'
      loop do
        print 'User: '
        prompt = gets.chomp.strip
        send(:exit) if prompt.eql?('exit')
        response = ChatGPTService.new(prompt).chat
        response_message = response.dig('choices', 0, 'message', 'content')
        puts "ChatGPT: #{response_message}"
      end
    end
  end
end
