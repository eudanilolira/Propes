#funcao para o questionario 
def sedentarismoquestao1a, questao1b, questao2a, questao2b, questao3a, questao3b, questao4b
    somaFrequencia = questao1a + questao2a + questao3a
    somaMinutos = questao3b*questao3a + questao2b*questao2a + questao1b*questao1a

        if questao3a >= 5 && questao3b >= 30 || questao3a >= 3 && questao3b >= 20 && questao2a >= 5 && questao2b >= 30 || questao1a >= 5 && questao1b >= 30 || vigorosa3a >= 3 && somaFrequencia >= 8 && somaMinutos >= 240    
          resultadoEscrito = 'MUITO ATIVO'  
        
        
      
      
        elsif vigorosa3a >= 3 && vigorosa3b >= 20 || moderada2a >= 5 && questao2b >= 30 || questao1a >= 5 && questao1b >= 30
        || somaFrequencia >= 5 && somaMinutos >= 150   
          resultadoEscrito = 'ATIVO'
  
       
        elsif somaFrequencia >= 5 || somaMinutos >= 150   
          console.logsomaFrequencia, somaMinutos
          resultadoEscrito'IRREGULARMENTE ATIVO A'
  
       
        elsif somaFrequencia < 5 && somaFrequencia >=1 && somaMinutos < 150 && somaMinutos >=1   
          console.logsomaFrequencia, somaMinutos
          resultadoEscrito'IRREGULARMENTE ATIVO B'
  
       
        if somaFrequencia == 0 && somaMinutos == 0 
          resultadoEscrito'SEDENTÁRIO'
        end
    end
end



