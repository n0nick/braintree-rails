module BraintreeRails
  class Modifications < SimpleDelegator
    include CollectionAssociation
    not_supported_apis(:build)

    def initialize(parent)
      super(parent.raw_object.send(self.class.name.demodulize.underscore))
    end
  end
end
