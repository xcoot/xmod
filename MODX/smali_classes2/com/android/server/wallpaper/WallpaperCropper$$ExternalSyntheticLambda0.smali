.class public final synthetic Lcom/android/server/wallpaper/WallpaperCropper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/graphics/ImageDecoder$OnHeaderDecodedListener;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:I

.field public final synthetic f$2:I

.field public final synthetic f$3:Landroid/graphics/Rect;


# direct methods
.method public synthetic constructor <init>(IIILandroid/graphics/Rect;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/android/server/wallpaper/WallpaperCropper$$ExternalSyntheticLambda0;->f$0:I

    .line 5
    .line 6
    iput p2, p0, Lcom/android/server/wallpaper/WallpaperCropper$$ExternalSyntheticLambda0;->f$1:I

    .line 7
    .line 8
    iput p3, p0, Lcom/android/server/wallpaper/WallpaperCropper$$ExternalSyntheticLambda0;->f$2:I

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/server/wallpaper/WallpaperCropper$$ExternalSyntheticLambda0;->f$3:Landroid/graphics/Rect;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final onHeaderDecoded(Landroid/graphics/ImageDecoder;Landroid/graphics/ImageDecoder$ImageInfo;Landroid/graphics/ImageDecoder$Source;)V
    .locals 2

    .line 1
    iget p2, p0, Lcom/android/server/wallpaper/WallpaperCropper$$ExternalSyntheticLambda0;->f$0:I

    .line 2
    .line 3
    iget p3, p0, Lcom/android/server/wallpaper/WallpaperCropper$$ExternalSyntheticLambda0;->f$1:I

    .line 4
    .line 5
    iget v0, p0, Lcom/android/server/wallpaper/WallpaperCropper$$ExternalSyntheticLambda0;->f$2:I

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperCropper$$ExternalSyntheticLambda0;->f$3:Landroid/graphics/Rect;

    .line 8
    .line 9
    invoke-static {}, Lcom/android/window/flags/Flags;->multiCrop()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    invoke-virtual {p1, p2}, Landroid/graphics/ImageDecoder;->setTargetSampleSize(I)V

    .line 16
    .line 17
    .line 18
    :cond_0
    invoke-static {}, Lcom/android/window/flags/Flags;->multiCrop()Z

    .line 19
    .line 20
    .line 21
    move-result p2

    .line 22
    if-eqz p2, :cond_1

    .line 23
    .line 24
    invoke-virtual {p1, p3, v0}, Landroid/graphics/ImageDecoder;->setTargetSize(II)V

    .line 25
    .line 26
    .line 27
    :cond_1
    invoke-virtual {p1, p0}, Landroid/graphics/ImageDecoder;->setCrop(Landroid/graphics/Rect;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method
