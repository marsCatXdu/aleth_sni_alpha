miner.setEtherbase("0x7B0C8ed495e30a26852e81b3CF15BA49f4D0c396");

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
}, 8000);
