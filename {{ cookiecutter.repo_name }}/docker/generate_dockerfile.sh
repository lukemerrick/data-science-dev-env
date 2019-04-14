DEEP_LEARNING_FRAMEWORKS=$(awk '/#<START>/{flag=1;next}/#<END>/{flag=0}flag' ../deep_learning_requirements.txt | egrep -v "^\s*(#|$)")
CUDA_VERSION=$(grep -oP "CUDA=\K.*" ../deep_learning_requirements.txt)
CUDNN_VERSION=$(grep -oP "CUDNN=\K.*" ../deep_learning_requirements.txt)
ALL_MODULES="python $DEEP_LEARNING_FRAMEWORKS"
echo "> downloading dockerfile generator"
git clone https://github.com/ufoym/deepo.git
cd deepo/generator
echo "> generating docker file that comes with:"
echo "$DEEP_LEARNING_FRAMEWORKS"
echo "CUDA version: $CUDA_VERSION"
echo "CUDNN version: $CUDNN_VERSION"
python generate.py Dockerfile $ALL_MODULES --cuda-ver $CUDA_VERSION --cudnn-ver $CUDNN_VERSION
mv Dockerfile ../../
echo "> cleaning up dockerfile generator"
cd ../../
rm -rf deepo
echo "> appending custom requirements.txt install code to dockerfile"
cat dockerfile_addon.txt >> Dockerfile
mv Dockerfile ../
echo "> done"