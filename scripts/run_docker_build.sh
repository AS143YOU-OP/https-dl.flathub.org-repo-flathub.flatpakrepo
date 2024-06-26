Configure Docker
+++ dirname .scripts/run_docker_build.sh
++ cd .scripts
++ pwd
+ THISDIR=/Users/christian/repo/gnuplot-feedstock/.scripts
++ basename /Users/christian/repo/gnuplot-feedstock/.scripts
+ PROVIDER_DIR=.scripts
+++ dirname .scripts/run_docker_build.sh
++ cd .scripts/..
++ pwd
+ FEEDSTOCK_ROOT=/Users/christian/repo/gnuplot-feedstock
+ RECIPE_ROOT=/Users/christian/repo/gnuplot-feedstock/recipe
+ '[' -z ']'
++ basename /Users/christian/repo/gnuplot-feedstock
+ export FEEDSTOCK_NAME=gnuplot-feedstock
+ FEEDSTOCK_NAME=gnuplot-feedstock
+ [[ '' == '' ]]
+ pushd /Users/christian/repo/gnuplot-feedstock
~/repo/gnuplot-feedstock ~/repo/gnuplot-feedstock
++ git rev-parse HEAD
+ sha=2e403520b09b931d058c8bef1427fec3d34aafb2
+ popd
~/repo/gnuplot-feedstock
+ docker info
Client:
 Version:    26.1.0-rd
 Context:    rancher-desktop
 Debug Mode: false
 Plugins:
  buildx: Docker Buildx (Docker Inc.)
    Version:  v0.14.1
    Path:     /Users/christian/.docker/cli-plugins/docker-buildx
  compose: Docker Compose (Docker Inc.)
    Version:  v2.27.1
    Path:     /Users/christian/.docker/cli-plugins/docker-compose

Server:
 Containers: 44
  Running: 11
  Paused: 0
  Stopped: 33
 Images: 13
 Server Version: 25.0.5
 Storage Driver: overlay2
  Backing Filesystem: extfs
  Supports d_type: true
  Using metacopy: false
  Native Overlay Diff: true
  userxattr: false
 Logging Driver: json-file
 Cgroup Driver: cgroupfs
 Cgroup Version: 2
 Plugins:
  Volume: local
  Network: bridge host ipvlan macvlan null overlay
  Log: awslogs fluentd gcplogs gelf journald json-file local splunk syslog
 Swarm: inactive
 Runtimes: io.containerd.runc.v2 runc
 Default Runtime: runc
 Init Binary: docker-init
 containerd version: 4e1fe7492b9df85914c389d1f15a3ceedbb280ac
 runc version: 51d5e94601ceffbbd85688df1c928ecccbfa4685
 init version: 
 Security Options:
  seccomp
   Profile: builtin
  cgroupns
 Kernel Version: 6.6.30-0-virt
 Operating System: Alpine Linux v3.19
 OSType: linux
 Architecture: aarch64
 CPUs: 2
 Total Memory: 7.752GiB
 Name: lima-rancher-desktop
 ID: eeec3f70-f73c-4801-b66a-daba137ccd36
 Docker Root Dir: /var/lib/docker
 Debug Mode: false
 Experimental: false
 Insecure Registries:
  127.0.0.0/8
 Live Restore Enabled: false

++ id -u
+ export HOST_USER_ID=501
+ HOST_USER_ID=501
+ hash docker-machine
+ ARTIFACTS=/Users/christian/repo/gnuplot-feedstock/build_artifacts
+ '[' -z linux_ppc64le_ ']'
+ '[' -z '' ']'
++ shyaml -h
+ SHYAML_INSTALLED='
Parses and output chosen subpart or values from YAML input.
It reads YAML in stdin and will output on stdout it'\''s return value.

Usage:

    shyaml {-h|--help}
    shyaml {-V|--version}
    shyaml [-y|--yaml] [-q|--quiet] ACTION KEY [DEFAULT]


Options:

    -y, --yaml
              Output only YAML safe value, more precisely, even
              literal values will be YAML quoted. This behavior
              is required if you want to output YAML subparts and
              further process it. If you know you have are dealing
              with safe literal value, then you don'\''t need this.
              (Default: no safe YAML output)

    -q, --quiet
              In case KEY value queried is an invalid path, quiet
              mode will prevent the writing of an error message on
              standard error.
              (Default: no quiet mode)

    -L, --line-buffer
              Force parsing stdin line by line allowing to process
              streamed YAML as it is fed instead of buffering
              input and treating several YAML streamed document
              at once. This is likely to have some small performance
              hit if you have a huge stream of YAML document, but
              then you probably don'\''t really care about the
              line-buffering.
              (Default: no line buffering)

    ACTION    Depending on the type of data you'\''ve targetted
              thanks to the KEY, ACTION can be:

              These ACTIONs applies to any YAML type:

                get-type          ## returns a short string
                get-value         ## returns YAML

              These ACTIONs applies to '\''sequence'\'' and '\''struct'\'' YAML type:

                get-values{,-0}   ## returns list of YAML
                get-length        ## returns an integer

              These ACTION applies to '\''struct'\'' YAML type:

                keys{,-0}         ## returns list of YAML
                values{,-0}       ## returns list of YAML
                key-values,{,-0}  ## returns list of YAML

              Note that any value returned is returned on stdout, and
              when returning ``list of YAML``, it'\''ll be separated by
              a newline or ``NUL`` char depending of you'\''ve used the
              ``-0`` suffixed ACTION.

    KEY       Identifier to browse and target subvalues into YAML
              structure. Use ``.`` to parse a subvalue. If you need
              to use a literal ``.`` or ``\``, use ``\`` to quote it.

              Use struct keyword to browse ``struct`` YAML data and use
              integers to browse ``sequence`` YAML data.

    DEFAULT   if not provided and given KEY do not match any value in
              the provided YAML, then DEFAULT will be returned. If no
              default is provided and the KEY do not match any value
              in the provided YAML, shyaml will fail with an error
              message.

Examples:

     ## get last grocery
     cat recipe.yaml       | shyaml get-value groceries.-1

     ## get all words of my french dictionary
     cat dictionaries.yaml | shyaml keys-0 french.dictionary

     ## get YAML config part of '\''myhost'\''
     cat hosts_config.yaml | shyaml get-value cfgs.myhost'
+ '[' '
Parses and output chosen subpart or values from YAML input.
It reads YAML in stdin and will output on stdout it'\''s return value.

Usage:

    shyaml {-h|--help}
    shyaml {-V|--version}
    shyaml [-y|--yaml] [-q|--quiet] ACTION KEY [DEFAULT]


Options:

    -y, --yaml
              Output only YAML safe value, more precisely, even
              literal values will be YAML quoted. This behavior
              is required if you want to output YAML subparts and
              further process it. If you know you have are dealing
              with safe literal value, then you don'\''t need this.
              (Default: no safe YAML output)

    -q, --quiet
              In case KEY value queried is an invalid path, quiet
              mode will prevent the writing of an error message on
              standard error.
              (Default: no quiet mode)

    -L, --line-buffer
              Force parsing stdin line by line allowing to process
              streamed YAML as it is fed instead of buffering
              input and treating several YAML streamed document
              at once. This is likely to have some small performance
              hit if you have a huge stream of YAML document, but
              then you probably don'\''t really care about the
              line-buffering.
              (Default: no line buffering)

    ACTION    Depending on the type of data you'\''ve targetted
              thanks to the KEY, ACTION can be:

              These ACTIONs applies to any YAML type:

                get-type          ## returns a short string
                get-value         ## returns YAML

              These ACTIONs applies to '\''sequence'\'' and '\''struct'\'' YAML type:

                get-values{,-0}   ## returns list of YAML
                get-length        ## returns an integer

              These ACTION applies to '\''struct'\'' YAML type:

                keys{,-0}         ## returns list of YAML
                values{,-0}       ## returns list of YAML
                key-values,{,-0}  ## returns list of YAML

              Note that any value returned is returned on stdout, and
              when returning ``list of YAML``, it'\''ll be separated by
              a newline or ``NUL`` char depending of you'\''ve used the
              ``-0`` suffixed ACTION.

    KEY       Identifier to browse and target subvalues into YAML
              structure. Use ``.`` to parse a subvalue. If you need
              to use a literal ``.`` or ``\``, use ``\`` to quote it.

              Use struct keyword to browse ``struct`` YAML data and use
              integers to browse ``sequence`` YAML data.

    DEFAULT   if not provided and given KEY do not match any value in
              the provided YAML, then DEFAULT will be returned. If no
              default is provided and the KEY do not match any value
              in the provided YAML, shyaml will fail with an error
              message.

Examples:

     ## get last grocery
     cat recipe.yaml       | shyaml get-value groceries.-1

     ## get all words of my french dictionary
     cat dictionaries.yaml | shyaml keys-0 french.dictionary

     ## get YAML config part of '\''myhost'\''
     cat hosts_config.yaml | shyaml get-value cfgs.myhost' == NO ']'
