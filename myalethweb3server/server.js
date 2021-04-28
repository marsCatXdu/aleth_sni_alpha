var http = require("http");
var Web3 = require("web3");
var net = require('net');
var url = require('url');

let web3 = new Web3('/home/marscat/Desktop/ethereum/aleth_sni_alpha/build/aleth/data10/geth.ipc', net);

http.createServer(function(req, responseInterface) {
    responseInterface.setHeader('Access-Control-Allow-Credentials', true);
    responseInterface.setHeader('Access-Control-Allow-Origin', '*')
    let urlObj = url.parse(req.url);
    console.log(urlObj);
    if(urlObj.pathname=="/api/getBlockHeight") {
        getBlockHeight(responseInterface);
    } else if (urlObj.pathname=="/api/setEtherBase") {
        setEtherBase2();
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