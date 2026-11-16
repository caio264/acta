# Acta — código-fonte completo

Exportação do projeto Acta | Assistente de programação jurídica por IA.
Site: https://acta-contratos.insper-1495.chatgpt.site
Commit de origem: faab9f26a8c1548c3425121f639dd402bec71ef4
Exportado em 16/11/2026.

## Executar localmente

1. Extraia todo o ZIP.
2. Instale o Python 3, se ainda não o tiver.
3. Abra um terminal na pasta que contém este README.
4. Execute:

Windows:
```powershell
py -m http.server 8000 --bind 127.0.0.1 --directory dist
```

macOS / Linux:
```sh
python3 -m http.server 8000 --bind 127.0.0.1 --directory dist
```

5. Abra http://localhost:8000 no navegador.
6. Para encerrar, pressione Ctrl+C no terminal.

No Windows, também é possível clicar duas vezes em iniciar-windows.bat.
Se a porta estiver ocupada, substitua 8000 por 8001 no comando e no endereço.

## Arquivos

- `dist/index.html`: estrutura e conteúdo das telas.
- `dist/styles.css`: estilos e responsividade.
- `dist/app.js`: navegação e interações da demonstração.
- `dist/demo/`: quatro PDFs fictícios usados na demonstração.
- `dist/robots.txt` e `dist/sitemap.xml`: arquivos do site publicado.
- `scripts/generate_demo_pdfs.py`: código para recriar os PDFs.
- `.openai/hosting.json`: configuração original de hospedagem.
- `acta-site.tar.gz` e `acta-site-v2.tar.gz`: arquivos históricos já presentes no repositório original.
- `requirements-demo.txt`: dependência opcional do gerador de PDFs.

## Dependências e funcionamento

O site é estático: não precisa de Node.js, npm, build, servidor de aplicação,
chave de API ou arquivo .env. O servidor Python apenas entrega os arquivos.
O HTML, CSS e JavaScript em dist são o código-fonte disponível no repositório;
não há projeto React ou backend adicional nesta versão.

A interface apresenta um protótipo acadêmico: login, geração, análise, testes
e salvamento são comportamentos demonstrativos no navegador. Não há chamada
a um modelo de IA, autenticação real, extração de documentos ou persistência
em banco de dados implementadas nesta versão. Os resultados do dossiê são
predefinidos. As alterações de estado da interface se perdem ao recarregar.

A fonte DM Sans é carregada do Google Fonts e requer internet. Sem conexão,
o navegador usa a fonte alternativa definida no CSS. Os arquivos funcionais e
os PDFs estão incluídos no ZIP.

## Recriar os PDFs (opcional)

Os PDFs já estão prontos em dist/demo. Para recriá-los, instale ReportLab:

```sh
python -m pip install -r requirements-demo.txt
python scripts/generate_demo_pdfs.py
```

No Windows use `py` e no macOS/Linux use `python3` caso `python` não exista.

## Publicação e repositório

Esta exportação não altera o site publicado. A pasta pode ser aberta no VS Code
ou enviada para um novo repositório GitHub. Para testar localmente, mantenha a
estrutura das pastas. Metadados Git e credenciais de acesso não fazem parte do ZIP.
