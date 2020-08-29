class InvalidCodonError < StandardError; end

class Translation
  TRANSLATOR = { 'Methionine' => %w(AUG), 'Phenylalanine' => %w(UUU UUC),
                 'Leucine' => %w(UUA UUG), 'Serine' => %w(UCU UCC UCA UCG),
                 'Tyrosine' => %w(UAU UAC), 'Cysteine' => %(UGU UGC),
                 'Tryptophan' => %w(UGG), 'STOP' => %w(UAA UAG UGA) }.freeze

  def self.of_codon(codon)
    line = ''
    TRANSLATOR.each do |acid, list|
      line << acid if list.include?(codon)
    end
    line
  end

  def self.of_rna(codon)
    raise InvalidCodonError if codon =~ /[^ACUG]/
    line = []
    codon.scan(/.../).each do |cdn|
      acid = of_codon(cdn)
      return line if acid == 'STOP'
      line << acid
    end
    line
  end
end