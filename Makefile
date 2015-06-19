all:
	gcc -I ${SAIDIR}/inc rocker/*.c netdev/*.c stub/*.c impl/*.c libsai.c main.c -lpthread
	gcc -I ${SAIDIR}/inc rocker/*.c netdev/*.c stub/*.c impl/*.c libsai.c fdb_notification_sample.c -lpthread -o fdb_notification_sample

debug:
	gcc -I ${SAIDIR}/inc rocker/*.c netdev/*.c stub/*.c impl/*.c libsai.c main.c -g -O0 -lpthread
	gcc -I ${SAIDIR}/inc rocker/*.c netdev/*.c stub/*.c impl/*.c libsai.c fdb_notification_sample.c -g -O0 -lpthread -o fdb_notification_sample
