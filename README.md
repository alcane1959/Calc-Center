# Calc Center by Center Soft Inc.®

Central modular de cálculos e simulações para uso local no navegador.

## Sobre o projeto

O **Calc Center** reúne ferramentas financeiras, imobiliárias, tributárias, trabalhistas e comparativas em uma interface única. Os módulos são acessados pelo menu lateral e carregados dentro da aplicação principal por meio de um `iframe`.

A interface utiliza um tema escuro com detalhes dourados, tela inicial, configurações de segurança, bloqueio manual e aviso sobre armazenamento local e backups.

## Funcionalidades

- Centralização de calculadoras e simuladores em uma única interface.
- Navegação por menu lateral.
- Carregamento dos módulos sem sair da página principal.
- Controle de acesso com senha local.
- Alteração ou remoção da senha pelas configurações.
- Bloqueio manual da sessão.
- Persistência da senha com `localStorage`.
- Política de uso, backup e responsabilidade integrada.
- Interface em português do Brasil.

## Módulos

| Módulo | Arquivo |
|---|---|
| Projeção Financeira | `Relatório de Projeção Financeira.html` |
| Custos Imobiliários | `Simulador de Custos Imobiliários.html` |
| Simulador PF x PJ | `Simulador IRPF – PF x PJ.html` |
| Cálculo Trabalhista | `Calculo Trabalhista.html` |
| Controle de Reforma | `Controle de Reforma.html` |
| Calculadora Comparativa | `Calculadora Comparativa.html` |

## Tecnologias utilizadas

- HTML5
- CSS3
- JavaScript Vanilla
- `localStorage`
- `iframe`
- Google Fonts: Cinzel e Montserrat

## Estrutura sugerida

```text
calc-center/
├── index.html
├── icon.ico
├── Relatório de Projeção Financeira.html
├── Simulador de Custos Imobiliários.html
├── Simulador IRPF – PF x PJ.html
├── Calculo Trabalhista.html
├── Controle de Reforma.html
└── Calculadora Comparativa.html
```

Os nomes dos arquivos devem permanecer iguais aos utilizados no `index.html`, inclusive espaços, acentos e caracteres especiais.

## Como usar

1. Coloque o `index.html`, o ícone e todos os módulos na mesma pasta.
2. Abra o arquivo `index.html` em um navegador moderno.
3. Na tela inicial, escolha um módulo no menu lateral.
4. Use o botão de configurações para definir ou alterar a senha.
5. Use o botão de cadeado para bloquear o acesso.

> Dependendo das restrições do navegador, alguns recursos locais podem funcionar melhor quando o projeto é servido por um servidor HTTP local.

## Controle de acesso

A senha é armazenada na chave `senhaMaster` do `localStorage`. Quando nenhuma senha foi configurada, o valor inicial é vazio.

O controle de acesso implementado no front-end é adequado como barreira local de conveniência, mas não substitui autenticação de servidor, criptografia ou controle de usuários em ambientes que tratem dados sensíveis.

## Armazenamento e backup

O sistema informa que os dados são mantidos localmente no navegador e que não existe sincronização automática com servidor ou banco de dados em nuvem.

É recomendável executar regularmente as funções de exportação ou backup disponíveis nos módulos e guardar as cópias em um local seguro.

A limpeza dos dados do navegador, a formatação do dispositivo, falhas do sistema operacional e outras ocorrências locais podem causar perda de informações armazenadas no navegador.

## Personalização

As principais cores podem ser alteradas nas variáveis CSS:

```css
:root {
    --bg-deep: #060b1a;
    --accent: #d4af37;
    --border: rgba(255, 255, 255, 0.08);
}
```

Para adicionar um módulo, inclua um novo botão no menu lateral e informe o nome exato do arquivo:

```html
<button class="nav-item"
        title="Nome do módulo"
        onclick="openModule('Nome do Arquivo.html', this)">
    🧮
</button>
```

## Compatibilidade

Utilize um navegador moderno com JavaScript e `localStorage` habilitados.

A imagem de fundo e as fontes são carregadas de serviços externos. Sem conexão com a internet, a aplicação continua dependendo dos estilos locais, mas esses recursos externos podem não ser exibidos.

## Autor

**Alberto de Campos Neto**

**Center Soft Inc.®**

## Licença

Todos os direitos reservados. Defina neste documento os termos de uso, distribuição e modificação aplicáveis ao projeto.

---

## Aviso

> Este projeto é uma demonstração educacional desenvolvida para estudos de HTML, CSS e JavaScript. A empresa mencionada é fictícia e qualquer semelhança com empresas reais é mera coincidência.

