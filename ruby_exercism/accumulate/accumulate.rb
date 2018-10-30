class Array
  def accumulate
    inject([]) {|storage, external_block| storage << yield(external_block)}
  end
end


# [].accumulate { |e| e * e}