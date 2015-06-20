require "politokens/version"
require "securerandom"

module Politokens
  class << self
    def politoke(token_range = 9999, delimiter = "-")
      seed = random_seed

      build(seed, token_range, delimiter)
    end

    private

    def build(seed, token_range, delimiter)
      sections = [
        adjectives[seed % adjectives.length],
        nouns[seed % nouns.length],
        token(token_range)
      ]

      sections.compact.join(delimiter)
    end

    def random_seed
      SecureRandom.random_number(4096)
    end

    def token(range)
      SecureRandom.random_number(range) if range > 0
    end

    def adjectives
      %w(
        adaptable adventurous affable affectionate agreeable
        ambitious amiable amicable amusing brave bright
        broad-minded calm careful charming communicative
        compassionate conscientious considerate convivial
        courageous courteous creative decisive determined
        diligent diplomatic discreet dynamic easygoing
        emotional energetic enthusiastic exuberant fair-minded
        faithful fearless forceful frank friendly funny
        generous gentle good gregarious hard-working helpful
        honest humorous imaginative impartial independent
        intellectual intelligent intuitive inventive kind
        loving loyal modest neat nice optimistic passionate
        patient persistent pioneering philosophical placid
        plucky polite powerful practical pro-active
        quick-witted quiet rational reliable reserved
        resourceful romantic self-confident self-disciplined
        sensible sensitive shy sincere sociable straightforward
        sympathetic thoughtful tidy tough unassuming
        understanding versatile warmhearted willing witty
      )
    end

    def nouns
      %w(
        afghanistan aland-islands albania algeria american-samoa
        andorra angola anguilla antarctica antigua-and-barbuda
        argentina armenia aruba australia austria azerbaijan bahamas
        bahrain bangladesh barbados belarus belgium belize benin
        bermuda bhutan bolivia bosnia-and-herzegovina botswana
        bouvet-island brazil british-indian-ocean-territory
        brunei-darussalam bulgaria burkina-faso burundi cambodia
        cameroon canada cape-verde cayman-islands
        central-african-republic chad chile china christmas-island
        cocos-islands colombia comoros congo dr-congo cook-islands
        costa-rica cote-d'ivoire croatia cuba cyprus czech-republic
        denmark djibouti dominica dominican-republic ecuador egypt
        el-salvador equatorial-guinea eritrea estonia ethiopia
        falkland-islands-(malvinas) faroe-islands fiji finland
        france french-guiana french-polynesia
        french-southern-territories gabon gambia georgia germany
        ghana gibraltar greece greenland grenada guadeloupe guam
        guatemala guernsey guinea guinea-bissau guyana haiti
        heard-island-and-mcdonald-islands holy-see honduras
        hong-kong hungary iceland india indonesia iran iraq
        ireland isle-of-man israel italy jamaica japan jersey
        jordan kazakhstan kenya kiribati north-korea south-korea
        kuwait kyrgyzstan laos latvia lebanon lesotho liberia
        libya liechtenstein lithuania luxembourg macao macedonia
        madagascar malawi malaysia maldives mali malta
        marshall-islands martinique mauritania mauritius mayotte
        mexico micronesia moldova monaco mongolia montenegro
        montserrat morocco mozambique myanmar namibia nauru nepal
        netherlands netherlands-antilles new-caledonia new-zealand
        nicaragua niger nigeria niue norfolk-island
        northern-mariana-islands norway oman pakistan palau
        palestine panama papua-new-guinea paraguay peru philippines
        pitcairn poland portugal puerto-rico qatar reunion romania
        russia rwanda saint-helena saint-kitts-and-nevis saint-lucia
        saint-pierre-and-miquelon saint-vincent-and-the-grenadines
        samoa san-marino sao-tome-and-principe saudi-arabia senegal
        serbia seychelles sierra-leone singapore slovakia slovenia
        solomon-islands somalia south-africa spain sri-lanka sudan
        suriname swaziland sweden switzerland syria taiwan
        tajikistan tanzania thailand timor-leste togo tokelau tonga
        trinidad-and-tobago tunisia turkey turkmenistan
        turks-and-caicos-islands tuvalu uganda ukraine
        united-arab-emirates united-kingdom united-states uruguay
        uzbekistan vanuatu venezuela viet-nam virgin-islands
        wallis-and-futuna western-sahara yemen zambia zimbabwe
      )
    end
  end
end
