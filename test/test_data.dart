import 'package:globo_esporte_api/globo_esporte_api.dart';

final campeonato = Campeonato.fromJson({
  "edicao": {
    "data_inicio": "2021-05-29",
    "data_fim": "2021-12-05",
    "nome": "Campeonato Brasileiro 2021",
    "regulamento": "As 20 equipes se enfrentam em turno e returno e, ao fim das 38 rodadas, o time com o maior número de pontos fica com o título brasileiro, enquanto os quatro últimos são rebaixados para a Série B.\r\nEm caso de igualdade na pontuação, são critérios de desempate: 1) mais vitórias, 2) melhor saldo de gols, 3) mais gols pró, 4) confronto direto, 5) menos cartões vermelhos, 6) menos cartões amarelos, 7) sorteio.\r\nOs quatro primeiros entram na fase de grupos da Libertadores 2020, enquanto o quinto e o sexto colocados disputam as fases prévias da Libertadores. Caso o campeão da Libertadores e/ou o campeão da Copa do Brasil e/ou o campeão da Sul-Americana estejam no G-6, a equipe seguinte garante vaga na competição continental."
  },
  "fase": {
    "tipo": {
      "tipo_id": "1",
      "descricao": "Pontos Corridos"
    },
    "disclaimer": "",
    "slug": "fase-unica-campeonato-brasileiro-2021"
  },
  "faixas_classificacao": [
    {
      "cor": "#0000ff",
      "id": 3100,
      "nome": "Libertadores"
    },
    {
      "cor": "#00ffff",
      "id": 3101,
      "nome": "Pré-Libertadores"
    },
    {
      "cor": "#008000",
      "id": 3102,
      "nome": "Sul-Americana"
    },
    {
      "cor": "#ff0000",
      "id": 3103,
      "nome": "Rebaixados"
    }
  ],
  "classificacao": [
    {
      "ordem": 1,
      "variacao": 0,
      "pontos": 32,
      "nome_popular": "Palmeiras",
      "sigla": "PAL",
      "vitorias": 10,
      "escudo": "https://s.glbimg.com/es/sde/f/organizacoes/2019/07/06/Palmeiras.svg",
      "equipe_id": 275,
      "aproveitamento": 76.2,
      "jogos": 14,
      "derrotas": 2,
      "faixa_classificacao_cor": "#0000ff",
      "faixa_classificacao": {
        "cor": "#0000ff"
      },
      "ultimos_jogos": [
        "v",
        "v",
        "v",
        "v",
        "e"
      ],
      "saldo_gols": 13,
      "gols_pro": 25,
      "gols_contra": 12,
      "empates": 2
    },
    {
      "ordem": 2,
      "variacao": 0,
      "pontos": 31,
      "nome_popular": "Atlético-MG",
      "sigla": "CAM",
      "vitorias": 10,
      "escudo": "https://s.glbimg.com/es/sde/f/organizacoes/2018/03/10/atletico-mg.svg",
      "equipe_id": 282,
      "aproveitamento": 73.8,
      "jogos": 14,
      "derrotas": 3,
      "faixa_classificacao_cor": "#0000ff",
      "faixa_classificacao": {
        "cor": "#0000ff"
      },
      "ultimos_jogos": [
        "v",
        "v",
        "v",
        "v",
        "v"
      ],
      "saldo_gols": 11,
      "gols_pro": 21,
      "gols_contra": 10,
      "empates": 1
    },
    {
      "ordem": 3,
      "variacao": 0,
      "pontos": 27,
      "nome_popular": "Fortaleza",
      "sigla": "FOR",
      "vitorias": 8,
      "escudo": "https://s.glbimg.com/es/sde/f/organizacoes/2021/04/13/fortaleza.svg",
      "equipe_id": 356,
      "aproveitamento": 64.3,
      "jogos": 14,
      "derrotas": 3,
      "faixa_classificacao_cor": "#0000ff",
      "faixa_classificacao": {
        "cor": "#0000ff"
      },
      "ultimos_jogos": [
        "v",
        "v",
        "v",
        "v",
        "d"
      ],
      "saldo_gols": 10,
      "gols_pro": 22,
      "gols_contra": 12,
      "empates": 3
    },
    {
      "ordem": 4,
      "variacao": 0,
      "pontos": 27,
      "nome_popular": "Bragantino",
      "sigla": "BGT",
      "vitorias": 7,
      "escudo": "https://s.glbimg.com/es/sde/f/organizacoes/2021/06/28/bragantino.svg",
      "equipe_id": 280,
      "aproveitamento": 64.3,
      "jogos": 14,
      "derrotas": 1,
      "faixa_classificacao_cor": "#0000ff",
      "faixa_classificacao": {
        "cor": "#0000ff"
      },
      "ultimos_jogos": [
        "e",
        "e",
        "e",
        "d",
        "v"
      ],
      "saldo_gols": 9,
      "gols_pro": 25,
      "gols_contra": 16,
      "empates": 6
    },
    {
      "ordem": 5,
      "variacao": 1,
      "pontos": 24,
      "nome_popular": "Flamengo",
      "sigla": "FLA",
      "vitorias": 8,
      "escudo": "https://s.glbimg.com/es/sde/f/organizacoes/2018/04/10/Flamengo-2018.svg",
      "equipe_id": 262,
      "aproveitamento": 66.7,
      "jogos": 12,
      "derrotas": 4,
      "faixa_classificacao_cor": "#00ffff",
      "faixa_classificacao": {
        "cor": "#00ffff"
      },
      "ultimos_jogos": [
        "d",
        "v",
        "v",
        "v",
        "v"
      ],
      "saldo_gols": 14,
      "gols_pro": 25,
      "gols_contra": 11,
      "empates": 0
    },
    {
      "ordem": 6,
      "variacao": -1,
      "pontos": 23,
      "nome_popular": "Athletico-PR",
      "sigla": "CAP",
      "vitorias": 7,
      "escudo": "https://s.glbimg.com/es/sde/f/organizacoes/2019/09/09/Athletico-PR.svg",
      "equipe_id": 293,
      "aproveitamento": 59,
      "jogos": 13,
      "derrotas": 4,
      "faixa_classificacao_cor": "#00ffff",
      "faixa_classificacao": {
        "cor": "#00ffff"
      },
      "ultimos_jogos": [
        "d",
        "e",
        "d",
        "v",
        "d"
      ],
      "saldo_gols": 6,
      "gols_pro": 21,
      "gols_contra": 15,
      "empates": 2
    },
    {
      "ordem": 7,
      "variacao": 0,
      "pontos": 22,
      "nome_popular": "Ceará",
      "sigla": "CEA",
      "vitorias": 5,
      "escudo": "https://s.glbimg.com/es/sde/f/organizacoes/2019/10/10/ceara.svg",
      "equipe_id": 354,
      "aproveitamento": 52.4,
      "jogos": 14,
      "derrotas": 2,
      "faixa_classificacao_cor": "#008000",
      "faixa_classificacao": {
        "cor": "#008000"
      },
      "ultimos_jogos": [
        "e",
        "e",
        "v",
        "e",
        "v"
      ],
      "saldo_gols": 4,
      "gols_pro": 17,
      "gols_contra": 13,
      "empates": 7
    },
    {
      "ordem": 8,
      "variacao": 4,
      "pontos": 19,
      "nome_popular": "Santos",
      "sigla": "SAN",
      "vitorias": 5,
      "escudo": "https://s.glbimg.com/es/sde/f/organizacoes/2018/03/12/santos.svg",
      "equipe_id": 277,
      "aproveitamento": 45.2,
      "jogos": 14,
      "derrotas": 5,
      "faixa_classificacao_cor": "#008000",
      "faixa_classificacao": {
        "cor": "#008000"
      },
      "ultimos_jogos": [
        "v",
        "d",
        "e",
        "d",
        "v"
      ],
      "saldo_gols": 0,
      "gols_pro": 16,
      "gols_contra": 16,
      "empates": 4
    },
    {
      "ordem": 9,
      "variacao": -1,
      "pontos": 19,
      "nome_popular": "Atlético-GO",
      "sigla": "ACG",
      "vitorias": 5,
      "escudo": "https://s.glbimg.com/es/sde/f/organizacoes/2020/07/02/atletico-go-2020.svg",
      "equipe_id": 373,
      "aproveitamento": 45.2,
      "jogos": 14,
      "derrotas": 5,
      "faixa_classificacao_cor": "#008000",
      "faixa_classificacao": {
        "cor": "#008000"
      },
      "ultimos_jogos": [
        "e",
        "e",
        "d",
        "v",
        "e"
      ],
      "saldo_gols": -3,
      "gols_pro": 12,
      "gols_contra": 15,
      "empates": 4
    },
    {
      "ordem": 10,
      "variacao": -1,
      "pontos": 17,
      "nome_popular": "Bahia",
      "sigla": "BAH",
      "vitorias": 5,
      "escudo": "https://s.glbimg.com/es/sde/f/organizacoes/2018/03/11/bahia.svg",
      "equipe_id": 265,
      "aproveitamento": 40.5,
      "jogos": 14,
      "derrotas": 7,
      "faixa_classificacao_cor": "#008000",
      "faixa_classificacao": {
        "cor": "#008000"
      },
      "ultimos_jogos": [
        "v",
        "d",
        "d",
        "d",
        "d"
      ],
      "saldo_gols": -5,
      "gols_pro": 18,
      "gols_contra": 23,
      "empates": 2
    },
    {
      "ordem": 11,
      "variacao": -1,
      "pontos": 17,
      "nome_popular": "Corinthians",
      "sigla": "COR",
      "vitorias": 4,
      "escudo": "https://s.glbimg.com/es/sde/f/organizacoes/2019/09/30/Corinthians.svg",
      "equipe_id": 264,
      "aproveitamento": 40.5,
      "jogos": 14,
      "derrotas": 5,
      "faixa_classificacao_cor": "#008000",
      "faixa_classificacao": {
        "cor": "#008000"
      },
      "ultimos_jogos": [
        "v",
        "d",
        "d",
        "v",
        "d"
      ],
      "saldo_gols": -2,
      "gols_pro": 12,
      "gols_contra": 14,
      "empates": 5
    },
    {
      "ordem": 12,
      "variacao": -1,
      "pontos": 17,
      "nome_popular": "Fluminense",
      "sigla": "FLU",
      "vitorias": 4,
      "escudo": "https://s.glbimg.com/es/sde/f/organizacoes/2018/03/11/fluminense.svg",
      "equipe_id": 266,
      "aproveitamento": 43.6,
      "jogos": 13,
      "derrotas": 4,
      "faixa_classificacao_cor": "#008000",
      "faixa_classificacao": {
        "cor": "#008000"
      },
      "ultimos_jogos": [
        "v",
        "e",
        "v",
        "d",
        "d"
      ],
      "saldo_gols": -2,
      "gols_pro": 10,
      "gols_contra": 12,
      "empates": 5
    },
    {
      "ordem": 13,
      "variacao": 0,
      "pontos": 16,
      "nome_popular": "Juventude",
      "sigla": "JUV",
      "vitorias": 4,
      "escudo": "https://s.glbimg.com/es/sde/f/organizacoes/2021/04/29/Juventude-2021-01.svg",
      "equipe_id": 286,
      "aproveitamento": 41,
      "jogos": 13,
      "derrotas": 5,
      "faixa_classificacao_cor": null,
      "faixa_classificacao": {
        "cor": null
      },
      "ultimos_jogos": [
        "d",
        "d",
        "e",
        "d",
        "v"
      ],
      "saldo_gols": -5,
      "gols_pro": 9,
      "gols_contra": 14,
      "empates": 4
    },
    {
      "ordem": 14,
      "variacao": 0,
      "pontos": 15,
      "nome_popular": "Internacional",
      "sigla": "INT",
      "vitorias": 3,
      "escudo": "https://s.glbimg.com/es/sde/f/organizacoes/2018/03/11/internacional.svg",
      "equipe_id": 285,
      "aproveitamento": 35.7,
      "jogos": 14,
      "derrotas": 5,
      "faixa_classificacao_cor": null,
      "faixa_classificacao": {
        "cor": null
      },
      "ultimos_jogos": [
        "d",
        "e",
        "v",
        "d",
        "e"
      ],
      "saldo_gols": -6,
      "gols_pro": 12,
      "gols_contra": 18,
      "empates": 6
    },
    {
      "ordem": 15,
      "variacao": 1,
      "pontos": 14,
      "nome_popular": "Sport",
      "sigla": "SPT",
      "vitorias": 3,
      "escudo": "https://s.glbimg.com/es/sde/f/organizacoes/2018/03/11/sport.svg",
      "equipe_id": 292,
      "aproveitamento": 33.3,
      "jogos": 14,
      "derrotas": 6,
      "faixa_classificacao_cor": null,
      "faixa_classificacao": {
        "cor": null
      },
      "ultimos_jogos": [
        "e",
        "d",
        "v",
        "e",
        "v"
      ],
      "saldo_gols": -3,
      "gols_pro": 8,
      "gols_contra": 11,
      "empates": 5
    },
    {
      "ordem": 16,
      "variacao": -1,
      "pontos": 13,
      "nome_popular": "Cuiabá",
      "sigla": "CUI",
      "vitorias": 2,
      "escudo": "https://s.glbimg.com/es/sde/f/organizacoes/2018/12/26/Cuiaba_EC.svg",
      "equipe_id": 1371,
      "aproveitamento": 33.3,
      "jogos": 13,
      "derrotas": 4,
      "faixa_classificacao_cor": null,
      "faixa_classificacao": {
        "cor": null
      },
      "ultimos_jogos": [
        "e",
        "e",
        "v",
        "d",
        "e"
      ],
      "saldo_gols": -3,
      "gols_pro": 13,
      "gols_contra": 16,
      "empates": 7
    },
    {
      "ordem": 17,
      "variacao": 0,
      "pontos": 12,
      "nome_popular": "São Paulo",
      "sigla": "SAO",
      "vitorias": 2,
      "escudo": "https://s.glbimg.com/es/sde/f/organizacoes/2018/03/11/sao-paulo.svg",
      "equipe_id": 276,
      "aproveitamento": 28.6,
      "jogos": 14,
      "derrotas": 6,
      "faixa_classificacao_cor": "#ff0000",
      "faixa_classificacao": {
        "cor": "#ff0000"
      },
      "ultimos_jogos": [
        "v",
        "v",
        "d",
        "d",
        "e"
      ],
      "saldo_gols": -8,
      "gols_pro": 9,
      "gols_contra": 17,
      "empates": 6
    },
    {
      "ordem": 18,
      "variacao": 0,
      "pontos": 11,
      "nome_popular": "América-MG",
      "sigla": "AME",
      "vitorias": 2,
      "escudo": "https://s.glbimg.com/es/sde/f/organizacoes/2019/02/28/America-MG-VERDE-fev2019-01.svg",
      "equipe_id": 327,
      "aproveitamento": 26.2,
      "jogos": 14,
      "derrotas": 7,
      "faixa_classificacao_cor": "#ff0000",
      "faixa_classificacao": {
        "cor": "#ff0000"
      },
      "ultimos_jogos": [
        "d",
        "d",
        "d",
        "e",
        "e"
      ],
      "saldo_gols": -8,
      "gols_pro": 11,
      "gols_contra": 19,
      "empates": 5
    },
    {
      "ordem": 19,
      "variacao": 0,
      "pontos": 7,
      "nome_popular": "Grêmio",
      "sigla": "GRE",
      "vitorias": 1,
      "escudo": "https://s.glbimg.com/es/sde/f/organizacoes/2018/03/12/gremio.svg",
      "equipe_id": 284,
      "aproveitamento": 19.4,
      "jogos": 12,
      "derrotas": 7,
      "faixa_classificacao_cor": "#ff0000",
      "faixa_classificacao": {
        "cor": "#ff0000"
      },
      "ultimos_jogos": [
        "d",
        "e",
        "v",
        "e",
        "d"
      ],
      "saldo_gols": -8,
      "gols_pro": 6,
      "gols_contra": 14,
      "empates": 4
    },
    {
      "ordem": 20,
      "variacao": 0,
      "pontos": 4,
      "nome_popular": "Chapecoense",
      "sigla": "CHA",
      "vitorias": 0,
      "escudo": "https://s.glbimg.com/es/sde/f/organizacoes/2021/06/21/CHAPECOENSE-2018.svg",
      "equipe_id": 315,
      "aproveitamento": 9.5,
      "jogos": 14,
      "derrotas": 10,
      "faixa_classificacao_cor": "#ff0000",
      "faixa_classificacao": {
        "cor": "#ff0000"
      },
      "ultimos_jogos": [
        "d",
        "d",
        "d",
        "d",
        "d"
      ],
      "saldo_gols": -14,
      "gols_pro": 11,
      "gols_contra": 25,
      "empates": 4
    }
  ],
  "lista_jogos": [
    {
      "id": 270418,
      "data_realizacao": "2021-08-06T19:00",
      "hora_realizacao": "19:00",
      "placar_oficial_visitante": null,
      "placar_oficial_mandante": null,
      "placar_penaltis_visitante": null,
      "placar_penaltis_mandante": null,
      "equipes": {
        "mandante": {
          "id": 292,
          "nome_popular": "Sport",
          "sigla": "SPT",
          "escudo": "https://s.glbimg.com/es/sde/f/organizacoes/2018/03/11/sport.svg"
        },
        "visitante": {
          "id": 280,
          "nome_popular": "Bragantino",
          "sigla": "BGT",
          "escudo": "https://s.glbimg.com/es/sde/f/organizacoes/2021/06/28/bragantino.svg"
        }
      },
      "sede": {
        "nome_popular": "Ilha do Retiro"
      },
      "transmissao": null
    },
    {
      "id": 270419,
      "data_realizacao": "2021-08-07T18:00",
      "hora_realizacao": "18:00",
      "placar_oficial_visitante": null,
      "placar_oficial_mandante": null,
      "placar_penaltis_visitante": null,
      "placar_penaltis_mandante": null,
      "equipes": {
        "mandante": {
          "id": 293,
          "nome_popular": "Athletico-PR",
          "sigla": "CAP",
          "escudo": "https://s.glbimg.com/es/sde/f/organizacoes/2019/09/09/Athletico-PR.svg"
        },
        "visitante": {
          "id": 276,
          "nome_popular": "São Paulo",
          "sigla": "SAO",
          "escudo": "https://s.glbimg.com/es/sde/f/organizacoes/2018/03/11/sao-paulo.svg"
        }
      },
      "sede": {
        "nome_popular": "Arena da Baixada"
      },
      "transmissao": null
    },
    {
      "id": 270414,
      "data_realizacao": "2021-08-07T21:00",
      "hora_realizacao": "21:00",
      "placar_oficial_visitante": null,
      "placar_oficial_mandante": null,
      "placar_penaltis_visitante": null,
      "placar_penaltis_mandante": null,
      "equipes": {
        "mandante": {
          "id": 275,
          "nome_popular": "Palmeiras",
          "sigla": "PAL",
          "escudo": "https://s.glbimg.com/es/sde/f/organizacoes/2019/07/06/Palmeiras.svg"
        },
        "visitante": {
          "id": 356,
          "nome_popular": "Fortaleza",
          "sigla": "FOR",
          "escudo": "https://s.glbimg.com/es/sde/f/organizacoes/2021/04/13/fortaleza.svg"
        }
      },
      "sede": {
        "nome_popular": "Allianz Parque"
      },
      "transmissao": null
    },
    {
      "id": 270421,
      "data_realizacao": "2021-08-07T21:00",
      "hora_realizacao": "21:00",
      "placar_oficial_visitante": null,
      "placar_oficial_mandante": null,
      "placar_penaltis_visitante": null,
      "placar_penaltis_mandante": null,
      "equipes": {
        "mandante": {
          "id": 1371,
          "nome_popular": "Cuiabá",
          "sigla": "CUI",
          "escudo": "https://s.glbimg.com/es/sde/f/organizacoes/2018/12/26/Cuiaba_EC.svg"
        },
        "visitante": {
          "id": 265,
          "nome_popular": "Bahia",
          "sigla": "BAH",
          "escudo": "https://s.glbimg.com/es/sde/f/organizacoes/2018/03/11/bahia.svg"
        }
      },
      "sede": {
        "nome_popular": "Arena Pantanal"
      },
      "transmissao": null
    },
    {
      "id": 270413,
      "data_realizacao": "2021-08-08T16:00",
      "hora_realizacao": "16:00",
      "placar_oficial_visitante": null,
      "placar_oficial_mandante": null,
      "placar_penaltis_visitante": null,
      "placar_penaltis_mandante": null,
      "equipes": {
        "mandante": {
          "id": 277,
          "nome_popular": "Santos",
          "sigla": "SAN",
          "escudo": "https://s.glbimg.com/es/sde/f/organizacoes/2018/03/12/santos.svg"
        },
        "visitante": {
          "id": 264,
          "nome_popular": "Corinthians",
          "sigla": "COR",
          "escudo": "https://s.glbimg.com/es/sde/f/organizacoes/2019/09/30/Corinthians.svg"
        }
      },
      "sede": {
        "nome_popular": "Vila Belmiro"
      },
      "transmissao": null
    },
    {
      "id": 270415,
      "data_realizacao": "2021-08-08T16:00",
      "hora_realizacao": "16:00",
      "placar_oficial_visitante": null,
      "placar_oficial_mandante": null,
      "placar_penaltis_visitante": null,
      "placar_penaltis_mandante": null,
      "equipes": {
        "mandante": {
          "id": 327,
          "nome_popular": "América-MG",
          "sigla": "AME",
          "escudo": "https://s.glbimg.com/es/sde/f/organizacoes/2019/02/28/America-MG-VERDE-fev2019-01.svg"
        },
        "visitante": {
          "id": 266,
          "nome_popular": "Fluminense",
          "sigla": "FLU",
          "escudo": "https://s.glbimg.com/es/sde/f/organizacoes/2018/03/11/fluminense.svg"
        }
      },
      "sede": {
        "nome_popular": "Independência"
      },
      "transmissao": null
    },
    {
      "id": 270420,
      "data_realizacao": "2021-08-08T16:00",
      "hora_realizacao": "16:00",
      "placar_oficial_visitante": null,
      "placar_oficial_mandante": null,
      "placar_penaltis_visitante": null,
      "placar_penaltis_mandante": null,
      "equipes": {
        "mandante": {
          "id": 286,
          "nome_popular": "Juventude",
          "sigla": "JUV",
          "escudo": "https://s.glbimg.com/es/sde/f/organizacoes/2021/04/29/Juventude-2021-01.svg"
        },
        "visitante": {
          "id": 282,
          "nome_popular": "Atlético-MG",
          "sigla": "CAM",
          "escudo": "https://s.glbimg.com/es/sde/f/organizacoes/2018/03/10/atletico-mg.svg"
        }
      },
      "sede": {
        "nome_popular": "Alfredo Jaconi"
      },
      "transmissao": null
    },
    {
      "id": 270412,
      "data_realizacao": "2021-08-08T18:15",
      "hora_realizacao": "18:15",
      "placar_oficial_visitante": null,
      "placar_oficial_mandante": null,
      "placar_penaltis_visitante": null,
      "placar_penaltis_mandante": null,
      "equipes": {
        "mandante": {
          "id": 262,
          "nome_popular": "Flamengo",
          "sigla": "FLA",
          "escudo": "https://s.glbimg.com/es/sde/f/organizacoes/2018/04/10/Flamengo-2018.svg"
        },
        "visitante": {
          "id": 285,
          "nome_popular": "Internacional",
          "sigla": "INT",
          "escudo": "https://s.glbimg.com/es/sde/f/organizacoes/2018/03/11/internacional.svg"
        }
      },
      "sede": {
        "nome_popular": "Maracanã"
      },
      "transmissao": null
    },
    {
      "id": 270417,
      "data_realizacao": "2021-08-08T18:15",
      "hora_realizacao": "18:15",
      "placar_oficial_visitante": null,
      "placar_oficial_mandante": null,
      "placar_penaltis_visitante": null,
      "placar_penaltis_mandante": null,
      "equipes": {
        "mandante": {
          "id": 354,
          "nome_popular": "Ceará",
          "sigla": "CEA",
          "escudo": "https://s.glbimg.com/es/sde/f/organizacoes/2019/10/10/ceara.svg"
        },
        "visitante": {
          "id": 373,
          "nome_popular": "Atlético-GO",
          "sigla": "ACG",
          "escudo": "https://s.glbimg.com/es/sde/f/organizacoes/2020/07/02/atletico-go-2020.svg"
        }
      },
      "sede": {
        "nome_popular": "Castelão (CE)"
      },
      "transmissao": null
    },
    {
      "id": 270416,
      "data_realizacao": "2021-08-09T20:00",
      "hora_realizacao": "20:00",
      "placar_oficial_visitante": null,
      "placar_oficial_mandante": null,
      "placar_penaltis_visitante": null,
      "placar_penaltis_mandante": null,
      "equipes": {
        "mandante": {
          "id": 284,
          "nome_popular": "Grêmio",
          "sigla": "GRE",
          "escudo": "https://s.glbimg.com/es/sde/f/organizacoes/2018/03/12/gremio.svg"
        },
        "visitante": {
          "id": 315,
          "nome_popular": "Chapecoense",
          "sigla": "CHA",
          "escudo": "https://s.glbimg.com/es/sde/f/organizacoes/2021/06/21/CHAPECOENSE-2018.svg"
        }
      },
      "sede": {
        "nome_popular": "Arena do Grêmio"
      },
      "transmissao": null
    }
  ],
  "lista_jogos_unica": true,
  "lista_tipo_unica": true,
  "rodada": {
    "atual": 15,
    "ultima": 38
  }
});