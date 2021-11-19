# Pyramid Workout Counter

## Description
Simple program written in Python and translated into Ruby made to help quantify workout repetitons. The program outputs sets of repetitons with accumulated total for the desired pyramid level.

## Usage
- `./workout-0.3.rb` prompts for pyramid level and displays sets with running totals of number of repetitions
- Can be run by providing integer argument for desired pyramid level, e.g. `./workout-0.3.rb 7`

## Example Output
```sh
$ ./workout-0.3.rb
Enter pyramid level: 4
1 rep, total: 1
2 rep, total: 3
3 rep, total: 6
4 rep, total: 10
3 rep, total: 13
2 rep, total: 15
1 rep, total: 16
```

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
