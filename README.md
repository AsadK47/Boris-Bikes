# Boris-Bikes
## Challenge 1 ##
This repositories purpose is to recreate the Boris Bike challenge.

## Challenge 2 ##
| Objects       | Messages      |
| ------------- |:-------------:|
| Person        |               |
| Bike          | working?      |
| Docking station| releasing_bike|

**Diagram below showing how objects will use methods to communicate with one another**

Person ---> releasing_a_bike ---> if true == Bike else == nil

Person ---> check_if_bike_is_working ---> if true == Goodbike elsif bike else nil

**Running the following code will give us an instant fail**

docking_station = DockingStation.new

However, it is good to view the error below and look at the message the computer gives, objectively.

```
2.2.3 :001 > docking_station = DockingStation.new
NameError: uninitialized constant DockingStation
from (irb):1
from /Users/asadk/.rvm/rubies/ruby-2.2.3/bin/irb:11:in <main>
```

This error tells us that there is _**NameError**_ which needs to be corrected. The fact that it tells us there is an uninitialized constant means that a _**class**_ has yet to be made.

The following code the is minimum needed to fix such an error
```ruby
class Person
end
```
