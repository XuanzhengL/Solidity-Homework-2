Practice 1
For the first question, the output for `HelloWorld(uint[], bool)` with inputs `[1993, 1994]` and `true` is:

```
0x23ffcc4c0000000000000000000000000000000000000000000000000000000000000040000000000000000000000000000000000000000000000000000000000000000100000000000000000000000000000000000000000000000000000000000000010000000000000000000000000000000000000000000000000000000000000004
```

Here, `0x23ffcc4c` is the function selector, followed by the ABI-encoded data representing the array and the boolean value.

For the second question, using `encodePacked` with the same inputs results in:

```
0x00000000000000000000000000000000000000000000000000000000000007c9000000000000000000000000000000000000000000000000000000000000001301
```

This is a more compact representation, without the padding present in standard ABI encoding.
The screen shot is shown below:
![image](https://github.com/user-attachments/assets/2bdb9bf9-9a0a-475b-8b3b-0941b19e0946)


