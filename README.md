# Processo seletivo para desenvolvedor mobile

Olá,

Estamos em busca de pessoas que gostem de tecnologia e queiram fazer parte da nossa equipe de desenvolvimento mobile! Se você é um desenvolvedor apaixonado por novas tecnologias, que gosta de trabalhar em equipe e tem vontade de aprender, então essa é a sua chance.

O processo seletivo é simples, vamos pedir que você desenvolva um aplicativo, para que possamos avaliar seu potencial. A instrução completa esta mais abaixo.

Depois dessa etapa, vamos avaliar todos os candidatos que realizarem a submissão no tempo correto, que serão convidados para uma entrevista final, com parte do nosso time, para discutir os detalhes e forma de  trabalho, basicamente para verificarmos se vai dar "_match_".

Caso seja selecionado, você irá trabalhar em um ambiente descontraído e inovador, com profissionais de alta qualidade e muitas oportunidades de aprendizado. Além disso, terá a chance de participar do desenvolvimento de um projeto inovador na área da educação.

E então, vamos nessa? Mostre para nós que você é o profissional que estamos procurando!

## Instruções

Se você resolveu topar o desafio, vamos lá! Primeiro de tudo, faça o **fork** deste repositório. Você deverá desenvolver um aplicativo de previsão do tempo. O aplicativo pode ser desenvolvidor em [Flutter](https://flutter.dev/) ou [React-Native](https://reactnative.dev/).

O resultado final deverá ser parecido com:

![](images/thumbnail-figma.png)

Esta tela pode ser encontrada neste [Figma Community](https://www.figma.com/community/file/1158928016905524023) criado pela [@becabelin](https://www.figma.com/@becabelin). Claro que uma ou outra coisa pode ser adaptada, mas essa adaptação depois poderá ser questionada na entrevista.

Os dados podem ser consumidos da seguinte [API](https://api.hgbrasil.com/weather). Caso queira utilizar outra, escolha uma aberta e envie as intruções de uso, caso necessário.

Ao fim, altere o `README.md` com instruções para instalação e execução do aplicativo.

Os pontos que serão avaliados:

- fidelidade com o mock
- funcionalidade
- organização de componentes
- organização de commits
- organização de código

Boa sorte 🍀! Aguardamos sua submissão!

Aplicativo pronto para uso!
Comentários:

- A API disponibilizada não comtempla o que é necessário para se fazer o contéudo do Widget que indica as temperaturas durante as diversas horas do dia, pois os dados retornados só trazem os informações da hora atual. Visto isso, para não retirar totalmente esse widget, adicionei algumas informações como a hora de 'sunset' e de 'sunrise'. 
- O aplicativo pode ter 5 tipos diferentes de visual, dependendo da condição do tempo que vier na API. Como na explicação do desafio não ficou claro se a cor escura e clara era por causa do dia ou da noite ou se era por causa do clima, então peguei a lista de climas possiveis e transformei em cinco aparências possíveis, tudo depende das inforamções que vão vir da API.
- No último widget onde mostra a previsão dos próximos dias, a API não mostra o tipo de clima dos proximo dias, por isso não tem como definir dinamicamente o tipo de figura que vai aparecer ali, portanto deixei uma nuvem fixa.
- No widget que mostra o vento, não fica claro o que são os outros dois widget, não fica claro quais dados se quer ali, portanto coloquei umidade e probabilidade de chuva.
- Aplicativo está todo em inglês por não havia nenhuma especificação que deveria ser em português e o mock das telas estava em inglês também, com isso ficou em inglês mesmo.



Instalação
Somente baixar o projeto, criar o apk com o código "flutter build apk" e instalar o apk no celular.
