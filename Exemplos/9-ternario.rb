input_type = gets =~ /hello/i ? "greeting" : "other"

p input_type

input_type =
	  if gets =~ /hello/i
	    "greeting"
	  else
	    "other"
      end

      p input_type
    