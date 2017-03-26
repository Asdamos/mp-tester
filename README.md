## Jak testować?
W pierwszej kolejności umieść swoje rozwiązanie w pliku _solution.pl_ manualnie  
albo usuń szablon _solution.pl_ i zrób dowiązanie/skopiuj do swojego głównego pliku z rozwiązaniem
```
ln -s ../solver/pawel_smolak.pl solution.pl
```
**Uwaga**, upewnij się, że w pliku solution znajduje się definicja modułu:
```
:- module(imie_nazwisko, [solve/2, op(200, fx, ~), op(500, xfy, v)]).
```

Następnie uruchom testy poleceniem make:

```
make test           % uruchom wszystkie testy z ./tests
make validity       % uruchom wszstkie testy validity v-*.test
make performance    % uruchom wszystkie testy performance p-*.test
make p-huge.test    % uruchom pojedynczy test p-huge.test
make share          % uruchom wszystkie testy i wrzuć wyniki na ix.io
```

Przykładowe rozwiązanie dla make test [http://ix.io/pcF](http://ix.io/pcF)

## Jak dodać nowe testy?
Skopiuj plik template.test znajdujący się w katalogu tests i zmień jego nazwę na odpowiednio:
```
p-imie_nazwisko.test
```
jeśli jest to plik zawierający testy performance lub:

```
v-imie_nazwisko.test
```
jeśli jest to plik zawierający testy validity.

Następnie umieść pliki w katalogu tests, oraz wykonaj pull-requesta aby udostępnić
test innym.

Dobrze, żeby skomentować każdy test i go krótko uzasadnić, aby osoba, której test nie
przechodzi wiedziała gdzie jest błąd.

## Jak dzielić się wynikami?
```
make share           % wrzuć log wszystkich testów
make share-valid     % wrzuć log testów validate
make share-perf      % wrzuć log testów performance
```

Wyniki innych osób  
[http://ix.io/pcR](http://ix.io/pcR)  
[http://ix.io/pcS](http://ix.io/pcS)

## Uwagi
Wiem, że niektóre testy u niektórych osób są błędne.
Postaram się je poprawić.
