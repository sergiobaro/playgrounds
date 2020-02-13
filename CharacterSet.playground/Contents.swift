import UIKit


var allowedCharacters = CharacterSet.alphanumerics
allowedCharacters.insert(charactersIn: "_")


func clean(_ name: String) -> String {
    let result = name
        .replacingOccurrences(of: " ", with: "_")
        .components(separatedBy: allowedCharacters.inverted)
        .joined()
    
    return String(result)
}

func clean(eventName: String) -> String {
    let result = eventName
        .replacingOccurrences(of: " ", with: "_")
        .components(separatedBy: nameAllowedCharacters.inverted)
        .joined()
        .prefix(eventNameMaxLength)
    
    return String(result)
}

func clean(parameters: [String: Any]) -> [String: Any] {
    let result = parameters.reduce(into: [String: Any]()) { result, pair in
        let parameterName = clean(eventName: pair.key)
        result[parameterName] = pair.value
    }
    
    return result
}

clean("onboarding")
clean("login")
clean("cambio_contraseña")
clean("personalizacion_acceso")
clean("personalizacion_mover")
clean("personalizacion_guardar")
clean("menu_balance")
clean("menu_hamburguesa")
clean("menu_ayuda")
clean("menu_perfil")
clean("shortcut_general")
clean("shortcut_favoritos")
clean("evo_assistant")
clean("búsqueda_voz")
clean("videotutorial")
clean("semaforo_actualizaciones")
clean("semaforo_market")
clean("recomienda_evo")
clean("contratacion_acceso")
clean("amazon_form_importe")
clean("amazon_form_pago")
clean("amazon_compartir_código")
clean("áéíóúÁÉÍÓÚ")
