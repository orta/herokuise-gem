
def installBIN(from, opfile)

  tmp_dir = nil
  for t in [".", "/tmp", "c:/temp", $bindir]
    stat = File.stat(t) rescue next
    if stat.directory? and stat.writable?
      tmp_dir = t
      break
    end
  end

  fail "Cannot find a temporary directory" unless tmp_dir
  tmp_file = File.join(tmp_dir, "_tmp")
    
  File.open(from) do |ip|
    File.open(tmp_file, "w") do |op|
      ruby = File.join($realbindir, $ruby)
      op.puts "#!#{ruby} -w"
      op.write ip.read
    end
  end

  opfile += ".rb" if CONFIG["target_os"] =~ /mswin/i
  File::install(tmp_file, File.join($bindir, opfile), 0755, true)
  File::unlink(tmp_file)
end
