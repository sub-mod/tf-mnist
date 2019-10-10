echo "# running inference script"

saved_model_cli run --dir /tmp/mnist_saved_model/* --tag_set serve --signature_def classify --inputs image=/opt/app-root/src/official/mnist/examples.npy