$(document).ready(function(){
    var resultado = $("#distanciaAlcancada"), resultadoEscrito = $("#resultadoImpulsao"), resultadoPotencia = $("#potenciaImpulsao")
    
    resultado.attr('placeholder','DistÃ¢ncia')
    resultadoEscrito.attr('placeholder',"...")
    resultadoEscrito.addClass('resultGray')
    resultado.addClass('resultGray')
    resultadoPotencia.addClass('resultGray')
    
    
        $(".testeDeImpulsao").bind('keyup change mouseover',function (){

            $(document).ready(function(){
                distancia = $("#distanciaAlcancada").val()
                resultado.removeClass('resultGray')
                resultadoEscrito.removeClass('resultGray')

                if (distancia ==""){
                    resultadoEscrito.attr('placeholder',"'DistÃ¢ncia' nÃ£o preenchido")
                    resultadoEscrito.val("")
                    resultadoEscrito.removeClass('resultGray')
                    resultadoEscrito.removeClass('resultMedio')
                    resultadoEscrito.removeClass('resultBom')
                    resultadoEscrito.removeClass('resultRuim')
                    resultadoEscrito.addClass("faltaCampo")
                }
                
                else{
                    
                    
                    if (sexo == "MASCULINO"){
                            if (distancia <61){
                                resultadoEscrito.val('Excelente')
                                resultadoEscrito.addClass('resultBom')
                                resultadoEscrito.removeClass('faltaCampo')
                                resultadoEscrito.removeClass('resultMedio')
                                resultadoEscrito.removeClass('resultRuim')
                            }
                            else if(distancia>=49 && distancia<=61){
                                resultadoEscrito.val('Acima da MÃ©dia')
                                resultadoEscrito.addClass('resultBom')
                                resultadoEscrito.removeClass('faltaCampo')
                                resultadoEscrito.removeClass('resultMedio')
                                resultadoEscrito.removeClass('resultRuim')
                                
                            }
                            else if(distancia>=34 && distancia<49){
                                resultadoEscrito.val('MÃ©dia')
                                resultadoEscrito.addClass('resultMedio')
                                resultadoEscrito.removeClass('resultBom')
                                resultadoEscrito.removeClass('faltaCampo')
                                resultadoEscrito.removeClass('resultRuim')
                                
                            }
    
                            else if(distancia>=21 && distancia<34){
                                resultadoEscrito.val('Abaixo da MÃ©dia')
                                resultadoEscrito.addClass('resultRuim')
                                resultadoEscrito.removeClass('faltaCampo')
                                resultadoEscrito.removeClass('resultBom')
                                resultadoEscrito.removeClass('resultMedio')
                                
                            }
    
                            else if(distancia<21){
                                resultadoEscrito.val('Fraco')
                                resultadoEscrito.addClass('resultRuim')
                                resultadoEscrito.removeClass('faltaCampo')
                                resultadoEscrito.removeClass('resultBom')
                                resultadoEscrito.removeClass('resultMedio')
                                
                            }
                    }/*fim do if de sexo masculino */
    
                    else{
                        if (distancia>33){
                            resultadoEscrito.val('Excelente')
                            resultadoEscrito.addClass('resultBom')
                            resultadoEscrito.removeClass('faltaCampo')
                            resultadoEscrito.removeClass('resultMedio')
                            resultadoEscrito.removeClass('resultRuim')
                            
                        }
                        else if(distancia>=26 && distancia<=33){
                            resultadoEscrito.val('Acima da MÃ©dia')
                            resultadoEscrito.addClass('resultBom')
                            resultadoEscrito.removeClass('faltaCampo')
                            resultadoEscrito.removeClass('resultMedio')
                            resultadoEscrito.removeClass('resultRuim')
                            
                        }
                        else if(distancia>=16 && distancia<26){
                            resultadoEscrito.val('MÃ©dia')
                            resultadoEscrito.addClass('resultMedio')
                            resultadoEscrito.removeClass('resultBom')
                            resultadoEscrito.removeClass('faltaCampo')
                            resultadoEscrito.removeClass('resultRuim')
                            
                        }
    
                        else if(distancia>=06 && distancia<16){
                            resultadoEscrito.val('Abaixo da MÃ©dia')
                            resultadoEscrito.addClass('resultRuim')
                            resultadoEscrito.removeClass('faltaCampo')
                            resultadoEscrito.removeClass('resultBom')
                            resultadoEscrito.removeClass('resultMedio')
                            
                        }
    
                        else if(distancia<06){
                            resultadoEscrito.val('Fraco')
                            resultadoEscrito.addClass('resultRuim')
                            resultadoEscrito.removeClass('faltaCampo')
                            resultadoEscrito.removeClass('resultBom')
                            resultadoEscrito.removeClass('resultMedio')
                            
                        }
                    }
    
                   
                   
                    
                }
    
    
    
            })
            
    
    //resultado da potencia
            $(document).ready(function(){
                var alturaInicial = $("#alturaInicial").val(), alturaSalto = $("#alturaSalto").val()
                resultadoNumero = $("#distanciaAlcanÃ§ada")
                var alturaIndividuo = $("#altura").val(), sexo = $("#sexo").val(), peso =$("#peso").val(), formulaPotencia, d
                formulaDistancia = resultadoNumero
                distanciaAlcancada = $("#distanciaAlcancada").val()
                resultadoPotencia.removeClass('resultGray')
                formulaPotencia = 2.21 * (Number(peso)) * (Math.sqrt(distanciaAlcancada))
    
    
                if (peso == ""){
                    resultadoPotencia.attr('placeholder',"Campo 'Peso' nÃ£o preenchido")
                    resultadoPotencia.val("")
                    resultadoPotencia.removeClass('resultGray')
                    resultadoPotencia.addClass("faltaCampo")
                    }
    
                else{
                    resultadoPotencia.val(formulaPotencia.toFixed(2))
                        resultadoPotencia.removeClass('resultGray')
                        resultadoPotencia.removeClass("faltaCampo")
                }
    
    
                
            })
    
        })
    
    
    
    })