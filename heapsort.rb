p "HeapSort!"

# Creates Max Heap.
# Meaning Parent Node is Greater Than Children Nodes.
# Params: an array, i: current index, n: size of array.

def max_heap array, i, n
	# Assume i is the index that belongs to largest number.
	largest = i

	# Define Left and Right Children indexes.

	left = (i * 2) + 1

	right = (i * 2) + 2

	# Check if left child node is greater and swap as needed.
	if left < n and array[left] > array[largest]

		largest = left
	end	

	# Check if right child node is greater and swap as needed.
	if right < n and array[right] > array[largest]

		largest = right
	end	


end