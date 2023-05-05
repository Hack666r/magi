#!/bin/sh
set -e

exec magi \
    --network $NETWORK \
    --jwt-secret $JWT_SECRET \
    --l1-rpc-url $L1_RPC_URL \
    --l2-rpc-url http://${EXECUTION_CLIENT}:8545 \
    --l2-engine-url http://${EXECUTION_CLIENT}:8551 \
    --rpc-port $RPC_PORT \
    --sync-mode $SYNC_MODE \
    --checkpoint-sync-url $CHECKPOINT_SYNC_URL \
    --checkpoint-hash $CHECKPOINT_HASH
