pub contract Farm {


   pub let allCrops: [String]

   pub let details: {String: Yield}

    pub struct Yield {
        pub var month: String

        pub var quantity: Int

        init(_month: String, _quantity: Int) {
            self.month = _month
            self.quantity = _quantity
        }
    }
   
    pub fun addCrops(crop: String) {
        self.allCrops.append(crop)
    }
 pub fun addYield(crop: String, month: String, quantity: Int) {
    
         if let existingYield = self.details[crop] {
            
            self.details[crop] = Yield(_month: month, _quantity: quantity)
        } else {
            
            self.details[crop] = Yield(_month: month, _quantity: quantity)
        }
    }
    init() {
        self.allCrops = []

        self.details = {}
    }
    
}