#funcao perimetria
def perimetria(sexo, idade, cintura, quadril)
    if sexo == "MASCULINO"
        /*20 - 29*/
        if idade >=20 && idade <=29 && rcq<0.83
            resultado = 'BAIXO'           
        
        
    
        elsif idade >=20 && idade <=29 && rcq>=0.83 && rcq<=0.88
            resultado = 'MODERADO'            
        
            
        
        elsif idade >=20 && idade <=29 && rcq>0.88 && rcq<=0.94
            resultado = 'ALTO'            
            
            
        
    
        elsif idade >=20 && idade <=29 && rcq>0.94
            resultado = 'MUITO ALTO'
            
        
        
    
        elsif idade >=30 && idade <=39 && rcq>=0.84 && rcq<=0.91
            resultado = 'MODERADO'            
            
        
        elsif idade >=30 && idade <=39 && rcq>0.91 && rcq<=0.96
            resultado = 'ALTO'            
            
        
    
        elsif idade >=30 && idade <=39 && rcq> 0.96
            resultado = 'MUITO ALTO'        
            
            
            
    
        /*40 - 49*/  
        elsif idade >=40 && idade <=49 && rcq<0.88
            resultado = 'BAIXO'            
                        
            
            
        
        
    
        elsif idade >=40 && idade <=49 && rcq>=0.88 && rcq<=0.95
            resultado = 'MODERADO'            
            
            
        
        elsif idade >=40 && idade <=49 && rcq>0.95 && rcq<=1
            resultado = 'ALTO'            
            $'#rcq'.css 'color': '#ff4f4f', 'border-bottom': '5px solid #ff4f4f', 'font-size': '18px'              
            
            
        
    
        elsif idade >=40 && idade <=49 && rcq>1
            resultado = 'MUITO ALTO'        
            
            
            
    
        /*50 - 59*/  
        elsif idade >=50 && idade <=59 && rcq<0.90
            resultado = 'BAIXO'            
                        
            
            
        
        
    
        elsif idade >=50 && idade <=59 && rcq>=0.90 && rcq<=0.96
            resultado = 'MODERADO'            
            
            
        
        elsif idade >=50 && idade <=59 && rcq>0.96 && rcq<=1.02
            resultado = 'ALTO'            
            $'#rcq'.css 'color': '#ff4f4f', 'border-bottom': '5px solid #ff4f4f', 'font-size': '18px'              
            
            
        
    
        elsif idade >=50 && idade <=59 && rcq>1.02
            resultado = 'MUITO ALTO'        
            
            
            
    
        /*60 - 69*/  
        elsif idade >=40 && idade <=49 && rcq<0.91
            resultado = 'BAIXO'            
                        
            
        
        
    
        elsif idade >=60 && idade <=69 && rcq>=0.91 && rcq<=0.98
            resultado = 'MODERADO'            
            
            
        
        elsif idade >=60 && idade <=69 && rcq>0.98 && rcq<=1.03
            resultado = 'ALTO'            
            $'#rcq'.css 'color': '#ff4f4f', 'border-bottom': '5px solid #ff4f4f', 'font-size': '18px'              
            
            
        
    
        elsif idade >=60 && idade <=69 && rcq>1.03
            resultado = 'MUITO ALTO'        
            
            
            
        
    
        
    
        elsif sexo == "FEMININO"
        /*20 - 29*/
        if idade >=20 && idade <=29 && rcq<0.71
            resultado = 'BAIXO'            
                        
            
        
        
        
    
        elsif idade >=20 && idade <=29 && rcq>=0.71 && rcq<=0.77
            resultado = 'MODERADO'            
            
            
        
        elsif idade >=20 && idade <=29 && rcq>0.77 && rcq<=0.82
            resultado = 'ALTO'            
            $'#rcq'.css 'color': '#ff4f4f', 'border-bottom': '5px solid #ff4f4f', 'font-size': '18px'              
            
            
        
    
        elsif idade >=20 && idade <=29 && rcq>0.82
            resultado = 'MUITO ALTO'        
            
            
            
    
        /*30 - 39*/ 
        
        elsif idade >=30 && idade <=39 && rcq<0.72
            resultado = 'BAIXO'            
                        
            
            
        
        
    
        elsif idade >=30 && idade <=39 && rcq>=0.72 && rcq<=0.78
            resultado = 'MODERADO'            
            
            
        
        elsif idade >=30 && idade <=39 && rcq>0.78 && rcq<=0.84
            resultado = 'ALTO'            
            $'#rcq'.css 'color': '#ff4f4f', 'border-bottom': '5px solid #ff4f4f', 'font-size': '18px'              
            
            
        
    
        elsif idade >=30 && idade <=39 && rcq> 0.84
            resultado = 'MUITO ALTO'        
            
            
            
    
        /*40 - 49*/  
        elsif idade >=40 && idade <=49 && rcq<0.73
            resultado = 'BAIXO'            
                        
            
            
        
        
    
        elsif idade >=40 && idade <=49 && rcq>=0.73 && rcq<=0.79
            resultado = 'MODERADO'            
            
            
        
        elsif idade >=40 && idade <=49 && rcq>0.79 && rcq<=0.87
            resultado = 'ALTO'            
            $'#rcq'.css 'color': '#ff4f4f', 'border-bottom': '5px solid #ff4f4f', 'font-size': '18px'              
            
            
        
    
        elsif idade >=40 && idade <=49 && rcq>0.87
            resultado = 'MUITO ALTO'        
            
            
            
    
        /*50 - 59*/  
        elsif idade >=50 && idade <=59 && rcq<0.74
            resultado = 'BAIXO'            
                        
            
            
        
        
    
        elsif idade >=50 && idade <=59 && rcq>=0.74 && rcq<=0.81
            resultado = 'MODERADO'            
            
            
        
        elsif idade >=50 && idade <=59 && rcq>0.81 && rcq<=0.88
            resultado = 'ALTO'            
            $'#rcq'.css 'color': '#ff4f4f', 'border-bottom': '5px solid #ff4f4f', 'font-size': '18px'              
            
            
        
    
        elsif idade >=50 && idade <=59 && rcq>0.88
            resultado = 'MUITO ALTO'        
            
            
            
    
        /*60 - 69*/  
        elsif idade >=40 && idade <=49 && rcq<0.76
            resultado = 'BAIXO'            
                        
            
            
        
        
    
        elsif idade >=60 && idade <=69 && rcq>=0.76 && rcq<=0.83
            resultado = 'MODERADO'            
            $'#rcq'.css 'color': '#5db1ff', 'border-bottom': '5px solid #5db1ff', 'font-size': '18px'              
            
            
        
        elsif idade >=60 && idade <=69 && rcq>0.83 && rcq<=0.9
            resultado = 'ALTO'            
            $'#rcq'.css 'color': '#ff4f4f', 'border-bottom': '5px solid #ff4f4f', 'font-size': '18px'              
            
            
        
    
        elsif idade >=60 && idade <=69 && rcq>0.9
            resultado = 'MUITO ALTO'
            
            $'#rcq'.css 'color': '#ff4f4f', 'border-bottom': '5px solid #ff4f4f', 'font-size': '18px' 

        end
    end
