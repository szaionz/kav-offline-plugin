#!/data/data/com.termux/files/usr/bin/env sh
set -e

apt-get update && apt-get install -y openjdk-${OPENJDK_VERSION}
curl -Lo otp.jar https://github.com/opentripplanner/OpenTripPlanner/releases/download/v${OTP_VERSION}/otp-shaded-${OTP_VERSION}.jar
cp /data/data/com.termux/files/usr/lib/libz.so.1 /data/data/com.termux/files/usr/lib/jvm/java-${OPENJDK_VERSION}-openjdk/lib
tar czf /out/kav_offline_${ARCH}_openjdk-${OPENJDK_VERSION}_otp-${OTP_VERSION}.tar.gz -C /data/data/com.termux/files .
