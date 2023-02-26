class Network < ActiveRecord::Base
    belongs_to :show
    
    def sorry
        "We're sorry about passing on John Mulaney's pilot"
    end
end
