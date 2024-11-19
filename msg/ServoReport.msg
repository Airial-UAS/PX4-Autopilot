uint64 timestamp					# time since system start (microseconds)
uint32 servo_errorcount					# Number of reported errors by SERVO - if supported
int32 servo_position						# Servo position
float32 servo_voltage					# Voltage measured from current SERVO [V] - if supported
float32 servo_force					# Current measured from current SERVO [A] - if supported
float32 servo_speed					# Temperature measured from current SERVO [degC] - if supported
uint8 servo_address					# Address of current SERVO (in most cases 1-8 / must be set by driver)

uint8 servo_state					# State of SERVO - depend on Vendor

uint8 actuator_function				# actuator output function (one of Motor1...MotorN)

uint16 failures					# Bitmask to indicate the internal SERVO faults
int8 servo_power					# Applied power 0-100 in % (negative values reserved)

uint8 FAILURE_OVER_CURRENT = 0 			# (1 << 0)
uint8 FAILURE_OVER_VOLTAGE = 1 			# (1 << 1)
uint8 FAILURE_MOTOR_OVER_TEMPERATURE = 2 	# (1 << 2)
uint8 FAILURE_OVER_RPM = 3			# (1 << 3)
uint8 FAILURE_INCONSISTENT_CMD = 4 		# (1 << 4)  Set if SERVO received an inconsistent command (i.e out of boundaries)
uint8 FAILURE_MOTOR_STUCK = 5			# (1 << 5)
uint8 FAILURE_GENERIC = 6			# (1 << 6)
uint8 FAILURE_MOTOR_WARN_TEMPERATURE = 7	# (1 << 7)
uint8 FAILURE_WARN_SERVO_TEMPERATURE = 8		# (1 << 8)
uint8 FAILURE_OVER_SERVO_TEMPERATURE = 9		# (1 << 9)
uint8 SERVO_FAILURE_COUNT = 10 			# Counter - keep it as last element!
