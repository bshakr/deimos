module Deimos
  module Endpoints
    class Metrics < Sinatra::Application
      def initialize(metrics:)
        @metrics = metrics
        super
      end
      disable :logging
      set :logger, Deimos.logger

      get "/*" do
        content_type :text
        Prometheus::Client::Formats::Text.marshal(@metrics.registry)
      end
      
    end
  end
end
