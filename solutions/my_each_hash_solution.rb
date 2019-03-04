class Hash

  def my_each(&prc)
    keys.each do |k|
      prc.call(k, self[k])
    end
  end

  # def my_each(&prc)
  #   k = 0
  #   while k < keys.length
  #     prc.call(keys[k], self[keys[k]])
  #     k+=1
  #   end
  # end

end
