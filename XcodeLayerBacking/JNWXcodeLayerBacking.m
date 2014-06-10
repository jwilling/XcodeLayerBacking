#import "JNWXcodeLayerBacking.h"
#import "IDEWorkspaceWindow+JNWLayerBacking.h"

@interface JNWXcodeLayerBacking ()
@property (nonatomic, strong) NSBundle *bundle;
@end

@implementation JNWXcodeLayerBacking

+ (void)pluginDidLoad:(NSBundle *)plugin {
    static dispatch_once_t onceToken;
    static JNWXcodeLayerBacking *sharedPlugin;

    NSString *currentApplicationName = [[NSBundle mainBundle] infoDictionary][@"CFBundleName"];
    if ([currentApplicationName isEqual:@"Xcode"]) {
        dispatch_once(&onceToken, ^{
            sharedPlugin = [[self alloc] initWithBundle:plugin];
        });
    }
}

- (instancetype)initWithBundle:(NSBundle *)plugin {
    return [self init];
}

@end
