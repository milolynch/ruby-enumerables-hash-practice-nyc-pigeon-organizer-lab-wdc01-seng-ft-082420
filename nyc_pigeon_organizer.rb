require 'pry'
def nyc_pigeon_organizer(data)
  # write your code here!
  new_data = {}
  names = []
  attrabutes = [:color, :gender, :live]
  attrabutes_dic={:color => [], :gender => [], :live => []}
  lives = [] 
  names_color = {}
  gender = [:male, :female]
  data.each do |attrabute_name, dic|
    tempcolor = []
    dic.each do |attrabute, ary|
      index = 0
      if attrabute_name == :color
        ary.each do |name|
          names.push(name)
        end
        binding.pry
      end
      while (index < names.size) do
        names_color.merge!({ names[index] => [attrabute.to_s] })
        index +=1
        #nding.pry
      end
      binding.pry
    end
    binding.pry
    names = names.uniq
    index = 0
    while (index < names.size) do
      new_data.merge!({ names[index] => attrabutes_dic})
      index +=1
    end
    
    binding.pry
  end
  new_data
end