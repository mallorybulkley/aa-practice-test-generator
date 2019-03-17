class Hash
  def my_merge(other_hash)
    duped_hash = self.dup

    other_hash.my_each do |k, v|
      duped_hash[k] = v
    end

    duped_hash
  end
end
