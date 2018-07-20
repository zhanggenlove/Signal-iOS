//
//  Copyright (c) 2018 Open Whisper Systems. All rights reserved.
//

#import "SSKBaseTest.h"
#import "SSKEnvironment.h"
#import "TestAppContext.h"

NS_ASSUME_NONNULL_BEGIN

@implementation SSKBaseTest

- (void)setUp
{
    [super setUp];

    ClearCurrentAppContextForTests();
    SetCurrentAppContext([TestAppContext new]);

    [MockSSKEnvironment activate];
}

- (void)tearDown
{
    ClearCurrentAppContextForTests();
    [SSKEnvironment clearSharedForTests];

    [super tearDown];
}

@end

NS_ASSUME_NONNULL_END