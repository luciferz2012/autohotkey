#!/usr/bin/env python
# -*- coding: utf-8 -*-


__author__ = 'Luciferz2012'

fn = {
    'F1': 'Volume_Mute',
    'F2': 'Volume_Down',
    'F3': 'Volume_Up',
    'F4': 'Media_Prev',
    'F5': 'Media_Play_Pause',
    'F6': 'Media_Next',
    'F7': 'Browser_Back',
    'F8': 'Browser_Home',
    'F9': 'AppsKey',
    'F10': 'RAlt',
    'F11': 'PrintScreen',
    'F12': 'RCtrl'
}

if __name__ == '__main__':
    with open('fn.ahk', 'w') as f:
        lines = []
        for i in range(1, 10):
            key = 'F%s' % i
            value = fn[key]
            lines.append('{key}::{value}'.format(key=value, value=key))
            lines.append('^{key}::^{value}'.format(key=value, value=key))
            lines.append('!{key}::!{value}'.format(key=value, value=key))
            lines.append('^!{key}::^!{value}'.format(key=value, value=key))
            lines.append('#{key1}::{key2}'.format(key1=value, key2=value))
        f.writelines('\n'.join(lines))
