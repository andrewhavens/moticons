module Moticons
  class Icon
    COLLECTION_CLASSES = {
      awesome: :FAKFontAwesome,
      foundation: :FAKFoundationIcons,
      ion: :FAKIonIcons,
      zocial: :FAKZocial
    }

    attr_reader :collection, :name, :size, :color

    def initialize(collection, name = nil, options = {})
      if name.is_a?(Hash)
        options = name; name = nil
      end
      if name.nil?
        collection, name = collection.split('_', 2)
      end
      @collection = collection.to_sym
      @name = camelize(name).to_sym
      @size = options.fetch(:size, 42)
      @color = options.fetch(:color, UIColor.blackColor)

      create_instance
    end

    def to_image
      @instance.imageWithSize(CGSizeMake(size, size))
    end

    def to_string
      @instance.attributedString
    end

  private

    def create_instance
      raise "Unknown icon collection name: #{collection}" unless COLLECTION_CLASSES.has_key? collection

      collection_class = Kernel.const_get(COLLECTION_CLASSES[collection])

      if collection_class.respond_to?("#{name}IconWithSize")
        @instance = collection_class.send("#{name}IconWithSize", size)
        @instance.addAttribute(NSForegroundColorAttributeName, value: color)
      else
        raise "#{name} is an invalid icon name for the #{collection} collection"
      end
    end

    def camelize(string)
      string.split('_').inject([]){ |buffer,e| buffer.push(buffer.empty? ? e : e.capitalize) }.join
    end
  end
end

def icon_string(collection, name = nil, options = {})
  Moticons::Icon.new(collection, name, options).to_string
end

def icon_image(collection, name = nil, options = {})
  Moticons::Icon.new(collection, name, options).to_image
end
