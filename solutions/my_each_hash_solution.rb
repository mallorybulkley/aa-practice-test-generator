class Hash

  def my_each(&prc)
    keys.each do |k|
      prc.call(k, self[k])
    end
  end

end
