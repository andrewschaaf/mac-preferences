
#import <Foundation/Foundation.h>


@interface PreferencesController : NSObject <NSWindowDelegate> {
@private
    
    NSWindow *window;
    
}

- (void)showPreferences;

- (void)createWindow;

@end
