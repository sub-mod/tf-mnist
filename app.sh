
echo "# running app script"

# is empty check is a must if this value is set from a manifest file
# also always set default values somewhere
if [[ -z "${STOP_THRESHOLD}" ]]; then
  echo "STOP_THRESHOLD is undefined"
fi

if [[ -z "${EXPORT_DIR}" ]]; then
  echo "EXPORT_DIR is undefined"
fi

python official/mnist/mnist.py --data_format 'channels_last' --stop_threshold "${STOP_THRESHOLD:-0.96}" --export_dir "${EXPORT_DIR:-/tmp/mnist_saved_model}"