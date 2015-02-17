set (post_install_script "PostInstall.sh")
execute_process(COMMAND ${post_install_script}
  WORKING_DIRECTORY ${PROJECT_CURRENT_SOURCE_DIR}
  RESULT_VARIABLE post_install_result
  OUTPUT_VARIABLE post_install_output)

message(STATUS: "${post_install_output}")