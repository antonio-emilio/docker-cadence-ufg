# Use uma imagem base adequada
FROM antonioemiliop13/centos-cadence-ufg

# Crie um diretório no container para armazenar os arquivos
RUN mkdir /app

# Copie os arquivos do host para o container
COPY meus-arquivos/* /app/

# Comando padrão a ser executado quando o container for iniciado
CMD ["bash"]
