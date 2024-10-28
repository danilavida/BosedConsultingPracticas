public with sharing class AccountService {
    public static void createAccounts(Integer numAccounts) {

        // Generar una lista de cuentas usando la lógica de negocio
        List<Account> accountList = new List<Account>();

        for (Integer i = 1; i <= numAccounts; i++){
            Account acc = new Account(Name = 'Cuenta '+ i);
            accountList.add(acc);
        }
    
        //Llamar a la clase data para iunsertar las cuentas
        AccountData.insertAccounts(accountList);
    
    }
}