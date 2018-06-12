
#IMAGE: Get the base image for Liberty
FROM websphere-liberty:webProfile7

#BINARIES: Add in all necessary application binaries
COPY ./server.xml /config
COPY ./binary/application/* /config/dropins


#FEATURES: Install any features that are required
RUN /opt/ibm/wlp/bin/installUtility install  --acceptLicense \
	jsp-2.3 \
	ejbLite-3.2 \
	wmqJmsClient-2.0 \
	mdb-3.2 \
	jms-2.0 \
	jdbc-4.1 \
	wasJmsServer-1.0 \
	wasJmsClient-2.0; exit 0

