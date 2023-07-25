# frozen_string_literal: true

class Runner
  def self.start
    OpenaiChat::Application.new.call
  end
end
