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
