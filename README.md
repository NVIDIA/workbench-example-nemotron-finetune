# NVIDIA AI Workbench: Introduction
This is an [NVIDIA AI Workbench](https://developer.nvidia.com/blog/develop-and-deploy-scalable-generative-ai-models-seamlessly-with-nvidia-ai-workbench/) example Project that demonstrates how to fine-tune a NeMotron-3 8B large language model on a custom dataset using NeMo Toolkit and NeMo Framework. Users in the [AI Workbench Early Access Program](https://developer.nvidia.com/ai-workbench-early-access) can get up and running with this Project in minutes.

## Project Description
NeMotron-3 is a robust, powerful family of Large Language Models that can provide compelling responses on a wide range of tasks. While the 8B parameter base model serves as a strong baseline for multiple downstream tasks, they can lack in domain-specific knowledge or proprietary or otherwise sensitive information. Fine-tuning is often used as a means to update a model for a specific task or tasks to better respond to domain-specific prompts. This notebook walks through downloading the NeMotron-3 8B model from Hugging Face, preparing a custom question-answering dataset, and fine-tuning the base model on the dataset using NeMo Framework and parameter-efficient fine-tuning (PEFT) methods like LoRA and P-Tuning.

## System Requirements:
* Operating System: Linux, Windows WSL, or Mac; tested on Ubuntu 20.04
* CPU requirements: None, tested with Intel&reg; Xeon&reg; Platinum 8380 CPU @ 2.30GHz
* GPU requirements: Any NVIDIA training GPU, tested with NVIDIA A100-80GB
* NVIDIA driver requirements: Latest driver version
* Storage requirements: 40GB

# Prerequisites

1. This project uses the NeMo Frameworks Training container. This container is in General Availability and is open to the public through a sign-up form. Sign up for access [here](https://developer.nvidia.com/nemo-framework/join).

2. Before proceeding with this workflow, you will need to ensure you already have the NeMotron 8B model downloaded from Huggingface. If not, please follow these instructions (also provided at the start of the notebook): 
   
   First, the 8B-base variant of NeMotron-3 needs to be downloaded to your machine. To download the model, follow the instructions [here](https://huggingface.co/nvidia/nemotron-3-8b-base-4k) to accept the NVIDIA AI Foundation Models Community License Agreement for access to the models in the NeMotron family. Please note that your HuggingFace account email address MUST match the email you provide on NVIDIA's developer website, or your request will not be approved.
   
   Once approved, use your HuggingFace username and API key to download NeMotron-3 8B (non-chat version) to your workstation where you will be fine-tuning the model. To pull the model files to your local machine, you may navigate on your local machine to the folder you want to contain your model directory and use a ```git lfs clone https://huggingface.co/<namespace>/<repo-name>``` call to [NVIDIA's HF repository](https://huggingface.co/nvidia/nemotron-3-8b-base-4k/tree/main).

   Remember this directory, as this directory will be specified to AI Workbench later as a mount for this project so that you can access the model files while working inside the container. 

# Quickstart
If you have NVIDIA AI Workbench already installed, you can open this Project in AI Workbench on your choice of machine by:

### On Desktop
Fork this Project to your own Github namespace and copy the clone link. Open the Desktop app and select your location of choice. Select "Clone Project" and enter the clone link. Wait for the build to complete. 

Once the build completes, select "Open Jupyterlab" on the top right corner to start the application in a new window; you may be prompted to specify the location of your model for the container to access as a mount. Navigate to the `code` directory of the project. Then, open your NeMotron fine-tuning notebook of choice and get started. Happy coding!

### On CLI
Get started in the CLI by: 

1. Forking this Project to your own GitHub namespace and copying the link

   ```
   https://github.com/[your_namespace]/<project_name>
   ```
   
2. Opening a shell and activating the Context you want to clone into by

   ```
   $ nvwb list contexts
   
   $ nvwb activate <desired_context>
   ```
   
3. Cloning this Project onto your desired machine by running

   ```
   $ nvwb clone project <your_project_link>
   ```
   
4. Opening the Project by

   ```
   $ nvwb list projects
   
   $ nvwb open <project_name>
   ```
   
5. Starting JupyterLab by

   ```
   $ nvwb start jupyterlab
   ```

6. Specify the file path of the mount, eg. where the `nemotron-3-8b-base-4k` model directory lives on your host machine.

   eg. if your downloaded NeMotron model directory resides in your home path, enter ```/home/[user]```

7. Once the JupyterLab application spins up, you can verify that your downloaded ```nemotron-3-8b-base-4k``` model lives under the ```models```directory of the project.

8. Navigate to the `code` directory of the project. Then, open your NeMotron-3 fine-tuning notebook of choice and get started. Happy coding!

---
**Tip:** Use ```nvwb help``` to see a full list of NVIDIA AI Workbench commands. 

---

## Tested On
This notebook has been tested with an NVIDIA A100-80gb GPU and the following version of NVIDIA AI Workbench: ```nvwb 0.13.2 (internal; linux; amd64; go1.21.3; Sat Dec 23 17:47:46 UTC 2023)```

# License
This NVIDIA AI Workbench example project is under the [Apache 2.0 License](https://github.com/NVIDIA/workbench-example-nemotron-finetune/blob/main/LICENSE.txt)

This project will download and install additional third-party open source software projects. Review the license terms of these open source projects before use. Third party components used as part of this project are subject to their separate legal notices or terms that accompany the components. You are responsible for confirming compliance with third-party component license terms and requirements. 
