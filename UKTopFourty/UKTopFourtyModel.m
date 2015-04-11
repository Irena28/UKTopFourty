//
//  UKTopFourtyModel.m
//  UKTopFourty
//
//  Created by Irena Davy on 4/11/15.
//  Copyright (c) 2015 Mandi. All rights reserved.
//

#import "UKTopFourtyModel.h"
#import "MusicVideo.h"

@implementation UKTopFourtyModel

- (NSMutableArray *) videos
{
    if (!_videos)
    {
        _videos = [[NSMutableArray alloc] init];
    }
    
    return _videos;
}

- (void) GenPlayList
{
    for (int i = 0 ; i < 40; i++)
    {
        MusicVideo *musicVideo = [[ MusicVideo alloc] init];
        musicVideo.artist = [NSString  stringWithFormat:@"Artist %d",i];
        musicVideo.title = [NSString  stringWithFormat:@"Title %d",i];

        self.videos [i] = musicVideo;
    }
}


@end
