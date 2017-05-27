class A
  attr_reader :extra 
  def initialize(id)
    @id = id.to_s
    @extra = {}
  end
end

a = A.new(10)
puts a.extra
puts a.id
=begin
 if not "attr_reader :id"
   undefined method `id'
=end
