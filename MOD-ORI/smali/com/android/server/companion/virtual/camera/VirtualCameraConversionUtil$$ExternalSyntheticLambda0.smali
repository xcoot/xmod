.class public final synthetic Lcom/android/server/companion/virtual/camera/VirtualCameraConversionUtil$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Function;


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Landroid/companion/virtual/camera/VirtualCameraStreamConfig;

    .line 2
    .line 3
    new-instance p0, Landroid/companion/virtualcamera/SupportedStreamConfiguration;

    .line 4
    .line 5
    invoke-direct {p0}, Landroid/companion/virtualcamera/SupportedStreamConfiguration;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/companion/virtual/camera/VirtualCameraStreamConfig;->getHeight()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    iput v0, p0, Landroid/companion/virtualcamera/SupportedStreamConfiguration;->height:I

    .line 13
    .line 14
    invoke-virtual {p1}, Landroid/companion/virtual/camera/VirtualCameraStreamConfig;->getWidth()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    iput v0, p0, Landroid/companion/virtualcamera/SupportedStreamConfiguration;->width:I

    .line 19
    .line 20
    invoke-virtual {p1}, Landroid/companion/virtual/camera/VirtualCameraStreamConfig;->getFormat()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    const/4 v1, 0x1

    .line 25
    if-eq v0, v1, :cond_0

    .line 26
    .line 27
    const/16 v1, 0x23

    .line 28
    .line 29
    if-eq v0, v1, :cond_0

    .line 30
    .line 31
    const/4 v1, 0x0

    .line 32
    :cond_0
    iput v1, p0, Landroid/companion/virtualcamera/SupportedStreamConfiguration;->pixelFormat:I

    .line 33
    .line 34
    invoke-virtual {p1}, Landroid/companion/virtual/camera/VirtualCameraStreamConfig;->getMaximumFramesPerSecond()I

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    iput p1, p0, Landroid/companion/virtualcamera/SupportedStreamConfiguration;->maxFps:I

    .line 39
    .line 40
    return-object p0
.end method
