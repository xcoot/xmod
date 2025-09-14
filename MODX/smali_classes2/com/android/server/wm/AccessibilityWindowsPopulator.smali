.class public final Lcom/android/server/wm/AccessibilityWindowsPopulator;
.super Landroid/window/WindowInfosListener;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final sTempFloats:[F


# instance fields
.field public final mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

.field public final mCurrentMagnificationSpec:Landroid/util/SparseArray;

.field public final mDisplayInfos:Landroid/util/SparseArray;

.field public final mHandler:Lcom/android/server/wm/AccessibilityWindowsPopulator$MyHandler;

.field public final mInputWindowHandlesOnDisplays:Landroid/util/SparseArray;

.field public final mLock:Ljava/lang/Object;

.field public final mMagnificationSpecInverseMatrix:Landroid/util/SparseArray;

.field public final mPreviousMagnificationSpec:Landroid/util/SparseArray;

.field public final mService:Lcom/android/server/wm/WindowManagerService;

.field public final mTempFloat1:[F

.field public final mTempFloat2:[F

.field public final mTempFloat3:[F

.field public final mTempMatrix1:Landroid/graphics/Matrix;

.field public final mTempMatrix2:Landroid/graphics/Matrix;

.field public final mVisibleWindows:Ljava/util/List;

.field public mWindowsNotificationEnabled:Z

.field public final mWindowsTransformMatrixMap:Ljava/util/Map;


# direct methods
.method public static -$$Nest$mforceUpdateWindows(Lcom/android/server/wm/AccessibilityWindowsPopulator;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iget-object v1, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mLock:Ljava/lang/Object;

    .line 10
    .line 11
    monitor-enter v1

    .line 12
    const/4 v2, 0x0

    .line 13
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mInputWindowHandlesOnDisplays:Landroid/util/SparseArray;

    .line 14
    .line 15
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    if-ge v2, v3, :cond_0

    .line 20
    .line 21
    iget-object v3, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mInputWindowHandlesOnDisplays:Landroid/util/SparseArray;

    .line 22
    .line 23
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    add-int/lit8 v2, v2, 0x1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :catchall_0
    move-exception p0

    .line 38
    goto :goto_1

    .line 39
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    invoke-virtual {p0, v0}, Lcom/android/server/wm/AccessibilityWindowsPopulator;->notifyWindowsChanged(Ljava/util/List;)V

    .line 41
    .line 42
    .line 43
    return-void

    .line 44
    :goto_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 45
    throw p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/android/server/wm/AccessibilityWindowsPopulator;

    .line 2
    .line 3
    const/16 v0, 0x9

    .line 4
    .line 5
    new-array v0, v0, [F

    .line 6
    .line 7
    sput-object v0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->sTempFloats:[F

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/AccessibilityController;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/window/WindowInfosListener;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/util/SparseArray;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mInputWindowHandlesOnDisplays:Landroid/util/SparseArray;

    .line 10
    .line 11
    new-instance v0, Landroid/util/SparseArray;

    .line 12
    .line 13
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mMagnificationSpecInverseMatrix:Landroid/util/SparseArray;

    .line 17
    .line 18
    new-instance v0, Landroid/util/SparseArray;

    .line 19
    .line 20
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mDisplayInfos:Landroid/util/SparseArray;

    .line 24
    .line 25
    new-instance v0, Landroid/util/SparseArray;

    .line 26
    .line 27
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mCurrentMagnificationSpec:Landroid/util/SparseArray;

    .line 31
    .line 32
    new-instance v0, Landroid/util/SparseArray;

    .line 33
    .line 34
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 35
    .line 36
    .line 37
    iput-object v0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mPreviousMagnificationSpec:Landroid/util/SparseArray;

    .line 38
    .line 39
    new-instance v0, Ljava/util/ArrayList;

    .line 40
    .line 41
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 42
    .line 43
    .line 44
    iput-object v0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mVisibleWindows:Ljava/util/List;

    .line 45
    .line 46
    const/4 v0, 0x0

    .line 47
    iput-boolean v0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mWindowsNotificationEnabled:Z

    .line 48
    .line 49
    new-instance v0, Ljava/util/HashMap;

    .line 50
    .line 51
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 52
    .line 53
    .line 54
    iput-object v0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mWindowsTransformMatrixMap:Ljava/util/Map;

    .line 55
    .line 56
    new-instance v0, Ljava/lang/Object;

    .line 57
    .line 58
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 59
    .line 60
    .line 61
    iput-object v0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mLock:Ljava/lang/Object;

    .line 62
    .line 63
    new-instance v0, Landroid/graphics/Matrix;

    .line 64
    .line 65
    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 66
    .line 67
    .line 68
    iput-object v0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mTempMatrix1:Landroid/graphics/Matrix;

    .line 69
    .line 70
    new-instance v0, Landroid/graphics/Matrix;

    .line 71
    .line 72
    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 73
    .line 74
    .line 75
    iput-object v0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mTempMatrix2:Landroid/graphics/Matrix;

    .line 76
    .line 77
    const/16 v0, 0x9

    .line 78
    .line 79
    new-array v1, v0, [F

    .line 80
    .line 81
    iput-object v1, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mTempFloat1:[F

    .line 82
    .line 83
    new-array v1, v0, [F

    .line 84
    .line 85
    iput-object v1, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mTempFloat2:[F

    .line 86
    .line 87
    new-array v0, v0, [F

    .line 88
    .line 89
    iput-object v0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mTempFloat3:[F

    .line 90
    .line 91
    iput-object p1, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 92
    .line 93
    iput-object p2, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    .line 94
    .line 95
    new-instance p2, Lcom/android/server/wm/AccessibilityWindowsPopulator$MyHandler;

    .line 96
    .line 97
    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    .line 98
    .line 99
    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    invoke-direct {p2, p0, p1}, Lcom/android/server/wm/AccessibilityWindowsPopulator$MyHandler;-><init>(Lcom/android/server/wm/AccessibilityWindowsPopulator;Landroid/os/Looper;)V

    .line 104
    .line 105
    .line 106
    iput-object p2, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mHandler:Lcom/android/server/wm/AccessibilityWindowsPopulator$MyHandler;

    .line 107
    .line 108
    return-void
.end method

.method public static generateInverseMatrix(Landroid/view/MagnificationSpec;Landroid/graphics/Matrix;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Matrix;->reset()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/graphics/Matrix;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 10
    .line 11
    .line 12
    iget v1, p0, Landroid/view/MagnificationSpec;->scale:F

    .line 13
    .line 14
    invoke-virtual {v0, v1, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 15
    .line 16
    .line 17
    iget v1, p0, Landroid/view/MagnificationSpec;->offsetX:F

    .line 18
    .line 19
    iget v2, p0, Landroid/view/MagnificationSpec;->offsetY:F

    .line 20
    .line 21
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-nez v0, :cond_0

    .line 29
    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    const-string v1, "Can\'t inverse the magnification spec matrix with the magnification spec = "

    .line 33
    .line 34
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    const-string v0, "AccessibilityWindowsPopulator"

    .line 45
    .line 46
    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1}, Landroid/graphics/Matrix;->reset()V

    .line 50
    .line 51
    .line 52
    :cond_0
    return-void
.end method


# virtual methods
.method public final notifyWindowsChanged(Ljava/util/List;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mHandler:Lcom/android/server/wm/AccessibilityWindowsPopulator$MyHandler;

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 5
    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    move v1, v0

    .line 9
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    if-ge v1, v2, :cond_0

    .line 14
    .line 15
    iget-object v2, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    .line 16
    .line 17
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    check-cast v3, Ljava/lang/Integer;

    .line 22
    .line 23
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    invoke-virtual {v2, v3, v0}, Lcom/android/server/wm/AccessibilityController;->performComputeChangedWindowsNot(IZ)V

    .line 28
    .line 29
    .line 30
    add-int/lit8 v1, v1, 0x1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    return-void
.end method

.method public final onWindowInfosChanged([Landroid/view/InputWindowHandle;[Landroid/window/WindowInfosListener$DisplayInfo;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/server/accessibility/Flags;->removeOnWindowInfosChangedHandler()Z

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mHandler:Lcom/android/server/wm/AccessibilityWindowsPopulator$MyHandler;

    .line 5
    .line 6
    new-instance v1, Lcom/android/server/wm/AccessibilityWindowsPopulator$$ExternalSyntheticLambda0;

    .line 7
    .line 8
    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/wm/AccessibilityWindowsPopulator$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/AccessibilityWindowsPopulator;[Landroid/view/InputWindowHandle;[Landroid/window/WindowInfosListener$DisplayInfo;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final onWindowInfosChangedInternal([Landroid/view/InputWindowHandle;[Landroid/window/WindowInfosListener$DisplayInfo;)V
    .locals 10

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    array-length v1, p1

    .line 7
    const/4 v2, 0x0

    .line 8
    move v3, v2

    .line 9
    :goto_0
    if-ge v3, v1, :cond_3

    .line 10
    .line 11
    aget-object v4, p1, v3

    .line 12
    .line 13
    iget v5, v4, Landroid/view/InputWindowHandle;->inputConfig:I

    .line 14
    .line 15
    and-int/lit8 v6, v5, 0x2

    .line 16
    .line 17
    const/4 v7, 0x1

    .line 18
    if-nez v6, :cond_0

    .line 19
    .line 20
    move v6, v7

    .line 21
    goto :goto_1

    .line 22
    :cond_0
    move v6, v2

    .line 23
    :goto_1
    const/high16 v8, 0x10000

    .line 24
    .line 25
    and-int/2addr v5, v8

    .line 26
    if-nez v5, :cond_1

    .line 27
    .line 28
    move v5, v7

    .line 29
    goto :goto_2

    .line 30
    :cond_1
    move v5, v2

    .line 31
    :goto_2
    iget-object v8, v4, Landroid/view/InputWindowHandle;->touchableRegion:Landroid/graphics/Region;

    .line 32
    .line 33
    invoke-virtual {v8}, Landroid/graphics/Region;->isEmpty()Z

    .line 34
    .line 35
    .line 36
    move-result v8

    .line 37
    xor-int/2addr v8, v7

    .line 38
    iget-object v9, v4, Landroid/view/InputWindowHandle;->frame:Landroid/graphics/Rect;

    .line 39
    .line 40
    invoke-virtual {v9}, Landroid/graphics/Rect;->isEmpty()Z

    .line 41
    .line 42
    .line 43
    move-result v9

    .line 44
    xor-int/2addr v7, v9

    .line 45
    if-eqz v6, :cond_2

    .line 46
    .line 47
    if-eqz v5, :cond_2

    .line 48
    .line 49
    if-eqz v8, :cond_2

    .line 50
    .line 51
    if-eqz v7, :cond_2

    .line 52
    .line 53
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_3
    iget-object p1, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 60
    .line 61
    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 62
    .line 63
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 64
    .line 65
    .line 66
    monitor-enter p1

    .line 67
    :try_start_0
    new-instance v1, Ljava/util/HashMap;

    .line 68
    .line 69
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 73
    .line 74
    .line 75
    move-result-object v3

    .line 76
    :cond_4
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 77
    .line 78
    .line 79
    move-result v4

    .line 80
    if-eqz v4, :cond_6

    .line 81
    .line 82
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v4

    .line 86
    check-cast v4, Landroid/view/InputWindowHandle;

    .line 87
    .line 88
    invoke-virtual {v4}, Landroid/view/InputWindowHandle;->getWindowToken()Landroid/os/IBinder;

    .line 89
    .line 90
    .line 91
    move-result-object v4

    .line 92
    if-eqz v4, :cond_5

    .line 93
    .line 94
    iget-object v5, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 95
    .line 96
    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    .line 97
    .line 98
    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v5

    .line 102
    check-cast v5, Lcom/android/server/wm/WindowState;

    .line 103
    .line 104
    goto :goto_4

    .line 105
    :catchall_0
    move-exception p0

    .line 106
    goto :goto_7

    .line 107
    :cond_5
    const/4 v5, 0x0

    .line 108
    :goto_4
    if-eqz v5, :cond_4

    .line 109
    .line 110
    invoke-virtual {v5}, Lcom/android/server/wm/WindowState;->shouldMagnify()Z

    .line 111
    .line 112
    .line 113
    move-result v6

    .line 114
    if-eqz v6, :cond_4

    .line 115
    .line 116
    new-instance v6, Landroid/graphics/Matrix;

    .line 117
    .line 118
    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    .line 119
    .line 120
    .line 121
    sget-object v7, Lcom/android/server/wm/AccessibilityWindowsPopulator;->sTempFloats:[F

    .line 122
    .line 123
    invoke-virtual {v5, v7, v6}, Lcom/android/server/wm/WindowState;->getTransformationMatrix([FLandroid/graphics/Matrix;)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {v1, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    goto :goto_3

    .line 130
    :cond_6
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 131
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 132
    .line 133
    .line 134
    iget-object v3, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mLock:Ljava/lang/Object;

    .line 135
    .line 136
    monitor-enter v3

    .line 137
    :try_start_1
    iget-object p1, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mWindowsTransformMatrixMap:Ljava/util/Map;

    .line 138
    .line 139
    check-cast p1, Ljava/util/HashMap;

    .line 140
    .line 141
    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    .line 142
    .line 143
    .line 144
    iget-object p1, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mWindowsTransformMatrixMap:Ljava/util/Map;

    .line 145
    .line 146
    check-cast p1, Ljava/util/HashMap;

    .line 147
    .line 148
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 149
    .line 150
    .line 151
    iget-object p1, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mVisibleWindows:Ljava/util/List;

    .line 152
    .line 153
    check-cast p1, Ljava/util/ArrayList;

    .line 154
    .line 155
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 156
    .line 157
    .line 158
    iget-object p1, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mVisibleWindows:Ljava/util/List;

    .line 159
    .line 160
    check-cast p1, Ljava/util/ArrayList;

    .line 161
    .line 162
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 163
    .line 164
    .line 165
    iget-object p1, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mDisplayInfos:Landroid/util/SparseArray;

    .line 166
    .line 167
    invoke-virtual {p1}, Landroid/util/SparseArray;->clear()V

    .line 168
    .line 169
    .line 170
    array-length p1, p2

    .line 171
    :goto_5
    if-ge v2, p1, :cond_7

    .line 172
    .line 173
    aget-object v0, p2, v2

    .line 174
    .line 175
    iget-object v1, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mDisplayInfos:Landroid/util/SparseArray;

    .line 176
    .line 177
    iget v4, v0, Landroid/window/WindowInfosListener$DisplayInfo;->mDisplayId:I

    .line 178
    .line 179
    invoke-virtual {v1, v4, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 180
    .line 181
    .line 182
    add-int/lit8 v2, v2, 0x1

    .line 183
    .line 184
    goto :goto_5

    .line 185
    :catchall_1
    move-exception p0

    .line 186
    goto :goto_6

    .line 187
    :cond_7
    iget-boolean p1, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mWindowsNotificationEnabled:Z

    .line 188
    .line 189
    if-eqz p1, :cond_9

    .line 190
    .line 191
    iget-object p1, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mHandler:Lcom/android/server/wm/AccessibilityWindowsPopulator$MyHandler;

    .line 192
    .line 193
    const/4 p2, 0x3

    .line 194
    invoke-virtual {p1, p2}, Landroid/os/Handler;->hasMessages(I)Z

    .line 195
    .line 196
    .line 197
    move-result p1

    .line 198
    if-nez p1, :cond_8

    .line 199
    .line 200
    iget-object p1, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mHandler:Lcom/android/server/wm/AccessibilityWindowsPopulator$MyHandler;

    .line 201
    .line 202
    const-wide/16 v0, 0x1c2

    .line 203
    .line 204
    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 205
    .line 206
    .line 207
    :cond_8
    invoke-virtual {p0}, Lcom/android/server/wm/AccessibilityWindowsPopulator;->populateVisibleWindowHandlesAndNotifyWindowsChangeIfNeeded()V

    .line 208
    .line 209
    .line 210
    :cond_9
    monitor-exit v3

    .line 211
    return-void

    .line 212
    :goto_6
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 213
    throw p0

    .line 214
    :goto_7
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 215
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 216
    .line 217
    .line 218
    throw p0
.end method

.method public final populateVisibleWindowHandlesAndNotifyWindowsChangeIfNeeded()V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    new-instance v1, Landroid/util/SparseArray;

    .line 4
    .line 5
    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 6
    .line 7
    .line 8
    iget-object v2, v0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mVisibleWindows:Ljava/util/List;

    .line 9
    .line 10
    check-cast v2, Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    if-eqz v3, :cond_1

    .line 21
    .line 22
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    check-cast v3, Landroid/view/InputWindowHandle;

    .line 27
    .line 28
    iget v4, v3, Landroid/view/InputWindowHandle;->displayId:I

    .line 29
    .line 30
    invoke-virtual {v1, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v4

    .line 34
    check-cast v4, Ljava/util/List;

    .line 35
    .line 36
    if-nez v4, :cond_0

    .line 37
    .line 38
    new-instance v4, Ljava/util/ArrayList;

    .line 39
    .line 40
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 41
    .line 42
    .line 43
    iget v5, v3, Landroid/view/InputWindowHandle;->displayId:I

    .line 44
    .line 45
    invoke-virtual {v1, v5, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    :cond_0
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_1
    const/4 v2, 0x0

    .line 53
    move v3, v2

    .line 54
    :goto_1
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 55
    .line 56
    .line 57
    move-result v4

    .line 58
    const/4 v5, 0x1

    .line 59
    const/4 v6, 0x2

    .line 60
    if-ge v3, v4, :cond_a

    .line 61
    .line 62
    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->keyAt(I)I

    .line 63
    .line 64
    .line 65
    move-result v4

    .line 66
    invoke-virtual {v1, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v7

    .line 70
    check-cast v7, Ljava/util/List;

    .line 71
    .line 72
    iget-object v8, v0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mCurrentMagnificationSpec:Landroid/util/SparseArray;

    .line 73
    .line 74
    invoke-virtual {v8, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v8

    .line 78
    check-cast v8, Landroid/view/MagnificationSpec;

    .line 79
    .line 80
    if-nez v8, :cond_2

    .line 81
    .line 82
    goto/16 :goto_6

    .line 83
    .line 84
    :cond_2
    new-instance v9, Landroid/view/MagnificationSpec;

    .line 85
    .line 86
    invoke-direct {v9}, Landroid/view/MagnificationSpec;-><init>()V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v9, v8}, Landroid/view/MagnificationSpec;->setTo(Landroid/view/MagnificationSpec;)V

    .line 90
    .line 91
    .line 92
    iget-object v8, v0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mPreviousMagnificationSpec:Landroid/util/SparseArray;

    .line 93
    .line 94
    invoke-virtual {v8, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v8

    .line 98
    check-cast v8, Landroid/view/MagnificationSpec;

    .line 99
    .line 100
    if-nez v8, :cond_3

    .line 101
    .line 102
    new-instance v5, Landroid/graphics/Matrix;

    .line 103
    .line 104
    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 105
    .line 106
    .line 107
    invoke-static {v9, v5}, Lcom/android/server/wm/AccessibilityWindowsPopulator;->generateInverseMatrix(Landroid/view/MagnificationSpec;Landroid/graphics/Matrix;)V

    .line 108
    .line 109
    .line 110
    iget-object v6, v0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mMagnificationSpecInverseMatrix:Landroid/util/SparseArray;

    .line 111
    .line 112
    invoke-virtual {v6, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 113
    .line 114
    .line 115
    goto/16 :goto_6

    .line 116
    .line 117
    :cond_3
    new-instance v4, Landroid/view/MagnificationSpec;

    .line 118
    .line 119
    invoke-direct {v4}, Landroid/view/MagnificationSpec;-><init>()V

    .line 120
    .line 121
    .line 122
    invoke-virtual {v4, v8}, Landroid/view/MagnificationSpec;->setTo(Landroid/view/MagnificationSpec;)V

    .line 123
    .line 124
    .line 125
    invoke-interface {v7}, Ljava/util/List;->size()I

    .line 126
    .line 127
    .line 128
    move-result v8

    .line 129
    sub-int/2addr v8, v5

    .line 130
    :goto_2
    if-ltz v8, :cond_9

    .line 131
    .line 132
    iget-object v5, v0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mTempMatrix2:Landroid/graphics/Matrix;

    .line 133
    .line 134
    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    move-result-object v10

    .line 138
    check-cast v10, Landroid/view/InputWindowHandle;

    .line 139
    .line 140
    invoke-virtual {v10}, Landroid/view/InputWindowHandle;->getWindowToken()Landroid/os/IBinder;

    .line 141
    .line 142
    .line 143
    move-result-object v11

    .line 144
    if-eqz v11, :cond_4

    .line 145
    .line 146
    iget-object v12, v0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mWindowsTransformMatrixMap:Ljava/util/Map;

    .line 147
    .line 148
    check-cast v12, Ljava/util/HashMap;

    .line 149
    .line 150
    invoke-virtual {v12, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    move-result-object v11

    .line 154
    check-cast v11, Landroid/graphics/Matrix;

    .line 155
    .line 156
    goto :goto_3

    .line 157
    :cond_4
    const/4 v11, 0x0

    .line 158
    :goto_3
    if-nez v11, :cond_5

    .line 159
    .line 160
    add-int/lit8 v8, v8, -0x1

    .line 161
    .line 162
    goto :goto_2

    .line 163
    :cond_5
    invoke-virtual {v5, v11}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 164
    .line 165
    .line 166
    iget-object v7, v0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mTempFloat1:[F

    .line 167
    .line 168
    iget-object v8, v0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mTempMatrix1:Landroid/graphics/Matrix;

    .line 169
    .line 170
    invoke-virtual {v8}, Landroid/graphics/Matrix;->reset()V

    .line 171
    .line 172
    .line 173
    iget v11, v9, Landroid/view/MagnificationSpec;->scale:F

    .line 174
    .line 175
    invoke-virtual {v8, v11, v11}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 176
    .line 177
    .line 178
    iget v11, v9, Landroid/view/MagnificationSpec;->offsetX:F

    .line 179
    .line 180
    iget v12, v9, Landroid/view/MagnificationSpec;->offsetY:F

    .line 181
    .line 182
    invoke-virtual {v8, v11, v12}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 183
    .line 184
    .line 185
    new-instance v11, Landroid/graphics/Matrix;

    .line 186
    .line 187
    iget-object v12, v10, Landroid/view/InputWindowHandle;->transform:Landroid/graphics/Matrix;

    .line 188
    .line 189
    invoke-direct {v11, v12}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    .line 190
    .line 191
    .line 192
    invoke-virtual {v11, v8}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 193
    .line 194
    .line 195
    invoke-virtual {v11, v5}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 196
    .line 197
    .line 198
    invoke-virtual {v11, v7}, Landroid/graphics/Matrix;->getValues([F)V

    .line 199
    .line 200
    .line 201
    iget-object v8, v0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mTempFloat2:[F

    .line 202
    .line 203
    iget-object v11, v0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mTempMatrix1:Landroid/graphics/Matrix;

    .line 204
    .line 205
    invoke-virtual {v11}, Landroid/graphics/Matrix;->reset()V

    .line 206
    .line 207
    .line 208
    iget v12, v4, Landroid/view/MagnificationSpec;->scale:F

    .line 209
    .line 210
    invoke-virtual {v11, v12, v12}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 211
    .line 212
    .line 213
    iget v12, v4, Landroid/view/MagnificationSpec;->offsetX:F

    .line 214
    .line 215
    iget v13, v4, Landroid/view/MagnificationSpec;->offsetY:F

    .line 216
    .line 217
    invoke-virtual {v11, v12, v13}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 218
    .line 219
    .line 220
    new-instance v12, Landroid/graphics/Matrix;

    .line 221
    .line 222
    iget-object v13, v10, Landroid/view/InputWindowHandle;->transform:Landroid/graphics/Matrix;

    .line 223
    .line 224
    invoke-direct {v12, v13}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    .line 225
    .line 226
    .line 227
    invoke-virtual {v12, v11}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 228
    .line 229
    .line 230
    invoke-virtual {v12, v5}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 231
    .line 232
    .line 233
    invoke-virtual {v12, v8}, Landroid/graphics/Matrix;->getValues([F)V

    .line 234
    .line 235
    .line 236
    new-instance v5, Landroid/graphics/Matrix;

    .line 237
    .line 238
    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 239
    .line 240
    .line 241
    iget-object v11, v0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mTempFloat3:[F

    .line 242
    .line 243
    sget-object v12, Landroid/graphics/Matrix;->IDENTITY_MATRIX:Landroid/graphics/Matrix;

    .line 244
    .line 245
    invoke-virtual {v12, v11}, Landroid/graphics/Matrix;->getValues([F)V

    .line 246
    .line 247
    .line 248
    aget v12, v11, v2

    .line 249
    .line 250
    aget v13, v7, v2

    .line 251
    .line 252
    sub-float/2addr v12, v13

    .line 253
    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    .line 254
    .line 255
    .line 256
    move-result v12

    .line 257
    aget v13, v11, v2

    .line 258
    .line 259
    aget v14, v8, v2

    .line 260
    .line 261
    sub-float/2addr v13, v14

    .line 262
    invoke-static {v13}, Ljava/lang/Math;->abs(F)F

    .line 263
    .line 264
    .line 265
    move-result v13

    .line 266
    aget v14, v11, v6

    .line 267
    .line 268
    aget v15, v7, v6

    .line 269
    .line 270
    sub-float/2addr v14, v15

    .line 271
    invoke-static {v14}, Ljava/lang/Math;->abs(F)F

    .line 272
    .line 273
    .line 274
    move-result v14

    .line 275
    aget v15, v11, v6

    .line 276
    .line 277
    aget v6, v8, v6

    .line 278
    .line 279
    sub-float/2addr v15, v6

    .line 280
    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    .line 281
    .line 282
    .line 283
    move-result v6

    .line 284
    const/4 v15, 0x5

    .line 285
    aget v16, v11, v15

    .line 286
    .line 287
    aget v7, v7, v15

    .line 288
    .line 289
    sub-float v16, v16, v7

    .line 290
    .line 291
    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->abs(F)F

    .line 292
    .line 293
    .line 294
    move-result v7

    .line 295
    aget v11, v11, v15

    .line 296
    .line 297
    aget v8, v8, v15

    .line 298
    .line 299
    sub-float/2addr v11, v8

    .line 300
    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    .line 301
    .line 302
    .line 303
    move-result v8

    .line 304
    add-float/2addr v14, v7

    .line 305
    add-float/2addr v6, v8

    .line 306
    invoke-static {v13, v12}, Ljava/lang/Float;->compare(FF)I

    .line 307
    .line 308
    .line 309
    move-result v7

    .line 310
    if-gtz v7, :cond_7

    .line 311
    .line 312
    invoke-static {v13, v12}, Ljava/lang/Float;->compare(FF)I

    .line 313
    .line 314
    .line 315
    move-result v7

    .line 316
    if-nez v7, :cond_6

    .line 317
    .line 318
    invoke-static {v6, v14}, Ljava/lang/Float;->compare(FF)I

    .line 319
    .line 320
    .line 321
    move-result v6

    .line 322
    if-lez v6, :cond_6

    .line 323
    .line 324
    goto :goto_4

    .line 325
    :cond_6
    invoke-static {v4, v5}, Lcom/android/server/wm/AccessibilityWindowsPopulator;->generateInverseMatrix(Landroid/view/MagnificationSpec;Landroid/graphics/Matrix;)V

    .line 326
    .line 327
    .line 328
    goto :goto_5

    .line 329
    :cond_7
    :goto_4
    invoke-static {v9, v5}, Lcom/android/server/wm/AccessibilityWindowsPopulator;->generateInverseMatrix(Landroid/view/MagnificationSpec;Landroid/graphics/Matrix;)V

    .line 330
    .line 331
    .line 332
    iget-object v4, v0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mPreviousMagnificationSpec:Landroid/util/SparseArray;

    .line 333
    .line 334
    iget v6, v10, Landroid/view/InputWindowHandle;->displayId:I

    .line 335
    .line 336
    invoke-virtual {v4, v6}, Landroid/util/SparseArray;->remove(I)V

    .line 337
    .line 338
    .line 339
    invoke-virtual {v9}, Landroid/view/MagnificationSpec;->isNop()Z

    .line 340
    .line 341
    .line 342
    move-result v4

    .line 343
    if-eqz v4, :cond_8

    .line 344
    .line 345
    iget-object v4, v0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mCurrentMagnificationSpec:Landroid/util/SparseArray;

    .line 346
    .line 347
    iget v5, v10, Landroid/view/InputWindowHandle;->displayId:I

    .line 348
    .line 349
    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->remove(I)V

    .line 350
    .line 351
    .line 352
    iget-object v4, v0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mMagnificationSpecInverseMatrix:Landroid/util/SparseArray;

    .line 353
    .line 354
    iget v5, v10, Landroid/view/InputWindowHandle;->displayId:I

    .line 355
    .line 356
    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->remove(I)V

    .line 357
    .line 358
    .line 359
    goto :goto_6

    .line 360
    :cond_8
    :goto_5
    iget-object v4, v0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mMagnificationSpecInverseMatrix:Landroid/util/SparseArray;

    .line 361
    .line 362
    iget v6, v10, Landroid/view/InputWindowHandle;->displayId:I

    .line 363
    .line 364
    invoke-virtual {v4, v6, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 365
    .line 366
    .line 367
    :cond_9
    :goto_6
    add-int/lit8 v3, v3, 0x1

    .line 368
    .line 369
    goto/16 :goto_1

    .line 370
    .line 371
    :cond_a
    new-instance v3, Ljava/util/ArrayList;

    .line 372
    .line 373
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 374
    .line 375
    .line 376
    iget-object v4, v0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mInputWindowHandlesOnDisplays:Landroid/util/SparseArray;

    .line 377
    .line 378
    move v7, v2

    .line 379
    :goto_7
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 380
    .line 381
    .line 382
    move-result v8

    .line 383
    if-ge v7, v8, :cond_12

    .line 384
    .line 385
    invoke-virtual {v1, v7}, Landroid/util/SparseArray;->keyAt(I)I

    .line 386
    .line 387
    .line 388
    move-result v8

    .line 389
    invoke-virtual {v1, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 390
    .line 391
    .line 392
    move-result-object v9

    .line 393
    check-cast v9, Ljava/util/List;

    .line 394
    .line 395
    invoke-virtual {v4, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 396
    .line 397
    .line 398
    move-result-object v10

    .line 399
    check-cast v10, Ljava/util/List;

    .line 400
    .line 401
    if-eqz v10, :cond_10

    .line 402
    .line 403
    invoke-interface {v10}, Ljava/util/List;->size()I

    .line 404
    .line 405
    .line 406
    move-result v11

    .line 407
    invoke-interface {v9}, Ljava/util/List;->size()I

    .line 408
    .line 409
    .line 410
    move-result v12

    .line 411
    if-eq v11, v12, :cond_b

    .line 412
    .line 413
    goto :goto_a

    .line 414
    :cond_b
    invoke-interface {v9}, Ljava/util/List;->size()I

    .line 415
    .line 416
    .line 417
    move-result v11

    .line 418
    move v12, v2

    .line 419
    :goto_8
    if-ge v12, v11, :cond_11

    .line 420
    .line 421
    invoke-interface {v9, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 422
    .line 423
    .line 424
    move-result-object v13

    .line 425
    check-cast v13, Landroid/view/InputWindowHandle;

    .line 426
    .line 427
    invoke-virtual {v13}, Landroid/view/InputWindowHandle;->getWindowToken()Landroid/os/IBinder;

    .line 428
    .line 429
    .line 430
    move-result-object v13

    .line 431
    invoke-interface {v10, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 432
    .line 433
    .line 434
    move-result-object v14

    .line 435
    check-cast v14, Landroid/view/InputWindowHandle;

    .line 436
    .line 437
    invoke-virtual {v14}, Landroid/view/InputWindowHandle;->getWindowToken()Landroid/os/IBinder;

    .line 438
    .line 439
    .line 440
    move-result-object v14

    .line 441
    if-eqz v13, :cond_c

    .line 442
    .line 443
    move v15, v5

    .line 444
    goto :goto_9

    .line 445
    :cond_c
    move v15, v2

    .line 446
    :goto_9
    if-eqz v14, :cond_d

    .line 447
    .line 448
    move v2, v5

    .line 449
    :cond_d
    if-eq v15, v2, :cond_e

    .line 450
    .line 451
    goto :goto_a

    .line 452
    :cond_e
    if-eqz v15, :cond_f

    .line 453
    .line 454
    if-eqz v2, :cond_f

    .line 455
    .line 456
    invoke-interface {v13, v14}, Landroid/os/IBinder;->equals(Ljava/lang/Object;)Z

    .line 457
    .line 458
    .line 459
    move-result v2

    .line 460
    if-nez v2, :cond_f

    .line 461
    .line 462
    goto :goto_a

    .line 463
    :cond_f
    add-int/lit8 v12, v12, 0x1

    .line 464
    .line 465
    const/4 v2, 0x0

    .line 466
    goto :goto_8

    .line 467
    :cond_10
    :goto_a
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 468
    .line 469
    .line 470
    move-result-object v2

    .line 471
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 472
    .line 473
    .line 474
    :cond_11
    add-int/lit8 v7, v7, 0x1

    .line 475
    .line 476
    const/4 v2, 0x0

    .line 477
    goto :goto_7

    .line 478
    :cond_12
    iget-object v2, v0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mInputWindowHandlesOnDisplays:Landroid/util/SparseArray;

    .line 479
    .line 480
    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    .line 481
    .line 482
    .line 483
    const/4 v2, 0x0

    .line 484
    :goto_b
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 485
    .line 486
    .line 487
    move-result v4

    .line 488
    if-ge v2, v4, :cond_13

    .line 489
    .line 490
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->keyAt(I)I

    .line 491
    .line 492
    .line 493
    move-result v4

    .line 494
    iget-object v7, v0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mInputWindowHandlesOnDisplays:Landroid/util/SparseArray;

    .line 495
    .line 496
    invoke-virtual {v1, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 497
    .line 498
    .line 499
    move-result-object v8

    .line 500
    check-cast v8, Ljava/util/List;

    .line 501
    .line 502
    invoke-virtual {v7, v4, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 503
    .line 504
    .line 505
    add-int/lit8 v2, v2, 0x1

    .line 506
    .line 507
    goto :goto_b

    .line 508
    :cond_13
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 509
    .line 510
    .line 511
    move-result v1

    .line 512
    if-nez v1, :cond_15

    .line 513
    .line 514
    iget-object v1, v0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mHandler:Lcom/android/server/wm/AccessibilityWindowsPopulator$MyHandler;

    .line 515
    .line 516
    invoke-virtual {v1, v5}, Landroid/os/Handler;->hasMessages(I)Z

    .line 517
    .line 518
    .line 519
    move-result v1

    .line 520
    if-nez v1, :cond_14

    .line 521
    .line 522
    iget-object v0, v0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mHandler:Lcom/android/server/wm/AccessibilityWindowsPopulator$MyHandler;

    .line 523
    .line 524
    invoke-virtual {v0, v5, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 525
    .line 526
    .line 527
    move-result-object v0

    .line 528
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 529
    .line 530
    .line 531
    :cond_14
    return-void

    .line 532
    :cond_15
    iget-object v1, v0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mHandler:Lcom/android/server/wm/AccessibilityWindowsPopulator$MyHandler;

    .line 533
    .line 534
    invoke-virtual {v1, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 535
    .line 536
    .line 537
    iget-object v0, v0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mHandler:Lcom/android/server/wm/AccessibilityWindowsPopulator$MyHandler;

    .line 538
    .line 539
    const-wide/16 v1, 0x23

    .line 540
    .line 541
    invoke-virtual {v0, v6, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 542
    .line 543
    .line 544
    return-void
.end method

.method public final populateVisibleWindowsOnScreenLocked(ILjava/util/List;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    const-string v2, "The displayInfo of this displayId ("

    .line 6
    .line 7
    new-instance v3, Landroid/graphics/Matrix;

    .line 8
    .line 9
    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    .line 10
    .line 11
    .line 12
    new-instance v4, Landroid/graphics/Matrix;

    .line 13
    .line 14
    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    .line 15
    .line 16
    .line 17
    iget-object v5, v0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mLock:Ljava/lang/Object;

    .line 18
    .line 19
    monitor-enter v5

    .line 20
    :try_start_0
    iget-object v6, v0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mInputWindowHandlesOnDisplays:Landroid/util/SparseArray;

    .line 21
    .line 22
    invoke-virtual {v6, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v6

    .line 26
    check-cast v6, Ljava/util/List;

    .line 27
    .line 28
    if-nez v6, :cond_0

    .line 29
    .line 30
    move-object/from16 v0, p2

    .line 31
    .line 32
    check-cast v0, Ljava/util/ArrayList;

    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 35
    .line 36
    .line 37
    monitor-exit v5

    .line 38
    return-void

    .line 39
    :catchall_0
    move-exception v0

    .line 40
    goto/16 :goto_13

    .line 41
    .line 42
    :cond_0
    iget-object v7, v0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mMagnificationSpecInverseMatrix:Landroid/util/SparseArray;

    .line 43
    .line 44
    invoke-virtual {v7, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v7

    .line 48
    check-cast v7, Landroid/graphics/Matrix;

    .line 49
    .line 50
    invoke-virtual {v3, v7}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 51
    .line 52
    .line 53
    iget-object v7, v0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mDisplayInfos:Landroid/util/SparseArray;

    .line 54
    .line 55
    invoke-virtual {v7, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v7

    .line 59
    check-cast v7, Landroid/window/WindowInfosListener$DisplayInfo;

    .line 60
    .line 61
    if-eqz v7, :cond_1

    .line 62
    .line 63
    iget-object v2, v7, Landroid/window/WindowInfosListener$DisplayInfo;->mTransform:Landroid/graphics/Matrix;

    .line 64
    .line 65
    invoke-virtual {v4, v2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 66
    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_1
    const-string v7, "AccessibilityWindowsPopulator"

    .line 70
    .line 71
    new-instance v8, Ljava/lang/StringBuilder;

    .line 72
    .line 73
    invoke-direct {v8, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    const-string v2, ") called back from the surface fligner is null"

    .line 80
    .line 81
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v2

    .line 88
    invoke-static {v7, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    .line 90
    .line 91
    :goto_0
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    iget-object v2, v0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 93
    .line 94
    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    .line 95
    .line 96
    invoke-virtual {v2, v1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mShellRoots:Landroid/util/SparseArray;

    .line 101
    .line 102
    const/4 v2, 0x1

    .line 103
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    check-cast v1, Lcom/android/server/wm/ShellRoot;

    .line 108
    .line 109
    const/4 v5, 0x0

    .line 110
    if-eqz v1, :cond_2

    .line 111
    .line 112
    iget-object v1, v1, Lcom/android/server/wm/ShellRoot;->mAccessibilityWindow:Landroid/view/IWindow;

    .line 113
    .line 114
    if-eqz v1, :cond_2

    .line 115
    .line 116
    invoke-interface {v1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    goto :goto_1

    .line 121
    :cond_2
    move-object v1, v5

    .line 122
    :goto_1
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 123
    .line 124
    .line 125
    move-result-object v6

    .line 126
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 127
    .line 128
    .line 129
    move-result v7

    .line 130
    if-eqz v7, :cond_1b

    .line 131
    .line 132
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    move-result-object v7

    .line 136
    check-cast v7, Landroid/view/InputWindowHandle;

    .line 137
    .line 138
    iget-object v8, v0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 139
    .line 140
    invoke-virtual {v7}, Landroid/view/InputWindowHandle;->getWindowToken()Landroid/os/IBinder;

    .line 141
    .line 142
    .line 143
    move-result-object v9

    .line 144
    if-eqz v9, :cond_3

    .line 145
    .line 146
    iget-object v10, v8, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    .line 147
    .line 148
    invoke-virtual {v10, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    move-result-object v10

    .line 152
    check-cast v10, Lcom/android/server/wm/WindowState;

    .line 153
    .line 154
    goto :goto_3

    .line 155
    :cond_3
    move-object v10, v5

    .line 156
    :goto_3
    new-instance v11, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;

    .line 157
    .line 158
    invoke-direct {v11}, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;-><init>()V

    .line 159
    .line 160
    .line 161
    iput-object v9, v11, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->mWindow:Landroid/os/IBinder;

    .line 162
    .line 163
    iget v12, v7, Landroid/view/InputWindowHandle;->displayId:I

    .line 164
    .line 165
    iput v12, v11, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->mDisplayId:I

    .line 166
    .line 167
    iget v12, v7, Landroid/view/InputWindowHandle;->inputConfig:I

    .line 168
    .line 169
    iput v12, v11, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->mInputConfig:I

    .line 170
    .line 171
    iget v12, v7, Landroid/view/InputWindowHandle;->layoutParamsType:I

    .line 172
    .line 173
    iput v12, v11, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->mType:I

    .line 174
    .line 175
    const/4 v12, 0x0

    .line 176
    if-eqz v9, :cond_4

    .line 177
    .line 178
    invoke-interface {v9, v1}, Landroid/os/IBinder;->equals(Ljava/lang/Object;)Z

    .line 179
    .line 180
    .line 181
    move-result v9

    .line 182
    if-eqz v9, :cond_4

    .line 183
    .line 184
    move v9, v2

    .line 185
    goto :goto_4

    .line 186
    :cond_4
    move v9, v12

    .line 187
    :goto_4
    iput-boolean v9, v11, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->mIsPIPMenu:Z

    .line 188
    .line 189
    if-eqz v10, :cond_5

    .line 190
    .line 191
    iget-object v9, v10, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 192
    .line 193
    iget v9, v9, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 194
    .line 195
    goto :goto_5

    .line 196
    :cond_5
    move v9, v12

    .line 197
    :goto_5
    iput v9, v11, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->mPrivateFlags:I

    .line 198
    .line 199
    if-eqz v10, :cond_6

    .line 200
    .line 201
    invoke-virtual {v10}, Lcom/android/server/wm/WindowState;->isFocused()Z

    .line 202
    .line 203
    .line 204
    move-result v9

    .line 205
    if-eqz v9, :cond_6

    .line 206
    .line 207
    move v9, v2

    .line 208
    goto :goto_6

    .line 209
    :cond_6
    move v9, v12

    .line 210
    :goto_6
    iput-boolean v9, v11, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->mIsFocused:Z

    .line 211
    .line 212
    if-eqz v10, :cond_8

    .line 213
    .line 214
    invoke-virtual {v10}, Lcom/android/server/wm/WindowState;->shouldMagnify()Z

    .line 215
    .line 216
    .line 217
    move-result v9

    .line 218
    if-eqz v9, :cond_7

    .line 219
    .line 220
    goto :goto_7

    .line 221
    :cond_7
    move v9, v12

    .line 222
    goto :goto_8

    .line 223
    :cond_8
    :goto_7
    move v9, v2

    .line 224
    :goto_8
    iput-boolean v9, v11, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->mShouldMagnify:Z

    .line 225
    .line 226
    iget-object v8, v8, Lcom/android/server/wm/WindowManagerService;->mRecentsAnimationController:Lcom/android/server/wm/RecentsAnimationController;

    .line 227
    .line 228
    if-eqz v10, :cond_9

    .line 229
    .line 230
    if-eqz v8, :cond_9

    .line 231
    .line 232
    invoke-virtual {v10}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    .line 233
    .line 234
    .line 235
    move-result-object v9

    .line 236
    if-eqz v9, :cond_9

    .line 237
    .line 238
    invoke-virtual {v8, v9}, Lcom/android/server/wm/RecentsAnimationController;->isAnimatingTask(Lcom/android/server/wm/Task;)Z

    .line 239
    .line 240
    .line 241
    move-result v9

    .line 242
    if-eqz v9, :cond_9

    .line 243
    .line 244
    iget-object v9, v10, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 245
    .line 246
    invoke-virtual {v8, v9}, Lcom/android/server/wm/RecentsAnimationController;->isTargetApp(Lcom/android/server/wm/ActivityRecord;)Z

    .line 247
    .line 248
    .line 249
    move-result v8

    .line 250
    if-nez v8, :cond_9

    .line 251
    .line 252
    move v8, v2

    .line 253
    goto :goto_9

    .line 254
    :cond_9
    move v8, v12

    .line 255
    :goto_9
    iput-boolean v8, v11, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->mIgnoreDuetoRecentsAnimation:Z

    .line 256
    .line 257
    new-instance v8, Landroid/graphics/Rect;

    .line 258
    .line 259
    iget-object v9, v7, Landroid/view/InputWindowHandle;->frame:Landroid/graphics/Rect;

    .line 260
    .line 261
    invoke-direct {v8, v9}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 262
    .line 263
    .line 264
    iget-boolean v9, v11, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->mShouldMagnify:Z

    .line 265
    .line 266
    iget-object v13, v7, Landroid/view/InputWindowHandle;->touchableRegion:Landroid/graphics/Region;

    .line 267
    .line 268
    iget-object v14, v11, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->mTouchableRegionInWindow:Landroid/graphics/Region;

    .line 269
    .line 270
    new-instance v15, Landroid/graphics/Region;

    .line 271
    .line 272
    invoke-direct {v15}, Landroid/graphics/Region;-><init>()V

    .line 273
    .line 274
    .line 275
    invoke-virtual {v15, v13}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    .line 276
    .line 277
    .line 278
    sget-object v13, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    .line 279
    .line 280
    invoke-virtual {v15, v8, v13}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 281
    .line 282
    .line 283
    if-eqz v9, :cond_a

    .line 284
    .line 285
    invoke-virtual {v3}, Landroid/graphics/Matrix;->isIdentity()Z

    .line 286
    .line 287
    .line 288
    move-result v8

    .line 289
    if-eqz v8, :cond_b

    .line 290
    .line 291
    :cond_a
    invoke-virtual {v4}, Landroid/graphics/Matrix;->isIdentity()Z

    .line 292
    .line 293
    .line 294
    move-result v8

    .line 295
    if-eqz v8, :cond_b

    .line 296
    .line 297
    invoke-virtual {v14, v15}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    .line 298
    .line 299
    .line 300
    goto :goto_a

    .line 301
    :cond_b
    new-instance v8, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow$$ExternalSyntheticLambda0;

    .line 302
    .line 303
    invoke-direct {v8, v4, v3, v14}, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow$$ExternalSyntheticLambda0;-><init>(Landroid/graphics/Matrix;Landroid/graphics/Matrix;Landroid/graphics/Region;)V

    .line 304
    .line 305
    .line 306
    invoke-static {v15, v8}, Lcom/android/server/wm/utils/RegionUtils;->forEachRect(Landroid/graphics/Region;Ljava/util/function/Consumer;)V

    .line 307
    .line 308
    .line 309
    :goto_a
    iget-boolean v8, v11, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->mShouldMagnify:Z

    .line 310
    .line 311
    iget-object v9, v7, Landroid/view/InputWindowHandle;->touchableRegion:Landroid/graphics/Region;

    .line 312
    .line 313
    iget-object v13, v11, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->mTouchableRegionInScreen:Landroid/graphics/Region;

    .line 314
    .line 315
    if-eqz v8, :cond_c

    .line 316
    .line 317
    invoke-virtual {v3}, Landroid/graphics/Matrix;->isIdentity()Z

    .line 318
    .line 319
    .line 320
    move-result v8

    .line 321
    if-eqz v8, :cond_d

    .line 322
    .line 323
    :cond_c
    invoke-virtual {v4}, Landroid/graphics/Matrix;->isIdentity()Z

    .line 324
    .line 325
    .line 326
    move-result v8

    .line 327
    if-eqz v8, :cond_d

    .line 328
    .line 329
    invoke-virtual {v13, v9}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    .line 330
    .line 331
    .line 332
    goto :goto_b

    .line 333
    :cond_d
    new-instance v8, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow$$ExternalSyntheticLambda0;

    .line 334
    .line 335
    invoke-direct {v8, v4, v3, v13}, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow$$ExternalSyntheticLambda0;-><init>(Landroid/graphics/Matrix;Landroid/graphics/Matrix;Landroid/graphics/Region;)V

    .line 336
    .line 337
    .line 338
    invoke-static {v9, v8}, Lcom/android/server/wm/utils/RegionUtils;->forEachRect(Landroid/graphics/Region;Ljava/util/function/Consumer;)V

    .line 339
    .line 340
    .line 341
    :goto_b
    if-eqz v10, :cond_14

    .line 342
    .line 343
    invoke-static {}, Landroid/view/WindowInfo;->obtain()Landroid/view/WindowInfo;

    .line 344
    .line 345
    .line 346
    move-result-object v8

    .line 347
    invoke-virtual {v10}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    .line 348
    .line 349
    .line 350
    move-result v9

    .line 351
    iput v9, v8, Landroid/view/WindowInfo;->displayId:I

    .line 352
    .line 353
    iget-object v9, v10, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 354
    .line 355
    iget v9, v9, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 356
    .line 357
    iput v9, v8, Landroid/view/WindowInfo;->type:I

    .line 358
    .line 359
    iput v12, v8, Landroid/view/WindowInfo;->layer:I

    .line 360
    .line 361
    iget-object v9, v10, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    .line 362
    .line 363
    invoke-interface {v9}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    .line 364
    .line 365
    .line 366
    move-result-object v9

    .line 367
    iput-object v9, v8, Landroid/view/WindowInfo;->token:Landroid/os/IBinder;

    .line 368
    .line 369
    iget-object v9, v10, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 370
    .line 371
    if-eqz v9, :cond_e

    .line 372
    .line 373
    iget-object v9, v9, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    .line 374
    .line 375
    iput-object v9, v8, Landroid/view/WindowInfo;->activityToken:Landroid/os/IBinder;

    .line 376
    .line 377
    :cond_e
    iget-object v9, v10, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 378
    .line 379
    iget-wide v13, v9, Landroid/view/WindowManager$LayoutParams;->accessibilityIdOfAnchor:J

    .line 380
    .line 381
    iput-wide v13, v8, Landroid/view/WindowInfo;->accessibilityIdOfAnchor:J

    .line 382
    .line 383
    invoke-virtual {v10}, Lcom/android/server/wm/WindowState;->isFocused()Z

    .line 384
    .line 385
    .line 386
    move-result v9

    .line 387
    iput-boolean v9, v8, Landroid/view/WindowInfo;->focused:Z

    .line 388
    .line 389
    invoke-virtual {v10}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    .line 390
    .line 391
    .line 392
    move-result-object v9

    .line 393
    if-eqz v9, :cond_f

    .line 394
    .line 395
    invoke-virtual {v9}, Lcom/android/server/wm/ConfigurationContainer;->inPinnedWindowingMode()Z

    .line 396
    .line 397
    .line 398
    move-result v13

    .line 399
    if-eqz v13, :cond_f

    .line 400
    .line 401
    move v13, v2

    .line 402
    goto :goto_c

    .line 403
    :cond_f
    move v13, v12

    .line 404
    :goto_c
    iput-boolean v13, v8, Landroid/view/WindowInfo;->inPictureInPicture:Z

    .line 405
    .line 406
    if-nez v9, :cond_10

    .line 407
    .line 408
    const/4 v9, -0x1

    .line 409
    goto :goto_d

    .line 410
    :cond_10
    iget v9, v9, Lcom/android/server/wm/Task;->mTaskId:I

    .line 411
    .line 412
    :goto_d
    iput v9, v8, Landroid/view/WindowInfo;->taskId:I

    .line 413
    .line 414
    iget-object v9, v10, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 415
    .line 416
    iget v9, v9, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 417
    .line 418
    const/high16 v13, 0x40000

    .line 419
    .line 420
    and-int/2addr v9, v13

    .line 421
    if-eqz v9, :cond_11

    .line 422
    .line 423
    move v9, v2

    .line 424
    goto :goto_e

    .line 425
    :cond_11
    move v9, v12

    .line 426
    :goto_e
    iput-boolean v9, v8, Landroid/view/WindowInfo;->hasFlagWatchOutsideTouch:Z

    .line 427
    .line 428
    iget-boolean v9, v10, Lcom/android/server/wm/WindowState;->mIsChildWindow:Z

    .line 429
    .line 430
    if-eqz v9, :cond_12

    .line 431
    .line 432
    invoke-virtual {v10}, Lcom/android/server/wm/WindowState;->getParentWindow()Lcom/android/server/wm/WindowState;

    .line 433
    .line 434
    .line 435
    move-result-object v9

    .line 436
    iget-object v9, v9, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    .line 437
    .line 438
    invoke-interface {v9}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    .line 439
    .line 440
    .line 441
    move-result-object v9

    .line 442
    iput-object v9, v8, Landroid/view/WindowInfo;->parentToken:Landroid/os/IBinder;

    .line 443
    .line 444
    :cond_12
    iget-object v9, v10, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 445
    .line 446
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    .line 447
    .line 448
    .line 449
    move-result v9

    .line 450
    if-lez v9, :cond_16

    .line 451
    .line 452
    iget-object v13, v8, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    .line 453
    .line 454
    if-nez v13, :cond_13

    .line 455
    .line 456
    new-instance v13, Ljava/util/ArrayList;

    .line 457
    .line 458
    invoke-direct {v13, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 459
    .line 460
    .line 461
    iput-object v13, v8, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    .line 462
    .line 463
    :cond_13
    move v13, v12

    .line 464
    :goto_f
    if-ge v13, v9, :cond_16

    .line 465
    .line 466
    iget-object v14, v10, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 467
    .line 468
    invoke-virtual {v14, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 469
    .line 470
    .line 471
    move-result-object v14

    .line 472
    check-cast v14, Lcom/android/server/wm/WindowState;

    .line 473
    .line 474
    iget-object v15, v8, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    .line 475
    .line 476
    iget-object v14, v14, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    .line 477
    .line 478
    invoke-interface {v14}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    .line 479
    .line 480
    .line 481
    move-result-object v14

    .line 482
    invoke-interface {v15, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 483
    .line 484
    .line 485
    add-int/lit8 v13, v13, 0x1

    .line 486
    .line 487
    goto :goto_f

    .line 488
    :cond_14
    invoke-static {}, Landroid/view/WindowInfo;->obtain()Landroid/view/WindowInfo;

    .line 489
    .line 490
    .line 491
    move-result-object v8

    .line 492
    iget v9, v11, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->mDisplayId:I

    .line 493
    .line 494
    iput v9, v8, Landroid/view/WindowInfo;->displayId:I

    .line 495
    .line 496
    iget v9, v11, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->mType:I

    .line 497
    .line 498
    iput v9, v8, Landroid/view/WindowInfo;->type:I

    .line 499
    .line 500
    iget-object v9, v11, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->mWindow:Landroid/os/IBinder;

    .line 501
    .line 502
    iput-object v9, v8, Landroid/view/WindowInfo;->token:Landroid/os/IBinder;

    .line 503
    .line 504
    iget v9, v11, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->mInputConfig:I

    .line 505
    .line 506
    and-int/lit16 v9, v9, 0x200

    .line 507
    .line 508
    if-eqz v9, :cond_15

    .line 509
    .line 510
    move v9, v2

    .line 511
    goto :goto_10

    .line 512
    :cond_15
    move v9, v12

    .line 513
    :goto_10
    iput-boolean v9, v8, Landroid/view/WindowInfo;->hasFlagWatchOutsideTouch:Z

    .line 514
    .line 515
    iget-boolean v9, v11, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->mIsPIPMenu:Z

    .line 516
    .line 517
    iput-boolean v9, v8, Landroid/view/WindowInfo;->inPictureInPicture:Z

    .line 518
    .line 519
    :cond_16
    iput-object v8, v11, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->mWindowInfo:Landroid/view/WindowInfo;

    .line 520
    .line 521
    new-instance v8, Landroid/graphics/Matrix;

    .line 522
    .line 523
    invoke-direct {v8}, Landroid/graphics/Matrix;-><init>()V

    .line 524
    .line 525
    .line 526
    iget-object v7, v7, Landroid/view/InputWindowHandle;->transform:Landroid/graphics/Matrix;

    .line 527
    .line 528
    invoke-virtual {v7, v8}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 529
    .line 530
    .line 531
    invoke-virtual {v8, v4}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 532
    .line 533
    .line 534
    iget-object v7, v11, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->mWindowInfo:Landroid/view/WindowInfo;

    .line 535
    .line 536
    iget-object v7, v7, Landroid/view/WindowInfo;->mTransformMatrix:[F

    .line 537
    .line 538
    invoke-virtual {v8, v7}, Landroid/graphics/Matrix;->getValues([F)V

    .line 539
    .line 540
    .line 541
    new-instance v7, Landroid/graphics/Matrix;

    .line 542
    .line 543
    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    .line 544
    .line 545
    .line 546
    iget-boolean v8, v11, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->mShouldMagnify:Z

    .line 547
    .line 548
    if-eqz v8, :cond_18

    .line 549
    .line 550
    invoke-virtual {v3}, Landroid/graphics/Matrix;->isIdentity()Z

    .line 551
    .line 552
    .line 553
    move-result v8

    .line 554
    if-nez v8, :cond_18

    .line 555
    .line 556
    invoke-virtual {v3, v7}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 557
    .line 558
    .line 559
    move-result v8

    .line 560
    if-eqz v8, :cond_17

    .line 561
    .line 562
    sget-object v8, Lcom/android/server/wm/AccessibilityWindowsPopulator;->sTempFloats:[F

    .line 563
    .line 564
    invoke-virtual {v7, v8}, Landroid/graphics/Matrix;->getValues([F)V

    .line 565
    .line 566
    .line 567
    iget-object v7, v11, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->mWindowInfo:Landroid/view/WindowInfo;

    .line 568
    .line 569
    iget-object v7, v7, Landroid/view/WindowInfo;->mMagnificationSpec:Landroid/view/MagnificationSpec;

    .line 570
    .line 571
    aget v9, v8, v12

    .line 572
    .line 573
    iput v9, v7, Landroid/view/MagnificationSpec;->scale:F

    .line 574
    .line 575
    const/4 v9, 0x2

    .line 576
    aget v9, v8, v9

    .line 577
    .line 578
    iput v9, v7, Landroid/view/MagnificationSpec;->offsetX:F

    .line 579
    .line 580
    const/4 v9, 0x5

    .line 581
    aget v8, v8, v9

    .line 582
    .line 583
    iput v8, v7, Landroid/view/MagnificationSpec;->offsetY:F

    .line 584
    .line 585
    goto :goto_11

    .line 586
    :cond_17
    const-string v7, "AccessibilityWindowsPopulator"

    .line 587
    .line 588
    const-string v8, "can\'t find spec"

    .line 589
    .line 590
    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    .line 592
    .line 593
    :cond_18
    :goto_11
    invoke-static {}, Lcom/android/server/accessibility/Flags;->computeWindowChangesOnA11yV2()Z

    .line 594
    .line 595
    .line 596
    if-eqz v10, :cond_1a

    .line 597
    .line 598
    iget v7, v11, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->mType:I

    .line 599
    .line 600
    const/16 v8, 0x7e3

    .line 601
    .line 602
    if-eq v7, v8, :cond_19

    .line 603
    .line 604
    goto :goto_12

    .line 605
    :cond_19
    iget-object v7, v11, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->mTouchableRegionInScreen:Landroid/graphics/Region;

    .line 606
    .line 607
    invoke-virtual {v7}, Landroid/graphics/Region;->isEmpty()Z

    .line 608
    .line 609
    .line 610
    move-result v12

    .line 611
    :goto_12
    if-eqz v12, :cond_1a

    .line 612
    .line 613
    invoke-virtual {v10}, Lcom/android/server/wm/WindowContainer;->getControllableInsetProvider()Lcom/android/server/wm/InsetsSourceProvider;

    .line 614
    .line 615
    .line 616
    move-result-object v7

    .line 617
    if-eqz v7, :cond_1a

    .line 618
    .line 619
    iget-object v7, v7, Lcom/android/server/wm/InsetsSourceProvider;->mSource:Landroid/view/InsetsSource;

    .line 620
    .line 621
    invoke-virtual {v7}, Landroid/view/InsetsSource;->getFrame()Landroid/graphics/Rect;

    .line 622
    .line 623
    .line 624
    move-result-object v7

    .line 625
    iput-object v7, v11, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->mSystemBarInsetFrame:Landroid/graphics/Rect;

    .line 626
    .line 627
    :cond_1a
    move-object/from16 v7, p2

    .line 628
    .line 629
    check-cast v7, Ljava/util/ArrayList;

    .line 630
    .line 631
    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 632
    .line 633
    .line 634
    goto/16 :goto_2

    .line 635
    .line 636
    :cond_1b
    return-void

    .line 637
    :goto_13
    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 638
    throw v0
.end method

.method public final releaseResources()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mInputWindowHandlesOnDisplays:Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mMagnificationSpecInverseMatrix:Landroid/util/SparseArray;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mVisibleWindows:Ljava/util/List;

    .line 12
    .line 13
    check-cast v0, Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mDisplayInfos:Landroid/util/SparseArray;

    .line 19
    .line 20
    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mCurrentMagnificationSpec:Landroid/util/SparseArray;

    .line 24
    .line 25
    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mPreviousMagnificationSpec:Landroid/util/SparseArray;

    .line 29
    .line 30
    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mWindowsTransformMatrixMap:Ljava/util/Map;

    .line 34
    .line 35
    check-cast v0, Ljava/util/HashMap;

    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 38
    .line 39
    .line 40
    const/4 v0, 0x0

    .line 41
    iput-boolean v0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mWindowsNotificationEnabled:Z

    .line 42
    .line 43
    iget-object p0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mHandler:Lcom/android/server/wm/AccessibilityWindowsPopulator$MyHandler;

    .line 44
    .line 45
    const/4 v0, 0x0

    .line 46
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    return-void
.end method

.method public final setWindowsNotification(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mWindowsNotificationEnabled:Z

    .line 5
    .line 6
    if-ne v1, p1, :cond_0

    .line 7
    .line 8
    monitor-exit v0

    .line 9
    return-void

    .line 10
    :catchall_0
    move-exception p0

    .line 11
    goto :goto_1

    .line 12
    :cond_0
    iput-boolean p1, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mWindowsNotificationEnabled:Z

    .line 13
    .line 14
    if-eqz p1, :cond_1

    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/window/WindowInfosListener;->register()Landroid/util/Pair;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    iget-object v1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast v1, [Landroid/view/InputWindowHandle;

    .line 23
    .line 24
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast p1, [Landroid/window/WindowInfosListener$DisplayInfo;

    .line 27
    .line 28
    invoke-virtual {p0, v1, p1}, Lcom/android/server/wm/AccessibilityWindowsPopulator;->onWindowInfosChangedInternal([Landroid/view/InputWindowHandle;[Landroid/window/WindowInfosListener$DisplayInfo;)V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    invoke-virtual {p0}, Landroid/window/WindowInfosListener;->unregister()V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Lcom/android/server/wm/AccessibilityWindowsPopulator;->releaseResources()V

    .line 36
    .line 37
    .line 38
    :goto_0
    monitor-exit v0

    .line 39
    return-void

    .line 40
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    throw p0
.end method
