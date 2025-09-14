.class public abstract Lcom/android/server/display/DisplayDevice;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final EMPTY_DISPLAY_MODE:Landroid/view/Display$Mode;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mCurrentDisplayRect:Landroid/graphics/Rect;

.field public mCurrentFlags:I

.field public mCurrentLayerStack:I

.field public mCurrentLayerStackRect:Landroid/graphics/Rect;

.field public mCurrentOrientation:I

.field public mCurrentSurface:Landroid/view/Surface;

.field public mDebugLastLoggedDeviceInfo:Lcom/android/server/display/DisplayDeviceInfo;

.field public final mDisplayAdapter:Lcom/android/server/display/DisplayAdapter;

.field public mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

.field public final mDisplayToken:Landroid/os/IBinder;

.field public final mIsAnisotropyCorrectionEnabled:Z

.field public final mUniqueId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroid/view/Display$Mode$Builder;

    .line 3
    invoke-direct {v0}, Landroid/view/Display$Mode$Builder;-><init>()V

    .line 6
    invoke-virtual {v0}, Landroid/view/Display$Mode$Builder;->build()Landroid/view/Display$Mode;

    .line 9
    move-result-object v0

    .line 10
    sput-object v0, Lcom/android/server/display/DisplayDevice;->EMPTY_DISPLAY_MODE:Landroid/view/Display$Mode;

    .line 12
    return-void
.end method

.method public constructor <init>(Lcom/android/server/display/DisplayAdapter;Landroid/os/IBinder;Ljava/lang/String;Landroid/content/Context;Z)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/android/server/display/DisplayDevice;->mCurrentLayerStack:I

    .line 7
    const/4 v1, 0x0

    .line 8
    iput v1, p0, Lcom/android/server/display/DisplayDevice;->mCurrentFlags:I

    .line 10
    iput v0, p0, Lcom/android/server/display/DisplayDevice;->mCurrentOrientation:I

    .line 12
    iput-object p1, p0, Lcom/android/server/display/DisplayDevice;->mDisplayAdapter:Lcom/android/server/display/DisplayAdapter;

    .line 14
    iput-object p2, p0, Lcom/android/server/display/DisplayDevice;->mDisplayToken:Landroid/os/IBinder;

    .line 16
    iput-object p3, p0, Lcom/android/server/display/DisplayDevice;->mUniqueId:Ljava/lang/String;

    .line 18
    const/4 p1, 0x0

    .line 19
    iput-object p1, p0, Lcom/android/server/display/DisplayDevice;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    .line 21
    iput-object p4, p0, Lcom/android/server/display/DisplayDevice;->mContext:Landroid/content/Context;

    .line 23
    iput-boolean p5, p0, Lcom/android/server/display/DisplayDevice;->mIsAnisotropyCorrectionEnabled:Z

    .line 25
    return-void
.end method


# virtual methods
.method public applyPendingDisplayDeviceInfoChangesLocked()V
    .locals 0

    .line 1
    return-void
.end method

