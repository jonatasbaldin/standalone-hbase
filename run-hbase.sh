#!/bin/bash

echo "Starting Thrift Server..."
/opt/hbase/bin/hbase thrift start &

echo "Starting REST Server..."
/opt/hbase/bin/hbase rest start &

echo "Starting HMaster Node..."
/opt/hbase/bin/hbase master start
