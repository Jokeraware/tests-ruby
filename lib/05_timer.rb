def time_string (seconds)
    hours = (seconds / 3600) 
    remain = seconds % 3600

    minutes = remain / 60
    remain = seconds % 60

    seconds = remain

    return "#{format('%02d', hours)}:#{format('%02d', minutes)}:#{format('%02d', seconds)}"
end

