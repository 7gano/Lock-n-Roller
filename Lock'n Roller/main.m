//
//  main.m
//  Lock'n Roller
//
//  Created by norihisa-nagano on 2013/04/16.
//  Copyright (c) 2013年 Norihisa Nagano. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import <IOKit/IOKitLib.h>
#import <IOKit/pwr_mgt/IOPMLib.h>

int main(int argc, char *argv[])
{
    mach_port_t masterPort;
    IOMasterPort(bootstrap_port, &masterPort);
    io_connect_t  powerManagement = IOPMFindPowerManagement(masterPort);
    IOPMSleepSystem(powerManagement);
    IOServiceClose(powerManagement);

    return 0;
}