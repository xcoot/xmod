.class public final Lcom/android/server/wm/AccessibilityController;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final EMPTY_RECT:Landroid/graphics/Rect;

.field public static final STATIC_LOCK:Ljava/lang/Object;

.field public static final sTempFloats:[F


# instance fields
.field public final mAccessibilityTracing:Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;

.field public final mAccessibilityWindowsPopulator:Lcom/android/server/wm/AccessibilityWindowsPopulator;

.field public mAllObserversInitialized:Z

.field public final mDisplayMagnifiers:Landroid/util/SparseArray;

.field public mFocusedDisplay:I

.field public final mFocusedWindow:Landroid/util/SparseArray;

.field public final mIsImeVisibleArray:Landroid/util/SparseBooleanArray;

.field public final mService:Lcom/android/server/wm/WindowManagerService;

.field public final mWindowsForAccessibilityObserver:Landroid/util/SparseArray;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/android/server/wm/AccessibilityController;->STATIC_LOCK:Ljava/lang/Object;

    .line 7
    .line 8
    new-instance v0, Landroid/graphics/Rect;

    .line 9
    .line 10
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/android/server/wm/AccessibilityController;->EMPTY_RECT:Landroid/graphics/Rect;

    .line 14
    .line 15
    const/16 v0, 0x9

    .line 16
    .line 17
    new-array v0, v0, [F

    .line 18
    .line 19
    sput-object v0, Lcom/android/server/wm/AccessibilityController;->sTempFloats:[F

    .line 20
    .line 21
    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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
    iput-object v0, p0, Lcom/android/server/wm/AccessibilityController;->mDisplayMagnifiers:Landroid/util/SparseArray;

    .line 10
    .line 11
    new-instance v0, Landroid/util/SparseArray;

    .line 12
    .line 13
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/server/wm/AccessibilityController;->mWindowsForAccessibilityObserver:Landroid/util/SparseArray;

    .line 17
    .line 18
    new-instance v0, Landroid/util/SparseArray;

    .line 19
    .line 20
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/android/server/wm/AccessibilityController;->mFocusedWindow:Landroid/util/SparseArray;

    .line 24
    .line 25
    const/4 v0, -0x1

    .line 26
    iput v0, p0, Lcom/android/server/wm/AccessibilityController;->mFocusedDisplay:I

    .line 27
    .line 28
    new-instance v0, Landroid/util/SparseBooleanArray;

    .line 29
    .line 30
    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 31
    .line 32
    .line 33
    iput-object v0, p0, Lcom/android/server/wm/AccessibilityController;->mIsImeVisibleArray:Landroid/util/SparseBooleanArray;

    .line 34
    .line 35
    const/4 v0, 0x1

    .line 36
    iput-boolean v0, p0, Lcom/android/server/wm/AccessibilityController;->mAllObserversInitialized:Z

    .line 37
    .line 38
    iput-object p1, p0, Lcom/android/server/wm/AccessibilityController;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 39
    .line 40
    invoke-static {p1}, Lcom/android/server/wm/AccessibilityController;->getAccessibilityControllerInternal(Lcom/android/server/wm/WindowManagerService;)Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    iput-object v0, p0, Lcom/android/server/wm/AccessibilityController;->mAccessibilityTracing:Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;

    .line 45
    .line 46
    new-instance v0, Lcom/android/server/wm/AccessibilityWindowsPopulator;

    .line 47
    .line 48
    invoke-direct {v0, p1, p0}, Lcom/android/server/wm/AccessibilityWindowsPopulator;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/AccessibilityController;)V

    .line 49
    .line 50
    .line 51
    iput-object v0, p0, Lcom/android/server/wm/AccessibilityController;->mAccessibilityWindowsPopulator:Lcom/android/server/wm/AccessibilityWindowsPopulator;

    .line 52
    .line 53
    return-void
.end method

.method public static getAccessibilityControllerInternal(Lcom/android/server/wm/WindowManagerService;)Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;
    .locals 2

    .line 1
    sget-object v0, Lcom/android/server/wm/AccessibilityController;->STATIC_LOCK:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;->sInstance:Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    new-instance v1, Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;

    .line 9
    .line 10
    invoke-direct {v1, p0}, Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    .line 11
    .line 12
    .line 13
    sput-object v1, Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;->sInstance:Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    goto :goto_1

    .line 18
    :cond_0
    :goto_0
    sget-object p0, Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;->sInstance:Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;

    .line 19
    .line 20
    monitor-exit v0

    .line 21
    return-object p0

    .line 22
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    throw p0
.end method


# virtual methods
.method public forceShowMagnifierSurface(I)Landroid/view/Surface;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/AccessibilityController;->mDisplayMagnifiers:Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    .line 8
    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    iget-object p0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mMagnifiedViewport:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;

    .line 12
    .line 13
    iget-object p1, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mWindow:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;

    .line 14
    .line 15
    const/16 v0, 0xff

    .line 16
    .line 17
    invoke-virtual {p1, v0}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;->setAlpha(I)V

    .line 18
    .line 19
    .line 20
    iget-object p0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mWindow:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;

    .line 21
    .line 22
    iget-object p0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;->mSurface:Landroid/view/Surface;

    .line 23
    .line 24
    return-object p0

    .line 25
    :cond_0
    const/4 p0, 0x0

    .line 26
    return-object p0
.end method

.method public final getMagnificationRegion(ILandroid/graphics/Region;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController;->mAccessibilityTracing:Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;

    .line 2
    .line 3
    const-wide/16 v1, 0x800

    .line 4
    .line 5
    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;->isTracingEnabled(J)Z

    .line 6
    .line 7
    .line 8
    move-result v3

    .line 9
    const-string/jumbo v4, "}"

    .line 10
    .line 11
    .line 12
    if-eqz v3, :cond_0

    .line 13
    .line 14
    new-instance v3, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    const-string v5, "displayId="

    .line 17
    .line 18
    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string v5, "; outMagnificationRegion={"

    .line 25
    .line 26
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    const-string v5, "AccessibilityController.getMagnificationRegion"

    .line 40
    .line 41
    invoke-virtual {v0, v5, v1, v2, v3}, Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;->logTrace(Ljava/lang/String;JLjava/lang/String;)V

    .line 42
    .line 43
    .line 44
    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/AccessibilityController;->mDisplayMagnifiers:Landroid/util/SparseArray;

    .line 45
    .line 46
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    check-cast p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    .line 51
    .line 52
    if-eqz p0, :cond_2

    .line 53
    .line 54
    iget-object p1, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mAccessibilityTracing:Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;

    .line 55
    .line 56
    invoke-virtual {p1, v1, v2}, Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;->isTracingEnabled(J)Z

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    if-eqz v0, :cond_1

    .line 61
    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    .line 63
    .line 64
    const-string/jumbo v3, "outMagnificationRegion={"

    .line 65
    .line 66
    .line 67
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    const-string v3, "WindowManager.getMagnificationRegion"

    .line 81
    .line 82
    invoke-virtual {p1, v3, v1, v2, v0}, Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;->logTrace(Ljava/lang/String;JLjava/lang/String;)V

    .line 83
    .line 84
    .line 85
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->recomputeBounds()V

    .line 86
    .line 87
    .line 88
    iget-object p0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mMagnificationRegion:Landroid/graphics/Region;

    .line 89
    .line 90
    invoke-virtual {p2, p0}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    .line 91
    .line 92
    .line 93
    :cond_2
    return-void
.end method

.method public final getMagnificationSpecForWindow(Lcom/android/server/wm/WindowState;)Landroid/view/MagnificationSpec;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController;->mAccessibilityTracing:Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;

    .line 2
    .line 3
    const-wide/16 v1, 0x800

    .line 4
    .line 5
    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;->isTracingEnabled(J)Z

    .line 6
    .line 7
    .line 8
    move-result v3

    .line 9
    const-string/jumbo v4, "}"

    .line 10
    .line 11
    .line 12
    const-string/jumbo v5, "windowState={"

    .line 13
    .line 14
    .line 15
    if-eqz v3, :cond_0

    .line 16
    .line 17
    new-instance v3, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    const-string v6, "AccessibilityController.getMagnificationSpecForWindow"

    .line 33
    .line 34
    invoke-virtual {v0, v6, v1, v2, v3}, Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;->logTrace(Ljava/lang/String;JLjava/lang/String;)V

    .line 35
    .line 36
    .line 37
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    iget-object p0, p0, Lcom/android/server/wm/AccessibilityController;->mDisplayMagnifiers:Landroid/util/SparseArray;

    .line 42
    .line 43
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    check-cast p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    .line 48
    .line 49
    const/4 v0, 0x0

    .line 50
    if-eqz p0, :cond_3

    .line 51
    .line 52
    iget-object v3, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mAccessibilityTracing:Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;

    .line 53
    .line 54
    invoke-virtual {v3, v1, v2}, Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;->isTracingEnabled(J)Z

    .line 55
    .line 56
    .line 57
    move-result v6

    .line 58
    if-eqz v6, :cond_1

    .line 59
    .line 60
    new-instance v6, Ljava/lang/StringBuilder;

    .line 61
    .line 62
    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v4

    .line 75
    const-string v5, "WindowManager.getMagnificationSpecForWindow"

    .line 76
    .line 77
    invoke-virtual {v3, v5, v1, v2, v4}, Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;->logTrace(Ljava/lang/String;JLjava/lang/String;)V

    .line 78
    .line 79
    .line 80
    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mMagnificationSpec:Landroid/view/MagnificationSpec;

    .line 81
    .line 82
    if-eqz v1, :cond_2

    .line 83
    .line 84
    invoke-virtual {v1}, Landroid/view/MagnificationSpec;->isNop()Z

    .line 85
    .line 86
    .line 87
    move-result v1

    .line 88
    if-nez v1, :cond_2

    .line 89
    .line 90
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->shouldMagnify()Z

    .line 91
    .line 92
    .line 93
    move-result p1

    .line 94
    if-nez p1, :cond_2

    .line 95
    .line 96
    goto :goto_0

    .line 97
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mMagnificationSpec:Landroid/view/MagnificationSpec;

    .line 98
    .line 99
    :cond_3
    :goto_0
    return-object v0
.end method

.method public final hasCallbacks()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController;->mAccessibilityTracing:Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;

    .line 2
    .line 3
    const-wide/16 v1, 0xc00

    .line 4
    .line 5
    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;->isTracingEnabled(J)Z

    .line 6
    .line 7
    .line 8
    move-result v3

    .line 9
    if-eqz v3, :cond_0

    .line 10
    .line 11
    const-string v3, "AccessibilityController.hasCallbacks"

    .line 12
    .line 13
    invoke-virtual {v0, v3, v1, v2}, Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;->logTrace(Ljava/lang/String;J)V

    .line 14
    .line 15
    .line 16
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController;->mDisplayMagnifiers:Landroid/util/SparseArray;

    .line 17
    .line 18
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-gtz v0, :cond_2

    .line 23
    .line 24
    iget-object p0, p0, Lcom/android/server/wm/AccessibilityController;->mWindowsForAccessibilityObserver:Landroid/util/SparseArray;

    .line 25
    .line 26
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    .line 27
    .line 28
    .line 29
    move-result p0

    .line 30
    if-lez p0, :cond_1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    const/4 p0, 0x0

    .line 34
    goto :goto_1

    .line 35
    :cond_2
    :goto_0
    const/4 p0, 0x1

    .line 36
    :goto_1
    return p0
.end method

.method public final onFocusChanged(Lcom/android/server/wm/InputTarget;Lcom/android/server/wm/InputTarget;)V
    .locals 2

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController;->mFocusedWindow:Landroid/util/SparseArray;

    .line 4
    .line 5
    invoke-interface {p1}, Lcom/android/server/wm/InputTarget;->getDisplayId()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController;->mDisplayMagnifiers:Landroid/util/SparseArray;

    .line 13
    .line 14
    invoke-interface {p1}, Lcom/android/server/wm/InputTarget;->getDisplayId()I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    check-cast p1, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    .line 23
    .line 24
    if-eqz p1, :cond_1

    .line 25
    .line 26
    invoke-virtual {p1}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->isFullscreenMagnificationActivated()Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-nez v0, :cond_0

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    iget-object p1, p1, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mUserContextChangedNotifier:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$UserContextChangedNotifier;

    .line 34
    .line 35
    iget-boolean v0, p1, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$UserContextChangedNotifier;->mHasDelayedNotificationForRecentsToFrontTransition:Z

    .line 36
    .line 37
    if-eqz v0, :cond_1

    .line 38
    .line 39
    invoke-virtual {p1}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$UserContextChangedNotifier;->sendUserContextChangedNotification()V

    .line 40
    .line 41
    .line 42
    :cond_1
    :goto_0
    if-eqz p2, :cond_2

    .line 43
    .line 44
    invoke-interface {p2}, Lcom/android/server/wm/InputTarget;->getDisplayId()I

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    invoke-interface {p2}, Lcom/android/server/wm/InputTarget;->getWindowToken()Landroid/os/IBinder;

    .line 49
    .line 50
    .line 51
    move-result-object p2

    .line 52
    iget-object p0, p0, Lcom/android/server/wm/AccessibilityController;->mFocusedWindow:Landroid/util/SparseArray;

    .line 53
    .line 54
    invoke-virtual {p0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    :cond_2
    return-void
.end method

.method public final varargs onSomeWindowResizedOrMovedWithCallingUid(I[I)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController;->mAccessibilityTracing:Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;

    .line 2
    .line 3
    const-wide/16 v1, 0x400

    .line 4
    .line 5
    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;->isTracingEnabled(J)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const-string v1, "displayIds={"

    .line 14
    .line 15
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-static {p2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string/jumbo v1, "}"

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v6

    .line 35
    const-string v0, ""

    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    .line 38
    .line 39
    .line 40
    move-result-object v7

    .line 41
    const-string v3, "AccessibilityController.onSomeWindowResizedOrMoved"

    .line 42
    .line 43
    const-wide/16 v4, 0x400

    .line 44
    .line 45
    iget-object v2, p0, Lcom/android/server/wm/AccessibilityController;->mAccessibilityTracing:Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;

    .line 46
    .line 47
    move v8, p1

    .line 48
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;->logTrace(Ljava/lang/String;JLjava/lang/String;[BI)V

    .line 49
    .line 50
    .line 51
    :cond_0
    const/4 p1, 0x0

    .line 52
    :goto_0
    array-length v0, p2

    .line 53
    if-ge p1, v0, :cond_2

    .line 54
    .line 55
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController;->mWindowsForAccessibilityObserver:Landroid/util/SparseArray;

    .line 56
    .line 57
    aget v1, p2, p1

    .line 58
    .line 59
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    check-cast v0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;

    .line 64
    .line 65
    if-eqz v0, :cond_1

    .line 66
    .line 67
    invoke-virtual {v0}, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->scheduleComputeChangedWindows()V

    .line 68
    .line 69
    .line 70
    :cond_1
    add-int/lit8 p1, p1, 0x1

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_2
    return-void
.end method

.method public final onWMTransition(III)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController;->mAccessibilityTracing:Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;

    .line 2
    .line 3
    const-wide/16 v1, 0x800

    .line 4
    .line 5
    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;->isTracingEnabled(J)Z

    .line 6
    .line 7
    .line 8
    move-result v3

    .line 9
    const-string v4, "; flags="

    .line 10
    .line 11
    const-string v5, "; type="

    .line 12
    .line 13
    const-string v6, "displayId="

    .line 14
    .line 15
    if-eqz v3, :cond_0

    .line 16
    .line 17
    invoke-static {p1, p2, v6, v5, v4}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    const-string v7, "AccessibilityController.onWMTransition"

    .line 29
    .line 30
    invoke-virtual {v0, v7, v1, v2, v3}, Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;->logTrace(Ljava/lang/String;JLjava/lang/String;)V

    .line 31
    .line 32
    .line 33
    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/AccessibilityController;->mDisplayMagnifiers:Landroid/util/SparseArray;

    .line 34
    .line 35
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    check-cast p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    .line 40
    .line 41
    if-eqz p0, :cond_5

    .line 42
    .line 43
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mAccessibilityTracing:Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;

    .line 44
    .line 45
    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;->isTracingEnabled(J)Z

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    if-eqz v3, :cond_1

    .line 50
    .line 51
    invoke-static {p1, p2, v6, v5, v4}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    const-string v3, "WindowManager.onWMTransition"

    .line 63
    .line 64
    invoke-virtual {v0, v3, v1, v2, p1}, Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;->logTrace(Ljava/lang/String;JLjava/lang/String;)V

    .line 65
    .line 66
    .line 67
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->isFullscreenMagnificationActivated()Z

    .line 68
    .line 69
    .line 70
    move-result p1

    .line 71
    if-nez p1, :cond_2

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_2
    const/4 p1, 0x3

    .line 75
    const/4 v0, 0x1

    .line 76
    if-eq p2, v0, :cond_3

    .line 77
    .line 78
    const/4 v1, 0x2

    .line 79
    if-eq p2, v1, :cond_3

    .line 80
    .line 81
    if-eq p2, p1, :cond_3

    .line 82
    .line 83
    const/4 v1, 0x4

    .line 84
    if-eq p2, v1, :cond_3

    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_3
    iget-object p0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mUserContextChangedNotifier:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$UserContextChangedNotifier;

    .line 88
    .line 89
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 90
    .line 91
    .line 92
    invoke-static {}, Lcom/android/window/flags/Flags;->delayNotificationToMagnificationWhenRecentsWindowToFrontTransition()Z

    .line 93
    .line 94
    .line 95
    move-result v1

    .line 96
    if-eqz v1, :cond_4

    .line 97
    .line 98
    if-ne p2, p1, :cond_4

    .line 99
    .line 100
    and-int/lit16 p1, p3, 0x80

    .line 101
    .line 102
    if-eqz p1, :cond_4

    .line 103
    .line 104
    iput-boolean v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$UserContextChangedNotifier;->mHasDelayedNotificationForRecentsToFrontTransition:Z

    .line 105
    .line 106
    goto :goto_0

    .line 107
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$UserContextChangedNotifier;->sendUserContextChangedNotification()V

    .line 108
    .line 109
    .line 110
    :cond_5
    :goto_0
    return-void
.end method

.method public final onWindowTransition(Lcom/android/server/wm/WindowState;I)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController;->mAccessibilityTracing:Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;

    .line 2
    .line 3
    const-wide/16 v1, 0xc00

    .line 4
    .line 5
    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;->isTracingEnabled(J)Z

    .line 6
    .line 7
    .line 8
    move-result v3

    .line 9
    const-string/jumbo v4, "}; transition="

    .line 10
    .line 11
    .line 12
    const-string/jumbo v5, "windowState={"

    .line 13
    .line 14
    .line 15
    if-eqz v3, :cond_0

    .line 16
    .line 17
    new-instance v3, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    const-string v6, "AccessibilityController.onWindowTransition"

    .line 36
    .line 37
    invoke-virtual {v0, v6, v1, v2, v3}, Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;->logTrace(Ljava/lang/String;JLjava/lang/String;)V

    .line 38
    .line 39
    .line 40
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    iget-object p0, p0, Lcom/android/server/wm/AccessibilityController;->mDisplayMagnifiers:Landroid/util/SparseArray;

    .line 45
    .line 46
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    check-cast p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    .line 51
    .line 52
    if-eqz p0, :cond_6

    .line 53
    .line 54
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mAccessibilityTracing:Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;

    .line 55
    .line 56
    const-wide/16 v1, 0x800

    .line 57
    .line 58
    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;->isTracingEnabled(J)Z

    .line 59
    .line 60
    .line 61
    move-result v3

    .line 62
    if-eqz v3, :cond_1

    .line 63
    .line 64
    new-instance v3, Ljava/lang/StringBuilder;

    .line 65
    .line 66
    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v3

    .line 82
    const-string v4, "WindowManager.onWindowTransition"

    .line 83
    .line 84
    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;->logTrace(Ljava/lang/String;JLjava/lang/String;)V

    .line 85
    .line 86
    .line 87
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->isFullscreenMagnificationActivated()Z

    .line 88
    .line 89
    .line 90
    move-result v0

    .line 91
    if-eqz v0, :cond_6

    .line 92
    .line 93
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->shouldMagnify()Z

    .line 94
    .line 95
    .line 96
    move-result v0

    .line 97
    if-nez v0, :cond_2

    .line 98
    .line 99
    goto/16 :goto_0

    .line 100
    .line 101
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mUserContextChangedNotifier:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$UserContextChangedNotifier;

    .line 102
    .line 103
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 104
    .line 105
    .line 106
    const/4 v1, 0x2

    .line 107
    if-ne p2, v1, :cond_3

    .line 108
    .line 109
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHomeOrRecents()Z

    .line 110
    .line 111
    .line 112
    move-result v2

    .line 113
    if-eqz v2, :cond_3

    .line 114
    .line 115
    iget-boolean v2, v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$UserContextChangedNotifier;->mHasDelayedNotificationForRecentsToFrontTransition:Z

    .line 116
    .line 117
    if-eqz v2, :cond_3

    .line 118
    .line 119
    const/4 v2, 0x0

    .line 120
    iput-boolean v2, v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$UserContextChangedNotifier;->mHasDelayedNotificationForRecentsToFrontTransition:Z

    .line 121
    .line 122
    :cond_3
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 123
    .line 124
    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 125
    .line 126
    const/4 v2, 0x1

    .line 127
    if-eq p2, v2, :cond_4

    .line 128
    .line 129
    const/4 v2, 0x3

    .line 130
    if-eq p2, v2, :cond_4

    .line 131
    .line 132
    goto :goto_0

    .line 133
    :cond_4
    if-eq v0, v1, :cond_5

    .line 134
    .line 135
    const/4 p2, 0x4

    .line 136
    if-eq v0, p2, :cond_5

    .line 137
    .line 138
    const/16 p2, 0x3ed

    .line 139
    .line 140
    if-eq v0, p2, :cond_5

    .line 141
    .line 142
    const/16 p2, 0x7e4

    .line 143
    .line 144
    if-eq v0, p2, :cond_5

    .line 145
    .line 146
    const/16 p2, 0x7e8

    .line 147
    .line 148
    if-eq v0, p2, :cond_5

    .line 149
    .line 150
    const/16 p2, 0x7f3

    .line 151
    .line 152
    if-eq v0, p2, :cond_5

    .line 153
    .line 154
    const/16 p2, 0x7f6

    .line 155
    .line 156
    if-eq v0, p2, :cond_5

    .line 157
    .line 158
    packed-switch v0, :pswitch_data_0

    .line 159
    .line 160
    .line 161
    packed-switch v0, :pswitch_data_1

    .line 162
    .line 163
    .line 164
    packed-switch v0, :pswitch_data_2

    .line 165
    .line 166
    .line 167
    goto :goto_0

    .line 168
    :cond_5
    :pswitch_0
    iget-object p2, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mTempRect2:Landroid/graphics/Rect;

    .line 169
    .line 170
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mMagnificationRegion:Landroid/graphics/Region;

    .line 171
    .line 172
    invoke-virtual {v0, p2}, Landroid/graphics/Region;->getBounds(Landroid/graphics/Rect;)Z

    .line 173
    .line 174
    .line 175
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mMagnificationSpec:Landroid/view/MagnificationSpec;

    .line 176
    .line 177
    iget v1, v0, Landroid/view/MagnificationSpec;->offsetX:F

    .line 178
    .line 179
    neg-float v1, v1

    .line 180
    float-to-int v1, v1

    .line 181
    iget v0, v0, Landroid/view/MagnificationSpec;->offsetY:F

    .line 182
    .line 183
    neg-float v0, v0

    .line 184
    float-to-int v0, v0

    .line 185
    invoke-virtual {p2, v1, v0}, Landroid/graphics/Rect;->offset(II)V

    .line 186
    .line 187
    .line 188
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mMagnificationSpec:Landroid/view/MagnificationSpec;

    .line 189
    .line 190
    iget v0, v0, Landroid/view/MagnificationSpec;->scale:F

    .line 191
    .line 192
    const/high16 v1, 0x3f800000    # 1.0f

    .line 193
    .line 194
    div-float/2addr v1, v0

    .line 195
    invoke-virtual {p2, v1}, Landroid/graphics/Rect;->scale(F)V

    .line 196
    .line 197
    .line 198
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mTempRect1:Landroid/graphics/Rect;

    .line 199
    .line 200
    iget-object v1, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mTempRegion1:Landroid/graphics/Region;

    .line 201
    .line 202
    invoke-virtual {p1, v1}, Lcom/android/server/wm/WindowState;->getTouchableRegion(Landroid/graphics/Region;)V

    .line 203
    .line 204
    .line 205
    iget-object p1, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mTempRegion1:Landroid/graphics/Region;

    .line 206
    .line 207
    invoke-virtual {p1, v0}, Landroid/graphics/Region;->getBounds(Landroid/graphics/Rect;)Z

    .line 208
    .line 209
    .line 210
    invoke-virtual {p2, v0}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    .line 211
    .line 212
    .line 213
    move-result p1

    .line 214
    if-nez p1, :cond_6

    .line 215
    .line 216
    iget p1, v0, Landroid/graphics/Rect;->left:I

    .line 217
    .line 218
    iget p2, v0, Landroid/graphics/Rect;->top:I

    .line 219
    .line 220
    iget v1, v0, Landroid/graphics/Rect;->right:I

    .line 221
    .line 222
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    .line 223
    .line 224
    iget-object p0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mCallbacks:Lcom/android/server/wm/WindowManagerInternal$MagnificationCallbacks;

    .line 225
    .line 226
    check-cast p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;

    .line 227
    .line 228
    invoke-virtual {p0, p1, p2, v1, v0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->onRectangleOnScreenRequested(IIII)V

    .line 229
    .line 230
    .line 231
    :cond_6
    :goto_0
    return-void

    .line 232
    nop

    .line 233
    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 234
    .line 235
    .line 236
    .line 237
    .line 238
    .line 239
    .line 240
    .line 241
    .line 242
    .line 243
    .line 244
    .line 245
    :pswitch_data_1
    .packed-switch 0x7d1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 246
    .line 247
    .line 248
    .line 249
    .line 250
    .line 251
    .line 252
    .line 253
    .line 254
    .line 255
    :pswitch_data_2
    .packed-switch 0x7d5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final performComputeChangedWindowsNot(IZ)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController;->mAccessibilityTracing:Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;

    .line 2
    .line 3
    const-wide/16 v1, 0x400

    .line 4
    .line 5
    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;->isTracingEnabled(J)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController;->mAccessibilityTracing:Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;

    .line 12
    .line 13
    const-string v3, "AccessibilityController.performComputeChangedWindowsNot"

    .line 14
    .line 15
    const-string v4, "displayId="

    .line 16
    .line 17
    const-string v5, "; forceSend="

    .line 18
    .line 19
    invoke-static {p1, v4, v5, p2}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v4

    .line 23
    invoke-virtual {v0, v3, v1, v2, v4}, Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;->logTrace(Ljava/lang/String;JLjava/lang/String;)V

    .line 24
    .line 25
    .line 26
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 27
    .line 28
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 29
    .line 30
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 31
    .line 32
    .line 33
    monitor-enter v0

    .line 34
    :try_start_0
    iget-object p0, p0, Lcom/android/server/wm/AccessibilityController;->mWindowsForAccessibilityObserver:Landroid/util/SparseArray;

    .line 35
    .line 36
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    check-cast p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;

    .line 41
    .line 42
    if-eqz p0, :cond_1

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    const/4 p0, 0x0

    .line 46
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 48
    .line 49
    .line 50
    if-eqz p0, :cond_2

    .line 51
    .line 52
    invoke-virtual {p0, p2}, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->performComputeChangedWindows(Z)V

    .line 53
    .line 54
    .line 55
    :cond_2
    return-void

    .line 56
    :catchall_0
    move-exception p0

    .line 57
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 58
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 59
    .line 60
    .line 61
    throw p0
.end method

.method public final recomputeMagnifiedRegionAndDrawMagnifiedRegionBorderIfNeeded(I)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController;->mAccessibilityTracing:Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;

    .line 2
    .line 3
    const-wide/16 v1, 0x800

    .line 4
    .line 5
    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;->isTracingEnabled(J)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController;->mAccessibilityTracing:Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;

    .line 12
    .line 13
    const-string v3, "displayId="

    .line 14
    .line 15
    invoke-static {p1, v3}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    const-string v4, "AccessibilityController.recomputeMagnifiedRegionAndDrawMagnifiedRegionBorderIfNeeded"

    .line 20
    .line 21
    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;->logTrace(Ljava/lang/String;JLjava/lang/String;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/AccessibilityController;->mDisplayMagnifiers:Landroid/util/SparseArray;

    .line 25
    .line 26
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    check-cast p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    .line 31
    .line 32
    if-eqz p0, :cond_2

    .line 33
    .line 34
    iget-object p1, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mAccessibilityTracing:Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;

    .line 35
    .line 36
    invoke-virtual {p1, v1, v2}, Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;->isTracingEnabled(J)Z

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    if-eqz p1, :cond_1

    .line 41
    .line 42
    iget-object p1, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mAccessibilityTracing:Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;

    .line 43
    .line 44
    const-string v0, "WindowManager.recomputeMagnifiedRegionAndDrawMagnifiedRegionBorderIfNeeded"

    .line 45
    .line 46
    invoke-virtual {p1, v0, v1, v2}, Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;->logTrace(Ljava/lang/String;J)V

    .line 47
    .line 48
    .line 49
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->recomputeBounds()V

    .line 50
    .line 51
    .line 52
    invoke-static {}, Lcom/android/window/flags/Flags;->alwaysDrawMagnificationFullscreenBorder()Z

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    if-nez p1, :cond_2

    .line 57
    .line 58
    iget-object p0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mMagnifiedViewport:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;

    .line 59
    .line 60
    iget-object p0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mWindow:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;

    .line 61
    .line 62
    iget-boolean p1, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;->mInvalidated:Z

    .line 63
    .line 64
    if-eqz p1, :cond_2

    .line 65
    .line 66
    iget-object p1, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;->this$1:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;

    .line 67
    .line 68
    iget-object p1, p1, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->this$0:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    .line 69
    .line 70
    iget-object p1, p1, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 71
    .line 72
    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mAnimationHandler:Landroid/os/Handler;

    .line 73
    .line 74
    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 75
    .line 76
    .line 77
    :cond_2
    return-void
.end method

.method public final setFullscreenMagnificationActivated(IZ)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController;->mAccessibilityTracing:Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;

    .line 2
    .line 3
    const-wide/16 v1, 0x800

    .line 4
    .line 5
    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;->isTracingEnabled(J)Z

    .line 6
    .line 7
    .line 8
    move-result v3

    .line 9
    if-eqz v3, :cond_0

    .line 10
    .line 11
    const-string v3, "displayId="

    .line 12
    .line 13
    const-string v4, "; activated="

    .line 14
    .line 15
    invoke-static {p1, v3, v4, p2}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    const-string v4, "AccessibilityController.setFullscreenMagnificationActivated"

    .line 20
    .line 21
    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;->logTrace(Ljava/lang/String;JLjava/lang/String;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/AccessibilityController;->mDisplayMagnifiers:Landroid/util/SparseArray;

    .line 25
    .line 26
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    check-cast p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    .line 31
    .line 32
    if-eqz p0, :cond_3

    .line 33
    .line 34
    iget-object p1, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mAccessibilityTracing:Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;

    .line 35
    .line 36
    invoke-virtual {p1, v1, v2}, Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;->isTracingEnabled(J)Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-eqz v0, :cond_1

    .line 41
    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    const-string v3, "activated="

    .line 45
    .line 46
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    const-string v3, "WindowManager.setFullscreenMagnificationActivated"

    .line 57
    .line 58
    invoke-virtual {p1, v3, v1, v2, v0}, Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;->logTrace(Ljava/lang/String;JLjava/lang/String;)V

    .line 59
    .line 60
    .line 61
    :cond_1
    iput-boolean p2, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mIsFullscreenMagnificationActivated:Z

    .line 62
    .line 63
    invoke-static {}, Lcom/android/window/flags/Flags;->alwaysDrawMagnificationFullscreenBorder()Z

    .line 64
    .line 65
    .line 66
    move-result p1

    .line 67
    if-nez p1, :cond_3

    .line 68
    .line 69
    const/4 p1, 0x1

    .line 70
    iget-object p0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mMagnifiedViewport:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;

    .line 71
    .line 72
    invoke-virtual {p0, p2, p1}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->setMagnifiedRegionBorderShown(ZZ)V

    .line 73
    .line 74
    .line 75
    iget-object p0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->this$0:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    .line 76
    .line 77
    iget-object p1, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mAccessibilityTracing:Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;

    .line 78
    .line 79
    invoke-virtual {p1, v1, v2}, Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;->isTracingEnabled(J)Z

    .line 80
    .line 81
    .line 82
    move-result p1

    .line 83
    if-eqz p1, :cond_2

    .line 84
    .line 85
    const-string p1, "WindowManager.showMagnificationBoundsIfNeeded"

    .line 86
    .line 87
    iget-object p2, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mAccessibilityTracing:Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;

    .line 88
    .line 89
    invoke-virtual {p2, p1, v1, v2}, Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;->logTrace(Ljava/lang/String;J)V

    .line 90
    .line 91
    .line 92
    :cond_2
    const/4 p1, 0x5

    .line 93
    iget-object p0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mHandler:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MyHandler;

    .line 94
    .line 95
    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 96
    .line 97
    .line 98
    move-result-object p0

    .line 99
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 100
    .line 101
    .line 102
    :cond_3
    return-void
.end method

.method public final setMagnificationCallbacks(ILcom/android/server/wm/WindowManagerInternal$MagnificationCallbacks;)Z
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController;->mAccessibilityTracing:Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;

    .line 2
    .line 3
    const-wide/16 v1, 0x800

    .line 4
    .line 5
    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;->isTracingEnabled(J)Z

    .line 6
    .line 7
    .line 8
    move-result v3

    .line 9
    if-eqz v3, :cond_0

    .line 10
    .line 11
    new-instance v3, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const-string v4, "displayId="

    .line 14
    .line 15
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string v4, "; callbacks={"

    .line 22
    .line 23
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string/jumbo v4, "}"

    .line 30
    .line 31
    .line 32
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    const-string v4, "AccessibilityController.setMagnificationCallbacks"

    .line 40
    .line 41
    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;->logTrace(Ljava/lang/String;JLjava/lang/String;)V

    .line 42
    .line 43
    .line 44
    :cond_0
    const/4 v0, 0x1

    .line 45
    if-eqz p2, :cond_3

    .line 46
    .line 47
    iget-object v1, p0, Lcom/android/server/wm/AccessibilityController;->mDisplayMagnifiers:Landroid/util/SparseArray;

    .line 48
    .line 49
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    if-nez v1, :cond_2

    .line 54
    .line 55
    iget-object v1, p0, Lcom/android/server/wm/AccessibilityController;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 56
    .line 57
    iget-object v2, v1, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    .line 58
    .line 59
    invoke-virtual {v2, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    const/4 v3, 0x0

    .line 64
    if-eqz v2, :cond_1

    .line 65
    .line 66
    iget-object v4, v2, Lcom/android/server/wm/DisplayContent;->mDisplay:Landroid/view/Display;

    .line 67
    .line 68
    if-eqz v4, :cond_1

    .line 69
    .line 70
    invoke-virtual {v4}, Landroid/view/Display;->getType()I

    .line 71
    .line 72
    .line 73
    move-result v5

    .line 74
    const/4 v6, 0x4

    .line 75
    if-eq v5, v6, :cond_1

    .line 76
    .line 77
    new-instance v5, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    .line 78
    .line 79
    invoke-direct {v5, v1, v2, v4, p2}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;Landroid/view/Display;Lcom/android/server/wm/WindowManagerInternal$MagnificationCallbacks;)V

    .line 80
    .line 81
    .line 82
    iget-object p2, p0, Lcom/android/server/wm/AccessibilityController;->mIsImeVisibleArray:Landroid/util/SparseBooleanArray;

    .line 83
    .line 84
    invoke-virtual {p2, p1, v3}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    .line 85
    .line 86
    .line 87
    move-result p2

    .line 88
    invoke-virtual {v5, p2}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->notifyImeWindowVisibilityChanged(Z)V

    .line 89
    .line 90
    .line 91
    iget-object p0, p0, Lcom/android/server/wm/AccessibilityController;->mDisplayMagnifiers:Landroid/util/SparseArray;

    .line 92
    .line 93
    invoke-virtual {p0, p1, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 94
    .line 95
    .line 96
    goto :goto_0

    .line 97
    :cond_1
    move v0, v3

    .line 98
    goto :goto_0

    .line 99
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 100
    .line 101
    const-string p1, "Magnification callbacks already set!"

    .line 102
    .line 103
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    throw p0

    .line 107
    :cond_3
    iget-object p2, p0, Lcom/android/server/wm/AccessibilityController;->mDisplayMagnifiers:Landroid/util/SparseArray;

    .line 108
    .line 109
    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object p2

    .line 113
    check-cast p2, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    .line 114
    .line 115
    if-eqz p2, :cond_6

    .line 116
    .line 117
    iget-object v3, p2, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mAccessibilityTracing:Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;

    .line 118
    .line 119
    invoke-virtual {v3, v1, v2}, Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;->isTracingEnabled(J)Z

    .line 120
    .line 121
    .line 122
    move-result v4

    .line 123
    if-eqz v4, :cond_4

    .line 124
    .line 125
    const-string v4, "WindowManager.destroy"

    .line 126
    .line 127
    invoke-virtual {v3, v4, v1, v2}, Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;->logTrace(Ljava/lang/String;J)V

    .line 128
    .line 129
    .line 130
    :cond_4
    invoke-static {}, Lcom/android/window/flags/Flags;->alwaysDrawMagnificationFullscreenBorder()Z

    .line 131
    .line 132
    .line 133
    move-result v1

    .line 134
    if-nez v1, :cond_5

    .line 135
    .line 136
    iget-object p2, p2, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mMagnifiedViewport:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;

    .line 137
    .line 138
    iget-object p2, p2, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mWindow:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;

    .line 139
    .line 140
    iget-object v1, p2, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;->mBlastBufferQueue:Landroid/graphics/BLASTBufferQueue;

    .line 141
    .line 142
    invoke-virtual {v1}, Landroid/graphics/BLASTBufferQueue;->destroy()V

    .line 143
    .line 144
    .line 145
    iget-object v1, p2, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;->this$1:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;

    .line 146
    .line 147
    iget-object v1, v1, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->this$0:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    .line 148
    .line 149
    iget-object v1, v1, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 150
    .line 151
    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAnimationHandler:Landroid/os/Handler;

    .line 152
    .line 153
    invoke-virtual {v1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 154
    .line 155
    .line 156
    :cond_5
    iget-object p0, p0, Lcom/android/server/wm/AccessibilityController;->mDisplayMagnifiers:Landroid/util/SparseArray;

    .line 157
    .line 158
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 159
    .line 160
    .line 161
    :goto_0
    return v0

    .line 162
    :cond_6
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 163
    .line 164
    const-string p1, "Magnification callbacks already cleared!"

    .line 165
    .line 166
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    throw p0
.end method

.method public final setMagnificationSpec(ILandroid/view/MagnificationSpec;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController;->mAccessibilityTracing:Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;

    .line 2
    .line 3
    const-wide/16 v1, 0xc00

    .line 4
    .line 5
    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;->isTracingEnabled(J)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController;->mAccessibilityTracing:Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;

    .line 12
    .line 13
    const-string v3, "AccessibilityController.setMagnificationSpec"

    .line 14
    .line 15
    new-instance v4, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    const-string v5, "displayId="

    .line 18
    .line 19
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v5, "; spec={"

    .line 26
    .line 27
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string/jumbo v5, "}"

    .line 34
    .line 35
    .line 36
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v4

    .line 43
    invoke-virtual {v0, v3, v1, v2, v4}, Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;->logTrace(Ljava/lang/String;JLjava/lang/String;)V

    .line 44
    .line 45
    .line 46
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController;->mAccessibilityWindowsPopulator:Lcom/android/server/wm/AccessibilityWindowsPopulator;

    .line 47
    .line 48
    iget-object v1, v0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mLock:Ljava/lang/Object;

    .line 49
    .line 50
    monitor-enter v1

    .line 51
    :try_start_0
    iget-object v2, v0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mCurrentMagnificationSpec:Landroid/util/SparseArray;

    .line 52
    .line 53
    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    check-cast v2, Landroid/view/MagnificationSpec;

    .line 58
    .line 59
    if-nez v2, :cond_1

    .line 60
    .line 61
    new-instance v2, Landroid/view/MagnificationSpec;

    .line 62
    .line 63
    invoke-direct {v2}, Landroid/view/MagnificationSpec;-><init>()V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v2, p2}, Landroid/view/MagnificationSpec;->setTo(Landroid/view/MagnificationSpec;)V

    .line 67
    .line 68
    .line 69
    iget-object v0, v0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mCurrentMagnificationSpec:Landroid/util/SparseArray;

    .line 70
    .line 71
    invoke-virtual {v0, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 72
    .line 73
    .line 74
    monitor-exit v1

    .line 75
    goto :goto_0

    .line 76
    :catchall_0
    move-exception p0

    .line 77
    goto/16 :goto_2

    .line 78
    .line 79
    :cond_1
    iget-object v3, v0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mPreviousMagnificationSpec:Landroid/util/SparseArray;

    .line 80
    .line 81
    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v3

    .line 85
    check-cast v3, Landroid/view/MagnificationSpec;

    .line 86
    .line 87
    if-nez v3, :cond_2

    .line 88
    .line 89
    new-instance v3, Landroid/view/MagnificationSpec;

    .line 90
    .line 91
    invoke-direct {v3}, Landroid/view/MagnificationSpec;-><init>()V

    .line 92
    .line 93
    .line 94
    iget-object v0, v0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mPreviousMagnificationSpec:Landroid/util/SparseArray;

    .line 95
    .line 96
    invoke-virtual {v0, p1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 97
    .line 98
    .line 99
    :cond_2
    invoke-virtual {v3, v2}, Landroid/view/MagnificationSpec;->setTo(Landroid/view/MagnificationSpec;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v2, p2}, Landroid/view/MagnificationSpec;->setTo(Landroid/view/MagnificationSpec;)V

    .line 103
    .line 104
    .line 105
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    :goto_0
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController;->mDisplayMagnifiers:Landroid/util/SparseArray;

    .line 107
    .line 108
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    check-cast v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    .line 113
    .line 114
    if-eqz v0, :cond_6

    .line 115
    .line 116
    iget-object v1, v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mAccessibilityTracing:Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;

    .line 117
    .line 118
    const-wide/16 v2, 0x800

    .line 119
    .line 120
    invoke-virtual {v1, v2, v3}, Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;->isTracingEnabled(J)Z

    .line 121
    .line 122
    .line 123
    move-result v4

    .line 124
    if-eqz v4, :cond_3

    .line 125
    .line 126
    new-instance v4, Ljava/lang/StringBuilder;

    .line 127
    .line 128
    const-string/jumbo v5, "spec={"

    .line 129
    .line 130
    .line 131
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    const-string/jumbo v5, "}"

    .line 138
    .line 139
    .line 140
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v4

    .line 147
    const-string v5, "WindowManager.setMagnificationSpec"

    .line 148
    .line 149
    invoke-virtual {v1, v5, v2, v3, v4}, Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;->logTrace(Ljava/lang/String;JLjava/lang/String;)V

    .line 150
    .line 151
    .line 152
    :cond_3
    if-eqz p2, :cond_4

    .line 153
    .line 154
    iget-object v1, v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mMagnificationSpec:Landroid/view/MagnificationSpec;

    .line 155
    .line 156
    iget v2, p2, Landroid/view/MagnificationSpec;->scale:F

    .line 157
    .line 158
    iget v3, p2, Landroid/view/MagnificationSpec;->offsetX:F

    .line 159
    .line 160
    iget v4, p2, Landroid/view/MagnificationSpec;->offsetY:F

    .line 161
    .line 162
    invoke-virtual {v1, v2, v3, v4}, Landroid/view/MagnificationSpec;->initialize(FFF)V

    .line 163
    .line 164
    .line 165
    goto :goto_1

    .line 166
    :cond_4
    iget-object v1, v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mMagnificationSpec:Landroid/view/MagnificationSpec;

    .line 167
    .line 168
    invoke-virtual {v1}, Landroid/view/MagnificationSpec;->clear()V

    .line 169
    .line 170
    .line 171
    :goto_1
    invoke-static {}, Lcom/android/window/flags/Flags;->alwaysDrawMagnificationFullscreenBorder()Z

    .line 172
    .line 173
    .line 174
    move-result v1

    .line 175
    if-nez v1, :cond_5

    .line 176
    .line 177
    iget-object v1, v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mMagnifiedViewport:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;

    .line 178
    .line 179
    iget-object v2, v1, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->this$0:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    .line 180
    .line 181
    iget-object v3, v2, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mHandler:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MyHandler;

    .line 182
    .line 183
    const/4 v4, 0x5

    .line 184
    invoke-virtual {v3, v4}, Landroid/os/Handler;->hasMessages(I)Z

    .line 185
    .line 186
    .line 187
    move-result v3

    .line 188
    if-nez v3, :cond_5

    .line 189
    .line 190
    invoke-virtual {v2}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->isFullscreenMagnificationActivated()Z

    .line 191
    .line 192
    .line 193
    move-result v2

    .line 194
    const/4 v3, 0x1

    .line 195
    invoke-virtual {v1, v2, v3}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->setMagnifiedRegionBorderShown(ZZ)V

    .line 196
    .line 197
    .line 198
    :cond_5
    invoke-virtual {v0}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->recomputeBounds()V

    .line 199
    .line 200
    .line 201
    iget-object v1, v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mDisplay:Landroid/view/Display;

    .line 202
    .line 203
    invoke-virtual {v1}, Landroid/view/Display;->getDisplayId()I

    .line 204
    .line 205
    .line 206
    move-result v1

    .line 207
    iget-object v0, v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 208
    .line 209
    invoke-virtual {v0, v1, p2}, Lcom/android/server/wm/WindowManagerService;->applyMagnificationSpecLocked(ILandroid/view/MagnificationSpec;)V

    .line 210
    .line 211
    .line 212
    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->scheduleAnimationLocked()V

    .line 213
    .line 214
    .line 215
    :cond_6
    iget-object p0, p0, Lcom/android/server/wm/AccessibilityController;->mWindowsForAccessibilityObserver:Landroid/util/SparseArray;

    .line 216
    .line 217
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 218
    .line 219
    .line 220
    move-result-object p0

    .line 221
    check-cast p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;

    .line 222
    .line 223
    if-eqz p0, :cond_7

    .line 224
    .line 225
    invoke-virtual {p0}, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->scheduleComputeChangedWindows()V

    .line 226
    .line 227
    .line 228
    :cond_7
    return-void

    .line 229
    :goto_2
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 230
    throw p0
.end method

.method public final setWindowsForAccessibilityCallback(ILcom/android/server/wm/WindowManagerInternal$WindowsForAccessibilityCallback;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController;->mAccessibilityTracing:Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;

    .line 2
    .line 3
    const-wide/16 v1, 0x400

    .line 4
    .line 5
    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;->isTracingEnabled(J)Z

    .line 6
    .line 7
    .line 8
    move-result v3

    .line 9
    if-eqz v3, :cond_0

    .line 10
    .line 11
    new-instance v3, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const-string v4, "displayId="

    .line 14
    .line 15
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string v4, "; callback={"

    .line 22
    .line 23
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string/jumbo v4, "}"

    .line 30
    .line 31
    .line 32
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    const-string v4, "AccessibilityController.setWindowsForAccessibilityCallback"

    .line 40
    .line 41
    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;->logTrace(Ljava/lang/String;JLjava/lang/String;)V

    .line 42
    .line 43
    .line 44
    :cond_0
    const-string v0, "AccessibilityController"

    .line 45
    .line 46
    const-string v1, "Windows for accessibility callback of display "

    .line 47
    .line 48
    iget-object v2, p0, Lcom/android/server/wm/AccessibilityController;->mAccessibilityWindowsPopulator:Lcom/android/server/wm/AccessibilityWindowsPopulator;

    .line 49
    .line 50
    if-eqz p2, :cond_3

    .line 51
    .line 52
    iget-object v3, p0, Lcom/android/server/wm/AccessibilityController;->mWindowsForAccessibilityObserver:Landroid/util/SparseArray;

    .line 53
    .line 54
    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    check-cast v3, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;

    .line 59
    .line 60
    if-eqz v3, :cond_2

    .line 61
    .line 62
    new-instance v3, Ljava/lang/StringBuilder;

    .line 63
    .line 64
    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    const-string v1, " already set!"

    .line 71
    .line 72
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    .line 81
    .line 82
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    .line 83
    .line 84
    if-nez v0, :cond_1

    .line 85
    .line 86
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController;->mWindowsForAccessibilityObserver:Landroid/util/SparseArray;

    .line 87
    .line 88
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 89
    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 93
    .line 94
    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    throw p0

    .line 98
    :cond_2
    :goto_0
    const/4 v0, 0x1

    .line 99
    invoke-virtual {v2, v0}, Lcom/android/server/wm/AccessibilityWindowsPopulator;->setWindowsNotification(Z)V

    .line 100
    .line 101
    .line 102
    new-instance v0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;

    .line 103
    .line 104
    iget-object v1, p0, Lcom/android/server/wm/AccessibilityController;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 105
    .line 106
    invoke-direct {v0, v1, p1, p2, v2}, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;-><init>(Lcom/android/server/wm/WindowManagerService;ILcom/android/server/wm/WindowManagerInternal$WindowsForAccessibilityCallback;Lcom/android/server/wm/AccessibilityWindowsPopulator;)V

    .line 107
    .line 108
    .line 109
    iget-object p2, p0, Lcom/android/server/wm/AccessibilityController;->mWindowsForAccessibilityObserver:Landroid/util/SparseArray;

    .line 110
    .line 111
    invoke-virtual {p2, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 112
    .line 113
    .line 114
    iget-boolean p1, p0, Lcom/android/server/wm/AccessibilityController;->mAllObserversInitialized:Z

    .line 115
    .line 116
    iget-boolean p2, v0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mInitialized:Z

    .line 117
    .line 118
    and-int/2addr p1, p2

    .line 119
    iput-boolean p1, p0, Lcom/android/server/wm/AccessibilityController;->mAllObserversInitialized:Z

    .line 120
    .line 121
    goto :goto_2

    .line 122
    :cond_3
    iget-object p2, p0, Lcom/android/server/wm/AccessibilityController;->mWindowsForAccessibilityObserver:Landroid/util/SparseArray;

    .line 123
    .line 124
    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object p2

    .line 128
    check-cast p2, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;

    .line 129
    .line 130
    if-nez p2, :cond_5

    .line 131
    .line 132
    new-instance p2, Ljava/lang/StringBuilder;

    .line 133
    .line 134
    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    const-string v1, " already cleared!"

    .line 141
    .line 142
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object p2

    .line 149
    invoke-static {v0, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    .line 151
    .line 152
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    .line 153
    .line 154
    if-nez v0, :cond_4

    .line 155
    .line 156
    goto :goto_1

    .line 157
    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 158
    .line 159
    invoke-direct {p0, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    throw p0

    .line 163
    :cond_5
    :goto_1
    iget-object p2, p0, Lcom/android/server/wm/AccessibilityController;->mWindowsForAccessibilityObserver:Landroid/util/SparseArray;

    .line 164
    .line 165
    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 166
    .line 167
    .line 168
    iget-object p0, p0, Lcom/android/server/wm/AccessibilityController;->mWindowsForAccessibilityObserver:Landroid/util/SparseArray;

    .line 169
    .line 170
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    .line 171
    .line 172
    .line 173
    move-result p0

    .line 174
    if-gtz p0, :cond_6

    .line 175
    .line 176
    const/4 p0, 0x0

    .line 177
    invoke-virtual {v2, p0}, Lcom/android/server/wm/AccessibilityWindowsPopulator;->setWindowsNotification(Z)V

    .line 178
    .line 179
    .line 180
    :cond_6
    :goto_2
    return-void
.end method
