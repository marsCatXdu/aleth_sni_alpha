var http = require("http");
var Web3 = require("web3");
var net = require('net');
var url = require('url');
var exec = require('child_process').exec; 

let web3 = new Web3('/home/marscat/Desktop/ethereum/aleth_sni_alpha/build/aleth/data10/geth.ipc', net);

http.createServer(function(req, responseInterface) {
    responseInterface.setHeader('Access-Control-Allow-Credentials', true);
    responseInterface.setHeader('Access-Control-Allow-Origin', '*')
    let urlObj = url.parse(req.url);
    console.log(urlObj);
    if(urlObj.pathname=="/api/ping") {
        pingResponse(responseInterface);
    } else if(urlObj.pathname=="/api/getBlockHeight") {
        getBlockHeight(responseInterface);
    } else if (urlObj.pathname=="/api/setEtherBase") {
        setEtherBase2();
    } else if (urlObj.pathname=="/api/msgCall0x02") {
        msgCall(responseInterface);
    } else if (urlObj.pathname=="/api/mineSomeBlocks") {
        mineSomeBlocks(responseInterface);
    }
        
}).listen(3000);

function getBlockHeight(responseInterface) {
    web3.eth.getBlockNumber().then(res=>{
        responseInterface.write(res.toString());
        responseInterface.end();
    });
}

function setEtherBase2(responseInterface) {
    //web3.eth.accounts
}

function pingResponse(responseInterface) {
    let ret = [{
        connectionStat: 'ok'
    }];
    responseInterface.write(JSON.stringify(ret));
    responseInterface.end();
}

function msgCall(responseInterface) {
    let ret = [{
        connectionStat: 'ok'
    }];
    web3.eth.call({
        to: "0x0000000000000000000000000000000000000002", // contract address
        data: ""
    })
    .then(console.log);
    responseInterface.write(JSON.stringify(ret));
    responseInterface.end();
}

function mineSomeBlocks(responseInterface) {
    let ret = [{
        connectionStat: 'ok'
    }];
    
    exec("ethconsole ./mineOnce.js ../build/aleth/data10/geth.ipc", function(err,stdout,stderr){
        console.log(stdout);
    });

    responseInterface.write(JSON.stringify(ret));
    responseInterface.end();
}