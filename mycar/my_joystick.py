
from donkeycar.parts.controller import Joystick, JoystickController


class MyJoystick(Joystick):
    #An interface to a physical joystick available at /dev/input/js0
    def __init__(self, *args, **kwargs):
        super(MyJoystick, self).__init__(*args, **kwargs)

            
        self.button_names = {
            0x130 : 'A',
            0x131 : 'B',
            0x133 : 'X',
            0x134 : 'Y',
            0x136 : 'LB',
            0x137 : 'RB',
            0x13b : 'Menu',
        }


        self.axis_names = {
            0x0 : 'LSide',
            0x1 : 'LFrBc',
            0x2 : 'RSide',
            0x5 : 'RFrBc',
            0x9 : 'RT',
            0xa : 'LT',
        }



class MyJoystickController(JoystickController):
    #A Controller object that maps inputs to actions
    def __init__(self, *args, **kwargs):
        super(MyJoystickController, self).__init__(*args, **kwargs)


    def init_js(self):
        #attempt to init joystick
        try:
            self.js = MyJoystick(self.dev_fn)
            self.js.init()
        except FileNotFoundError:
            print(self.dev_fn, "not found.")
            self.js = None
        return self.js is not None


    def init_trigger_maps(self):
        #init set of mapping from buttons to function calls
            
        self.button_down_trigger_map = {
            'LB' : self.toggle_mode,
            'X' : self.emergency_stop,
            'Y' : self.increase_max_throttle,
            'A' : self.decrease_max_throttle,
            'RB' : self.erase_last_N_records,
            'B' : self.toggle_constant_throttle,
            'Menu' : self.toggle_manual_recording,
        }


        self.axis_trigger_map = {
            'RSide' : self.set_steering,
            'LFrBc' : self.set_throttle,
        }


