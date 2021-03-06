//
//  UIImageView+PINRemoteImage.m
//  Pods
//
//  Created by Garrett Moon on 8/17/14.
//
//

#import "PINImageView+PINRemoteImage.h"

@implementation PINImageView (PINRemoteImage)

- (void)pin_setImageFromURL:(NSURL *)url
{
    [PINRemoteImageCategoryManager setImageOnView:self fromURL:url];
}

- (void)pin_setImageFromURL:(NSURL *)url placeholderImage:(PINImage *)placeholderImage
{
    [PINRemoteImageCategoryManager setImageOnView:self fromURL:url placeholderImage:placeholderImage];
}

- (void)pin_setImageFromURL:(NSURL *)url completion:(PINRemoteImageManagerImageCompletion)completion
{
    [PINRemoteImageCategoryManager setImageOnView:self fromURL:url completion:completion];
}

- (void)pin_setImageFromURL:(NSURL *)url placeholderImage:(PINImage *)placeholderImage completion:(PINRemoteImageManagerImageCompletion)completion
{
    [PINRemoteImageCategoryManager setImageOnView:self fromURL:url placeholderImage:placeholderImage completion:completion];
}

- (void)pin_setImageFromURL:(NSURL *)url processorKey:(NSString *)processorKey processor:(PINRemoteImageManagerImageProcessor)processor
{
    [PINRemoteImageCategoryManager setImageOnView:self fromURL:url processorKey:processorKey processor:processor];
}

- (void)pin_setImageFromURL:(NSURL *)url placeholderImage:(PINImage *)placeholderImage processorKey:(NSString *)processorKey processor:(PINRemoteImageManagerImageProcessor)processor
{
    [PINRemoteImageCategoryManager setImageOnView:self fromURL:url placeholderImage:placeholderImage processorKey:processorKey processor:processor];
}

- (void)pin_setImageFromURL:(NSURL *)url processorKey:(NSString *)processorKey processor:(PINRemoteImageManagerImageProcessor)processor completion:(PINRemoteImageManagerImageCompletion)completion
{
    [PINRemoteImageCategoryManager setImageOnView:self fromURL:url processorKey:processorKey processor:processor completion:completion];
}

- (void)pin_setImageFromURL:(NSURL *)url placeholderImage:(PINImage *)placeholderImage processorKey:(NSString *)processorKey processor:(PINRemoteImageManagerImageProcessor)processor completion:(PINRemoteImageManagerImageCompletion)completion
{
    [PINRemoteImageCategoryManager setImageOnView:self fromURLs:url?@[url]:nil placeholderImage:placeholderImage processorKey:processorKey processor:processor completion:completion];
}

- (void)pin_setImageFromURLs:(NSArray <NSURL *> *)urls
{
    [PINRemoteImageCategoryManager setImageOnView:self fromURLs:urls];
}

- (void)pin_setImageFromURLs:(NSArray <NSURL *> *)urls placeholderImage:(PINImage *)placeholderImage
{
    [PINRemoteImageCategoryManager setImageOnView:self fromURLs:urls placeholderImage:placeholderImage];
}

- (void)pin_setImageFromURLs:(NSArray <NSURL *> *)urls placeholderImage:(PINImage *)placeholderImage completion:(PINRemoteImageManagerImageCompletion)completion
{
    [PINRemoteImageCategoryManager setImageOnView:self fromURLs:urls placeholderImage:placeholderImage completion:completion];
}

- (void)pin_cancelImageDownload
{
    [PINRemoteImageCategoryManager cancelImageDownloadOnView:self];
}

- (NSUUID *)pin_downloadImageOperationUUID
{
    return [PINRemoteImageCategoryManager downloadImageOperationUUIDOnView:self];
}

- (void)pin_setDownloadImageOperationUUID:(NSUUID *)downloadImageOperationUUID
{
    [PINRemoteImageCategoryManager setDownloadImageOperationUUID:downloadImageOperationUUID onView:self];
}

- (BOOL)pin_updateWithProgress
{
    return [PINRemoteImageCategoryManager updateWithProgressOnView:self];
}

- (void)setPin_updateWithProgress:(BOOL)updateWithProgress
{
    [PINRemoteImageCategoryManager setUpdateWithProgressOnView:updateWithProgress onView:self];
}

- (void)pin_setPlaceholderWithImage:(PINImage *)image
{
    self.image = image;
}

