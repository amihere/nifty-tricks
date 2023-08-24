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
