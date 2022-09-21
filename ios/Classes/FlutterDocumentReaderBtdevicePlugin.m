#import "FlutterDocumentReaderBtdevicePlugin.h"

@implementation FlutterDocumentReaderApiPlugin

+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
    FlutterMethodChannel* channel = [FlutterMethodChannel methodChannelWithName:@"flutter_document_reader_btdevice/method" binaryMessenger:[registrar messenger]];
    FlutterDocumentReaderBtdevicePlugin* instance = [FlutterDocumentReaderBtdevicePlugin new];
    [registrar addMethodCallDelegate:instance channel:channel];
}

- (void)handleMethodCall:(FlutterMethodCall*)call result:(FlutterResult)result {
  if ([@"getPlatformVersion" isEqualToString:call.method]) {
    result([@"iOS " stringByAppendingString:[[UIDevice currentDevice] systemVersion]]);
  } else {
    result(FlutterMethodNotImplemented);
  }
}

@end
