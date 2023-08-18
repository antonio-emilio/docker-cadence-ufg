# Use uma imagem base adequada
FROM antonioemiliop13/centos-cadence-ufg

# Crie um diretório no container para armazenar os arquivos
RUN mkdir /app

# Comando padrão a ser executado quando o container for iniciado
CMD ["bash"]
