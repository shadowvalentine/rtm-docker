
if [ ! -f /rathena/make ]; then
  echo "Warning: ./configure will be executed with provided values";
  ./configure --enable-debug
fi

make clean server;