function calcYoYo(age, distance, gender){
    var form = ((Number(distance) * 0.0084) + 36.4).toFixed(3)
    
    if (gender == "M"){
        if (age <= 25){
            if (form < 30){ return {resultEscrito: "Muito Ruim", resultClass: "Ruim"} }
            else if (form < 36){ return {resultEscrito: "Ruim", resultClass: "Ruim"} }
            else if (form < 41){ return {resultEscrito: "Abaixo da Média", resultClass: "Ruim"} }
            else if (form < 46){ return {resultEscrito: "Média", resultClass: "Medio"} }
            else if (form < 51){ return {resultEscrito: "Acima da Média", resultClass: "Bom"} }
            else if (form < 60){ return {resultEscrito: "Bom", resultClass: "Bom"} }
            else if (form >= 60){ return {resultEscrito: "Excelente", resultClass: "Bom"} }
        } else if (age <= 35){
            if (form < 30){ return {resultEscrito: "Muito Ruim", resultClass: "Ruim"} }
            else if (form < 35){ return {resultEscrito: "Ruim", resultClass: "Ruim"} }
            else if (form < 40){ return {resultEscrito: "Abaixo da Média", resultClass: "Ruim"} }
            else if (form < 43){ return {resultEscrito: "Média", resultClass: "Medio"} }
            else if (form < 49){ return {resultEscrito: "Acima da Média", resultClass: "Bom"} }
            else if (form < 56){ return {resultEscrito: "Bom", resultClass: "Bom"} }
            else if (form >= 57){ return {resultEscrito: "Excelente", resultClass: "Bom"} }
        } else if (age <= 45){
            if (form < 26){ return {resultEscrito: "Muito Ruim", resultClass: "Ruim"} }
            else if (form < 31){ return {resultEscrito: "Ruim", resultClass: "Ruim"} }
            else if (form < 35){ return {resultEscrito: "Abaixo da Média", resultClass: "Ruim"} }
            else if (form < 39){ return {resultEscrito: "Média", resultClass: "Medio"} }
            else if (form < 43){ return {resultEscrito: "Acima da Média", resultClass: "Bom"} }
            else if (form < 51){ return {resultEscrito: "Bom", resultClass: "Bom"} }
            else if (form >= 52){ return {resultEscrito: "Excelente", resultClass: "Bom"} }
        }
    } else {
        if (age <= 25){
            if (form < 28){ return {resultEscrito: "Muito Ruim", resultClass: "Ruim"} }
            else if (form < 32){ return {resultEscrito: "Ruim", resultClass: "Ruim"} }
            else if (form < 37){ return {resultEscrito: "Abaixo da Média", resultClass: "Ruim"} }
            else if (form < 41){ return {resultEscrito: "Média", resultClass: "Medio"} }
            else if (form < 46){ return {resultEscrito: "Acima da Média", resultClass: "Bom"} }
            else if (form < 56){ return {resultEscrito: "Bom", resultClass: "Bom"} }
            else if (form >= 57){ return {resultEscrito: "Excelente", resultClass: "Bom"} }
        } else if (age <= 35){
            if (form < 26){ return {resultEscrito: "Muito Ruim", resultClass: "Ruim"} }
            else if (form < 31){ return {resultEscrito: "Ruim", resultClass: "Ruim"} }
            else if (form < 35){ return {resultEscrito: "Abaixo da Média", resultClass: "Ruim"} }
            else if (form < 39){ return {resultEscrito: "Média", resultClass: "Medio"} }
            else if (form < 45){ return {resultEscrito: "Acima da Média", resultClass: "Bom"} }
            else if (form < 52){ return {resultEscrito: "Bom", resultClass: "Bom"} }
            else if (form >= 52){ return {resultEscrito: "Excelente", resultClass: "Bom"} }
        } else if (age <= 45){
            if (form < 22){ return {resultEscrito: "Muito Ruim", resultClass: "Ruim"} }
            else if (form < 27){ return {resultEscrito: "Ruim", resultClass: "Ruim"} }
            else if (form < 31){ return {resultEscrito: "Abaixo da Média", resultClass: "Ruim"} }
            else if (form < 34){ return {resultEscrito: "Média", resultClass: "Medio"} }
            else if (form < 38){ return {resultEscrito: "Acima da Média", resultClass: "Bom"} }
            else if (form < 45){ return {resultEscrito: "Bom", resultClass: "Bom"} }
            else if (form >= 45){ return {resultEscrito: "Excelente", resultClass: "Bom"} }
        }
    }

}

