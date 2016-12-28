class Array

  def my_bsearch(target, &prc)
    return nil if size == 0
    prc ||= proc {|a, b| a <=> b}

    mid = size/2

    case prc.call(self[mid], target)
    when 0
      return mid
    when 1
      return self.dup.take(mid).my_bsearch(target, &prc)
    else
      search_res = self.dup.drop(mid+1).my_bsearch(target, &prc)
      search_res.nil? ? nil : mid + 1 + search_res
    end
  end

end
