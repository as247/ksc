cd /root/redpill-tool-chain
./redpill_tool_chain.sh build bromolow-7.0.1-42218
./redpill_tool_chain.sh auto bromolow-7.0.1-42218
if [ "$?" -ne 0 ]; then
    echo "Failed to create image";

    exit 1;
fi
clear
echo "Image created. Click Download Image to download!"