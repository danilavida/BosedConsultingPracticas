public with sharing class AccountData {
    public static void insertAccounts(List<Account> accounts) {

        //Realizar operación DML para insertar cuentas
        try {
            insert accounts;
            
        } catch (DmlException e) {
            System.debug('Error al insertar las cuentas: ' + e.getMessage());
            
        }
    }
}