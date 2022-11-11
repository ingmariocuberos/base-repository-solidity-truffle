const AddPeopleContract = artifacts.require("AddPeopleContract");

contract('AddPeopleContract', ()=>{

    before(async()=>{
        this.AddPeopleContract = await AddPeopleContract.deployed();
    })

    it('Debe retornar la address del contrato', async()=>{
        const address = this.AddPeopleContract.address;

        console.log(address);

        assert.notEqual(address, null);
        assert.notEqual(address, undefined);
        assert.notEqual(address, 0x0);
        assert.notEqual(address, "");
    });

    it('Debe crear 2 nuevas personas', async()=>{

        for (let i = 1; i < 10; i++) {
            console.log('hola', i)
            await this.AddPeopleContract.addOnePerson(i, "Andrea"+ i, "Catalana", 1000, 10);
        }
        console.log(await this.AddPeopleContract.people(5));
        console.log(await this.AddPeopleContract.people(6));
        console.log(await this.AddPeopleContract.people(7));
        console.log(await this.AddPeopleContract.people(8));
        console.log(await this.AddPeopleContract.people(9));
    })
})