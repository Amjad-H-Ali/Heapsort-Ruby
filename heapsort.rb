p "HeapSort!"

# Creates Max Heap.
# Meaning Parent Node is Greater Than Children Nodes.
# Params: an array, i: index of parent node, n: size of array.

def heapify array, i, n
	# Assume i is the index that belongs to largest number.
	largest = i

	# Define Left and Right Children indexes.

	left = (i * 2) + 1

	right = (i * 2) + 2

	# Check if left child node is greater and reinitialize largest variable as needed.
	if left < n and array[left] > array[largest]

		largest = left
	end	

	# Check if right child node is greater and reinitialize largest variable as needed.
	if right < n and array[right] > array[largest]

		largest = right
	end	

	# Swap elements in array if parent was not largest element
	if largest != i

		# Swap elements in array
		swap(array, largest, i)

		# Recursively call function as long as largest is not parent
		heapify(array, largest, n)
	end	

end

# Function that swaps elements in array
def swap array, indx1, indx2
	temp = array[indx1]

	array[indx1] = array[indx2]

	array[indx2] = temp
end	

# Main Heap_Sort function.
# It will call heapify for each parent node
# Once array in Max-Heap, it will swap last node with root node, delete last noden then heapify affected array

def heap_sort array

	n = array.length

	# Calls heapify for each parent node backwards
	(n/2 -1).downto(0) {|indx| heapify(array, indx, n)}

	# Once in Max-Heap, swap root with last node
	# Then disregard last node,
	# And Heapify the affected array.

	(n - 1).downto(0) {
		|indx| swap(array, indx, 0)

		heapify(array, 0, indx)
	}

	# Return array
	array 
end	

p heap_sort [10, 0, 8, 42, 12, 11, 9, 67, 4, 0]

