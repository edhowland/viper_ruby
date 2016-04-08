# load_mini_json.rb - method load_mini_json

def load_mini_json buffer, fname
  mini_h = JSON.load(File.read(fname))
  buffer.ins <<-EOD
Status: #{mini_h['status']['code']}
Total: #{mini_h['statistics']['total']}, #{mini_h['statistics']['failed']} failed, #{mini_h['statistics']['errored']} errors, #{mini_h['statistics']['skipped']} skipped, #{mini_h['statistics']['passed']} passed.
EOD

  buffer.beg
end

