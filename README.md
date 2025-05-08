# 🧠 ViZDoom DRL Projects

This repository showcases Deep Reinforcement Learning (DRL) agents trained in the [ViZDoom](https://github.com/mwydmuch/ViZDoom) environment using different scenarios. It includes implementations of three DRL agents trained on:

1. `Doomed.ipynb` — Basic Doom shooting scenario.
2. `Defend_Center.ipynb` — "Defend the Center" scenario.
3. `deadly_corridor.ipynb` — "Deadly Corridor" scenario.

Each model is trained using the Proximal Policy Optimization (PPO) algorithm from Stable Baselines3 and tracks performance through TensorBoard and log files.

---

## 📁 Project Structure
DOOM/

├── basic_tensorboard/ # TensorBoard logs for basic scenario

├── corridor_tensorboard/ # TensorBoard logs for deadly corridor

├── defend_tensorboard/ # TensorBoard logs for defend the center

├── github/ViZDoom # ViZDoom repo (used for scenarios and config files)

├── logs/

│ ├── log_basic/ # Logs for basic scenario (PPO_1, PPO_2, PPO_3)

│ ├── log_corridor/

│ └── log_defend_the_center/

├── train/

│ ├── train_basic/ # Saved best model for basic scenario

│ ├── train_corridor/ # Saved best model for deadly corridor

│ └── train_defend_the_center/ # Checkpoints of training (10k–100k steps)

├── .vizdoom.ini # Configuration for ViZDoom

├── deadly_corridor.ipynb # Agent for the deadly corridor scenario

├── Defend_Center.ipynb # Agent for defending the center scenario

└── Doomed.ipynb # Agent for basic shooting scenario



---

## ⚙️ Requirements

Make sure to install the following libraries:

```bash
pip install stable-baselines3[extra]
pip install vizdoom
tensorboard
```

**▶️ How to Run**
Each notebook is self-contained and includes:
1. Environment setup
2. Model training
3. Logging (with TensorBoard)
4. Evaluation and rendering

To start training, open a notebook and run the cells. For example:

```bash
jupyter notebook Doomed.ipynb
```

To visualize training logs with TensorBoard:
```bash
tensorboard --logdir basic_tensorboard
```
(You can replace with corridor_tensorboard or defend_tensorboard as needed.)

---

## 🧠 About the Scenarios
This project uses default and custom ViZDoom scenarios and configuration files (.cfg) from the original ViZDoom GitHub repository, which define:
1. Enemy spawning logic
2. Reward shaping
3. Episode length
4. Game mechanics

The .cfg files play a key role in defining how agents receive rewards during training. [I added some cfg files for the game Doom_corridor, remember to change while trying this project directly from repo].

**📊 Logs and TensorBoard**

All PPO training runs are tracked with TensorBoard and saved logs. You can inspect learning curves, rewards, losses, and other metrics by navigating to the appropriate log folder.

Example:
logs/log_basic/PPO_1/

logs/log_defend_the_center/PPO_1/

**📦 Saved Models**

Checkpoints and final trained models are stored in the train/ folder. The train_defend_the_center directory includes 10k-step interval checkpoints for deeper analysis and benchmarking.

---

## 🚧 Challenges & Limitations

While building and training the agents, the following challenges and limitations were encountered:

1. **Hardware Constraints**  
   Training reinforcement learning agents—especially for complex environments like Doom—requires considerable time and computing power. Further improvements in model performance are possible with more training iterations and better hardware (e.g., GPUs or cloud environments).

2. **Corridor Scenario Behavior**  
   While the agents in the *Basic* and *Defend the Center* scenarios are performing well, the agent in the *Deadly Corridor* scenario is currently not behaving as expected. Ideally, it should clear the corridor by defeating all enemies along the way. However, the current model tends to move straight ahead, ignoring enemies. This can likely be resolved by fine-tuning training hyperparameters, reward structure, or increasing training steps.

Plans are in place to address these issues in future iterations.

---

## 🏁 Future Improvements
- Integrate evaluation videos into the repo
- Try alternative algorithms like A2C or DQN
- Experiment with reward shaping and curriculum learning

---

**📎 Credits**

ViZDoom – Doom-based reinforcement learning environment.

Stable Baselines3 – DRL algorithm implementations.
