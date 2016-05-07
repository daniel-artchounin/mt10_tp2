from sage.crypto.util import bin_to_ascii

def numerise(message, N):
	"""Encoding of a message."""
	S3 = BinaryStrings()
	binaryMessage = S3.encoding(message)
	# print(binaryMessage) # Test
	packetLength = floor(ln(N)/ln(2)) # Computation of the logarithm base 2
	binaryMessageLength = len(binaryMessage)
	numberOfSameLengthPackets = binaryMessageLength//packetLength
	lengthOfTheLastPacket = binaryMessageLength%packetLength
	# print(lengthOfTheLastPacket) # Test
	digitization = []
	for i in range(numberOfSameLengthPackets):
		packet = str(binaryMessage[i*packetLength:i*packetLength+packetLength])
		packet = int(str(packet), base=2)
		digitization.append(packet)
	if lengthOfTheLastPacket != 0:
		packet = str(binaryMessage[numberOfSameLengthPackets*packetLength:])
		packet = int(str(packet), base=2)
		digitization.append(packet)
	digitization.append(lengthOfTheLastPacket)
	return digitization

def alphabetise(integersList, N):
	"""Decoding of a message."""
	numberOfInts = len(integersList)
	S3 = BinaryStrings()
	binaryMessage = ""
	lengthOfTheLastPacket = integersList[-1]
	packetLength = floor(ln(N)/ln(2)) # Computation of the logarithm base 2	
	if lengthOfTheLastPacket != 0:
		numberOfSameLengthPackets = numberOfInts - 2
	else:
		numberOfSameLengthPackets = numberOfInts - 1
	for number in integersList[:numberOfSameLengthPackets]:
		bin = str(Integer(number).binary())		
		while len(bin) != packetLength:
			bin = "0" + bin
		binaryMessage += bin
	if lengthOfTheLastPacket != 0:
		bin = str(Integer(integersList[numberOfSameLengthPackets]).binary())	
		# print(lengthOfTheLastPacket) # Test
		# print(len(bin)) # Test
		while len(bin) != lengthOfTheLastPacket:
			bin = "0" + str(bin)
		binaryMessage += bin
	return bin_to_ascii(binaryMessage)	