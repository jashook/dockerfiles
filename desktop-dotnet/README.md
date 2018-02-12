## Setup

The desktop will need quite a bit of storage in order to correctly run. Follow the below steps to set up the daemon correctly.
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

docker build -t desktop-dotnet:latest -m 2GB .