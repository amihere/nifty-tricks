## Explained
```
Min  Hour Day  Mon  Weekday
*    *    *    *    *  command to be executed
┬    ┬    ┬    ┬    ┬
│    │    │    │    └─  Day of Week   (0=Sun .. 6=Sat)
│    │    │    └──────  Month         (1..12)
│    │    └───────────  Day of Month  (1..31)
│    └────────────────  Hour          (0..23)
└─────────────────────  Minute        (0..59)

Field 	      Range 	  Special characters
Minute        0 - 59 	  , - * /
Hour          0 - 23 	  , - * /
Day of Month  1 - 31 	  , - * ? / L W
Month         1 - 12 	  , - * /
Day of Week   0 - 6 	  , - * ? / L #

```

## Examples
```
*/15 * * * *  Every 15 mins
0 * * * *     Every hour
0 */2 * * *   Every 2 hours
15 2 * * *    At 2:15AM of every day
15 2 * * ?    At 2:15AM of every day
10 9 * * 5    At 9:10AM of every Friday
0 0 * * 0     At midnight of every Sunday
15 2 * * 1L   At 2:15am on the last monday of every month
15 0 * * 4#2  At 00:15am on the second thursday of every month
0 0 1 * *     Every 1st of month (monthly)
0 0 1 1 *     Every 1st of january (yearly)
@reboot       Every reboot 
```

## Special Chars
```
Asterik(*)        Matches all values in the field or any possible value.
Hyphen(-)         Used to define a range.Ex: 1-5 in 5th field(Day Of Week) Every Weekday i.e., Monday to Friday
Slash (/)         1st field(Minute) /15 meaning every fifteen minute or increment of range.
Comma (,)         Used to separate items.Ex: 2,6,8 in 2nd fields(Hour) executes at 2am,6am and 8am
L                 It is allowed only for Day of Month or Day Of Week field, 2L in Day of week indicates Last tuesday of every month
Hash (#)          It is allowed only for Day Of Week field, which must be followed within range of 1 to 5. For example, 4#1 means "The first Thursday" of given month.
Question mark (?) Can be instead of '*' and allowed for Day of Month and Day Of Week. Usage is restricted to either Day of Month or Day Of Week in a cron expression.
```
