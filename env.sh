conda create -n mujoco-lerobot python=3.10 -y
conda activate mujoco-lerobot
pip install torch==2.6.0 torchvision==0.21.0 torchaudio==2.6.0 --index-url https://download.pytorch.org/whl/cu124
git clone https://github.com/huggingface/lerobot.git
cd lerobot
git checkout 10b7b3532543b4adfb65760f02a49b4c537afde7
pip install -e .
pip install mujoco==3.1.6 pyautogui matplotlib scipy safetensors==0.5.3 datasets==3.4.1 transformers==4.50.3 nvitop ipykernel
pip uninstall torchcodec -y
conda install "ffmpeg" -c conda-forge -y
conda install nvidia/label/cuda-12.4.0::libnpp -y
pip install torchcodec --index-url=https://download.pytorch.org/whl/cu124
