var http = require("http");
var Web3 = require("web3");
var net = require('net');
var url = require('url');
var exec = require('child_process').exec; 

let web3 = new Web3('/home/marscat/Desktop/ethereum/aleth_sni_alpha/build/aleth/data10/geth.ipc', net);
let contractList = new Array();

http.createServer(function(req, responseInterface) {
    responseInterface.setHeader('Access-Control-Allow-Credentials', true);
    responseInterface.setHeader('Access-Control-Allow-Origin', '*')
    let urlObj = url.parse(req.url);
    
    // console.log(urlObj);
    if(urlObj.pathname=="/api/ping") {
        pingResponse(responseInterface);
    } else if(urlObj.pathname=="/api/getBlockHeight") {
        getBlockHeight(responseInterface);
    } else if(urlObj.pathname=="/api/setEtherBase") {
        setEtherBase2();
    } else if(urlObj.pathname=="/api/msgCall0x02") {
        msgCall(responseInterface);
    } else if(urlObj.pathname=="/api/mineSomeBlocks") {
        mineSomeBlocks(responseInterface);
    } else if(urlObj.pathname=="/api/postBytecode") {
        deployBytecode(req, responseInterface);
    } else if(urlObj.pathname=="/api/addContractByAbiAndContractAddr") {
        addContractByAbiAndContractAddr(req, responseInterface);
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

function deployBytecode(req, responseInterface) {
    let ret = {
        contractAddress: ''
    };

    let bytecode;

    if (req.url.indexOf('?')!==-1) {
        params = req.url.split("?");
        params = params[1].split("&");
        for(var $i=0;$i<params.length;$i++) {
            var myitem = params[$i].split("=");
            bytecode=myitem[1];
        }
    }

    console.log(bytecode);

    exec("ethconsole ./mineOnce.js ../build/aleth/data10/geth.ipc", function(err,stdout,stderr){
        console.log(stdout);
    });

    web3.eth.personal.unlockAccount("0x3ed04B8cdeA78aF1aB47d83b8B440380F18085Ad", "123", 100000);

    web3.eth.sendTransaction({from: "0x3ed04B8cdeA78aF1aB47d83b8B440380F18085Ad", data: bytecode, gas:1000000, gasPrice:10000}).then(res=>{
        let contractAddress;
        contractAddress = res.contractAddress;
        console.log("============");
        console.log(contractAddress);
        ret.contractAddress=contractAddress;
    }).then(res=>{
        responseInterface.write(JSON.stringify(ret));
        responseInterface.end();
    });
}

/**
 * @param req 包含 abi 和合约地址
 * {
 *     'abi': '...',
 *     'contractAddr': '...'
 * }
 * 这玩意只能是调试用，真要对应，还得靠硬编码，用批处理的方式启动时加载
 */
function addContractByAbiAndContractAddr(req, responseInterface) {
    web3.eth.personal.unlockAccount("0x3ed04B8cdeA78aF1aB47d83b8B440380F18085Ad", "123", 100000);
    let ret = {
        result: ''
    }; 
    let reqObj;
    req.setEncoding("utf-8");
    req.on('data', (chunk) => {
        reqObj = JSON.parse(chunk.toString());
        let newContract = new web3.eth.Contract(JSON.parse(reqObj.abi), reqObj.contractAddr);
        
        // 下面这句话仅供测试！！！
        // newContract.methods.callPrecompiled().call({from:"0x58455a2F726C41C0Ac3EC6aA937c3C6AC98E1826"})
        
        contractList.push(newContract);
        console.log("------------------");
        console.log(contractList);
    })

    /*
    let paramArr = req.url.split("?")[1].split("&");

    let abi = paramArr[0].split("=")[1];
    let contractAddr = paramArr[1].split("=")[1];
    console.log(abi);

    let newContract = new web3.eth.Contract(abi, contractAddr);
    contractList.push(newContract);
    console.log(contractList);
    */
    responseInterface.write(JSON.stringify(ret));
    responseInterface.end();
}