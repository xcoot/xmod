.class public final Lcom/android/server/input/PointerIconCache;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mDisplayContexts:Landroid/util/SparseArray;

.field public final mDisplayDensities:Landroid/util/SparseIntArray;

.field public final mDisplayListener:Lcom/android/server/input/PointerIconCache$1;

.field public final mLoadedPointerIconsByDisplayAndType:Landroid/util/SparseArray;

.field public final mNative:Lcom/android/server/input/NativeInputManagerService;

.field public mPointerIconColor:I

.field public mPointerIconFillStyle:I

.field public mPointerIconScale:F

.field public mPointerIconSizeScale:F

.field public final mUiThreadHandler:Landroid/os/Handler;

.field public mUseLargePointerIcons:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/input/NativeInputManagerService$NativeImpl;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    invoke-static {}, Lcom/android/server/UiThread;->getHandler()Landroid/os/Handler;

    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lcom/android/server/input/PointerIconCache;->mUiThreadHandler:Landroid/os/Handler;

    .line 10
    new-instance v0, Landroid/util/SparseArray;

    .line 12
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 15
    iput-object v0, p0, Lcom/android/server/input/PointerIconCache;->mLoadedPointerIconsByDisplayAndType:Landroid/util/SparseArray;

    .line 17
    const/4 v0, 0x0

    .line 18
    iput-boolean v0, p0, Lcom/android/server/input/PointerIconCache;->mUseLargePointerIcons:Z

    .line 20
    const/high16 v1, 0x3f800000    # 1.0f

    .line 22
    iput v1, p0, Lcom/android/server/input/PointerIconCache;->mPointerIconSizeScale:F

    .line 24
    const v2, 0xffffff

    .line 27
    iput v2, p0, Lcom/android/server/input/PointerIconCache;->mPointerIconColor:I

    .line 29
    new-instance v2, Landroid/util/SparseArray;

    .line 31
    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    .line 34
    iput-object v2, p0, Lcom/android/server/input/PointerIconCache;->mDisplayContexts:Landroid/util/SparseArray;

    .line 36
    new-instance v2, Landroid/util/SparseIntArray;

    .line 38
    invoke-direct {v2}, Landroid/util/SparseIntArray;-><init>()V

    .line 41
    iput-object v2, p0, Lcom/android/server/input/PointerIconCache;->mDisplayDensities:Landroid/util/SparseIntArray;

    .line 43
    iput v0, p0, Lcom/android/server/input/PointerIconCache;->mPointerIconFillStyle:I

    .line 45
    iput v1, p0, Lcom/android/server/input/PointerIconCache;->mPointerIconScale:F

    .line 47
    new-instance v0, Lcom/android/server/input/PointerIconCache$1;

    .line 49
    invoke-direct {v0, p0}, Lcom/android/server/input/PointerIconCache$1;-><init>(Lcom/android/server/input/PointerIconCache;)V

    .line 52
    iput-object v0, p0, Lcom/android/server/input/PointerIconCache;->mDisplayListener:Lcom/android/server/input/PointerIconCache$1;

    .line 54
    iput-object p1, p0, Lcom/android/server/input/PointerIconCache;->mContext:Landroid/content/Context;

    .line 56
    iput-object p2, p0, Lcom/android/server/input/PointerIconCache;->mNative:Lcom/android/server/input/NativeInputManagerService;

    .line 58
    return-void
.end method


# virtual methods
.method public final getContextForDisplayLocked(I)Landroid/content/Context;
    .locals 2

    .line 1
    const/4 v0, -0x1

    .line 2
    if-ne p1, v0, :cond_0

    .line 4
    iget-object p0, p0, Lcom/android/server/input/PointerIconCache;->mContext:Landroid/content/Context;

    .line 6
    return-object p0

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/android/server/input/PointerIconCache;->mContext:Landroid/content/Context;

    .line 9
    invoke-virtual {v0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    .line 16
    move-result v0

    .line 17
    if-ne p1, v0, :cond_1

    .line 19
    iget-object p0, p0, Lcom/android/server/input/PointerIconCache;->mContext:Landroid/content/Context;

    .line 21
    return-object p0

    .line 22
    :cond_1
    iget-object v0, p0, Lcom/android/server/input/PointerIconCache;->mDisplayContexts:Landroid/util/SparseArray;

    .line 24
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 27
    move-result-object v0

    .line 28
    check-cast v0, Landroid/content/Context;

    .line 30
    if-nez v0, :cond_3

    .line 32
    iget-object v0, p0, Lcom/android/server/input/PointerIconCache;->mContext:Landroid/content/Context;

    .line 34
    const-class v1, Landroid/hardware/display/DisplayManager;

    .line 36
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 39
    move-result-object v0

    .line 40
    check-cast v0, Landroid/hardware/display/DisplayManager;

    .line 42
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    move-object v1, v0

    .line 46
    check-cast v1, Landroid/hardware/display/DisplayManager;

    .line 48
    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    .line 51
    move-result-object v0

    .line 52
    if-nez v0, :cond_2

    .line 54
    iget-object p0, p0, Lcom/android/server/input/PointerIconCache;->mContext:Landroid/content/Context;

    .line 56
    return-object p0

    .line 57
    :cond_2
    iget-object v1, p0, Lcom/android/server/input/PointerIconCache;->mContext:Landroid/content/Context;

    .line 59
    invoke-virtual {v1, v0}, Landroid/content/Context;->createDisplayContext(Landroid/view/Display;)Landroid/content/Context;

    .line 62
    move-result-object v0

    .line 63
    iget-object p0, p0, Lcom/android/server/input/PointerIconCache;->mDisplayContexts:Landroid/util/SparseArray;

    .line 65
    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 68
    :cond_3
    return-object v0
.end method

.method public final monitor()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/input/PointerIconCache;->mLoadedPointerIconsByDisplayAndType:Landroid/util/SparseArray;

    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    monitor-exit p0

    .line 5
    return-void

    .line 6
    :catchall_0
    move-exception v0

    .line 7
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    throw v0
.end method

.method public final updateDisplayDensityLocked(I)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/input/PointerIconCache;->mContext:Landroid/content/Context;

    .line 3
    const-class v1, Landroid/hardware/display/DisplayManager;

    .line 5
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Landroid/hardware/display/DisplayManager;

    .line 11
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    move-object v1, v0

    .line 15
    check-cast v1, Landroid/hardware/display/DisplayManager;

    .line 17
    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    .line 20
    move-result-object v0

    .line 21
    const/4 v1, 0x0

    .line 22
    if-nez v0, :cond_0

    .line 24
    return v1

    .line 25
    :cond_0
    new-instance v2, Landroid/view/DisplayInfo;

    .line 27
    invoke-direct {v2}, Landroid/view/DisplayInfo;-><init>()V

    .line 30
    invoke-virtual {v0, v2}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    .line 33
    iget-object v0, p0, Lcom/android/server/input/PointerIconCache;->mDisplayDensities:Landroid/util/SparseIntArray;

    .line 35
    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    .line 38
    move-result v0

    .line 39
    iget v2, v2, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    .line 41
    if-ne v0, v2, :cond_1

    .line 43
    return v1

    .line 44
    :cond_1
    iget-object p0, p0, Lcom/android/server/input/PointerIconCache;->mDisplayDensities:Landroid/util/SparseIntArray;

    .line 46
    invoke-virtual {p0, p1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 49
    const/4 p0, 0x1

    .line 50
    return p0
.end method
