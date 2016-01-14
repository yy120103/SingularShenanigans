//
//  KVCacheEntry.m
//  KCTViewer
//
//  Created by Royce Yu October 2nd, 2015.
//  Copyright (c) 2015 the KanColleTool team. All rights reserved.
//

#import "KVCacheEntry.h"

@implementation KVCacheEntry

- (id)initWithRequest:(NSURLRequest *)request
{
	if((self = [super init]))
	{
		self.request = request;
		self.data = [NSMutableData data];
	}
	
	return self;
}

- (id)initWithCoder:(NSCoder *)aDecoder
{
	if((self = [super init]))
	{
		self.request = [aDecoder decodeObjectForKey:@"request"];
		self.response = [aDecoder decodeObjectForKey:@"response"];
		self.data = [aDecoder decodeObjectForKey:@"data"];
	}
	
	return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{
	[aCoder encodeObject:self.request forKey:@"request"];
	[aCoder encodeObject:self.response forKey:@"response"];
	[aCoder encodeObject:self.data forKey:@"data"];
}

- (void)appendData:(NSData *)data
{
	[self.data appendData:data];
}

@end