++ cat /Users/christian/repo/gnuplot-feedstock/.ci_support/linux_ppc64le_.yaml
++ shyaml get-value docker_image.0 quay.io/condaforge/linux-anvil-comp7
+ DOCKER_IMAGE=quay.io/condaforge/linux-anvil-cos7-x86_64
+ mkdir -p /Users/christian/repo/gnuplot-feedstock/build_artifacts
+ DONE_CANARY=/Users/christian/repo/gnuplot-feedstock/build_artifacts/conda-forge-build-done-linux_ppc64le_
+ rm -f /Users/christian/repo/gnuplot-feedstock/build_artifacts/conda-forge-build-done-linux_ppc64le_
+ DOCKER_RUN_ARGS='--platform linux/amd64'
+ '[' -z '' ']'
+ DOCKER_RUN_ARGS='-it --platform linux/amd64'
Start Docker
+ export UPLOAD_PACKAGES=False
+ UPLOAD_PACKAGES=False
+ export IS_PR_BUILD=True
+ IS_PR_BUILD=True
+ docker pull quay.io/condaforge/linux-anvil-cos7-x86_64
Using default tag: latest
latest: Pulling from condaforge/linux-anvil-cos7-x86_64
Digest: sha256:d8784a42b69dd6e9b859a5bccbca724a3c47a691417a30cab75da89319b2d7a1
Status: Image is up to date for quay.io/condaforge/linux-anvil-cos7-x86_64:latest
quay.io/condaforge/linux-anvil-cos7-x86_64:latest
+ docker run -it --platform linux/amd64 -v /Users/christian/repo/gnuplot-feedstock/recipe:/home/conda/recipe_root:rw,z,delegated -v /Users/christian/repo/gnuplot-feedstock:/home/conda/feedstock_root:rw,z,delegated -e CONFIG -e HOST_USER_ID -e UPLOAD_PACKAGES -e IS_PR_BUILD -e GIT_BRANCH -e UPLOAD_ON_BRANCH -e CI -e FEEDSTOCK_NAME -e CPU_COUNT -e BUILD_WITH_CONDA_DEBUG -e BUILD_OUTPUT_ID -e flow_run_id -e remote_url -e sha -e BINSTAR_TOKEN -e FEEDSTOCK_TOKEN -e STAGING_BINSTAR_TOKEN quay.io/condaforge/linux-anvil-cos7-x86_64 bash /home/conda/feedstock_root/.scripts/build_steps.sh
useradd: warning: the home directory already exists.
Not copying any file from skel directory into it.
+ export FEEDSTOCK_ROOT=/home/conda/feedstock_root
+ FEEDSTOCK_ROOT=/home/conda/feedstock_root
+ source /home/conda/feedstock_root/.scripts/logging_utils.sh
Configuring conda
+ export PYTHONUNBUFFERED=1
+ PYTHONUNBUFFERED=1
+ export RECIPE_ROOT=/home/conda/recipe_root
+ RECIPE_ROOT=/home/conda/recipe_root
+ export CI_SUPPORT=/home/conda/feedstock_root/.ci_support
+ CI_SUPPORT=/home/conda/feedstock_root/.ci_support
+ export CONFIG_FILE=/home/conda/feedstock_root/.ci_support/linux_ppc64le_.yaml
+ CONFIG_FILE=/home/conda/feedstock_root/.ci_support/linux_ppc64le_.yaml
+ cat
+ export CONDA_LIBMAMBA_SOLVER_NO_CHANNELS_FROM_INSTALLED=1
+ CONDA_LIBMAMBA_SOLVER_NO_CHANNELS_FROM_INSTALLED=1
+ mamba install --update-specs --yes --quiet --channel conda-forge --strict-channel-priority pip mamba conda-build conda-forge-ci-setup=4 'conda-build>=24.1'
[33m[1mwarning  libmamba[m Cache file "/home/conda/feedstock_root/build_artifacts/pkg_cache/cache/497deca9.json" was modified by another program
[33m[1mwarning  libmamba[m Cache file "/home/conda/feedstock_root/build_artifacts/pkg_cache/cache/09cdf8bf.json" was modified by another program
Preparing transaction: ...working... done
Verifying transaction: ...working... done
Executing transaction: ...working... done
+ mamba update --update-specs --yes --quiet --channel conda-forge --strict-channel-priority pip mamba conda-build conda-forge-ci-setup=4 'conda-build>=24.1'
+ setup_conda_rc /home/conda/feedstock_root /home/conda/recipe_root /home/conda/feedstock_root/.ci_support/linux_ppc64le_.yaml
+ source run_conda_forge_build_setup
++ export PYTHONUNBUFFERED=1
++ PYTHONUNBUFFERED=1
++ conda config --env --set show_channel_urls true
++ conda config --env --set auto_update_conda false
++ conda config --env --set add_pip_as_python_dependency false
++ conda config --env --append aggressive_update_packages ca-certificates
++ conda config --env --remove-key aggressive_update_packages
++ conda config --env --append aggressive_update_packages ca-certificates
++ conda config --env --append aggressive_update_packages certifi
++ export CONDA_BLD_PATH=/home/conda/feedstock_root/build_artifacts
++ CONDA_BLD_PATH=/home/conda/feedstock_root/build_artifacts
++ set +u
++ [[ '' == \d\r\o\n\e ]]
++ [[ '' == \g\i\t\h\u\b\_\a\c\t\i\o\n\s ]]
++ export CPU_COUNT=2
++ CPU_COUNT=2
+++ cat /home/conda/feedstock_root/conda-forge.yml
+++ shyaml get-value channel_priority strict
++ conda config --env --set channel_priority strict
++ [[ ! -z '' ]]
++ '[' '!' -z linux_ppc64le_ ']'
++ '[' '!' -z '' ']'
++ cat /home/conda/feedstock_root/.ci_support/linux_ppc64le_.yaml
c_compiler:
- gcc
c_compiler_version:
- '12'
c_stdlib:
- sysroot
c_stdlib_version:
- '2.17'
cairo:
- '1'
cdt_name:
- cos7
channel_sources:
- conda-forge
channel_targets:
- conda-forge main
cxx_compiler:
- gxx
cxx_compiler_version:
- '12'
dbus:
- '1'
docker_image:
- quay.io/condaforge/linux-anvil-cos7-x86_64
freetype:
- '2'
glib:
- '2'
libxcb:
- '1.16'
ncurses:
- '6'
pango:
- '1.50'
readline:
- '8'
target_platform:
- linux-ppc64le
zip_keys:
- - c_compiler_version
  - cxx_compiler_version
- - c_stdlib_version
  - cdt_name
++ set -u
++ mkdir -p /opt/conda/etc/conda/activate.d
++ echo 'export CONDA_BLD_PATH='\''/home/conda/feedstock_root/build_artifacts'\'''
++ '[' -n 2 ']'
++ echo 'export CPU_COUNT='\''2'\'''
++ echo 'export PYTHONUNBUFFERED='\''1'\'''
+++ cat /home/conda/feedstock_root/.ci_support/linux_ppc64le_.yaml
+++ shyaml get-value cuda_compiler_version.0 None
++ CUDA_VERSION=None
++ [[ None != \N\o\n\e ]]
++++ dirname /opt/conda/bin/run_conda_forge_build_setup
+++ cd /opt/conda/bin
+++ pwd
++ SCRIPT_DIR=/opt/conda/bin
++ source /opt/conda/bin/cross_compile_support.sh
++++ conda info --json
++++ jq -r .platform
+++ BUILD_PLATFORM=linux-64
+++ '[' -f /home/conda/feedstock_root/.ci_support/linux_ppc64le_.yaml ']'
++++ cat /home/conda/feedstock_root/.ci_support/linux_ppc64le_.yaml
++++ shyaml get-value target_platform.0 linux-64
+++ HOST_PLATFORM=linux-ppc64le
++++ cat /home/conda/feedstock_root/.ci_support/linux_ppc64le_.yaml
++++ shyaml get-value cuda_compiler_version.0 None
+++ CUDA_COMPILER_VERSION=None
++++ cat /home/conda/feedstock_root/.ci_support/linux_ppc64le_.yaml
++++ shyaml get-value cdt_name.0 cos6
+++ CDT_NAME=cos7
+++ HOST_PLATFORM=linux-ppc64le
+++ CUDA_COMPILER_VERSION=None
+++ CDT_NAME=cos7
+++ [[ linux-ppc64le != \l\i\n\u\x\-\6\4 ]]
+++ echo 'export CONDA_BUILD_CROSS_COMPILATION=1'
+++ export CONDA_BUILD_CROSS_COMPILATION=1
+++ CONDA_BUILD_CROSS_COMPILATION=1
+++ '[' -f /home/conda/feedstock_root/.ci_support/linux_ppc64le_.yaml ']'
+++ echo build_platform:
+++ echo '- linux-64'
+++ [[ linux-64 == \l\i\n\u\x\-\6\4 ]]
+++ [[ linux-ppc64le == linux-* ]]
+++ mamba create -n sysroot_linux-ppc64le --yes --quiet sysroot_linux-ppc64le
[33m[1mwarning  libmamba[m Invalid package cache, file '/home/conda/feedstock_root/build_artifacts/pkg_cache/kernel-headers_linux-ppc64le-3.10.0-h23d7e6c_14/powerpc64le-conda-linux-gnu/sysroot/usr/include/linux/netfilter/xt_TCPMSS.h' has incorrect size
[33m[1mwarning  libmamba[m Invalid package cache, file '/home/conda/feedstock_root/build_artifacts/pkg_cache/kernel-headers_linux-ppc64le-3.10.0-h23d7e6c_14/powerpc64le-conda-linux-gnu/sysroot/usr/include/linux/netfilter/xt_connmark.h' has incorrect size
[33m[1mwarning  libmamba[m Invalid package cache, file '/home/conda/feedstock_root/build_artifacts/pkg_cache/kernel-headers_linux-ppc64le-3.10.0-h23d7e6c_14/powerpc64le-conda-linux-gnu/sysroot/usr/include/linux/netfilter/xt_dscp.h' has incorrect size
[33m[1mwarning  libmamba[m Invalid package cache, file '/home/conda/feedstock_root/build_artifacts/pkg_cache/kernel-headers_linux-ppc64le-3.10.0-h23d7e6c_14/powerpc64le-conda-linux-gnu/sysroot/usr/include/linux/netfilter/xt_mark.h' has incorrect size
[33m[1mwarning  libmamba[m Invalid package cache, file '/home/conda/feedstock_root/build_artifacts/pkg_cache/kernel-headers_linux-ppc64le-3.10.0-h23d7e6c_14/powerpc64le-conda-linux-gnu/sysroot/usr/include/linux/netfilter/xt_rateest.h' has incorrect size
[33m[1mwarning  libmamba[m Invalid package cache, file '/home/conda/feedstock_root/build_artifacts/pkg_cache/kernel-headers_linux-ppc64le-3.10.0-h23d7e6c_14/powerpc64le-conda-linux-gnu/sysroot/usr/include/linux/netfilter_ipv4/ipt_ECN.h' has incorrect size
[33m[1mwarning  libmamba[m Invalid package cache, file '/home/conda/feedstock_root/build_artifacts/pkg_cache/kernel-headers_linux-ppc64le-3.10.0-h23d7e6c_14/powerpc64le-conda-linux-gnu/sysroot/usr/include/linux/netfilter_ipv4/ipt_ttl.h' has incorrect size
[33m[1mwarning  libmamba[m Invalid package cache, file '/home/conda/feedstock_root/build_artifacts/pkg_cache/kernel-headers_linux-ppc64le-3.10.0-h23d7e6c_14/powerpc64le-conda-linux-gnu/sysroot/usr/include/linux/netfilter_ipv6/ip6t_HL.h' has incorrect size
Preparing transaction: ...working... done
Verifying transaction: ...working... 
SafetyError: The package for kernel-headers_linux-ppc64le located at /home/conda/feedstock_root/build_artifacts/pkg_cache/kernel-headers_linux-ppc64le-3.10.0-h23d7e6c_14
appears to be corrupted. The path 'powerpc64le-conda-linux-gnu/sysroot/usr/include/linux/netfilter/xt_TCPMSS.h'
has an incorrect size.
  reported size: 172 bytes
  actual size: 190 bytes

SafetyError: The package for kernel-headers_linux-ppc64le located at /home/conda/feedstock_root/build_artifacts/pkg_cache/kernel-headers_linux-ppc64le-3.10.0-h23d7e6c_14
appears to be corrupted. The path 'powerpc64le-conda-linux-gnu/sysroot/usr/include/linux/netfilter/xt_connmark.h'
has an incorrect size.
  reported size: 691 bytes
  actual size: 136 bytes

SafetyError: The package for kernel-headers_linux-ppc64le located at /home/conda/feedstock_root/build_artifacts/pkg_cache/kernel-headers_linux-ppc64le-3.10.0-h23d7e6c_14
appears to be corrupted. The path 'powerpc64le-conda-linux-gnu/sysroot/usr/include/linux/netfilter/xt_dscp.h'
has an incorrect size.
  reported size: 638 bytes
  actual size: 634 bytes

SafetyError: The package for kernel-headers_linux-ppc64le located at /home/conda/feedstock_root/build_artifacts/pkg_cache/kernel-headers_linux-ppc64le-3.10.0-h23d7e6c_14
appears to be corrupted. The path 'powerpc64le-conda-linux-gnu/sysroot/usr/include/linux/netfilter/xt_mark.h'
has an incorrect size.
  reported size: 197 bytes
  actual size: 121 bytes

SafetyError: The package for kernel-headers_linux-ppc64le located at /home/conda/feedstock_root/build_artifacts/pkg_cache/kernel-headers_linux-ppc64le-3.10.0-h23d7e6c_14
appears to be corrupted. The path 'powerpc64le-conda-linux-gnu/sysroot/usr/include/linux/netfilter/xt_rateest.h'
has an incorrect size.
  reported size: 774 bytes
  actual size: 305 bytes

SafetyError: The package for kernel-headers_linux-ppc64le located at /home/conda/feedstock_root/build_artifacts/pkg_cache/kernel-headers_linux-ppc64le-3.10.0-h23d7e6c_14
appears to be corrupted. The path 'powerpc64le-conda-linux-gnu/sysroot/usr/include/linux/netfilter_ipv4/ipt_ECN.h'
has an incorrect size.
  reported size: 838 bytes
  actual size: 368 bytes

SafetyError: The package for kernel-headers_linux-ppc64le located at /home/conda/feedstock_root/build_artifacts/pkg_cache/kernel-headers_linux-ppc64le-3.10.0-h23d7e6c_14
appears to be corrupted. The path 'powerpc64le-conda-linux-gnu/sysroot/usr/include/linux/netfilter_ipv4/ipt_ttl.h'
has an incorrect size.
  reported size: 368 bytes
  actual size: 312 bytes

SafetyError: The package for kernel-headers_linux-ppc64le located at /home/conda/feedstock_root/build_artifacts/pkg_cache/kernel-headers_linux-ppc64le-3.10.0-h23d7e6c_14
appears to be corrupted. The path 'powerpc64le-conda-linux-gnu/sysroot/usr/include/linux/netfilter_ipv6/ip6t_HL.h'
has an incorrect size.
  reported size: 345 bytes
  actual size: 395 bytes


done
Executing transaction: ...working... done
+++ HOST_PLATFORM_ARCH=ppc64le
+++ [[ -f /home/conda/recipe_root/yum_requirements.txt ]]
++++ cat /home/conda/recipe_root/yum_requirements.txt
+++ for pkg in '$(cat ${RECIPE_ROOT}/yum_requirements.txt)'
+++ [[ mesa-libGL != \#* ]]
+++ [[ mesa-libGL != '' ]]
+++ mamba install mesa-libGL-cos7-ppc64le -n sysroot_linux-ppc64le --yes --quiet
Preparing transaction: ...working... done
Verifying transaction: ...working... done
Executing transaction: ...working... done
+++ for pkg in '$(cat ${RECIPE_ROOT}/yum_requirements.txt)'
+++ [[ mesa-dri-drivers != \#* ]]
+++ [[ mesa-dri-drivers != '' ]]
+++ mamba install mesa-dri-drivers-cos7-ppc64le -n sysroot_linux-ppc64le --yes --quiet
Preparing transaction: ...working... done
Verifying transaction: ...working... done
Executing transaction: ...working... done
+++ for pkg in '$(cat ${RECIPE_ROOT}/yum_requirements.txt)'
+++ [[ libselinux != \#* ]]
+++ [[ libselinux != '' ]]
+++ mamba install libselinux-cos7-ppc64le -n sysroot_linux-ppc64le --yes --quiet
Preparing transaction: ...working... done
Verifying transaction: ...working... done
Executing transaction: ...working... done
+++ for pkg in '$(cat ${RECIPE_ROOT}/yum_requirements.txt)'
+++ [[ libXdamage != \#* ]]
+++ [[ libXdamage != '' ]]
+++ mamba install libXdamage-cos7-ppc64le -n sysroot_linux-ppc64le --yes --quiet
Preparing transaction: ...working... done
Verifying transaction: ...working... done
Executing transaction: ...working... done
+++ for pkg in '$(cat ${RECIPE_ROOT}/yum_requirements.txt)'
+++ [[ libXfixes != \#* ]]
+++ [[ libXfixes != '' ]]
+++ mamba install libXfixes-cos7-ppc64le -n sysroot_linux-ppc64le --yes --quiet
Preparing transaction: ...working... done
Verifying transaction: ...working... done
Executing transaction: ...working... done
+++ for pkg in '$(cat ${RECIPE_ROOT}/yum_requirements.txt)'
+++ [[ libXxf86vm != \#* ]]
+++ [[ libXxf86vm != '' ]]
+++ mamba install libXxf86vm-cos7-ppc64le -n sysroot_linux-ppc64le --yes --quiet
Preparing transaction: ...working... done
Verifying transaction: ...working... done
Executing transaction: ...working... done
+++ for pkg in '$(cat ${RECIPE_ROOT}/yum_requirements.txt)'
+++ [[ expat != \#* ]]
+++ [[ expat != '' ]]
+++ mamba install expat-cos7-ppc64le -n sysroot_linux-ppc64le --yes --quiet
Preparing transaction: ...working... done
Verifying transaction: ...working... done
Executing transaction: ...working... done
+++ for pkg in '$(cat ${RECIPE_ROOT}/yum_requirements.txt)'
+++ [[ xorg-x11-proto != \#* ]]
+++ [[ xorg-x11-proto != '' ]]
+++ mamba install xorg-x11-proto-cos7-ppc64le -n sysroot_linux-ppc64le --yes --quiet
Could not solve for environment specs
The following package could not be installed
└─ [31mxorg-x11-proto-cos7-ppc64le[0m does not exist (perhaps a typo or a missing channel).
+++ true
++++ find /opt/conda/envs/sysroot_linux-ppc64le -name sysroot
++++ head -1
+++ export QEMU_LD_PREFIX=/opt/conda/envs/sysroot_linux-ppc64le/powerpc64le-conda-linux-gnu/sysroot
+++ QEMU_LD_PREFIX=/opt/conda/envs/sysroot_linux-ppc64le/powerpc64le-conda-linux-gnu/sysroot
+++ '[' -f /home/conda/feedstock_root/.ci_support/linux_ppc64le_.yaml ']'
+++ echo 'CMAKE_CROSSCOMPILING_EMULATOR: '
+++ echo '- /usr/bin/qemu-ppc64le-static'
+++ echo 'CROSSCOMPILING_EMULATOR: '
+++ echo '- /usr/bin/qemu-ppc64le-static'
+++ [[ None == \1\1\.\2 ]]
+++ [[ None == \1\1\.\8 ]]
+++ [[ None == \1\1\.\2 ]]
+++ [[ None == \1\1\.\8 ]]
+++ [[ None == 12* ]]
+++ [[ None == 12* ]]
+++ [[ None != \N\o\n\e ]]
++ '[' -f /home/conda/feedstock_root/.ci_support/linux_ppc64le_.yaml ']'
+++ cat /home/conda/feedstock_root/.ci_support/linux_ppc64le_.yaml
+++ shyaml get-value MACOSX_DEPLOYMENT_TARGET.0 0
++ need_osx_sdk=0
++ [[ 0 != \0 ]]
++ conda info

     active environment : base
    active env location : /opt/conda
            shell level : 1
       user config file : /home/conda/.condarc
 populated config files : /opt/conda/.condarc
                          /home/conda/.condarc
          conda version : 24.5.0
    conda-build version : 24.5.1
         python version : 3.10.14.final.0
                 solver : libmamba (default)
       virtual packages : __archspec=1=x86_64
                          __conda=24.5.0=0
                          __glibc=2.17=0
                          __linux=6.6.30=0
                          __unix=0=0
       base environment : /opt/conda  (writable)
      conda av data dir : /opt/conda/etc/conda
  conda av metadata url : None
           channel URLs : https://conda.anaconda.org/conda-forge/linux-64
                          https://conda.anaconda.org/conda-forge/noarch
          package cache : /home/conda/feedstock_root/build_artifacts/pkg_cache
                          /opt/conda/pkgs
       envs directories : /opt/conda/envs
                          /home/conda/.conda/envs
               platform : linux-64
             user-agent : conda/24.5.0 requests/2.32.3 CPython/3.10.14 Linux/6.6.30-0-virt centos/7.9.2009 glibc/2.17 solver/libmamba conda-libmamba-solver/24.1.0 libmambapy/1.5.8
                UID:GID : 501:32767
             netrc file : None
           offline mode : False


++ conda config --env --show-sources
==> /opt/conda/.condarc <==
add_pip_as_python_dependency: False
auto_update_conda: False
aggressive_update_packages:
  - ca-certificates
  - certifi
channel_priority: strict
channels:
  - conda-forge
show_channel_urls: True
conda_build:
  pkg_format: 2
  zstd_compression_level: 19

==> /home/conda/.condarc <==
pkgs_dirs:
  - /home/conda/feedstock_root/build_artifacts/pkg_cache
  - /opt/conda/pkgs
solver: libmamba
conda-build:
  root-dir: /home/conda/feedstock_root/build_artifacts

==> envvars <==
allow_softlinks: False
bld_path: /home/conda/feedstock_root/build_artifacts

++ conda list --show-channel-urls
# packages in environment at /opt/conda:
#
# Name                    Version                   Build  Channel
_libgcc_mutex             0.1                 conda_forge    conda-forge
_openmp_mutex             4.5                       2_gnu    conda-forge
anaconda-client           1.12.3             pyhd8ed1ab_0    conda-forge
anaconda-project          0.11.1             pyhd8ed1ab_0    conda-forge
archspec                  0.2.3              pyhd8ed1ab_0    conda-forge
attrs                     23.2.0             pyh71513ae_0    conda-forge
beautifulsoup4            4.12.3             pyha770c72_0    conda-forge
boltons                   24.0.0             pyhd8ed1ab_0    conda-forge
brotli-python             1.1.0           py310hc6cd4ac_1    conda-forge
bzip2                     1.0.8                hd590300_5    conda-forge
c-ares                    1.28.1               hd590300_0    conda-forge
ca-certificates           2024.6.2             hbcca054_0    conda-forge
certifi                   2024.6.2           pyhd8ed1ab_0    conda-forge
cffi                      1.16.0          py310h2fee648_0    conda-forge
chardet                   5.2.0           py310hff52083_1    conda-forge
charset-normalizer        3.3.2              pyhd8ed1ab_0    conda-forge
click                     8.1.7           unix_pyh707e725_0    conda-forge
colorama                  0.4.6              pyhd8ed1ab_0    conda-forge
conda                     24.5.0          py310hff52083_0    conda-forge
conda-build               24.5.1          py310hff52083_0    conda-forge
conda-env                 2.6.0                         1    conda-forge
conda-forge-ci-setup      4.7.0           py310h7a2d8a0_100    conda-forge
conda-forge-metadata      0.8.1              pyhd8ed1ab_0    conda-forge
conda-index               0.5.0              pyhd8ed1ab_0    conda-forge
conda-libmamba-solver     24.1.0             pyhd8ed1ab_0    conda-forge
conda-oci-mirror          0.1.0              pyhd8ed1ab_0    conda-forge
conda-pack                0.7.1              pyhd8ed1ab_0    conda-forge
conda-package-handling    2.3.0              pyh7900ff3_0    conda-forge
conda-package-streaming   0.10.0             pyhd8ed1ab_0    conda-forge
cryptography              42.0.8          py310hb1bd9d3_0    conda-forge
defusedxml                0.7.1              pyhd8ed1ab_0    conda-forge
deprecated                1.2.14             pyh1a96a4e_0    conda-forge
distro                    1.9.0              pyhd8ed1ab_0    conda-forge
exceptiongroup            1.2.0              pyhd8ed1ab_2    conda-forge
filelock                  3.15.1             pyhd8ed1ab_0    conda-forge
fmt                       10.2.1               h00ab1b0_0    conda-forge
freetype                  2.12.1               h267a509_2    conda-forge
frozendict                2.4.4           py310hc51659f_0    conda-forge
git                       2.45.2          pl5321he096aa3_0    conda-forge
icu                       73.2                 h59595ed_0    conda-forge
idna                      3.7                pyhd8ed1ab_0    conda-forge
importlib_resources       6.4.0              pyhd8ed1ab_0    conda-forge
iniconfig                 2.0.0              pyhd8ed1ab_0    conda-forge
jinja2                    3.1.4              pyhd8ed1ab_0    conda-forge
jq                        1.7.1                hd590300_0    conda-forge
jsonpatch                 1.33               pyhd8ed1ab_0    conda-forge
jsonpointer               3.0.0           py310hff52083_0    conda-forge
jsonschema                4.22.0             pyhd8ed1ab_0    conda-forge
jsonschema-specifications 2023.12.1          pyhd8ed1ab_0    conda-forge
jupyter_core              5.7.2           py310hff52083_0    conda-forge
keyutils                  1.6.1                h166bdaf_0    conda-forge
krb5                      1.21.2               h659d440_0    conda-forge
lcms2                     2.16                 hb7c19ff_0    conda-forge
ld_impl_linux-64          2.40                 hf3520f5_4    conda-forge
lerc                      4.0.0                h27087fc_0    conda-forge
libarchive                3.7.4                hfca40fe_0    conda-forge
libcurl                   8.8.0                hca28451_0    conda-forge
libdeflate                1.20                 hd590300_0    conda-forge
libedit                   3.1.20191231         he28a2e2_2    conda-forge
libev                     4.33                 hd590300_2    conda-forge
libexpat                  2.6.2                h59595ed_0    conda-forge
libffi                    3.4.2                h7f98852_5    conda-forge
libgcc-ng                 13.2.0              h77fa898_10    conda-forge
libgomp                   13.2.0              h77fa898_10    conda-forge
libiconv                  1.17                 hd590300_2    conda-forge
libjpeg-turbo             3.0.0                hd590300_1    conda-forge
liblief                   0.14.1               hac33072_1    conda-forge
libmamba                  1.5.8                had39da4_0    conda-forge
libmambapy                1.5.8           py310h39ff949_0    conda-forge
libnghttp2                1.58.0               h47da74e_1    conda-forge
libnsl                    2.0.1                hd590300_0    conda-forge
libpng                    1.6.43               h2797004_0    conda-forge
libsolv                   0.7.29               ha6fb4c9_0    conda-forge
libsqlite                 3.46.0               hde9e2c9_0    conda-forge
libssh2                   1.11.0               h0841786_0    conda-forge
libstdcxx-ng              13.2.0              hc0a3c3a_10    conda-forge
libtiff                   4.6.0                h1dd3fc0_3    conda-forge
libuuid                   2.38.1               h0b41bf4_0    conda-forge
libwebp-base              1.4.0                hd590300_0    conda-forge
libxcb                    1.15                 h0b41bf4_0    conda-forge
libxcrypt                 4.4.36               hd590300_1    conda-forge
libxml2                   2.12.7               hc051c1a_1    conda-forge
libzlib                   1.3.1                h4ab18f5_1    conda-forge
lz4-c                     1.9.4                hcb278e6_0    conda-forge
lzo                       2.10              hd590300_1001    conda-forge
mamba                     1.5.8           py310h51d5547_0    conda-forge
markupsafe                2.1.5           py310h2372a71_0    conda-forge
menuinst                  2.1.1           py310hff52083_0    conda-forge
more-itertools            10.3.0             pyhd8ed1ab_0    conda-forge
nbformat                  5.10.4             pyhd8ed1ab_0    conda-forge
ncurses                   6.5                  h59595ed_0    conda-forge
oniguruma                 6.9.9                hd590300_0    conda-forge
openjpeg                  2.5.2                h488ebb8_0    conda-forge
openssl                   3.3.1                h4ab18f5_0    conda-forge
oras-py                   0.1.14             pyhd8ed1ab_0    conda-forge
packaging                 24.1               pyhd8ed1ab_0    conda-forge
patch                     2.7.6             h7f98852_1002    conda-forge
patchelf                  0.17.2               h58526e2_0    conda-forge
pcre2                     10.43                hcad00b1_0    conda-forge
perl                      5.32.1          7_hd590300_perl5    conda-forge
pillow                    10.3.0          py310hf73ecf8_0    conda-forge
pip                       24.0               pyhd8ed1ab_0    conda-forge
pkginfo                   1.11.1             pyhd8ed1ab_0    conda-forge
pkgutil-resolve-name      1.3.10             pyhd8ed1ab_1    conda-forge
platformdirs              4.2.2              pyhd8ed1ab_0    conda-forge
pluggy                    1.5.0              pyhd8ed1ab_0    conda-forge
psutil                    5.9.8           py310h2372a71_0    conda-forge
pthread-stubs             0.4               h36c2ea0_1001    conda-forge
py-lief                   0.14.1          py310h76e45a6_1    conda-forge
pybind11-abi              4                    hd8ed1ab_3    conda-forge
pycosat                   0.6.6           py310h2372a71_0    conda-forge
pycparser                 2.22               pyhd8ed1ab_0    conda-forge
pyopenssl                 24.0.0             pyhd8ed1ab_0    conda-forge
pysocks                   1.7.1              pyha2e5f31_6    conda-forge
pytest                    8.2.2              pyhd8ed1ab_0    conda-forge
python                    3.10.14         hd12c33a_0_cpython    conda-forge
python-dateutil           2.9.0              pyhd8ed1ab_0    conda-forge
python-fastjsonschema     2.20.0             pyhd8ed1ab_0    conda-forge
python-libarchive-c       5.1             py310hff52083_0    conda-forge
python_abi                3.10                    4_cp310    conda-forge
pytz                      2024.1             pyhd8ed1ab_0    conda-forge
pyyaml                    6.0.1           py310h2372a71_1    conda-forge
rattler-build             0.18.0               h72610f6_0    conda-forge
rattler-build-conda-compat 0.0.6              pyh267e887_0    conda-forge
readline                  8.2                  h8228510_1    conda-forge
referencing               0.35.1             pyhd8ed1ab_0    conda-forge
reproc                    14.2.4.post0         hd590300_1    conda-forge
reproc-cpp                14.2.4.post0         h59595ed_1    conda-forge
requests                  2.32.3             pyhd8ed1ab_0    conda-forge
requests-toolbelt         1.0.0              pyhd8ed1ab_0    conda-forge
ripgrep                   14.1.0               he8a937b_0    conda-forge
rpds-py                   0.18.1          py310he421c4c_0    conda-forge
ruamel.yaml               0.18.6          py310h2372a71_0    conda-forge
ruamel.yaml.clib          0.2.8           py310h2372a71_0    conda-forge
ruamel_yaml               0.15.80         py310h2372a71_1009    conda-forge
setuptools                70.0.0             pyhd8ed1ab_0    conda-forge
shyaml                    0.6.2              pyhd3deb0d_0    conda-forge
six                       1.16.0             pyh6c4a22f_0    conda-forge
soupsieve                 2.5                pyhd8ed1ab_1    conda-forge
su-exec                   0.2               h166bdaf_1003    conda-forge
tini                      0.19.0               h166bdaf_1    conda-forge
tk                        8.6.13          noxft_h4845f30_101    conda-forge
tomli                     2.0.1              pyhd8ed1ab_0    conda-forge
toolz                     0.12.1             pyhd8ed1ab_0    conda-forge
tornado                   6.4.1           py310hc51659f_0    conda-forge
tqdm                      4.66.4             pyhd8ed1ab_0    conda-forge
traitlets                 5.14.3             pyhd8ed1ab_0    conda-forge
truststore                0.8.0              pyhd8ed1ab_0    conda-forge
typing-extensions         4.12.2               hd8ed1ab_0    conda-forge
typing_extensions         4.12.2             pyha770c72_0    conda-forge
tzdata                    2024a                h0c530f3_0    conda-forge
urllib3                   2.2.1              pyhd8ed1ab_0    conda-forge
wheel                     0.43.0             pyhd8ed1ab_1    conda-forge
wrapt                     1.16.0          py310h2372a71_0    conda-forge
xorg-libxau               1.0.11               hd590300_0    conda-forge
xorg-libxdmcp             1.1.3                h7f98852_0    conda-forge
xz                        5.2.6                h166bdaf_0    conda-forge
yaml                      0.2.5                h7f98852_2    conda-forge
yaml-cpp                  0.8.0                h59595ed_0    conda-forge
zipp                      3.19.2             pyhd8ed1ab_0    conda-forge
zstandard                 0.19.0          py310h5764c6d_0    conda-forge
zstd                      1.5.6                ha6fb4c9_0    conda-forge
+ /usr/bin/sudo -n yum install -y mesa-libGL mesa-dri-drivers libselinux libXdamage libXfixes libXxf86vm expat xorg-x11-proto
Loaded plugins: fastestmirror, ovl
Determining fastest mirrors
 * base: de.mirrors.clouvider.net
 * extras: de.mirrors.clouvider.net
 * updates: de.mirrors.clouvider.net

base                                                     | 3.6 kB     00:00     

extras                                                   | 2.9 kB     00:00     

updates                                                  | 2.9 kB     00:00     

(2/4): base/7/x86_64/prima 0% [                 ]  0.0 B/s |    0 B   --:-- ETA 

(1/4): base/7/x86_64/group_gz                              | 153 kB   00:00     

(2/4): extras/7/x86_64/primary_db                          | 253 kB   00:00     

(4/4): updates/7/x86_64/pr 3% [-                ]  0.0 B/s | 1.3 MB   --:-- ETA 

(4/4): updates/7/x86_64/pr 8% [=                ] 2.4 MB/s | 3.0 MB   00:13 ETA 

(4/4): updates/7/x86_64/pr 15% [==-             ] 2.7 MB/s | 5.4 MB   00:10 ETA 

(3/4): base/7/x86_64/prima 22% [===-            ] 3.0 MB/s | 7.6 MB   00:08 ETA 

(3/4): base/7/x86_64/prima 28% [====-           ] 3.2 MB/s | 9.6 MB   00:07 ETA 

(3/4): base/7/x86_64/primary_db                            | 6.1 MB   00:02     

(4/4): updates/7/x86_64/pr 37% [======          ] 3.6 MB/s |  13 MB   00:05 ETA 

(4/4): updates/7/x86_64/pr 43% [=======         ] 3.8 MB/s |  15 MB   00:04 ETA 

(4/4): updates/7/x86_64/pr 50% [========        ] 4.0 MB/s |  17 MB   00:04 ETA 

(4/4): updates/7/x86_64/pr 55% [========-       ] 4.1 MB/s |  19 MB   00:03 ETA 

(4/4): updates/7/x86_64/pr 60% [=========-      ] 4.2 MB/s |  20 MB   00:03 ETA 

(4/4): updates/7/x86_64/pr 64% [==========      ] 4.2 MB/s |  22 MB   00:02 ETA 

(4/4): updates/7/x86_64/pr 70% [===========     ] 4.4 MB/s |  24 MB   00:02 ETA 

(4/4): updates/7/x86_64/pr 76% [============    ] 4.5 MB/s |  26 MB   00:01 ETA 

(4/4): updates/7/x86_64/pr 82% [=============   ] 4.6 MB/s |  28 MB   00:01 ETA 

(4/4): updates/7/x86_64/pr 89% [==============  ] 4.8 MB/s |  30 MB   00:00 ETA 

(4/4): updates/7/x86_64/pr 95% [=============== ] 4.9 MB/s |  32 MB   00:00 ETA 

(4/4): updates/7/x86_64/pr 98% [===============-] 4.8 MB/s |  33 MB   00:00 ETA 

(4/4): updates/7/x86_64/primary_db                         |  27 MB   00:05     
Package libselinux-2.5-15.el7.x86_64 already installed and latest version
Package expat-2.1.0-15.el7_9.x86_64 already installed and latest version
No package [1mxorg-x11-proto(B[m available.
Resolving Dependencies
--> Running transaction check
---> Package libXdamage.x86_64 0:1.1.4-4.1.el7 will be installed
--> Processing Dependency: libX11.so.6()(64bit) for package: libXdamage-1.1.4-4.1.el7.x86_64
---> Package libXfixes.x86_64 0:5.0.3-1.el7 will be installed
---> Package libXxf86vm.x86_64 0:1.1.4-1.el7 will be installed
--> Processing Dependency: libXext.so.6()(64bit) for package: libXxf86vm-1.1.4-1.el7.x86_64
---> Package mesa-dri-drivers.x86_64 0:18.3.4-12.el7_9 will be installed
--> Processing Dependency: libdrm >= 2.4.83 for package: mesa-dri-drivers-18.3.4-12.el7_9.x86_64
--> Processing Dependency: mesa-filesystem(x86-64) for package: mesa-dri-drivers-18.3.4-12.el7_9.x86_64
--> Processing Dependency: libLLVM-7-rhel.so(LLVM_7)(64bit) for package: mesa-dri-drivers-18.3.4-12.el7_9.x86_64
--> Processing Dependency: libglapi.so.0()(64bit) for package: mesa-dri-drivers-18.3.4-12.el7_9.x86_64
--> Processing Dependency: libdrm_radeon.so.1()(64bit) for package: mesa-dri-drivers-18.3.4-12.el7_9.x86_64
--> Processing Dependency: libdrm_nouveau.so.2()(64bit) for package: mesa-dri-drivers-18.3.4-12.el7_9.x86_64
--> Processing Dependency: libdrm_intel.so.1()(64bit) for package: mesa-dri-drivers-18.3.4-12.el7_9.x86_64
--> Processing Dependency: libdrm_amdgpu.so.1()(64bit) for package: mesa-dri-drivers-18.3.4-12.el7_9.x86_64
--> Processing Dependency: libdrm.so.2()(64bit) for package: mesa-dri-drivers-18.3.4-12.el7_9.x86_64
--> Processing Dependency: libLLVM-7-rhel.so()(64bit) for package: mesa-dri-drivers-18.3.4-12.el7_9.x86_64
---> Package mesa-libGL.x86_64 0:18.3.4-12.el7_9 will be installed
--> Processing Dependency: libglvnd-glx(x86-64) >= 1:1.0.1-0.7 for package: mesa-libGL-18.3.4-12.el7_9.x86_64
--> Processing Dependency: libxshmfence.so.1()(64bit) for package: mesa-libGL-18.3.4-12.el7_9.x86_64
--> Processing Dependency: libxcb.so.1()(64bit) for package: mesa-libGL-18.3.4-12.el7_9.x86_64
--> Processing Dependency: libxcb-xfixes.so.0()(64bit) for package: mesa-libGL-18.3.4-12.el7_9.x86_64
--> Processing Dependency: libxcb-sync.so.1()(64bit) for package: mesa-libGL-18.3.4-12.el7_9.x86_64
--> Processing Dependency: libxcb-present.so.0()(64bit) for package: mesa-libGL-18.3.4-12.el7_9.x86_64
--> Processing Dependency: libxcb-glx.so.0()(64bit) for package: mesa-libGL-18.3.4-12.el7_9.x86_64
--> Processing Dependency: libxcb-dri3.so.0()(64bit) for package: mesa-libGL-18.3.4-12.el7_9.x86_64
--> Processing Dependency: libxcb-dri2.so.0()(64bit) for package: mesa-libGL-18.3.4-12.el7_9.x86_64
--> Running transaction check
---> Package libX11.x86_64 0:1.6.7-5.el7_9 will be installed
--> Processing Dependency: libX11-common >= 1.6.7-5.el7_9 for package: libX11-1.6.7-5.el7_9.x86_64
---> Package libXext.x86_64 0:1.3.3-3.el7 will be installed
---> Package libdrm.x86_64 0:2.4.97-2.el7 will be installed
--> Processing Dependency: libpciaccess.so.0()(64bit) for package: libdrm-2.4.97-2.el7.x86_64
---> Package libglvnd-glx.x86_64 1:1.0.1-0.8.git5baa1e5.el7 will be installed
--> Processing Dependency: libglvnd(x86-64) = 1:1.0.1-0.8.git5baa1e5.el7 for package: 1:libglvnd-glx-1.0.1-0.8.git5baa1e5.el7.x86_64
--> Processing Dependency: libGLdispatch.so.0()(64bit) for package: 1:libglvnd-glx-1.0.1-0.8.git5baa1e5.el7.x86_64
---> Package libxcb.x86_64 0:1.13-1.el7 will be installed
--> Processing Dependency: libXau.so.6()(64bit) for package: libxcb-1.13-1.el7.x86_64
---> Package libxshmfence.x86_64 0:1.2-1.el7 will be installed
---> Package llvm-private.x86_64 0:7.0.1-1.el7 will be installed
---> Package mesa-filesystem.x86_64 0:18.3.4-12.el7_9 will be installed
---> Package mesa-libglapi.x86_64 0:18.3.4-12.el7_9 will be installed
--> Running transaction check
---> Package libX11-common.noarch 0:1.6.7-5.el7_9 will be installed
---> Package libXau.x86_64 0:1.0.8-2.1.el7 will be installed
---> Package libglvnd.x86_64 1:1.0.1-0.8.git5baa1e5.el7 will be installed
---> Package libpciaccess.x86_64 0:0.14-1.el7 will be installed
--> Processing Dependency: hwdata for package: libpciaccess-0.14-1.el7.x86_64
--> Running transaction check
---> Package hwdata.x86_64 0:0.252-9.7.el7 will be installed
--> Finished Dependency Resolution

Dependencies Resolved

================================================================================
 Package             Arch      Version                         Repository  Size
================================================================================
Installing:
 libXdamage          x86_64    1.1.4-4.1.el7                   base        20 k
 libXfixes           x86_64    5.0.3-1.el7                     base        18 k
 libXxf86vm          x86_64    1.1.4-1.el7                     base        18 k
 mesa-dri-drivers    x86_64    18.3.4-12.el7_9                 updates    7.2 M
 mesa-libGL          x86_64    18.3.4-12.el7_9                 updates    166 k
Installing for dependencies:
 hwdata              x86_64    0.252-9.7.el7                   base       2.5 M
 libX11              x86_64    1.6.7-5.el7_9                   updates    607 k
 libX11-common       noarch    1.6.7-5.el7_9                   updates    165 k
 libXau              x86_64    1.0.8-2.1.el7                   base        29 k
 libXext             x86_64    1.3.3-3.el7                     base        39 k
 libdrm              x86_64    2.4.97-2.el7                    base       151 k
 libglvnd            x86_64    1:1.0.1-0.8.git5baa1e5.el7      base        89 k
 libglvnd-glx        x86_64    1:1.0.1-0.8.git5baa1e5.el7      base       125 k
 libpciaccess        x86_64    0.14-1.el7                      base        26 k
 libxcb              x86_64    1.13-1.el7                      base       214 k
 libxshmfence        x86_64    1.2-1.el7                       base       7.2 k
 llvm-private        x86_64    7.0.1-1.el7                     base        23 M
 mesa-filesystem     x86_64    18.3.4-12.el7_9                 updates     19 k
 mesa-libglapi       x86_64    18.3.4-12.el7_9                 updates     46 k

Transaction Summary
================================================================================
Install  5 Packages (+14 Dependent packages)

Total download size: 34 M
Installed size: 122 M
Downloading packages:

(2/19): libX11-1.6.7-5.el7 0% [                 ]  0.0 B/s |    0 B   --:-- ETA 

(1/19): libX11-common-1.6.7-5.el7_9.noarch.rpm             | 165 kB   00:00     

(2/19): libXdamage-1.1.4-4.1.el7.x86_64.rpm                |  20 kB   00:00     

(3/19): libXau-1.0.8-2.1.el7.x86_64.rpm                    |  29 kB   00:00     

(4/19): libXext-1.3.3-3.el7.x86_64.rpm                     |  39 kB   00:00     

(5/19): libX11-1.6.7-5.el7_9.x86_64.rpm                    | 607 kB   00:00     

(6/19): libXfixes-5.0.3-1.el7.x86_64.rpm                   |  18 kB   00:00     

(8/19): libXxf86vm-1.1.4-1 5% [-                ]  0.0 B/s | 1.9 MB   --:-- ETA 

(7/19): libXxf86vm-1.1.4-1.el7.x86_64.rpm                  |  18 kB   00:00     

(8/19): libdrm-2.4.97-2.el7.x86_64.rpm                     | 151 kB   00:00     

(9/19): libpciaccess-0.14-1.el7.x86_64.rpm                 |  26 kB   00:00     

(10/19): libglvnd-glx-1.0.1-0.8.git5baa1e5.el7.x86_64.rpm  | 125 kB   00:00     

(11/19): libxshmfence-1.2-1.el7.x86_64.rpm                 | 7.2 kB   00:00     

(12/19): libglvnd-1.0.1-0.8.git5baa1e5.el7.x86_64.rpm      |  89 kB   00:00     

(13/19): libxcb-1.13-1.el7.x86_64.rpm                      | 214 kB   00:00     

(15/19): llvm-private-7.0. 11% [=-              ] 3.2 MB/s | 3.9 MB   00:09 ETA 

(14/19): hwdata-0.252-9.7.el7.x86_64.rpm                   | 2.5 MB   00:01     

(15/19): mesa-filesystem-18.3.4-12.el7_9.x86_64.rpm        |  19 kB   00:00     

(16/19): mesa-libGL-18.3.4-12.el7_9.x86_64.rpm             | 166 kB   00:00     

(17/19): mesa-libglapi-18.3.4-12.el7_9.x86_64.rpm          |  46 kB   00:00     

(18/19): llvm-private-7.0. 19% [===             ] 3.4 MB/s | 6.7 MB   00:07 ETA 

(18/19): llvm-private-7.0. 25% [====            ] 3.6 MB/s | 8.7 MB   00:06 ETA 

(18/19): llvm-private-7.0. 31% [=====           ] 3.8 MB/s |  11 MB   00:06 ETA 

(18/19): llvm-private-7.0. 36% [=====-          ] 3.9 MB/s |  12 MB   00:05 ETA 

(19/19): mesa-dri-drivers- 40% [======          ] 3.9 MB/s |  14 MB   00:05 ETA 

(19/19): mesa-dri-drivers- 45% [=======         ] 4.0 MB/s |  15 MB   00:04 ETA 

(19/19): mesa-dri-drivers- 50% [========        ] 4.1 MB/s |  17 MB   00:04 ETA 

(19/19): mesa-dri-drivers- 56% [=========       ] 4.2 MB/s |  19 MB   00:03 ETA 

(18/19): mesa-dri-drivers-18.3.4-12.el7_9.x86_64.rpm       | 7.2 MB   00:02     

(19/19): llvm-private-7.0. 65% [==========-     ] 4.6 MB/s |  22 MB   00:02 ETA 

(19/19): llvm-private-7.0. 71% [===========     ] 4.7 MB/s |  24 MB   00:02 ETA 

(19/19): llvm-private-7.0. 77% [============    ] 4.8 MB/s |  26 MB   00:01 ETA 

(19/19): llvm-private-7.0. 83% [=============   ] 4.9 MB/s |  28 MB   00:01 ETA 

(19/19): llvm-private-7.0. 89% [==============  ] 5.0 MB/s |  31 MB   00:00 ETA 

(19/19): llvm-private-7.0. 95% [=============== ] 5.1 MB/s |  33 MB   00:00 ETA 

(19/19): llvm-private-7.0.1-1.el7.x86_64.rpm               |  23 MB   00:05     
--------------------------------------------------------------------------------
Total                                              5.5 MB/s |  34 MB  00:06     
Running transaction check
Running transaction test
Transaction test succeeded
Running transaction

  Installing : mesa-libglapi-18.3.4-12.el7 [                            ]  1/19
  Installing : mesa-libglapi-18.3.4-12.el7 [########                    ]  1/19
  Installing : mesa-libglapi-18.3.4-12.el7 [#################           ]  1/19
  Installing : mesa-libglapi-18.3.4-12.el7 [##########################  ]  1/19
  Installing : mesa-libglapi-18.3.4-12.el7 [########################### ]  1/19
  Installing : mesa-libglapi-18.3.4-12.el7_9.x86_64                        1/19 

  Installing : mesa-filesystem-18.3.4-12.e [                            ]  2/19
  Installing : mesa-filesystem-18.3.4-12.e [#                           ]  2/19
  Installing : mesa-filesystem-18.3.4-12.e [##                          ]  2/19
  Installing : mesa-filesystem-18.3.4-12.e [###                         ]  2/19
  Installing : mesa-filesystem-18.3.4-12.el7_9.x86_64                      2/19 

  Installing : 1:libglvnd-1.0.1-0.8.git5ba [                            ]  3/19
  Installing : 1:libglvnd-1.0.1-0.8.git5ba [##                          ]  3/19
  Installing : 1:libglvnd-1.0.1-0.8.git5ba [#####                       ]  3/19
  Installing : 1:libglvnd-1.0.1-0.8.git5ba [########                    ]  3/19
  Installing : 1:libglvnd-1.0.1-0.8.git5ba [##########                  ]  3/19
  Installing : 1:libglvnd-1.0.1-0.8.git5ba [#############               ]  3/19
  Installing : 1:libglvnd-1.0.1-0.8.git5ba [################            ]  3/19
  Installing : 1:libglvnd-1.0.1-0.8.git5ba [###################         ]  3/19
  Installing : 1:libglvnd-1.0.1-0.8.git5ba [#####################       ]  3/19
  Installing : 1:libglvnd-1.0.1-0.8.git5ba [########################    ]  3/19
  Installing : 1:libglvnd-1.0.1-0.8.git5ba [##########################  ]  3/19
  Installing : 1:libglvnd-1.0.1-0.8.git5ba [########################### ]  3/19
  Installing : 1:libglvnd-1.0.1-0.8.git5baa1e5.el7.x86_64                  3/19 

  Installing : hwdata-0.252-9.7.el7.x86_64 [                            ]  4/19
  Installing : hwdata-0.252-9.7.el7.x86_64 [#                           ]  4/19
  Installing : hwdata-0.252-9.7.el7.x86_64 [##                          ]  4/19
  Installing : hwdata-0.252-9.7.el7.x86_64 [###                         ]  4/19
  Installing : hwdata-0.252-9.7.el7.x86_64 [####                        ]  4/19
  Installing : hwdata-0.252-9.7.el7.x86_64 [#####                       ]  4/19
  Installing : hwdata-0.252-9.7.el7.x86_64 [######                      ]  4/19
  Installing : hwdata-0.252-9.7.el7.x86_64 [#######                     ]  4/19
  Installing : hwdata-0.252-9.7.el7.x86_64 [########                    ]  4/19
  Installing : hwdata-0.252-9.7.el7.x86_64 [#########                   ]  4/19
  Installing : hwdata-0.252-9.7.el7.x86_64 [##########                  ]  4/19
  Installing : hwdata-0.252-9.7.el7.x86_64 [###########                 ]  4/19
  Installing : hwdata-0.252-9.7.el7.x86_64 [############                ]  4/19
  Installing : hwdata-0.252-9.7.el7.x86_64 [#############               ]  4/19
  Installing : hwdata-0.252-9.7.el7.x86_64 [##############              ]  4/19
  Installing : hwdata-0.252-9.7.el7.x86_64 [###############             ]  4/19
  Installing : hwdata-0.252-9.7.el7.x86_64 [################            ]  4/19
  Installing : hwdata-0.252-9.7.el7.x86_64 [#################           ]  4/19
  Installing : hwdata-0.252-9.7.el7.x86_64 [##################          ]  4/19
  Installing : hwdata-0.252-9.7.el7.x86_64 [###################         ]  4/19
  Installing : hwdata-0.252-9.7.el7.x86_64 [####################        ]  4/19
  Installing : hwdata-0.252-9.7.el7.x86_64 [#####################       ]  4/19
  Installing : hwdata-0.252-9.7.el7.x86_64 [######################      ]  4/19
  Installing : hwdata-0.252-9.7.el7.x86_64 [#######################     ]  4/19
  Installing : hwdata-0.252-9.7.el7.x86_64 [########################    ]  4/19
  Installing : hwdata-0.252-9.7.el7.x86_64 [#########################   ]  4/19
  Installing : hwdata-0.252-9.7.el7.x86_64 [##########################  ]  4/19
  Installing : hwdata-0.252-9.7.el7.x86_64 [########################### ]  4/19
  Installing : hwdata-0.252-9.7.el7.x86_64                                 4/19 

  Installing : libpciaccess-0.14-1.el7.x86 [                            ]  5/19
  Installing : libpciaccess-0.14-1.el7.x86 [########################    ]  5/19
  Installing : libpciaccess-0.14-1.el7.x86_64                              5/19 

  Installing : libdrm-2.4.97-2.el7.x86_64 [                             ]  6/19
  Installing : libdrm-2.4.97-2.el7.x86_64 [####                         ]  6/19
  Installing : libdrm-2.4.97-2.el7.x86_64 [#####                        ]  6/19
  Installing : libdrm-2.4.97-2.el7.x86_64 [########                     ]  6/19
  Installing : libdrm-2.4.97-2.el7.x86_64 [#############                ]  6/19
  Installing : libdrm-2.4.97-2.el7.x86_64 [##################           ]  6/19
  Installing : libdrm-2.4.97-2.el7.x86_64 [####################         ]  6/19
  Installing : libdrm-2.4.97-2.el7.x86_64 [######################       ]  6/19
  Installing : libdrm-2.4.97-2.el7.x86_64 [##########################   ]  6/19
  Installing : libdrm-2.4.97-2.el7.x86_64 [############################ ]  6/19
  Installing : libdrm-2.4.97-2.el7.x86_64                                  6/19 

  Installing : libXau-1.0.8-2.1.el7.x86_64 [                            ]  7/19
  Installing : libXau-1.0.8-2.1.el7.x86_64 [#######                     ]  7/19
  Installing : libXau-1.0.8-2.1.el7.x86_64 [########                    ]  7/19
  Installing : libXau-1.0.8-2.1.el7.x86_64 [#######################     ]  7/19
  Installing : libXau-1.0.8-2.1.el7.x86_64                                 7/19 

  Installing : libxcb-1.13-1.el7.x86_64 [                               ]  8/19
  Installing : libxcb-1.13-1.el7.x86_64 [#                              ]  8/19
  Installing : libxcb-1.13-1.el7.x86_64 [####                           ]  8/19
  Installing : libxcb-1.13-1.el7.x86_64 [#####                          ]  8/19
  Installing : libxcb-1.13-1.el7.x86_64 [#######                        ]  8/19
  Installing : libxcb-1.13-1.el7.x86_64 [########                       ]  8/19
  Installing : libxcb-1.13-1.el7.x86_64 [#########                      ]  8/19
  Installing : libxcb-1.13-1.el7.x86_64 [##########                     ]  8/19
  Installing : libxcb-1.13-1.el7.x86_64 [###########                    ]  8/19
  Installing : libxcb-1.13-1.el7.x86_64 [############                   ]  8/19
  Installing : libxcb-1.13-1.el7.x86_64 [#############                  ]  8/19
  Installing : libxcb-1.13-1.el7.x86_64 [##############                 ]  8/19
  Installing : libxcb-1.13-1.el7.x86_64 [###############                ]  8/19
  Installing : libxcb-1.13-1.el7.x86_64 [#################              ]  8/19
  Installing : libxcb-1.13-1.el7.x86_64 [##################             ]  8/19
  Installing : libxcb-1.13-1.el7.x86_64 [###################            ]  8/19
  Installing : libxcb-1.13-1.el7.x86_64 [#####################          ]  8/19
  Installing : libxcb-1.13-1.el7.x86_64 [######################         ]  8/19
  Installing : libxcb-1.13-1.el7.x86_64 [#######################        ]  8/19
  Installing : libxcb-1.13-1.el7.x86_64 [########################       ]  8/19
  Installing : libxcb-1.13-1.el7.x86_64 [#########################      ]  8/19
  Installing : libxcb-1.13-1.el7.x86_64 [###########################    ]  8/19
  Installing : libxcb-1.13-1.el7.x86_64 [#############################  ]  8/19
  Installing : libxcb-1.13-1.el7.x86_64 [############################## ]  8/19
  Installing : libxcb-1.13-1.el7.x86_64                                    8/19 

  Installing : llvm-private-7.0.1-1.el7.x8 [                            ]  9/19
  Installing : llvm-private-7.0.1-1.el7.x8 [#                           ]  9/19
  Installing : llvm-private-7.0.1-1.el7.x8 [##                          ]  9/19
  Installing : llvm-private-7.0.1-1.el7.x8 [###                         ]  9/19
  Installing : llvm-private-7.0.1-1.el7.x8 [####                        ]  9/19
  Installing : llvm-private-7.0.1-1.el7.x8 [#####                       ]  9/19
  Installing : llvm-private-7.0.1-1.el7.x8 [######                      ]  9/19
  Installing : llvm-private-7.0.1-1.el7.x8 [#######                     ]  9/19
  Installing : llvm-private-7.0.1-1.el7.x8 [########                    ]  9/19
  Installing : llvm-private-7.0.1-1.el7.x8 [#########                   ]  9/19
  Installing : llvm-private-7.0.1-1.el7.x8 [##########                  ]  9/19
  Installing : llvm-private-7.0.1-1.el7.x8 [###########                 ]  9/19
  Installing : llvm-private-7.0.1-1.el7.x8 [############                ]  9/19
  Installing : llvm-private-7.0.1-1.el7.x8 [#############               ]  9/19
  Installing : llvm-private-7.0.1-1.el7.x8 [##############              ]  9/19
  Installing : llvm-private-7.0.1-1.el7.x8 [###############             ]  9/19
  Installing : llvm-private-7.0.1-1.el7.x8 [################            ]  9/19
  Installing : llvm-private-7.0.1-1.el7.x8 [#################           ]  9/19
  Installing : llvm-private-7.0.1-1.el7.x8 [##################          ]  9/19
  Installing : llvm-private-7.0.1-1.el7.x8 [###################         ]  9/19
  Installing : llvm-private-7.0.1-1.el7.x8 [####################        ]  9/19
  Installing : llvm-private-7.0.1-1.el7.x8 [#####################       ]  9/19
  Installing : llvm-private-7.0.1-1.el7.x8 [######################      ]  9/19
  Installing : llvm-private-7.0.1-1.el7.x8 [#######################     ]  9/19
  Installing : llvm-private-7.0.1-1.el7.x8 [########################    ]  9/19
  Installing : llvm-private-7.0.1-1.el7.x8 [#########################   ]  9/19
  Installing : llvm-private-7.0.1-1.el7.x8 [##########################  ]  9/19
  Installing : llvm-private-7.0.1-1.el7.x8 [########################### ]  9/19
  Installing : llvm-private-7.0.1-1.el7.x86_64                             9/19 

  Installing : libxshmfence-1.2-1.el7.x86_ [                            ] 10/19
  Installing : libxshmfence-1.2-1.el7.x86_ [########################### ] 10/19
  Installing : libxshmfence-1.2-1.el7.x86_64                              10/19 

  Installing : libX11-common-1.6.7-5.el7_9 [                            ] 11/19
  Installing : libX11-common-1.6.7-5.el7_9 [#                           ] 11/19
  Installing : libX11-common-1.6.7-5.el7_9 [###                         ] 11/19
  Installing : libX11-common-1.6.7-5.el7_9 [####                        ] 11/19
  Installing : libX11-common-1.6.7-5.el7_9 [#####                       ] 11/19
  Installing : libX11-common-1.6.7-5.el7_9 [#######                     ] 11/19
  Installing : libX11-common-1.6.7-5.el7_9 [########                    ] 11/19
  Installing : libX11-common-1.6.7-5.el7_9 [#########                   ] 11/19
  Installing : libX11-common-1.6.7-5.el7_9 [###########                 ] 11/19
  Installing : libX11-common-1.6.7-5.el7_9 [############                ] 11/19
  Installing : libX11-common-1.6.7-5.el7_9 [#############               ] 11/19
  Installing : libX11-common-1.6.7-5.el7_9 [###############             ] 11/19
  Installing : libX11-common-1.6.7-5.el7_9 [################            ] 11/19
  Installing : libX11-common-1.6.7-5.el7_9 [#################           ] 11/19
  Installing : libX11-common-1.6.7-5.el7_9 [##################          ] 11/19
  Installing : libX11-common-1.6.7-5.el7_9 [###################         ] 11/19
  Installing : libX11-common-1.6.7-5.el7_9 [####################        ] 11/19
  Installing : libX11-common-1.6.7-5.el7_9 [#####################       ] 11/19
  Installing : libX11-common-1.6.7-5.el7_9 [######################      ] 11/19
  Installing : libX11-common-1.6.7-5.el7_9 [#######################     ] 11/19
  Installing : libX11-common-1.6.7-5.el7_9 [########################    ] 11/19
  Installing : libX11-common-1.6.7-5.el7_9 [#########################   ] 11/19
  Installing : libX11-common-1.6.7-5.el7_9 [##########################  ] 11/19
  Installing : libX11-common-1.6.7-5.el7_9 [########################### ] 11/19
  Installing : libX11-common-1.6.7-5.el7_9.noarch                         11/19 

  Installing : libX11-1.6.7-5.el7_9.x86_64 [                            ] 12/19
  Installing : libX11-1.6.7-5.el7_9.x86_64 [#                           ] 12/19
  Installing : libX11-1.6.7-5.el7_9.x86_64 [##                          ] 12/19
  Installing : libX11-1.6.7-5.el7_9.x86_64 [####                        ] 12/19
  Installing : libX11-1.6.7-5.el7_9.x86_64 [#####                       ] 12/19
  Installing : libX11-1.6.7-5.el7_9.x86_64 [#######                     ] 12/19
  Installing : libX11-1.6.7-5.el7_9.x86_64 [########                    ] 12/19
  Installing : libX11-1.6.7-5.el7_9.x86_64 [#########                   ] 12/19
  Installing : libX11-1.6.7-5.el7_9.x86_64 [###########                 ] 12/19
  Installing : libX11-1.6.7-5.el7_9.x86_64 [############                ] 12/19
  Installing : libX11-1.6.7-5.el7_9.x86_64 [#############               ] 12/19
  Installing : libX11-1.6.7-5.el7_9.x86_64 [###############             ] 12/19
  Installing : libX11-1.6.7-5.el7_9.x86_64 [################            ] 12/19
  Installing : libX11-1.6.7-5.el7_9.x86_64 [#################           ] 12/19
  Installing : libX11-1.6.7-5.el7_9.x86_64 [###################         ] 12/19
  Installing : libX11-1.6.7-5.el7_9.x86_64 [####################        ] 12/19
  Installing : libX11-1.6.7-5.el7_9.x86_64 [######################      ] 12/19
  Installing : libX11-1.6.7-5.el7_9.x86_64 [#######################     ] 12/19
  Installing : libX11-1.6.7-5.el7_9.x86_64 [########################    ] 12/19
  Installing : libX11-1.6.7-5.el7_9.x86_64 [##########################  ] 12/19
  Installing : libX11-1.6.7-5.el7_9.x86_64 [########################### ] 12/19
  Installing : libX11-1.6.7-5.el7_9.x86_64                                12/19 

  Installing : libXext-1.3.3-3.el7.x86_64 [                             ] 13/19
  Installing : libXext-1.3.3-3.el7.x86_64 [#####################        ] 13/19
  Installing : libXext-1.3.3-3.el7.x86_64 [########################     ] 13/19
  Installing : libXext-1.3.3-3.el7.x86_64 [#########################    ] 13/19
  Installing : libXext-1.3.3-3.el7.x86_64                                 13/19 

  Installing : libXfixes-5.0.3-1.el7.x86_6 [                            ] 14/19
  Installing : libXfixes-5.0.3-1.el7.x86_6 [########################    ] 14/19
  Installing : libXfixes-5.0.3-1.el7.x86_6 [##########################  ] 14/19
  Installing : libXfixes-5.0.3-1.el7.x86_64                               14/19 

  Installing : libXdamage-1.1.4-4.1.el7.x8 [                            ] 15/19
  Installing : libXdamage-1.1.4-4.1.el7.x8 [##########                  ] 15/19
  Installing : libXdamage-1.1.4-4.1.el7.x8 [############                ] 15/19
  Installing : libXdamage-1.1.4-4.1.el7.x8 [########################### ] 15/19
  Installing : libXdamage-1.1.4-4.1.el7.x86_64                            15/19 

  Installing : libXxf86vm-1.1.4-1.el7.x86_ [                            ] 16/19
  Installing : libXxf86vm-1.1.4-1.el7.x86_ [#########################   ] 16/19
  Installing : libXxf86vm-1.1.4-1.el7.x86_ [##########################  ] 16/19
  Installing : libXxf86vm-1.1.4-1.el7.x86_64                              16/19 

  Installing : 1:libglvnd-glx-1.0.1-0.8.gi [                            ] 17/19
  Installing : 1:libglvnd-glx-1.0.1-0.8.gi [##                          ] 17/19
  Installing : 1:libglvnd-glx-1.0.1-0.8.gi [#####                       ] 17/19
  Installing : 1:libglvnd-glx-1.0.1-0.8.gi [########                    ] 17/19
  Installing : 1:libglvnd-glx-1.0.1-0.8.gi [##########                  ] 17/19
  Installing : 1:libglvnd-glx-1.0.1-0.8.gi [#############               ] 17/19
  Installing : 1:libglvnd-glx-1.0.1-0.8.gi [################            ] 17/19
  Installing : 1:libglvnd-glx-1.0.1-0.8.gi [###################         ] 17/19
  Installing : 1:libglvnd-glx-1.0.1-0.8.gi [######################      ] 17/19
  Installing : 1:libglvnd-glx-1.0.1-0.8.gi [########################    ] 17/19
  Installing : 1:libglvnd-glx-1.0.1-0.8.gi [########################### ] 17/19
  Installing : 1:libglvnd-glx-1.0.1-0.8.git5baa1e5.el7.x86_64             17/19 

  Installing : mesa-libGL-18.3.4-12.el7_9. [                            ] 18/19
  Installing : mesa-libGL-18.3.4-12.el7_9. [###                         ] 18/19
  Installing : mesa-libGL-18.3.4-12.el7_9. [#######                     ] 18/19
  Installing : mesa-libGL-18.3.4-12.el7_9. [##########                  ] 18/19
  Installing : mesa-libGL-18.3.4-12.el7_9. [##############              ] 18/19
  Installing : mesa-libGL-18.3.4-12.el7_9. [##################          ] 18/19
  Installing : mesa-libGL-18.3.4-12.el7_9. [#####################       ] 18/19
  Installing : mesa-libGL-18.3.4-12.el7_9. [#########################   ] 18/19
  Installing : mesa-libGL-18.3.4-12.el7_9. [########################### ] 18/19
  Installing : mesa-libGL-18.3.4-12.el7_9.x86_64                          18/19 

  Installing : mesa-dri-drivers-18.3.4-12. [                            ] 19/19
  Installing : mesa-dri-drivers-18.3.4-12. [#                           ] 19/19
  Installing : mesa-dri-drivers-18.3.4-12. [##                          ] 19/19
  Installing : mesa-dri-drivers-18.3.4-12. [###                         ] 19/19
  Installing : mesa-dri-drivers-18.3.4-12. [####                        ] 19/19
  Installing : mesa-dri-drivers-18.3.4-12. [#####                       ] 19/19
  Installing : mesa-dri-drivers-18.3.4-12. [######                      ] 19/19
  Installing : mesa-dri-drivers-18.3.4-12. [#######                     ] 19/19
  Installing : mesa-dri-drivers-18.3.4-12. [########                    ] 19/19
  Installing : mesa-dri-drivers-18.3.4-12. [#########                   ] 19/19
  Installing : mesa-dri-drivers-18.3.4-12. [##########                  ] 19/19
  Installing : mesa-dri-drivers-18.3.4-12. [###########                 ] 19/19
  Installing : mesa-dri-drivers-18.3.4-12. [############                ] 19/19
  Installing : mesa-dri-drivers-18.3.4-12. [#############               ] 19/19
  Installing : mesa-dri-drivers-18.3.4-12. [##############              ] 19/19
  Installing : mesa-dri-drivers-18.3.4-12. [###############             ] 19/19
  Installing : mesa-dri-drivers-18.3.4-12. [################            ] 19/19
  Installing : mesa-dri-drivers-18.3.4-12. [#################           ] 19/19
  Installing : mesa-dri-drivers-18.3.4-12. [##################          ] 19/19
  Installing : mesa-dri-drivers-18.3.4-12. [###################         ] 19/19
  Installing : mesa-dri-drivers-18.3.4-12. [####################        ] 19/19
  Installing : mesa-dri-drivers-18.3.4-12. [#####################       ] 19/19
  Installing : mesa-dri-drivers-18.3.4-12. [######################      ] 19/19
  Installing : mesa-dri-drivers-18.3.4-12. [#######################     ] 19/19
  Installing : mesa-dri-drivers-18.3.4-12. [########################    ] 19/19
  Installing : mesa-dri-drivers-18.3.4-12. [#########################   ] 19/19
  Installing : mesa-dri-drivers-18.3.4-12. [##########################  ] 19/19
  Installing : mesa-dri-drivers-18.3.4-12. [########################### ] 19/19
  Installing : mesa-dri-drivers-18.3.4-12.el7_9.x86_64                    19/19 

  Verifying  : libXext-1.3.3-3.el7.x86_64                                  1/19 

  Verifying  : libX11-common-1.6.7-5.el7_9.noarch                          2/19 

  Verifying  : libpciaccess-0.14-1.el7.x86_64                              3/19 

  Verifying  : libxshmfence-1.2-1.el7.x86_64                               4/19 

  Verifying  : llvm-private-7.0.1-1.el7.x86_64                             5/19 

  Verifying  : libxcb-1.13-1.el7.x86_64                                    6/19 

  Verifying  : libXau-1.0.8-2.1.el7.x86_64                                 7/19 

  Verifying  : hwdata-0.252-9.7.el7.x86_64                                 8/19 

  Verifying  : 1:libglvnd-glx-1.0.1-0.8.git5baa1e5.el7.x86_64              9/19 

  Verifying  : libXxf86vm-1.1.4-1.el7.x86_64                              10/19 

  Verifying  : libX11-1.6.7-5.el7_9.x86_64                                11/19 

  Verifying  : mesa-dri-drivers-18.3.4-12.el7_9.x86_64                    12/19 

  Verifying  : 1:libglvnd-1.0.1-0.8.git5baa1e5.el7.x86_64                 13/19 

  Verifying  : libXdamage-1.1.4-4.1.el7.x86_64                            14/19 

  Verifying  : libXfixes-5.0.3-1.el7.x86_64                               15/19 

  Verifying  : libdrm-2.4.97-2.el7.x86_64                                 16/19 

  Verifying  : mesa-libGL-18.3.4-12.el7_9.x86_64                          17/19 

  Verifying  : mesa-filesystem-18.3.4-12.el7_9.x86_64                     18/19 

  Verifying  : mesa-libglapi-18.3.4-12.el7_9.x86_64                       19/19 

Installed:
  libXdamage.x86_64 0:1.1.4-4.1.el7   libXfixes.x86_64 0:5.0.3-1.el7           
  libXxf86vm.x86_64 0:1.1.4-1.el7     mesa-dri-drivers.x86_64 0:18.3.4-12.el7_9
  mesa-libGL.x86_64 0:18.3.4-12.el7_9

Dependency Installed:
  hwdata.x86_64 0:0.252-9.7.el7                                                 
  libX11.x86_64 0:1.6.7-5.el7_9                                                 
  libX11-common.noarch 0:1.6.7-5.el7_9                                          
  libXau.x86_64 0:1.0.8-2.1.el7                                                 
  libXext.x86_64 0:1.3.3-3.el7                                                  
  libdrm.x86_64 0:2.4.97-2.el7                                                  
  libglvnd.x86_64 1:1.0.1-0.8.git5baa1e5.el7                                    
  libglvnd-glx.x86_64 1:1.0.1-0.8.git5baa1e5.el7                                
  libpciaccess.x86_64 0:0.14-1.el7                                              
  libxcb.x86_64 0:1.13-1.el7                                                    
  libxshmfence.x86_64 0:1.2-1.el7                                               
  llvm-private.x86_64 0:7.0.1-1.el7                                             
  mesa-filesystem.x86_64 0:18.3.4-12.el7_9                                      
  mesa-libglapi.x86_64 0:18.3.4-12.el7_9                                        

Complete!
+ make_build_number /home/conda/feedstock_root /home/conda/recipe_root /home/conda/feedstock_root/.ci_support/linux_ppc64le_.yaml
+ [[ linux-ppc64le != \l\i\n\u\x\-\6\4 ]]
+ [[ linux-ppc64le != linux-* ]]
+ [[ -f /home/conda/feedstock_root/LICENSE.txt ]]
+ cp /home/conda/feedstock_root/LICENSE.txt /home/conda/recipe_root/recipe-scripts-license.txt
+ [[ 0 == 1 ]]
+ conda-build /home/conda/recipe_root -m /home/conda/feedstock_root/.ci_support/linux_ppc64le_.yaml --suppress-variables --clobber-file /home/conda/feedstock_root/.ci_support/clobber_linux_ppc64le_.yaml --extra-meta flow_run_id= remote_url= sha=
WARNING: No numpy version specified in conda_build_config.yaml.  Falling back to default numpy value of 1.22
Adding in variants from internal_defaults
Adding in variants from /home/conda/feedstock_root/.ci_support/linux_ppc64le_.yaml
Attempting to finalize metadata for gnuplot
Reloading output folder (local): ...working... done
Getting pinned dependencies: ...working... done
Reloading output folder: ...working... done
Getting pinned dependencies: ...working... done
Traceback (most recent call last):
  File "/opt/conda/bin/conda-build", line 11, in <module>
    sys.exit(execute())
  File "/opt/conda/lib/python3.10/site-packages/conda_build/cli/main_build.py", line 590, in execute
    api.build(
  File "/opt/conda/lib/python3.10/site-packages/conda_build/api.py", line 250, in build
    return build_tree(
  File "/opt/conda/lib/python3.10/site-packages/conda_build/build.py", line 3638, in build_tree
    packages_from_this = build(
  File "/opt/conda/lib/python3.10/site-packages/conda_build/build.py", line 2308, in build
    output_metas = expand_outputs([(m, need_source_download, need_reparse_in_env)])
  File "/opt/conda/lib/python3.10/site-packages/conda_build/render.py", line 916, in expand_outputs
    for output_dict, m in deepcopy(_m).get_output_metadata_set(
  File "/opt/conda/lib/python3.10/site-packages/conda_build/metadata.py", line 2737, in get_output_metadata_set
    conda_packages = finalize_outputs_pass(
  File "/opt/conda/lib/python3.10/site-packages/conda_build/metadata.py", line 1095, in finalize_outputs_pass
    fm = finalize_metadata(
  File "/opt/conda/lib/python3.10/site-packages/conda_build/render.py", line 650, in finalize_metadata
    build_unsat, host_unsat = add_upstream_pins(
  File "/opt/conda/lib/python3.10/site-packages/conda_build/render.py", line 491, in add_upstream_pins
    host_deps, host_unsat, extra_run_specs_from_host = _read_upstream_pin_files(
  File "/opt/conda/lib/python3.10/site-packages/conda_build/render.py", line 453, in _read_upstream_pin_files
    extra_run_specs = get_upstream_pins(m, precs, env)
  File "/opt/conda/lib/python3.10/site-packages/conda_build/render.py", line 425, in get_upstream_pins
    loc, dist = execute_download_actions(
  File "/opt/conda/lib/python3.10/site-packages/conda_build/render.py", line 392, in execute_download_actions
    pfe.execute()
  File "/opt/conda/lib/python3.10/site-packages/conda/core/package_cache_data.py", line 891, in execute
    raise CondaMultiError(not_cancelled)
conda.CondaMultiError: Error with archive /home/conda/feedstock_root/build_artifacts/pkg_cache/ncurses-6.5-h8800142_0.conda.  You probably need to delete and re-download or re-create this file.  Message was:


        Cannot extract package to a case-insensitive file system. Your install
        destination does not differentiate between upper and lowercase
        characters, and this breaks things. Try installing to a location that
        is case-sensitive. Windows drives are usually the culprit here - can
        you install to a native Unix drive, or turn on case sensitivity for
        this (Windows) location?

          package location: %(package_location)s
          extract location: %(extract_location)s
        


