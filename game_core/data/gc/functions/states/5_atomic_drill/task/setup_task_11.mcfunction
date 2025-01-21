# Set Dialogue
data modify storage atomicdrill dialogue append value "Even hares sprint faster than you recruit!"
data modify storage atomicdrill dialogue append value "Stand beside the shelter when time is up or it's all over!"
schedule function gc:states/5_atomic_drill/task/force_task_done 140t replace