
def factory_404_partner():
    partner = {
        'name': 'Frangão',
	    'email': 'Frangão@papito.com.br',
	    'whatsapp': '11998999999',
	    'business': 'Restaurante'
    }
    return partner

def factory_enable_partner():
    partner = {
        'name': 'Doceria do Papito',
	    'email': 'doceria@papito.net',
	    'whatsapp': '11999999999',
	    'business': 'Conveniência'
    }
    return partner

def factory_remove_partner():
    partner = {
        'name': 'Adega do Papito',
	    'email': 'adega@papito.net',
	    'whatsapp': '11999999999',
	    'business': 'Conveniência'
    }
    return partner


def factory_disable_partner():
    partner = {
        'name': 'Mercado Noite',
	    'email': 'contato@papito.com.br',
	    'whatsapp': '11999999999',
	    'business': 'Supermercado'
    }
    return partner



def factory_new_partner():
    partner = {
        'name': 'Pizzas Papito',
	    'email': 'contato@papito.com.br',
	    'whatsapp': '11999999999',
	    'business': 'Restaurante'
    }
    return partner 

def factory_dup_name():
    partner = {
        'name': 'Adega do João',
	    'email': 'contato@joao.com.br',
	    'whatsapp': '61999999999',
	    'business': 'Conveniência'
    }
    return partner 


def factory_partner_list():

    p_list = [
        {
        'name': 'Mercearia da Mary Jane',
	    'email': 'contato@mmj.com.br',
	    'whatsapp': '51999999999',
	    'business': 'Conveniência'
        },
        {
        'name': 'Mercadinho São Francisco',
	    'email': 'contato@msf.com.br',
	    'whatsapp': '85999999999',
	    'business': 'Supermercado'
        },
        {
        'name': 'Bom de Prato',
	    'email': 'contato@joao.com.br',
	    'whatsapp': '22999999999',
	    'business': 'Restaurante'
        }
    ]

    return p_list 

