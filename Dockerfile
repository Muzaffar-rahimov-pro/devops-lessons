FROM ubuntu:20.04

# Paketlarni yangilash
RUN apt-get update && apt-get install -y bash
RUN apt-get update && apt-get install -y bash mysql-client
# Loyihani container ichiga ko‘chirish
COPY scripts/timestamp.sh /usr/local/bin/timestamp.sh

# Ishga ruxsat berish
RUN chmod +x /usr/local/bin/timestamp.sh

# Container ishga tushganda skriptni bajaradi
CMD ["/usr/local/bin/timestamp.sh"]
