# Standalone HBASE
A Docker image to run HBase 1.2.4 in standalone mode. **Not suitable for production**.

### How to run it?
Pull the image:
```bash
$ docker pull jonatasbaldin/standalone-hbase
```

Run with every HBase port exposed in the host:
```bash
$ dokcer run -p 8080:8080 -p 8085:8085 -p 9090:9090 -p 16010:16010 -p 16020:16020 -p 16030:16030 jonatasbaldin/standalone-hbase
```

Run with persistent storage:
```bash
$ mkdir data
$ dokcer run -v $PWD/data:/data -p 8080:8080 -p 8085:8085 -p 9090:9090 -p 16010:16010 -p 16020:16020 -p 16030:16030 jonatasbaldin/standalone-hbase
```
