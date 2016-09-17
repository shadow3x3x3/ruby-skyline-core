# EXT Array
class Array
  # dominate function in skyline for array
  def dominate?(array)
    pre_check_skyline_domiante(array)
    flag       = 0
    check_flag = size
    each_with_index do |attr, index|
      flag += 1       if attr >  array[index]
      flag -= 1       if attr <  array[index]
      check_flag -= 1 if attr == array[index]
    end
    return false if flag == check_flag     # be dominated
    return true  if flag == 0 - check_flag # dominate
    nil
  end

  # skyline attributes aggregate for array
  def aggregate(array)
    pre_check_skyline_domiante(array)
    aggregate_array = []
    raise ArgumentError, "Need Array not #{array.class}"    unless array.class == Array
    each_with_index do |attr, index|
      aggregate_array << (attr + array[index]).round(6)
    end
    aggregate_array
  end

  # Skyline Error Handling
  def pre_check_skyline_domiante(target_array)
    unless target_array.class == Array
      raise ArgumentError, "excpet (Array) got (#{target_array.class})" 
    end

    unless size == target_array.size
      raise ArgumentError,
        "size dosen't match, excpet (#{size}) got (#{target_array.size})"
    end
  end
end
