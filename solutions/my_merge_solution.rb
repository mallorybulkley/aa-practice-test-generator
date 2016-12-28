class Hash

  def my_merge(hash2)
    self_dup = dup

    hash2.each do |k, v|
      self_dup[k] = v
    end

    self_dup
  end

end
