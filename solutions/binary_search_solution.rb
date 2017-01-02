class Array

  def my_bsearch(target)
    return nil if size == 0
    mid = size/2

    case self[mid] <=> target
    when 0
      return mid
    when 1
      return self.dup.take(mid).my_bsearch(target)
    else
      search_res = self.dup.drop(mid+1).my_bsearch(target)
      search_res.nil? ? nil : mid + 1 + search_res
    end
  end

end
