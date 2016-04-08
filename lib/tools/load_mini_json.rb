# load_mini_json.rb - method load_mini_json

# load_mini_json - reads JSON output from minitest-reporters-json_reporter gem after test run.
# Formats the contents into this buffer.
def load_mini_json buffer, fname
  mini_h = JSON.load(File.read(fname))
  buffer.ins <<-EOD
Status: #{mini_h['status']['code']} on #{mini_h['metadata']['time']}
Total: #{mini_h['statistics']['total']}, #{mini_h['statistics']['failed']} failed, #{mini_h['statistics']['errored']} errors, #{mini_h['statistics']['skipped']} skipped, #{mini_h['statistics']['passed']} passed.
EOD

  mini_h['fails'].each do |f|
    buffer.ins "#{f['type'][0].upcase}:#{f['class']}:#{f['name']}\n"
    buffer.ins "\t#{f['message']}\n"
    buffer.ins "\t#{f['location']}\n"
  end
  mini_h['skips'].each do |f|
        buffer.ins "S:#{f['class']}:#{f['name']}\n"
    buffer.ins "\t#{f['message']}\n"
    buffer.ins "\t#{f['location']}\n"
  end
  buffer.beg
end