.method public dumpLocked(Ljava/io/PrintWriter;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string/jumbo v1, "mAdapter="

    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    iget-object v1, p0, Lcom/android/server/display/DisplayDevice;->mDisplayAdapter:Lcom/android/server/display/DisplayAdapter;

    .line 11
    iget-object v1, v1, Lcom/android/server/display/DisplayAdapter;->mName:Ljava/lang/String;

    .line 13
    const-string/jumbo v2, "mUniqueId="

    .line 16
    invoke-static {p1, v1, v2, v0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    .line 19
    move-result-object v0

    .line 20
    iget-object v1, p0, Lcom/android/server/display/DisplayDevice;->mUniqueId:Ljava/lang/String;

    .line 22
    const-string/jumbo v2, "mDisplayToken="

    .line 25
    invoke-static {p1, v1, v2, v0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    .line 28
    move-result-object v0

    .line 29
    iget-object v1, p0, Lcom/android/server/display/DisplayDevice;->mDisplayToken:Landroid/os/IBinder;

    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 34
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    move-result-object v0

    .line 38
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    .line 43
    const-string/jumbo v1, "mCurrentLayerStack="

    .line 46
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 49
    iget v1, p0, Lcom/android/server/display/DisplayDevice;->mCurrentLayerStack:I

    .line 51
    const-string/jumbo v2, "mCurrentFlags="

    .line 54
    invoke-static {v0, v1, p1, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    move-result-object v0

    .line 58
    iget v1, p0, Lcom/android/server/display/DisplayDevice;->mCurrentFlags:I

    .line 60
    const-string/jumbo v2, "mCurrentOrientation="

    .line 63
    invoke-static {v0, v1, p1, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    move-result-object v0

    .line 67
    iget v1, p0, Lcom/android/server/display/DisplayDevice;->mCurrentOrientation:I

    .line 69
    const-string/jumbo v2, "mCurrentLayerStackRect="

    .line 72
    invoke-static {v0, v1, p1, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    move-result-object v0

    .line 76
    iget-object v1, p0, Lcom/android/server/display/DisplayDevice;->mCurrentLayerStackRect:Landroid/graphics/Rect;

    .line 78
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 81
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    move-result-object v0

    .line 85
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    .line 90
    const-string/jumbo v1, "mCurrentDisplayRect="

    .line 93
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 96
    iget-object v1, p0, Lcom/android/server/display/DisplayDevice;->mCurrentDisplayRect:Landroid/graphics/Rect;

    .line 98
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 101
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 104
    move-result-object v0

    .line 105
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    .line 110
    const-string/jumbo v1, "mCurrentSurface="

    .line 113
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 116
    iget-object p0, p0, Lcom/android/server/display/DisplayDevice;->mCurrentSurface:Landroid/view/Surface;

    .line 118
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 121
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 124
    move-result-object p0

    .line 125
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 128
    return-void
.end method

.method public getActiveDisplayModeAtStartLocked()Landroid/view/Display$Mode;
    .locals 0

    .line 1
    sget-object p0, Lcom/android/server/display/DisplayDevice;->EMPTY_DISPLAY_MODE:Landroid/view/Display$Mode;

    .line 3
    return-object p0
.end method

.method public getDisplayDeviceConfig()Lcom/android/server/display/DisplayDeviceConfig;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/display/DisplayDevice;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    .line 3
    if-nez v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/android/server/display/DisplayDevice;->mContext:Landroid/content/Context;

    .line 7
    iget-object v1, p0, Lcom/android/server/display/DisplayDevice;->mDisplayAdapter:Lcom/android/server/display/DisplayAdapter;

    .line 9
    iget-object v1, v1, Lcom/android/server/display/DisplayAdapter;->mFeatureFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    .line 11
    invoke-static {v0, v1}, Lcom/android/server/display/DisplayDeviceConfig;->getConfigFromPmValues(Landroid/content/Context;Lcom/android/server/display/feature/DisplayManagerFlags;)Lcom/android/server/display/DisplayDeviceConfig;

    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/android/server/display/DisplayDevice;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    .line 17
    :cond_0
    iget-object p0, p0, Lcom/android/server/display/DisplayDevice;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    .line 19
    return-object p0
.end method

.method public abstract getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;
.end method

.method public getDisplayIdToMirrorLocked()I
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public getDisplaySurfaceDefaultSizeLocked()Landroid/graphics/Point;
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    .line 4
    move-result-object v0

    .line 5
    iget v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->width:I

    .line 7
    iget v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->height:I

    .line 9
    iget-boolean v3, p0, Lcom/android/server/display/DisplayDevice;->mIsAnisotropyCorrectionEnabled:Z

    .line 11
    if-eqz v3, :cond_1

    .line 13
    iget v3, v0, Lcom/android/server/display/DisplayDeviceInfo;->type:I

    .line 15
    const/4 v4, 0x2

    .line 16
    if-ne v3, v4, :cond_1

    .line 18
    iget v3, v0, Lcom/android/server/display/DisplayDeviceInfo;->yDpi:F

    .line 20
    const/4 v4, 0x0

    .line 21
    cmpl-float v5, v3, v4

    .line 23
    if-lez v5, :cond_1

    .line 25
    iget v0, v0, Lcom/android/server/display/DisplayDeviceInfo;->xDpi:F

    .line 27
    cmpl-float v4, v0, v4

    .line 29
    if-lez v4, :cond_1

    .line 31
    const v4, 0x3f833333    # 1.025f

    .line 34
    mul-float v5, v3, v4

    .line 36
    cmpl-float v5, v0, v5

    .line 38
    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    .line 40
    if-lez v5, :cond_0

    .line 42
    int-to-float v2, v2

    .line 43
    mul-float/2addr v2, v0

    .line 44
    div-float/2addr v2, v3

    .line 45
    float-to-double v2, v2

    .line 46
    add-double/2addr v2, v6

    .line 47
    double-to-int v2, v2

    .line 48
    goto :goto_0

    .line 49
    :cond_0
    mul-float/2addr v4, v0

    .line 50
    cmpg-float v4, v4, v3

    .line 52
    if-gez v4, :cond_1

    .line 54
    int-to-float v1, v1

    .line 55
    mul-float/2addr v1, v3

    .line 56
    div-float/2addr v1, v0

    .line 57
    float-to-double v0, v1

    .line 58
    add-double/2addr v0, v6

    .line 59
    double-to-int v1, v0

    .line 60
    :cond_1
    :goto_0
    iget p0, p0, Lcom/android/server/display/DisplayDevice;->mCurrentOrientation:I

    .line 62
    const/4 v0, 0x1

    .line 63
    if-eq p0, v0, :cond_3

    .line 65
    const/4 v0, 0x3

    .line 66
    if-ne p0, v0, :cond_2

    .line 68
    goto :goto_1

    .line 69
    :cond_2
    new-instance p0, Landroid/graphics/Point;

    .line 71
    invoke-direct {p0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    .line 74
    goto :goto_2

    .line 75
    :cond_3
    :goto_1
    new-instance p0, Landroid/graphics/Point;

    .line 77
    invoke-direct {p0, v2, v1}, Landroid/graphics/Point;-><init>(II)V

    .line 80
    :goto_2
    return-object p0
.end method

.method public final getSupportedResolutionsLocked()[Landroid/graphics/Point;
    .locals 6

    .line 1
    new-instance v0, Landroid/util/ArraySet;

    .line 3
    const/4 v1, 0x2

    .line 4
    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(I)V

    .line 7
    invoke-virtual {p0}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    .line 10
    move-result-object p0

    .line 11
    iget-object p0, p0, Lcom/android/server/display/DisplayDeviceInfo;->supportedModes:[Landroid/view/Display$Mode;

    .line 13
    array-length v1, p0

    .line 14
    const/4 v2, 0x0

    .line 15
    :goto_0
    if-ge v2, v1, :cond_0

    .line 17
    aget-object v3, p0, v2

    .line 19
    new-instance v4, Landroid/graphics/Point;

    .line 21
    invoke-virtual {v3}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    .line 24
    move-result v5

    .line 25
    invoke-virtual {v3}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    .line 28
    move-result v3

    .line 29
    invoke-direct {v4, v5, v3}, Landroid/graphics/Point;-><init>(II)V

    .line 32
    invoke-virtual {v0, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 35
    add-int/lit8 v2, v2, 0x1

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    .line 41
    move-result p0

    .line 42
    new-array p0, p0, [Landroid/graphics/Point;

    .line 44
    invoke-virtual {v0, p0}, Landroid/util/ArraySet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 47
    new-instance v0, Lcom/android/server/display/DisplayDevice$$ExternalSyntheticLambda0;

    .line 49
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 52
    invoke-static {p0, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 55
    return-object p0
.end method

.method public getSystemPreferredDisplayModeLocked()Landroid/view/Display$Mode;
    .locals 0

    .line 1
    sget-object p0, Lcom/android/server/display/DisplayDevice;->EMPTY_DISPLAY_MODE:Landroid/view/Display$Mode;

    .line 3
    return-object p0
.end method

.method public getUserPreferredDisplayModeLocked()Landroid/view/Display$Mode;
    .locals 0

    .line 1
    sget-object p0, Lcom/android/server/display/DisplayDevice;->EMPTY_DISPLAY_MODE:Landroid/view/Display$Mode;

    .line 3
    return-object p0
.end method

.method public abstract hasStableUniqueId()Z
.end method

.method public isFirstDisplay()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public isWindowManagerMirroringLocked()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public onOverlayChangedLocked()V
    .locals 0

    .line 1
    return-void
.end method

.method public performTraversalLocked(Landroid/view/SurfaceControl$Transaction;)V
    .locals 0

    .line 1
    return-void
.end method

.method public requestDisplayStateLocked(IFFLcom/android/server/display/DisplayOffloadSessionImpl;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    const/4 p0, 0x0

    return-object p0
.end method

.method public requestDisplayStateLocked(IFFLcom/android/server/display/DisplayOffloadSessionImpl;ILjava/util/ArrayList;)Ljava/lang/Runnable;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/display/DisplayDevice;->requestDisplayStateLocked(IFFLcom/android/server/display/DisplayOffloadSessionImpl;)Ljava/lang/Runnable;

    move-result-object p0

    return-object p0
.end method

.method public setAutoLowLatencyModeLocked(Z)V
    .locals 0

    .line 1
    return-void
.end method

.method public setDesiredDisplayModeSpecsLocked(Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;)V
    .locals 0

    .line 1
    return-void
.end method

.method public setGameContentTypeLocked(Z)V
    .locals 0

    .line 1
    return-void
.end method

.method public setRequestedColorModeLocked(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public setUserPreferredDisplayModeLocked(Landroid/view/Display$Mode;)V
    .locals 0

    .line 1
    return-void
.end method

.method public setWindowManagerMirroringLocked(Z)V
    .locals 0

    .line 1
    return-void
.end method

.method public updateDisplayInfoForFrameRateOverride(ILandroid/view/DisplayInfo;)V
    .locals 0

    .line 1
    return-void
.end method
