# load_mini_json.rb - method load_mini_json

# load_mini_json - reads JSON output from minitest-reporters-json_reporter gem after test run.
# Formats the contents into this buffer.
def load_mini_json buffer, fname
  mini_h = JSON.load(File.read(fname))
  buffer.ins <<-EOD
Status: #{mini_h['status']['code']} on #{mini_h['metadata']['time']}
#{mini_h['statistics']['total']} Total, #{mini_h['statistics']['assertions']} assertions 
#{mini_h['statistics']['failures']} failed, #{mini_h['statistics']['errors']} errors, #{mini_h['statistics']['skips']} skipped, #{mini_h['statistics']['passes']} passed.
EOD

  mini_h['fails'].each do |f|
    buffer.ins "#{f['type'][0].upcase}:#{f['class']}:#{f['name']}\n"
    buffer.ins "\t#{f['message']}\n"
    buffer.ins "\t#{f['location']}\n"
    if f['type'] == 'error'
      buffer.ins(f['backtrace'].map {|e| "\t#{e}" }.join("\n"))
    end
  end

  if mini_h['skips']
    mini_h['skips'].each do |f|
      buffer.ins "S:#{f['class']}:#{f['name']}\n"
      buffer.ins "\t#{f['message']}\n"
      buffer.ins "\t#{f['location']}\n"
    end
  end
  buffer.beg
end

