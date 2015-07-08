describe Moticons::Icon do

  before do
    @icon = Moticons::Icon.new(:ion, :star)
  end

  describe '.new' do
    it 'creates an instance with the correct attributes' do
      @icon.should.be.an.instance_of(Moticons::Icon)
      @icon.collection.should == :ion
      @icon.name.should == :star
      # defaults
      @icon.size.should == 42
      @icon.color.should == UIColor.blackColor
    end

    it 'allows collection name and icon name to be combined' do
      @icon = Moticons::Icon.new(:ion_ios_heart_outline)
      @icon.collection.should == :ion
      @icon.name.should == :iosHeartOutline # converts to camelcase too
    end

    it 'allows you to specify a size' do
      @icon = Moticons::Icon.new(:ion_ios_heart_outline, size: 123)
      @icon.size.should == 123
    end

    it 'allows you to specify a color' do
      @icon = Moticons::Icon.new(:ion_ios_heart_outline, color: UIColor.redColor)
      @icon.color.should == UIColor.redColor
    end
  end

  describe '#to_string' do
    it 'converts the instance to an NSAttributedString' do
      string = @icon.to_string
      string.should.be.a.kind_of(NSAttributedString)
    end
  end

  describe '#to_image' do
    it 'converts the instance to a UIImage' do
      string = @icon.to_image
      string.should.be.a.kind_of(UIImage)
    end
  end

  describe 'icon_string' do
    it 'provides a shorthand way of doing the same thing' do
      @icon.to_string.should == icon_string(:ion, :star)
    end
  end

  describe 'icon_image' do
    it 'provides a shorthand way of doing the same thing' do
      image1 = UIImagePNGRepresentation @icon.to_image
      image2 = UIImagePNGRepresentation icon_image(:ion, :star)
      image1.should.be.isEqual image2
    end
  end
end

# Due to a RubyMotion limitation, we need to define the
# Objective-C methods that will be called dynamically.
class FAKIonIcons
  class << self
    alias :original_starIconWithSize :starIconWithSize
    def starIconWithSize(size)
      original_starIconWithSize(size)
    end

    alias :original_iosHeartOutlineIconWithSize :iosHeartOutlineIconWithSize
    def iosHeartOutlineIconWithSize(size)
      original_iosHeartOutlineIconWithSize(size)
    end
  end
end
