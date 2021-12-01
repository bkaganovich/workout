# Pyramid Workout Counter and Logger

### Description
Simple Ruby programs made to help quantify workout repetitons and record completed sets. The workout program outputs sets of repetitons with accumulated total for visualizing the desired pyramid level. The log program records daily completed exercises.

### Usage
- **`./workout-0.3.rb`** prompts for pyramid level and displays sets with running totals of number of repetitions
    - Can be run by providing integer argument for desired pyramid level, e.g. `./workout-0.3.rb 7`
- **`./log.rb`** prompts for exercise and number of repetitions and then records to daily record file

### Example Outputs

```sh
$ ./workout-0.3.rb 5
1 rep, total: 1
2 rep, total: 3
3 rep, total: 6
4 rep, total: 10
5 rep, total: 15
4 rep, total: 19
3 rep, total: 22
2 rep, total: 24
1 rep, total: 25
```
```sh
$ ./log.rb 
Hello, today is 2021-12-01.

Choose workout [1=pushups/2=squats/3=calf raises]: 1
Enter completed reps: 36
Written to '/home/user/workout/records/2021-12-01'

Choose workout [1=pushups/2=squats/3=calf raises]: 0

End program
```
