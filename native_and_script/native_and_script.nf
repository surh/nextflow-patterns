nums = [1,2,3,4]
process test_mult_code{
	input:
	val num from nums

	exec:
	println num

	shell:
	'''
	echo "!{num}"
	date
	'''
}
