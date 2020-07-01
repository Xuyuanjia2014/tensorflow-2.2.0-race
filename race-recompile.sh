python3 -m pip uninstall tensorflow
bazel build //tensorflow/tools/pip_package:build_pip_package
rm /tmp/tensorflow_pkg/tensorflow-2.2.0-cp36-cp36m-linux_x86_64.whl
./bazel-bin/tensorflow/tools/pip_package/build_pip_package /tmp/tensorflow_pkg
python3 -m pip install /tmp/tensorflow_pkg/tensorflow-2.2.0-cp36-cp36m-linux_x86_64.whl