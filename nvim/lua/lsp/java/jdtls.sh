#!/usr/bin/env bash

WORKSPACE="$1"

die () {
  echo
  echo ""
  echo
  exit 1
}

case Linux in
  Linux)
    CONFIG="$HOME/.local/share/nvim/lspinstall/java/config_linux"
    ;;
  Darwin)
    CONFIG="$HOME/.local/share/nvim/lspinstall/java/config_mac"
    ;;
esac

JAR="$HOME/.local/share/nvim/lspinstall/java/plugins/org.eclipse.equinox.launcher_*.jar"

# Determine the Java command to use to start the JVM.
if [ -n "$JAVA_HOME" ] ; then
    if [ -x "$JAVA_HOME/jre/sh/java" ] ; then
        # IBM's JDK on AIX uses strange locations for the executables
        JAVACMD="$JAVA_HOME/jre/sh/java"
    else
        JAVACMD="$JAVA_HOME/bin/java"
    fi
    if [ ! -x "$JAVACMD" ] ; then
        die "ERROR: JAVA_HOME is set to an invalid directory: $JAVA_HOME

Please set the JAVA_HOME variable in your environment to match the
location of your Java installation."
    fi
else
    JAVACMD="java"
    which java >/dev/null 2>&1 || die "ERROR: JAVA_HOME is not set and no 'java' command could be found in your PATH.

Please set the JAVA_HOME variable in your environment to match the
location of your Java installation."
fi

  # -Xbootclasspath/a:/home/hewenjin/.local/share/nvim/lspinstall/java/lombok.jar \
  # -Dlog.protocol=true \
  # -Dlog.level=ALL \
"$JAVACMD" \
  --add-modules=ALL-SYSTEM \
  --add-opens java.base/java.util=ALL-UNNAMED \
  --add-opens java.base/java.lang=ALL-UNNAMED \
  -Declipse.application=org.eclipse.jdt.ls.core.id1 \
  -Dosgi.bundles.defaultStartLevel=4 \
  -Declipse.product=org.eclipse.jdt.ls.core.product \
  -Dfile.encoding=utf-8 \
  -noverify \
  -Xms1G \
  -Xmx2G \
  -javaagent:$HOME/.local/share/nvim/lspinstall/java/lombok.jar \
  -jar $(echo "$JAR") \
  -configuration "$CONFIG" \
  -data "$WORKSPACE"