- (void)pin_updateUIWithImage:(PINImage *)image animatedImage:(FLAnimatedImage *)animatedImage
{
    if (image) {
        self.image = image;

#ifdef __IPHONE_OS_VERSION_MIN_REQUIRED
        [self setNeedsLayout];
#else
        [self setNeedsLayout:YES];
#endif
    }
}

- (void)pin_clearImages
{
    self.image = nil;
    
#ifdef __IPHONE_OS_VERSION_MIN_REQUIRED
    [self setNeedsLayout];
#else
    [self setNeedsLayout:YES];
#endif
}

- (BOOL)pin_ignoreGIFs
{
    return YES;
}

@end

@implementation PINImageView (PINRemoteImage_Deprecated)

- (void)setImageFromURL:(NSURL *)url
{
    [self pin_setImageFromURL:url];
}

- (void)setImageFromURL:(NSURL *)url placeholderImage:(PINImage *)placeholderImage
{
    [self pin_setImageFromURL:url placeholderImage:placeholderImage];
}

- (void)setImageFromURL:(NSURL *)url completion:(PINRemoteImageManagerImageCompletion)completion
{
    [self pin_setImageFromURL:url completion:completion];
}

- (void)setImageFromURL:(NSURL *)url placeholderImage:(PINImage *)placeholderImage completion:(PINRemoteImageManagerImageCompletion)completion
{
    [self pin_setImageFromURL:url placeholderImage:placeholderImage completion:completion];
}

- (void)setImageFromURL:(NSURL *)url processorKey:(NSString *)processorKey processor:(PINRemoteImageManagerImageProcessor)processor
{
    [self pin_setImageFromURL:url processorKey:processorKey processor:processor];
}

- (void)setImageFromURL:(NSURL *)url placeholderImage:(PINImage *)placeholderImage processorKey:(NSString *)processorKey processor:(PINRemoteImageManagerImageProcessor)processor
{
    [self pin_setImageFromURL:url placeholderImage:placeholderImage processorKey:processorKey processor:processor];
}

- (void)setImageFromURL:(NSURL *)url processorKey:(NSString *)processorKey processor:(PINRemoteImageManagerImageProcessor)processor completion:(PINRemoteImageManagerImageCompletion)completion
{
    [self pin_setImageFromURL:url processorKey:processorKey processor:processor completion: completion];
}

- (void)setImageFromURL:(NSURL *)url placeholderImage:(PINImage *)placeholderImage processorKey:(NSString *)processorKey processor:(PINRemoteImageManagerImageProcessor)processor completion:(PINRemoteImageManagerImageCompletion)completion
{
    [self pin_setImageFromURL:url placeholderImage:placeholderImage processorKey:processorKey processor:processor completion:completion];
}

- (void)setImageFromURLs:(NSArray <NSURL *> *)urls
{
    [self pin_setImageFromURLs:urls];
}

- (void)setImageFromURLs:(NSArray <NSURL *> *)urls placeholderImage:(PINImage *)placeholderImage
{
    [self pin_setImageFromURLs:urls placeholderImage:placeholderImage];
}

- (void)setImageFromURLs:(NSArray <NSURL *> *)urls placeholderImage:(PINImage *)placeholderImage completion:(PINRemoteImageManagerImageCompletion)completion
{
    [self pin_setImageFromURLs:urls placeholderImage:placeholderImage completion:completion];
}

- (void)cancelImageDownload
{
    [self pin_cancelImageDownload];
}

- (NSUUID *)downloadImageOperationUUID
{
    return [self pin_downloadImageOperationUUID];
}

- (void)setDownloadImageOperationUUID:(NSUUID *)downloadImageOperationUUID
{
    [self pin_setDownloadImageOperationUUID:downloadImageOperationUUID];
}

- (BOOL)updateWithProgress
{
    return [self pin_updateWithProgress];
}

- (void)setUpdateWithProgress:(BOOL)updateWithProgress
{
    self.pin_updateWithProgress = updateWithProgress;
}

- (void)setPlaceholderWithImage:(PINImage *)image
{
    [self pin_setPlaceholderWithImage:image];
}

- (void)updateUIWithImage:(PINImage *)image animatedImage:(FLAnimatedImage *)animatedImage
{
    [self pin_updateUIWithImage:image animatedImage:animatedImage];
}

- (void)clearImages
{
    [self pin_clearImages];
}

- (BOOL)ignoreGIFs
{
    return [self pin_ignoreGIFs];
}

@end
