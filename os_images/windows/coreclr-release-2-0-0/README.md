## Setup

Follow the below steps to set up the daemon correctly.
- Right click the windows docker icon and click settings.
- Click advanced settings.
- Add:

```
{
    "storage-opts": [
        "size=120GB"
    ]
}
```

### Note

The more memory that is given to the process the quicker it will run. This command will take a fair amount of space. Expect the resulting container to be about 10G in size.

In addition it is worth noting that this docker file needs to be viewed wholistically with the vs2017-build-tools docker file in the same folder. It will include both the arm and arm64 compiler. Therefore, it can build all architectures for coreclr release/2.0.0.

>docker build -t coreclr-release-2-0-0:latest -m 2GB .

## Known issues

As of 23-Feb-2018 mspdbsrv.exe has been consistently problematic inside the windows docker container. The current workaround for this issue is to force building/linking with mspdbcore.dll.

The following failures are indicators of the mspdbsrv.exe error:

`LINK : fatal error LNK1318: Unexpected PDB error; RPC (23) '(0x000006E7)'`

`fatal error C1041: cannot open program database ...`

Before building coreclr please apply the following patch which will force the following command line options:

**cl.exe will use /z7 instead os /zi**

**link.exe will use /pdbdll:mspdbcore.dll**

Patch location: https://gist.github.com/jashook/0c7e2600d3cf9c884b171e46400921a0

## To apply patch

```
wget https://gist.github.com/jashook/0c7e2600d3cf9c884b171e46400921a0
git apply cmake_docker_coreclr.patch
```

## Example run command
`docker run -i --rm -v <host/coreclr/path>:C:\coreclr -w C:\coreclr -m 16G --cpus 16 jashook/coreclr-release-2-0-0:latest C:\coreclr\build.cmd`