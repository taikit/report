begin
  s = File.read(ARGV[0], encoding: 'utf-8')
  s.gsub!('、', '，')
  s.gsub!('。', '．')
  File.open(ARGV[0], 'w') do |f|
    f.puts(s)
  end
rescue SystemCallError => e
  puts %Q(class=[#{e.class}] message=[#{e.message}])
rescue IOError => e
  puts %Q(class=[#{e.class}] message=[#{e.message}])
end
