### Steps to launch Circuit Training
- Update the input netlist, plc file and hyperparameters in 
`run_scripts/ct_setup.sh`
- Use the following command to launch the reverb-server, training job, 
evaluation job, and collector jobs.
```
# Starts reverb server, training job and evaluation job
./run_scripts/start_ct_training.sh

# To exit from the tmux server press ctrl+b then press d and then launch the 
# collector jobs

# The following command starts seven collector jobs
./run_scripts/start_ct_training_client.sh
```
- If you want to launch the collector jobs on different machine, please ensure 
all the machines shares the same storage area and use the following steps to 
launch collector jobs.
  - Update `REVERB_SERVER` ip in `run_scripts/start_ct_training_client.sh` with 
  the ip of the machine on which you have launched the reverb-server.
  - Update the number of collector jobs you want to start. For this please edit
   line 5 of `run_scripts/start_ct_training_client.sh`. We observed that each 
   collector jobs can use upto 8 thread so if your machine has 96 cpus then you
    should launch 12 collector jobs.
  - Edit line 5 accordingly before launching the collector job on multiple 96 CPU machine. 
  ```
  # Line 5 of `run_scripts/start_ct_training_client.sh` Collector job on machine 1
  ./run_scripts/start_collect_jobs.sh 0 11
  # Line 5 of `run_scripts/start_ct_training_client.sh` Collector job on machine 2
  ./run_scripts/start_collect_jobs.sh 12 23
  ```