module CanonicalFilter

  def canonical_url(arg)
    arg.gsub("/index.html","") 
  end
end

Liquid::Template.register_filter(CanonicalFilter)