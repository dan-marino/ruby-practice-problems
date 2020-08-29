# The following list contains the names of individuals who are pioneers 
# in the field of computing or that have had a significant influence on the field. 
# The names are in an encrypted form, though, using a simple (and incredibly weak) 
# form of encryption called Rot13.

require 'pry'
def reverse_rot13(str)
  alph = ("a".."z").to_a

  str.split.map do |word|
    word.split('').map do |let|
      if let =~ /\W/
        let
        next
      end
      num = alph.find_index(let.downcase) - 13
      num += 26 if num < 0
      let == let.upcase ? alph[num].upcase : alph[num]
    end.join
  end.join(' ')
end


pioneers = ["Nqn Ybirynpr",
"Tenpr Ubccre",
"Nqryr Tbyqfgvar",
"Nyna Ghevat",
"Puneyrf Onoontr",
"Noqhyynu Zhunzznq ova Zhfn ny-Xujnevmzv",
"Wbua Ngnanfbss",
"Ybvf Unvog",
"Pynhqr Funaaba",
"Fgrir Wbof",
"Ovyy Tngrf",
"Gvz Orearef-Yrr",
"Fgrir Jbmavnx",
"Xbaenq Mhfr",
"Fve Nagbal Ubner",
"Zneiva Zvafxl",
"Lhxvuveb Zngfhzbgb",
"Unllvz Fybavzfxv",
"Tregehqr Oynapu"]


pioneers.each do |pioneer|
  p reverse_rot13(pioneer)
end