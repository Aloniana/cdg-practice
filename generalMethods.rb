def argumentError?(*args)
  begin
    args.each do |arg|
      arg = Integer(arg)
    end
  rescue ArgumentError
    true
  else
    false
  end
end