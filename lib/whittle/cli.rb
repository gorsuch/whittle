module Whittle
  class CLI
    def run
      ARGF.lines.each do |l|
        DB[:events].insert(:time => Time.now, :data => data.hstore)
      end
    end
  end
end
