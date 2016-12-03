# docker-openfoam4
docker build -t ludwigprager/openfoam4:0.1 .

# start a shell
docker run -ti --rm \
	-v /root/projects/openfoam4/bridg3d-git:/3d \
	ludwigprager/openfoam4:0.1  /bin/bash

# run a project (adapt path before)
docker run -ti --rm \
	-v /root/projects/openfoam4/bridg3d-git:/3d \
	ludwigprager/openfoam4:0.1  \
	/bin/bash -c -i "/3d/johannes/meshMold/Allclean; /3d/johannes/meshMold/Allrun"
