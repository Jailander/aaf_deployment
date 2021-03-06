#!/bin/bash

export AAF_TOPICS="
    /scan
    /odom
    /amcl_pose
    /robot_pose
    /wifiscanner
    /current_node
    /current_edge
    /topological_map
    /rosout_filtered
    /diagnostics_agg
    /topological_navigation/Route
    /topological_navigation/Statistics
    /current_node
    /current_edge
    /closest_node
    /do_backtrack/goal
    /speak/goal
    /strands_emails/goal
    /strands_image_tweets/goal
    /chargingServer/goal
    /chargingServer/result
    /chargingServer/cancel
    /docking/goal
    /docking/result
    /docking/cancel
    /undocking/goal
    /undocking/result
    /undocking/cancel
    /map_updates
    /move_base/current_goal
    /charging_task/goal
    /charging_task/result
    /charging_task/cancel
    /maintenance_task/goal
    /maintenance_task/result
    /maintenance_task/cancel
    /task_executor/events
    /emergency_stop_status
    /info_terminal/active_screen
    /info_terminal/task_outcome
    /info_task_server/goal
    /info_task_server/result
    /info_task_server/cancel
    /bellbot/goal
    /bellbot/result
    /bellbot/cancel
    /walking_group_fast/goal
    /walking_group_fast/result
    /walking_group_fast/cancel
    /walking_group_slow/goal
    /walking_group_slow/result
    /walking_group_slow/cancel
    /store_logs/cancel
    /store_logs/goal
    /store_logs/result
    /strands_webserver/display_1/page
    /strands_webserver/display_2/page
    /strands_webserver/display_3/page
    /strands_webserver/display_4/page
    /strands_webserver/display_5/page
    /strands_webserver/display_6/page
    /strands_webserver/display_7/page
    /strands_webserver/display_8/page
    /strands_webserver/display_9/page
"


rosrun mongodb_log mongodb_log.py --nodename-prefix=aaf_logger_ --mongodb-host=werner-left-cortex --mongodb-port=62345 $AAF_TOPICS #> ~/.ros/mongodb_log.log 2>&1
