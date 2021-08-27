CH1 = Channel.fromList([['a', 1], ['b', 1], ['a', 2], ['b',2] ])

CH2 = Channel.fromList([['a', 'addA'], ['b', 'addB']])

CH1.combine(CH2, by: 0).view()

