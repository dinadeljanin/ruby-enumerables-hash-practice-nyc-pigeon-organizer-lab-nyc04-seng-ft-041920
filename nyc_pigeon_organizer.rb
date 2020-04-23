def nyc_pigeon_organizer(data)
  birb_list = {}
  data.each do |key, value|
    value.each do |attr, names|
      names.each do |name|
        puts name # names repeat?
        # https://medium.com/@jaredrayjohnson1/ruby-operators-double-pipe-equals-bfcbe21a7177
        # for this example here:
        # a = nil
        # array = ["apple","orange","banana"]
        # array.each do |fruit|
        # a ||= fruit
        # end #=> ["apple","orange","banana"]
        # a #=> "apple"
        birb_list[name] ||= {} # but names don't repeat
        birb_list[name][key] ||= [] # now we get all the original keys into the hash with their own arrays
        birb_list[name][key] << attr.to_s # convert to s because it would be a symbol otherwise
      end
    end
  end
  birb_list # implicit return
end
