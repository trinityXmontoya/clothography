class Search

  def self.find_results(search_terms)
    results = []
    Brand.all.each do |brand|
      return Listing.where("brand_id = ?",brand.id) if search_terms.include? brand.name.downcase 
      end
    end

end
