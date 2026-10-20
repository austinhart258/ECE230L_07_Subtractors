# Number Theory: Subtraction

In this lab you've learned the basics of number theory as it relates to subtraction.

## Rubric

| Item | Description | Value |
| ---- | ----------- | ----- |
| Summary Answers | Your writings about what you learned in this lab. | 25% |
| Question 1 | Your answers to the question | 25% |
| Question 2 | Your answers to the question | 25% |
| Question 3 | Your answers to the question | 25% |

## Names

Dylan Goodell

Austin Hart

## Summary

In this lab I built a half subtractor, a One's Complement adder, and a Two's Complement converter from the full adder. A plain subtractor can't represent negative numbers. One's Complement fixes that by inverting bits, but it has two zeros and needs an end-around carry. Two's Complement (invert, then add 1) has one zero and lets a normal adder do both addition and subtraction.

## Lab Questions

### 1 - Explain the differences between our Half Adder from last lab and the Half Subtractor from this lab.

The Y output is identical for both `A ^ B`. Only the last output differs: the adder's Carry is `A & B`, and the subtractor's Borrow is `~A & B`.

### 2 - What about the end around carry of One’s Complement makes it hard to use and implement?

The carry out of the MSB has to feed back into the LSB, which creates a combinatorial loop. It can only be avoided by doing two additions in sequence, which doubles the carry chain and makes the circuit slower.

### 3 - What is the edge case and problem with Two’s Complement number representation?

The range is asymmetric, so -8 has no positive counterpart. Negating -8 gives -8 again, which is an overflow.
