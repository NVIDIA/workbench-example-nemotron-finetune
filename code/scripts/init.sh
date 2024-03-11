echo "Initializing the Nemotron-3 8b model."

if [ ! -d "/project/models/nemotron-3-8b-base-4k" ]; then
    echo "Cloning the model weights"
    cd /project/models && git lfs clone https://$HF_USERNAME:$HF_API_KEY@huggingface.co/nvidia/nemotron-3-8b-base-4k
    echo "nemotron-3-8b-base-4k is ready"
else
    echo "nemotron-3-8b-base-4k already exists. Skipping."
fi

sleep 3
echo "Nemotron-3 8b model is initialized."
