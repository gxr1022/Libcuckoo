/users/Xuran/LIBCUCKOO/scripts/run_libcukoo.sh
latest_folder=$(ls -t ../log | grep -E '^[0-9]{4}-[0-9]{2}-[0-9]{2}-[0-9]{2}-[0-9]{2}-[0-9]{2}$' | head -n1)
/users/Xuran/LIBCUCKOO/scripts/fetch_data_from_log_fixed_ops.sh "$latest_folder"
python /users/Xuran/LIBCUCKOO/scripts/plot_libcukoo_throughput.py  "$latest_folder"
