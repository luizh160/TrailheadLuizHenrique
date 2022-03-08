public with sharing class StringArrayTest {

    public static List<String> generateStringArray(Integer count) {

        List<String> lstrings = new List<String>();
        String word;

        for (Integer i = 0; i < count; i++){

            word = 'Test ' + i;
            lstrings.add(word);
        }
        System.debug(lstrings);
        return lstrings;

    }
}