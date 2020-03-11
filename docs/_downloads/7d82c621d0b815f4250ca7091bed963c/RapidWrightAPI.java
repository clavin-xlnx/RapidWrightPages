package com.xilinx.rapidwright.examples;

import org.graalvm.nativeimage.IsolateThread;
import org.graalvm.nativeimage.c.function.CEntryPoint;
import org.graalvm.nativeimage.c.type.CCharPointer;
import org.graalvm.nativeimage.c.type.CTypeConversion;

import com.xilinx.rapidwright.device.Device;

public class RapidWrightAPI {

  /**
   * Callable wrapper around getDevice() tp load the device into memory
   */
  @CEntryPoint(name = "loadDevice")
  public static void loadDevice(IsolateThread thread, CCharPointer deviceName) {
    String devName = CTypeConversion.toJavaString(deviceName);
    System.out.print("Loading device " + devName + "...");
    Device d = Device.getDevice(devName);
    System.out.println("DONE!");
  }

  /**
   * Callable wrapper around Device.getTile(int row, int column).getName() to get names of tiles
   */
  @CEntryPoint(name = "getTileName")
  public static CCharPointer getTileName(IsolateThread thread, CCharPointer deviceName, int row, int column) {
    String devName = CTypeConversion.toJavaString(deviceName);
    Device d = Device.getDevice(devName);
    return CTypeConversion.toCString(d.getTile(row, column).getName()).get();
  }
}
