/*
 * Copyright 2017 Google
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

#import "FIRVerifyPasswordResponse.h"

@implementation FIRVerifyPasswordResponse

- (BOOL)setWithDictionary:(NSDictionary *)dictionary
                    error:(NSError *_Nullable *_Nullable)error {
  _localID = [dictionary[@"localId"] copy];
  _email = [dictionary[@"email"] copy];
  _displayName = [dictionary[@"displayName"] copy];
  _IDToken = [dictionary[@"idToken"] copy];
  _approximateExpirationDate = [dictionary[@"expiresIn"] isKindOfClass:[NSString class]] ?
      [NSDate dateWithTimeIntervalSinceNow:[dictionary[@"expiresIn"] doubleValue]] : nil;
  _refreshToken = [dictionary[@"refreshToken"] copy];
  _photoURL = dictionary[@"photoUrl"] ? [NSURL URLWithString:dictionary[@"photoUrl"]] : nil;
  return YES;
}

@end