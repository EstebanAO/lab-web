class Link < ApplicationRecord
    enum link_type: %i[Interno Externo]
end
