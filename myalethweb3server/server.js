var http = require("http");
var Web3 = require("web3");
var net = require('net');
var url = require('url');
var exec = require('child_process').exec; 

let web3 = new Web3('/home/marscat/Desktop/ethereum/aleth_sni_alpha/build/aleth/data11/geth.ipc', net);
let contractList = new Array();

// TODO: 最后把几个常用的合约地址全都直接在这里 Hardcode 进来吧
let defaultProxyContractAbi='[{"inputs":[{"internalType":"bytes32","name":"_bytes32","type":"bytes32"}],"name":"bytes32ToString","outputs":[{"internalType":"string","name":"","type":"string"}],"stateMutability":"pure","type":"function"},{"inputs":[{"internalType":"string","name":"inSql","type":"string"}],"name":"callSqlSNI","outputs":[{"internalType":"bytes32[320]","name":"h","type":"bytes32[320]"}],"stateMutability":"nonpayable","type":"function"},{"inputs":[{"internalType":"string","name":"inSql","type":"string"}],"name":"sqlQuery","outputs":[{"internalType":"string","name":"","type":"string"}],"stateMutability":"nonpayable","type":"function"}]';
let defaultProxyContractAddr="0x7A81cBafb70A0EE0fA5D58A93Fa8C13c6C48dD0B";
let defaultProxyContract;

