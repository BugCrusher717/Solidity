async function main() {
    const Box=await ethers.getContractFactory('MyContract');
    console.log('Deploying MyContract...');
    const box=await Box.deploy();
    await box.deploy();
    console.log('Box deployed to:', box.address);
}
main()
    .then(()=>process.exit(0))
    .catch(error=>{
        console.error(error);
        process.exit(1);
    });
