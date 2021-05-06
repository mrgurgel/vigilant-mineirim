#!/bin/bash

age_in_days_to_be_moved=${INPUT_AGE_IN_DAYS_TO_BE_MOVED}
origin_path=${INPUT_ORIGIN_PATH}
destination_path=${INPUT_DESTINATION_PATH}

function do_move_files() {
  echo "Transferring files older than ${age_in_days_to_be_moved} days, from: ${origin_path} to: ${destination_path}"
  mkdir -p "${destination_path}"
  ls -lsah /data/files/Fundos
  # shellcheck disable=SC2086
  find ${origin_path} -type d -ctime +"${age_in_days_to_be_moved}" -exec mv {} "${destination_path}" \;
  echo "Files moved in $(date)"
}


do_move_files