http.createServer(function(req, responseInterface) {
    setDefaultProxyContract();
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
    } else if(urlObj.pathname=="/api/getItemByNameFuzzy") {
        getItemByNameFuzzy(req, responseInterface);
    } else if(urlObj.pathname=="/api/getItemByNameFuzzyParams") {
        getItemByNameFuzzyParams(req, responseInterface);
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
    
    exec("ethconsole ./mineOnce.js ../build/aleth/data11/geth.ipc", function(err,stdout,stderr){
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

    // console.log(bytecode);

    exec("ethconsole ./mineOnce.js ../build/aleth/data11/geth.ipc", function(err,stdout,stderr){
        console.log(stdout);
    });
    // 0x3ed04B8cdeA78aF1aB47d83b8B440380F18085Ad
    web3.eth.personal.unlockAccount("0x7B0C8ed495e30a26852e81b3CF15BA49f4D0c396", "123", 100000);
    console.log("minerStarted");
    web3.eth.sendTransaction({from: "0x7B0C8ed495e30a26852e81b3CF15BA49f4D0c396", data: bytecode, gas:9200000, gasPrice:100000}).then(res=>{
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

function setDefaultProxyContract() {
    defaultProxyContract = new web3.eth.Contract(JSON.parse(defaultProxyContractAbi), defaultProxyContractAddr);
}


/**
 * @param req 包含 abi 和合约地址
 * {
 *     'abi': '...',
 *     'contractAddr': '...'
 * }
 * 这玩意只能是调试用，真要对应，还得靠硬编码，用批处理的方式启动时加载
 * 已经定型的 solidity 传话筒 0x7A81cBafb70A0EE0fA5D58A93Fa8C13c6C48dD0B
 */
function addContractByAbiAndContractAddr(req, responseInterface) {
    web3.eth.personal.unlockAccount("0x7B0C8ed495e30a26852e81b3CF15BA49f4D0c396", "123", 100000);
    let newContract;
    let reqObj;
    req.setEncoding("utf-8");
    req.on('data', (chunk) => {
        reqObj = JSON.parse(chunk.toString());
        newContract = new web3.eth.Contract(JSON.parse(reqObj.abi), reqObj.contractAddr);
        newContract.methods.sqlQuery("select * from car2 where d>202000;").call({from:"0x7B0C8ed495e30a26852e81b3CF15BA49f4D0c396", gas:9800000}).then(res=>{
            console.log("contractReturns:");
            console.log("value:"+res);
            responseInterface.write(JSON.stringify(res));
            responseInterface.end();
        });
        
        contractList.push(newContract);
    })
}

function getItemByNameFuzzy(req, responseInterface) {
    web3.eth.personal.unlockAccount("0x7B0C8ed495e30a26852e81b3CF15BA49f4D0c396", "123", 100000);
    req.setEncoding("utf-8");
    req.on('data', (chunk) => {
        reqObj = JSON.parse(chunk.toString());
        let sqlStr;
        if(reqObj.orderBy=="default" || !reqObj.orderBy) {          // i,tt,p,t,l,d
            sqlStr = "select * from car2 where tt like '%"+reqObj.fuzzyName+"%';";
        } else if (reqObj.orderBy=="highestPrice") {
            sqlStr = "select * from car2 where tt like '%"+reqObj.fuzzyName+"%' order by p desc;";
        } else if (reqObj.orderBy=="lowestPrice") {
            sqlStr = "select * from car2 where tt like '%"+reqObj.fuzzyName+"%' order by p asc;";
        } else if (reqObj.orderBy=="shortestTrip") {
            sqlStr = "select * from car2 where tt like '%"+reqObj.fuzzyName+"%' order by t asc;";
        } else if (reqObj.orderBy=="shortestAge") {
            sqlStr = "select * from car2 where tt like '%"+reqObj.fuzzyName+"%' order by d desc;";
        } 
        defaultProxyContract.methods.sqlQuery(sqlStr).call({from:"0x7B0C8ed495e30a26852e81b3CF15BA49f4D0c396", gas:9800000}).then(res=>{
            responseInterface.write(JSON.stringify(res));
            responseInterface.end();
        });
    })
}

function getItemByNameFuzzyParams(req, responseInterface) {
    web3.eth.personal.unlockAccount("0x7B0C8ed495e30a26852e81b3CF15BA49f4D0c396", "123", 100000);
    req.setEncoding("utf-8");
    req.on('data', (chunk) => {
        reqObj = JSON.parse(chunk.toString());
        console.log(reqObj);
        let lowPrice, highPrice, earlistDate, latestDate;
        if(reqObj.params.priceRange==0) {
            lowPrice=0;
            highPrice=999;
        } else if(reqObj.params.priceRange==1) {
            lowPrice=0;
            highPrice=5;
        } else if(reqObj.params.priceRange==2) {
            lowPrice=5;
            highPrice=10;
        } else if(reqObj.params.priceRange==3) {
            lowPrice=10;
            highPrice=20;
        } else if(reqObj.params.priceRange==4) {
            lowPrice=20;
            highPrice=30;
        } else if(reqObj.params.priceRange==5) {
            lowPrice=30;
            highPrice=999;
        }
        
        console.log(reqObj.params.carAgeRange.lower);

        earlistDate=202105-reqObj.params.carAgeRange.upper*100;
        latestDate=202105-reqObj.params.carAgeRange.lower*100;

        console.log(earlistDate);
        console.log(latestDate);

        let sqlStr;
        if(reqObj.orderBy=="default" || !reqObj.orderBy) {          // i,tt,p,t,l,d
            sqlStr = "select * from car2 where tt like '%"+reqObj.fuzzyName+"%' and p>="+lowPrice+" and p<="+highPrice+" and d>="+earlistDate+" and d<="+latestDate+";";
        } else if (reqObj.orderBy=="highestPrice") {
            sqlStr = "select * from car2 where tt like '%"+reqObj.fuzzyName+"%' and p>="+lowPrice+" and p<="+highPrice+" and d>="+earlistDate+" and d<="+latestDate+" order by p desc;";
        } else if (reqObj.orderBy=="lowestPrice") {
            sqlStr = "select * from car2 where tt like '%"+reqObj.fuzzyName+"%' and p>="+lowPrice+" and p<="+highPrice+" and d>="+earlistDate+" and d<="+latestDate+" order by p asc;";
        } else if (reqObj.orderBy=="shortestTrip") {
            sqlStr = "select * from car2 where tt like '%"+reqObj.fuzzyName+"%' and p>="+lowPrice+" and p<="+highPrice+" and d>="+earlistDate+" and d<="+latestDate+" order by t asc;";
        } else if (reqObj.orderBy=="shortestAge") {
            sqlStr = "select * from car2 where tt like '%"+reqObj.fuzzyName+"%' and p>="+lowPrice+" and p<="+highPrice+" and d>="+earlistDate+" and d<="+latestDate+" order by d desc;";
        } 
        defaultProxyContract.methods.sqlQuery(sqlStr).call({from:"0x7B0C8ed495e30a26852e81b3CF15BA49f4D0c396", gas:9800000}).then(res=>{
            responseInterface.write(JSON.stringify(res));
            responseInterface.end();
        });
    })
}