@isTest
public with sharing class AccountServiceTest {
    @isTest

    static void testCreateAccounts(){
        
        // Inicializa el Test y llama al metodo de creacion de cuentas
        Test.startTest();
        AccountService.createAccounts(100);
        AccountData.insertAccounts(accounts);
        AccountController.createAccounts();
        Test.stopTest();

        // Verifica que se crearon 100 cuentas
        List<Account> accounts = [SELECT Id, Name FROM Account WHERE Name LIKE 'Cuenta%'];
        System.assertEquals(100, accounts.size(), 'Se esperaban 100 cuentas');


         // Verificar que los nombres son correctos
         for (Integer i = 1; i <= 100; i++) {
            String expectedName = 'Cuenta ' + i;
            Boolean nameExists = false;
            
            // Verificar si alguna cuenta tiene el nombre esperado
            for (Account acc : accounts) {
                if (acc.Name == expectedName) {
                    nameExists = true;
                    break;
                }
            }
            
            // Asegurar de que se encontró el nombre esperado
            System.assert(nameExists, 'No se encontró la cuenta con nombre: ' + expectedName);
        }
    }
}