cp ../../src/MQTTClient.c .
sed -e 's/""/"MQTTLinux.h"/g' ../../src/MQTTClient.h > MQTTClient.h
mipsel-openwrt-linux-gcc stdoutpub_2.c uart.c cJSON.c -lm -I. -I ../../src -I ../../src/linux -I ../../../MQTTPacket/src MQTTClient.c ../../src/linux/MQTTLinux.c ../../../MQTTPacket/src/MQTTFormat.c  ../../../MQTTPacket/src/MQTTPacket.c ../../../MQTTPacket/src/MQTTDeserializePublish.c ../../../MQTTPacket/src/MQTTConnectClient.c ../../../MQTTPacket/src/MQTTSubscribeClient.c ../../../MQTTPacket/src/MQTTSerializePublish.c -o stdoutpub_2 ../../../MQTTPacket/src/MQTTConnectServer.c ../../../MQTTPacket/src/MQTTSubscribeServer.c ../../../MQTTPacket/src/MQTTUnsubscribeServer.c ../../../MQTTPacket/src/MQTTUnsubscribeClient.c

