
#import "PreferencesController.h"


@implementation PreferencesController

- (id)init
{
    self = [super init];
    if (self) {
        
    }
    return self;
}

- (void)showPreferences
{
    if (! window) {
        [self createWindow];
    }
    [window makeKeyAndOrderFront:nil];
}

- (void)windowWillClose:(NSNotification*)notification
{
    window = nil;
}

- (void)createWindow
{
    window = [[NSWindow alloc]
                  initWithContentRect:NSMakeRect(0, 0, 400, 300)
                  styleMask:(NSClosableWindowMask | NSResizableWindowMask | NSMiniaturizableWindowMask)
                  backing:NSBackingStoreBuffered
                  defer:NO];
    [window setDelegate:self];
    [window setTitle:@"Preferences"];
    [window setReleasedWhenClosed:YES];
    [window displayIfNeeded];
    
    NSSize dim = [window frame].size;
    NSRect screen = [[window screen] visibleFrame]; // e.g. origin=0,75 size=1440,803
    [window
        setFrame:NSMakeRect(
                            ((screen.size.width - dim.width) * 0.5),
                            ((screen.size.height - dim.height) * 0.8),
                            dim.width,
                            dim.height)
        display:NO];
}

- (void)dealloc
{
    [window release];
    [super dealloc];
}

@end
