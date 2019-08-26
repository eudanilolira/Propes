module UsersHelper
    def getMask(attr)
        if attr == 'date_birth'
            return '00/00/0000'
        elsif attr == 'cep'
            return '00000-000'
        elsif attr == 'cellphone'
            return '(99)99999999'
        elsif attr == 'cpf'
            return '000.000.000-00'
        end
    end

    def getPlaceholder(attr)
        if attr == 'name'
            return 'Seu nome completo'
        elsif attr == 'email'
            return 'ex: seu@email.com'
        elsif attr == 'cpf'
            return 'ex: 123.000.758-00'
        elsif attr == 'address' 
            return 'ex: Rua dos atleta, 130'         
        elsif attr == 'cell_phone'
            return 'ex: (81) 99999999'
        elsif attr == 'home_phone'
            return 'ex: (81) 33511486'
        elsif attr == 'state'
            return 'ex: PE'
        elsif attr == 'city'
            return 'ex: Olinda'
        elsif attr == 'neighborhood'
            return 'ex: Laranjeiras'
        elsif attr == 'profession'
            return 'ex: Atleta'
        elsif attr == 'date_birth'
            return 'ex: 20/04/1999'
        elsif attr == 'cep'
            return 'ex: 55555-555'
        end
    end


end
