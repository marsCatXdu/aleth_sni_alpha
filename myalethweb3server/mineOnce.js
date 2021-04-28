miner.setEtherbase("0x3ed04B8cdeA78aF1aB47d83b8B440380F18085Ad");

let initBlockNum;
eth.getBlockNumber().then(res=>{
    console.log(res);
    initBlockNum=res;
});

miner.start(1);

/**
 * 姑且就先这样吧，以后再改。。。
 */
setTimeout(function(){
    let currentBlockNum;

    eth.getBlockNumber().then(res=>{
        currentBlockNum=res;
        console.log("current block number: "+currentBlockNum);
        miner.stop();
        process.exit();
    }).catch(err=>{
        console.log(err);
    })
}, 5000);
