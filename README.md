# MagicRecipe
I have created a POJO i.e Recipe and Result
Using RestTemplate I am handling the http://www.recipepuppy.com/api/ with parameter passing in it.
Also i have added MessageConverter to support all mediaType
Also i have added CustomResponseEntityExceptionHandler to handle exception like 500 error,not found.

How it works:
Front Page is search page where all ingridients needs to be typed.After successful search it will list down all the recipient available for that ingridients.If click on particular recipient it redirect to another page for more detail.
