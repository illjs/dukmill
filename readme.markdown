# dukmill JS
small JavaScript runtime for high performance I/O.

```js
dukmill = duktape + libmill
```
* duktape to interpret JavaScript
* libmill for I/O and concurrency

# install
```bash
git clone https://github.com/reqshark/dukmill
cd dukmill
make
```
now set up a symbolic link somewhere in your bin $PATH
```bash
cd /usr/local/bin
ln -s path/to/your/dukmill/repo dm
```
with the `dm` executable setup you can do

```bash
$ dm yourJSfile.js
```
