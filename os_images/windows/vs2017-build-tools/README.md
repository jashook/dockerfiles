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

>docker build -t vs2017-build-tools:latest -m 10GB .