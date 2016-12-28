def median
  return nil if empty?
  sorted = self.sort
  if length.odd?
    sorted[length / 2]
  else
    (sorted[length / 2] + sorted[length / 2 - 1]).fdiv(2)
  end
end
