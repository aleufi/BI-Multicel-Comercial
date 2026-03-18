SELECT C6_FILIAL, C6_NUM, C6_NOTA, C6_TES, C6_CF, C5_MOEDA, C5_EMISSAO, C6_ENTREG, B1_MCCATEG, B1_GRUPO, B1_DESCGRP,
                              case when B1_MCCATEG = '1' then '1 - PIGMENTOS'
                                            when B1_MCCATEG = '2' then '2 - OXIDOS'
                                            when B1_MCCATEG = '3' then '3 - POS-METALICOS'
                                            when B1_MCCATEG = '4' then '4 - DISPERSAO'
                                            when B1_MCCATEG = '5' then '5 - REVENDA'
                                            end  CATEGORIA,
                                            A1_EST, A1_NOME, A1_NREDUZ, A1_VEND, A3_NOME, C5_CONDPAG, E4_DESCRI,
                                            C6_PRCVEN, (C6_PRCVEN * (C5_ACRSFIN / 100 + 1)) AS PRCVENFINAL,
											

											C6_QTDVEN, C6_VALOR, C5_ACRSFIN, C6_PRODUTO, C6_ITEM, C6_DESCRI, 
                              CASE
											WHEN A1_EST  = 'AC' AND C5_MOEDA = '4' THEN (C6_VALOR * 0.8375 * M2_MOEDA4)
                                            WHEN A1_EST  = 'AC' THEN (C6_VALOR * 0.8375)

                                            WHEN A1_EST  = 'AL' AND C5_MOEDA = '4' THEN (C6_VALOR * 0.8375 * M2_MOEDA4)
											WHEN A1_EST  = 'AL' THEN (C6_VALOR * 0.8375)

											WHEN A1_EST  = 'AM' AND C5_MOEDA = '4' THEN (C6_VALOR * 0.8375 * M2_MOEDA4) 
                                            WHEN A1_EST  = 'AM' THEN (C6_VALOR * 0.8375)

                                            WHEN A1_EST  = 'BA' AND C5_MOEDA = '4' THEN (C6_VALOR * 0.8375 * M2_MOEDA4)
											WHEN A1_EST  = 'BA' THEN (C6_VALOR * 0.8375)

                                            WHEN A1_EST  = 'CE' AND C5_MOEDA = '4' THEN (C6_VALOR * 0.8375 * M2_MOEDA4)
											WHEN A1_EST  = 'CE' THEN (C6_VALOR * 0.8375)

											WHEN A1_EST  = 'DF' AND C5_MOEDA = '4' THEN (C6_VALOR * 0.8375 * M2_MOEDA4)
                                            WHEN A1_EST  = 'DF' THEN (C6_VALOR * 0.8375)

                                            WHEN A1_EST  = 'ES' AND C5_MOEDA = '4' THEN (C6_VALOR * 0.8375 * M2_MOEDA4)
											WHEN A1_EST  = 'ES' THEN (C6_VALOR * 0.8375)  

                                            WHEN A1_EST  = 'GO' AND C5_MOEDA = '4' THEN (C6_VALOR * 0.8375 * M2_MOEDA4)
											WHEN A1_EST  = 'GO' THEN (C6_VALOR * 0.8375)

											WHEN A1_EST  = 'MA' AND C5_MOEDA = '4' THEN (C6_VALOR * 0.8375 * M2_MOEDA4)
                                            WHEN A1_EST  = 'MA' THEN (C6_VALOR * 0.8375)

											WHEN A1_EST  = 'MG' AND C5_MOEDA = '4' THEN (C6_VALOR * 0.7875 * M2_MOEDA4)
                                            WHEN A1_EST  = 'MG' THEN (C6_VALOR * 0.7875)

											WHEN A1_EST  = 'MS' AND C5_MOEDA = '4' THEN (C6_VALOR * 0.8375 * M2_MOEDA4)
                                            WHEN A1_EST  = 'MS' THEN (C6_VALOR * 0.8375) 

											WHEN A1_EST  = 'MT' AND C5_MOEDA = '4' THEN (C6_VALOR * 0.8375 * M2_MOEDA4)
                                            WHEN A1_EST  = 'MT' THEN (C6_VALOR * 0.8375)

											WHEN A1_EST  = 'PA' AND C5_MOEDA = '4' THEN (C6_VALOR * 0.8375 * M2_MOEDA4)
                                            WHEN A1_EST  = 'PA' THEN (C6_VALOR * 0.8375)

											WHEN A1_EST  = 'PB' AND C5_MOEDA = '4' THEN (C6_VALOR * 0.8375 * M2_MOEDA4)
                                            WHEN A1_EST  = 'PB' THEN (C6_VALOR * 0.8375)

											WHEN A1_EST  = 'PE' AND C5_MOEDA = '4' THEN (C6_VALOR * 0.8375 * M2_MOEDA4)
                                            WHEN A1_EST  = 'PE' THEN (C6_VALOR * 0.8375)                             

                                            WHEN A1_EST  = 'PI' AND C5_MOEDA = '4' THEN (C6_VALOR * 0.8375 * M2_MOEDA4)
											WHEN A1_EST  = 'PI' THEN (C6_VALOR * 0.8375)

                                            WHEN A1_EST  = 'PR' AND C5_MOEDA = '4' THEN (C6_VALOR * 0.7875 * M2_MOEDA4)
											WHEN A1_EST  = 'PR' THEN (C6_VALOR * 0.7875) 

                                            WHEN A1_EST  = 'RJ' AND C5_MOEDA = '4' THEN (C6_VALOR * 0.7875 * M2_MOEDA4)
											WHEN A1_EST  = 'RJ' THEN (C6_VALOR * 0.7875)

											WHEN A1_EST  = 'RN' AND C5_MOEDA = '4' THEN (C6_VALOR * 0.8375 * M2_MOEDA4) 
                                            WHEN A1_EST  = 'RN' THEN (C6_VALOR * 0.8375)                            

                                            WHEN A1_EST  = 'RO' AND C5_MOEDA = '4' THEN (C6_VALOR * 0.8375 * M2_MOEDA4)
											WHEN A1_EST  = 'RO' THEN (C6_VALOR * 0.8375)

                                            WHEN A1_EST  = 'RR' AND C5_MOEDA = '4' THEN (C6_VALOR * 0.8375 * M2_MOEDA4)
											WHEN A1_EST  = 'RR' THEN (C6_VALOR * 0.8375)

                                            WHEN A1_EST  = 'RS' AND C5_MOEDA = '4' THEN (C6_VALOR * 0.7875 * M2_MOEDA4)
											WHEN A1_EST  = 'RS' THEN (C6_VALOR * 0.7875)

                                            WHEN A1_EST  = 'SC' AND C5_MOEDA = '4' THEN (C6_VALOR * 0.7875 * M2_MOEDA4)
											WHEN A1_EST  = 'SC' THEN (C6_VALOR * 0.7875)

                                            WHEN A1_EST  = 'SE' AND C5_MOEDA = '4' THEN (C6_VALOR * 0.8375 * M2_MOEDA4)
											WHEN A1_EST  = 'SE' THEN (C6_VALOR * 0.8375)

                                            WHEN A1_EST  = 'SP' AND C5_MOEDA = '4' THEN (C6_VALOR * 0.7275 * M2_MOEDA4)
											WHEN A1_EST  = 'SP' THEN (C6_VALOR * 0.7275)

                                            WHEN A1_EST  = 'TO' AND C5_MOEDA = '4' THEN (C6_VALOR * 0.8375 * M2_MOEDA4)
											WHEN A1_EST  = 'TO' THEN (C6_VALOR * 0.8375)

                                            WHEN A1_EST  = 'EX' THEN (C6_VALOR * 1 * M2_MOEDA4)
                                            END                    AS VRLIQ,

											M2_MOEDA4

                              FROM SC6010

							  JOIN SC5010 ON C5_FILIAL = C6_FILIAL AND C5_NUM = C6_NUM
							  JOIN SB1010 ON B1_COD = C6_PRODUTO AND B1_FILIAL = C6_FILIAL
							  JOIN SA1010 ON A1_FILIAL = C6_FILIAL AND A1_COD = C5_CLIENTE
							  JOIN SA3010 ON A3_COD = A1_VEND
							  JOIN SE4010 ON E4_CODIGO = C5_CONDPAG AND E4_FILIAL = C5_FILIAL
							  LEFT JOIN SM2010 ON C6_ENTREG = M2_DATA 

                              WHERE
								
								C6_FILIAL <> '02'
                                and  A1_FILIAL = C6_FILIAL
								and C6_QTDVEN > 0
								--AND C6_QTDENT = 0 
                                AND  C6_CF IN ('5101','5102','5122','6101','6102','6109','6122','7101','7102')
                                AND  C6_BLQ    <> 'R' 
                                --AND  C6_DATFAT = ' '
								AND  C6_ENTREG >= CONVERT(VARCHAR, YEAR(GETDATE()) - 2) + '0101'

								AND SC6010.D_E_L_E_T_ = ''	
								AND SC5010.D_E_L_E_T_ = ''
								AND SA1010.D_E_L_E_T_ = ''
								AND SB1010.D_E_L_E_T_ = ''
								AND SA3010.D_E_L_E_T_ = ''

								AND C6_NUM = '108438'

