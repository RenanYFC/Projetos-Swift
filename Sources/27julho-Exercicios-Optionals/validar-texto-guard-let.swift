func validarTexto() {
    func validarTexto(textoInserido: String?) -> Bool {
    
        // Possui o escopo total dentro dessa função
        guard let texto = textoInserido else {
            return false
        }
        print(texto)
        return true
    }
}