end

#funcao massa corporal gorda
def massaCorporalGorda(percentualDeGordura, peso)
    resultado = (peso*percentualDeGordura)/100
end

#massa magra
def massaMagra(massaCorporalGorda, massaResidual, peso)
    resultado = (peso - massaCorporalGorda)
end

#massa muscular
def massaMuscular(peso, massaGorda, massaOssea, massaResidual)
   resultado = (peso - massaGorda + massaOssea + massaResidual)
end


#massa residual
def massaResidual(peso, sexo)
    if sexo == "M"
        return resultadoMulher = peso * 0.209
    else
       return resultadoHomem = peso*0.241

    end
end


#massa ossea
def massaOssea(be, bu, bf, bm, altura)
    resultado = (((be+bu+bf+bm))/4)elevado ao quadrado * altura * 0.00092
end


#dobras cutaneas
def dobrasCutaneas(sexo, idade, tricipital, supra, subescapular, axilar, peitoral, abdomen, coxa)
    var operacao1 = tricipital+subescapular+axilar+peitoral+subescapular+coxa
        
        var operacao2macho = (Number(tri)+Number(sup)+Number(am)+Number(pei)+Number(sub)+Number(abd))*(Number(tri)+Number(sup)+Number(am)+Number(pei)+Number(sub)+Number(abd))
        operacao2Macho = (tricipital+supra+axilar+peitoral+subescapular+abdomen)*(tricipital+supra+axilar+peitoral+subescapular+abdomen)
        operacao2Femea = (tricipital+supra+axilar+peitoral+subescapular+abdomen+coxa)*(tricipital+supra+axilar+peitoral+subescapular+abdomen)
        dcMacho = 1.112 - ((0.00043499*(operacao1)) + 0.00000055*(operacao2macho) - ((0.0002882*idade)))
        dcFemea = 1.097 - ((0.00046971*(operacao1)) + 0.00000056*(operacao2femea) - ((0.00012828*idade)))
        pgMacho = ((4.95/dcMacho) - 4.50)*100
        pgFemea = ((4.95/dcFemea) - 4.50)*100


        if (sexo == "MASCULINO"
            //18-25
            if (idade >= 18 && idade <=25)
                if (pgMacho >= 4 && pgMacho <=6)
                    resultado = 'EXCELENTE' + ' ' + pgMacho
                   

                
                else if(pgMacho > 6 && pgMacho <=10)
                    resultado = "BOM" + ' ' + pgMacho
                    $('#resultadodobra').css( 'color': '#3CB371', 'border-bottom': '5px solid #3CB371', 'font-size': '18px' )

                
                else if(pgMacho > 10 && pgMacho <=13)
                    resultado ="ACIMA DA MÉDIA" + ' ' + pgMacho
                    $('#resultadodobra').css( 'color': '#8FBC8F', 'border-bottom': '5px solid #8FBC8F', 'font-size': '18px' )

                
                else if(pgMacho > 13 && pgMacho <=16)
                    resultado ="MÉDIA" + ' ' + pgMacho
                    $('#resultadodobra').css( 'color': '#8FBC8F', 'border-bottom': '5px solid #8FBC8F', 'font-size': '18px' )

                
                else if(pgMacho > 16 && pgMacho <=20)
                    resultado ="ABAIXO DA MÉDIA" + ' ' + pgMacho
                    $('#resultadodobra').css( 'color': '#FFD700', 'border-bottom': '5px solid #FFD700', 'font-size': '18px' )

                
                else if(pgMacho > 20 && pgMacho <=24)
                    resultado ="RUIM" + ' ' + pgMacho
                    $('#resultadodobra').css( 'color': '#B22222', 'border-bottom': '5px solid #B22222', 'font-size': '18px' )

                
                else if(pgMacho > 24 && pgMacho <=36)
                    resultado ="MUITO RUIM" + ' ' + pgMacho
                    $('#resultadodobra').css( 'color': '#8B0000', 'border-bottom': '5px solid #8B0000', 'font-size': '18px' )

                
              


            
            
            // 26-35
            else if (idade >= 26 && idade <=35)
                console.log('entrou no if idade 35')
                
                if (pgMacho >= 8 && pgMacho <=11)
                    console.log('entrou no if excelente')
                    resultado ='EXCELENTE' + ' ' + pgMacho
                    $('#resultadodobra').css( 'color': 'green', 'border-bottom': '5px solid green', 'font-size': '18px' )

                
                else if(pgMacho > 11 && pgMacho <=15)

                    resultado ="BOM" + ' ' + pgMacho
                    $('#resultadodobra').css( 'color': '#3CB371', 'border-bottom': '5px solid #3CB371', 'font-size': '18px' )

                
                else if(pgMacho > 15 && pgMacho <=18)

                    resultado ="ACIMA DA MÉDIA" + ' ' + pgMacho
                    $('#resultadodobra').css( 'color': '#8FBC8F', 'border-bottom': '5px solid #8FBC8F', 'font-size': '18px' )

                
                else if(pgMacho > 18 && pgMacho <=20)

                    resultado ="MÉDIA" + ' ' + pgMacho
                    $('#resultadodobra').css( 'color': '#8FBC8F', 'border-bottom': '5px solid #8FBC8F', 'font-size': '18px' )

                
                else if(pgMacho > 20 && pgMacho <=24)

                    resultado ="ABAIXO DA MÉDIA"+ ' ' + pgMacho
                    $('#resultadodobra').css( 'color': '#FFD700', 'border-bottom': '5px solid #FFD700', 'font-size': '18px' )

                
                else if(pgMacho > 20 && pgMacho <=24)

                    resultado ="RUIM"+ ' ' + pgMacho
                    $('#resultadodobra').css( 'color': '#B22222', 'border-bottom': '5px solid #B22222', 'font-size': '18px' )

                
                else if(pgMacho > 24 && pgMacho <=36)

                    resultado ="MUITO RUIM"+ ' ' + pgMacho
                    $('#resultadodobra').css( 'color': '#8B0000', 'border-bottom': '5px solid #8B0000', 'font-size': '18px' )

                
                
                


            

            // 36-45
            else if (idade >= 36 && idade <=45)
                console.log('entrou no if idade 35')
                
                if (pgMacho >= 10 && pgMacho <=14)

                    console.log('entrou no if excelente')
                    resultado ='EXCELENTE' + ' ' + pgMacho
                    $('#resultadodobra').css( 'color': 'green', 'border-bottom': '5px solid green', 'font-size': '18px' )

                
                else if(pgMacho > 14 && pgMacho <=18)

                    resultado ="BOM" + ' ' + pgMacho
                    $('#resultadodobra').css( 'color': '#3CB371', 'border-bottom': '5px solid #3CB371', 'font-size': '18px' )

                
                else if(pgMacho > 18 && pgMacho <=21)

                    resultado ="ACIMA DA MÉDIA" + ' ' + pgMacho
                    $('#resultadodobra').css( 'color': '#8FBC8F', 'border-bottom': '5px solid #8FBC8F', 'font-size': '18px' )

                
                else if(pgMacho > 21 && pgMacho <=23)
                    resultado ="MÉDIA"
                    $('#resultadodobra').css( 'color': '#8FBC8F', 'border-bottom': '5px solid #8FBC8F', 'font-size': '18px' )

                
                else if(pgMacho > 23 && pgMacho <=25)

                    resultado ="ABAIXO DA MÉDIA" + ' ' + pgMacho
                    $('#resultadodobra').css( 'color': '#FFD700', 'border-bottom': '5px solid #FFD700', 'font-size': '18px' )

                
                else if(pgMacho > 26 && pgMacho <=29)

                    resultado ="RUIM" + ' ' + pgMacho
                    $('#resultadodobra').css( 'color': '#B22222', 'border-bottom': '5px solid #B22222', 'font-size': '18px' )

                
                else if(pgMacho > 29 && pgMacho <=39)

                    resultado ="MUITO RUIM" + ' ' + pgMacho

            

        

            

        




        else

        //18-25
        if (idade >= 18 && idade <=25)
            console.log('entrou no if idade 18')
            if (pgFemea >= 13 && pgFemea <=16)
                resultadoNumero.val(pgFemea.toFixed(2))

                console.log('entrou no if excelente')
                resultado ='EXCELENTE')
                $('#resultadodobra').css( 'color': 'green', 'border-bottom': '5px solid green', 'font-size': '18px' )

            
            else if(pgFemea > 16 && pgFemea <=19)
                resultadoNumero.val(pgFemea.toFixed(2))

                resultado ="BOM"
                $('#resultadodobra').css( 'color': '#3CB371', 'border-bottom': '5px solid #3CB371', 'font-size': '18px' )

            
            else if(pgFemea > 19 && pgFemea <=22)
                resultadoNumero.val(pgFemea.toFixed(2))

                resultado ="ACIMA DA MÉDIA"
                $('#resultadodobra').css( 'color': '#8FBC8F', 'border-bottom': '5px solid #8FBC8F', 'font-size': '18px' )

            
            else if(pgFemea > 22 && pgFemea <=25)
                resultadoNumero.val(pgFemea.toFixed(2))

                resultado ="MÉDIA"
                $('#resultadodobra').css( 'color': '#8FBC8F', 'border-bottom': '5px solid #8FBC8F', 'font-size': '18px' )

            
            else if(pgFemea > 25 && pgFemea <=28)
                resultadoNumero.val(pgFemea.toFixed(2))

                resultado ="ABAIXO DA MÉDIA"
                $('#resultadodobra').css( 'color': '#FFD700', 'border-bottom': '5px solid #FFD700', 'font-size': '18px' )

            
            else if(pgFemea > 28 && pgFemea <=31)
                resultadoNumero.val(pgFemea.toFixed(2))

                resultado ="RUIM"
                $('#resultadodobra').css( 'color': '#B22222', 'border-bottom': '5px solid #B22222', 'font-size': '18px' )

            
            else if(pgFemea > 31 && pgFemea <=43)
                resultadoNumero.val(pgFemea.toFixed(2))

                resultado ="MUITO RUIM"
                $('#resultadodobra').css( 'color': '#8B0000', 'border-bottom': '5px solid #8B0000', 'font-size': '18px' )

            
            elseresultadoNumero.val('')
                resultadoEscrito.attr('placeholder', '...')
                resultadoNumero.attr('placeholder',"Fora do Alcance"
                    resultadoEscrito.addClass('resultGray')
                    resultadoEscrito.removeClass("faltaCampo"
                    resultadoNumero.addClass('resultGray')
                    resultadoNumero.removeClass("faltaCampo"
                
            


        

        //26-35
        else if (idade >= 26 && idade <=35)
            resultadoNumero.val(pgFemea.toFixed(2))

            console.log('entrou no if idade 35')
            if (pgFemea >= 14 && pgFemea <=16)
                console.log('entrou no if excelente')
                resultado ='EXCELENTE')
                $('#resultadodobra').css( 'color': 'green', 'border-bottom': '5px solid green', 'font-size': '18px' )

            
            else if(pgFemea > 16 && pgFemea <=20)
                resultadoNumero.val(pgFemea.toFixed(2))

                resultado ="BOM"
                $('#resultadodobra').css( 'color': '#3CB371', 'border-bottom': '5px solid #3CB371', 'font-size': '18px' )

            
            else if(pgFemea > 20 && pgFemea <=23)
                resultadoNumero.val(pgFemea.toFixed(2))

                resultado ="ACIMA DA MÉDIA"
                $('#resultadodobra').css( 'color': '#8FBC8F', 'border-bottom': '5px solid #8FBC8F', 'font-size': '18px' )

            
            else if(pgFemea > 23 && pgFemea <=25)
                resultadoNumero.val(pgFemea.toFixed(2))

                resultado ="MÉDIA"
                $('#resultadodobra').css( 'color': '#8FBC8F', 'border-bottom': '5px solid #8FBC8F', 'font-size': '18px' )

            
            else if(pgFemea > 25 && pgFemea <=29)
                resultadoNumero.val(pgFemea.toFixed(2))

                resultado ="ABAIXO DA MÉDIA"
                $('#resultadodobra').css( 'color': '#FFD700', 'border-bottom': '5px solid #FFD700', 'font-size': '18px' )

            
            else if(pgFemea > 29 && pgFemea <=33)
                resultadoNumero.val(pgFemea.toFixed(2))

                resultado ="RUIM"
                $('#resultadodobra').css( 'color': '#B22222', 'border-bottom': '5px solid #B22222', 'font-size': '18px' )

            
            else if(pgFemea > 33 && pgFemea <=49)
                resultadoNumero.val(pgFemea.toFixed(2))

                resultado ="MUITO RUIM"
                $('#resultadodobra').css( 'color': '#8B0000', 'border-bottom': '5px solid #8B0000', 'font-size': '18px' )

            
            elseresultadoNumero.val('')
                resultadoEscrito.attr('placeholder', '...')
                resultadoNumero.attr('placeholder',"Fora do Alcance"
                    resultadoEscrito.addClass('resultGray')
                    resultadoEscrito.removeClass("faltaCampo"
                    resultadoNumero.addClass('resultGray')
                    resultadoNumero.removeClass("faltaCampo"
                
            


        


        //36-45
        else if (idade >= 36 && idade <=45)
            resultadoNumero.val(pgFemea.toFixed(2))

            console.log('entrou no if idade 35')
            if (pgFemea >= 16 && pgFemea <=19)
                resultadoNumero.val(pgFemea.toFixed(2))

                console.log('entrou no if excelente')
                resultado ='EXCELENTE')
                $('#resultadodobra').css( 'color': 'green', 'border-bottom': '5px solid green', 'font-size': '18px' )

            
            else if(pgFemea > 19  && pgFemea <=23)
                resultadoNumero.val(pgFemea.toFixed(2))

                resultado ="BOM"
                $('#resultadodobra').css( 'color': '#3CB371', 'border-bottom': '5px solid #3CB371', 'font-size': '18px' )

            
            else if(pgFemea > 23 && pgFemea <=26)
                resultadoNumero.val(pgFemea.toFixed(2))

                resultado ="ACIMA DA MÉDIA"
                $('#resultadodobra').css( 'color': '#8FBC8F', 'border-bottom': '5px solid #8FBC8F', 'font-size': '18px' )

            
            else if(pgFemea > 26 && pgFemea <=29)
                resultadoNumero.val(pgFemea.toFixed(2))

                resultado ="MÉDIA"
                $('#resultadodobra').css( 'color': '#8FBC8F', 'border-bottom': '5px solid #8FBC8F', 'font-size': '18px' )

            
            else if(pgFemea > 29 && pgFemea <=32)
                resultadoNumero.val(pgFemea.toFixed(2))

                resultado ="ABAIXO DA MÉDIA"
                $('#resultadodobra').css( 'color': '#FFD700', 'border-bottom': '5px solid #FFD700', 'font-size': '18px' )

            
            else if(pgFemea > 32 && pgFemea <=36)
                resultadoNumero.val(pgFemea.toFixed(2))

                resultado ="RUIM"
                $('#resultadodobra').css( 'color': '#B22222', 'border-bottom': '5px solid #B22222', 'font-size': '18px' )

            
            else if(pgFemea > 36 && pgFemea <=46)
                resultadoNumero.val(pgFemea.toFixed(2))

                resultado ="MUITO RUIM"
                $('#resultadodobra').css( 'color': '#8B0000', 'border-bottom': '5px solid #8B0000', 'font-size': '18px' )

            
            elseresultadoNumero.val('')
            resultadoEscrito.attr('placeholder', '...')
            resultadoNumero.attr('placeholder',"Fora do Alcance"
                resultadoEscrito.addClass('resultGray')
                resultadoEscrito.removeClass("faltaCampo"
                resultadoNumero.addClass('resultGray')
                resultadoNumero.removeClass("faltaCampo"
            
        
        

    


    


