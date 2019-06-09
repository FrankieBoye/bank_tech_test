# Bank tech test

## Specification

### Requirements
You should be able to interact with your code via a REPL like IRB or the JavaScript console. (You don't need to implement a command line interface that takes input from STDIN.)
Deposits, withdrawal.
Account statement (date, amount, balance) printing.
Data can be kept in memory (it doesn't need to be stored to a database or anything).

#### Acceptance criteria

Given a client makes a deposit of 1000 on 10-01-2012<br>
And a deposit of 2000 on 13-01-2012<br>
And a withdrawal of 500 on 14-01-2012<br>
When she prints her bank statement<br>
Then she would see

date || credit || debit || balance<br>
14/01/2012 || || 500.00 || 2500.00<br>
13/01/2012 || 2000.00 || || 3000.00<br>
10/01/2012 || 1000.00 || || 1000.00

### User stories

As a client<br>
So that I can store my money safely<br>
I want to be able to deposit it in my account

As a client<br>
So that I can access my money<br>
I want to be able to withdraw my money

As a client<br>
So that I can keep track of my money<br>
I want to be able to print a statement which lists my account history
<br>
<br>

##### Using this application:
<br>
This application can be run through IRB.

$ irb

require './lib/account'

account = Account.new

##### An example of app in use below:
<br>
account.credit 1000<br>
account.debit 200<br>
account.credit 400<br>
account.credit 400<br>
account.credit 400<br>
account.debit 50

account.print

<img src="screenshots/screenshot.png"/>
