module SlackMathbot
  module Commands
    class Gif < SlackRubyBot::Commands::Base
      command 'gif' do |client, data, _match|
        client.say(channel: data.channel, text: Giphy.random(_match.to_s).url)
      end
    end
  end
end
