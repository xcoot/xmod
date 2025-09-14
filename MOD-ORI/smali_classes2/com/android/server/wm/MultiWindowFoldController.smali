.class public final Lcom/android/server/wm/MultiWindowFoldController;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/wm/IController;


# instance fields
.field public final mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

.field public final mCoverDisplayBounds:[Landroid/graphics/Rect;

.field public mFoldingState:I

.field public final mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

.field public mH:Lcom/android/server/wm/MultiWindowFoldController$H;

.field public final mMainDisplayBounds:[Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/android/server/wm/MultiWindowFoldController;->mFoldingState:I

    .line 6
    .line 7
    const/4 v1, 0x2

    .line 8
    new-array v2, v1, [Landroid/graphics/Rect;

    .line 9
    .line 10
    new-instance v3, Landroid/graphics/Rect;

    .line 11
    .line 12
    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 13
    .line 14
    .line 15
    aput-object v3, v2, v0

    .line 16
    .line 17
    new-instance v3, Landroid/graphics/Rect;

    .line 18
    .line 19
    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 20
    .line 21
    .line 22
    const/4 v4, 0x1

    .line 23
    aput-object v3, v2, v4

    .line 24
    .line 25
    iput-object v2, p0, Lcom/android/server/wm/MultiWindowFoldController;->mMainDisplayBounds:[Landroid/graphics/Rect;

    .line 26
    .line 27
    new-array v1, v1, [Landroid/graphics/Rect;

    .line 28
    .line 29
    new-instance v2, Landroid/graphics/Rect;

    .line 30
    .line 31
    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 32
    .line 33
    .line 34
    aput-object v2, v1, v0

    .line 35
    .line 36
    new-instance v0, Landroid/graphics/Rect;

    .line 37
    .line 38
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 39
    .line 40
    .line 41
    aput-object v0, v1, v4

    .line 42
    .line 43
    iput-object v1, p0, Lcom/android/server/wm/MultiWindowFoldController;->mCoverDisplayBounds:[Landroid/graphics/Rect;

    .line 44
    .line 45
    iput-object p1, p0, Lcom/android/server/wm/MultiWindowFoldController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 46
    .line 47
    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 48
    .line 49
    iput-object p1, p0, Lcom/android/server/wm/MultiWindowFoldController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 50
    .line 51
    return-void
.end method


# virtual methods
.method public final initDisplayBounds(Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowFoldController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const-string v1, "MultiWindowFoldController"

    .line 13
    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    const-string p0, "initDisplayBounds: cannot find display!"

    .line 17
    .line 18
    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    new-instance v2, Landroid/view/DisplayInfo;

    .line 23
    .line 24
    invoke-direct {v2}, Landroid/view/DisplayInfo;-><init>()V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v2}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    .line 28
    .line 29
    .line 30
    if-eqz p1, :cond_1

    .line 31
    .line 32
    iget v0, v2, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 33
    .line 34
    iget v3, v2, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 35
    .line 36
    invoke-virtual {p0, v0, v3}, Lcom/android/server/wm/MultiWindowFoldController;->updateCoverDisplayBounds(II)V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    iget v0, v2, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 41
    .line 42
    iget v3, v2, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 43
    .line 44
    invoke-virtual {p0, v0, v3}, Lcom/android/server/wm/MultiWindowFoldController;->updateMainDisplayBounds(II)V

    .line 45
    .line 46
    .line 47
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    const-string v0, "initDisplayBounds: "

    .line 50
    .line 51
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    const-string v0, ", isCoverDisplay="

    .line 58
    .line 59
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    .line 71
    .line 72
    return-void
.end method

.method public final initialize()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/server/wm/MultiWindowFoldController$H;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/wm/MultiWindowFoldController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 4
    .line 5
    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    .line 6
    .line 7
    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-direct {v0, p0, v1}, Lcom/android/server/wm/MultiWindowFoldController$H;-><init>(Lcom/android/server/wm/MultiWindowFoldController;Landroid/os/Looper;)V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lcom/android/server/wm/MultiWindowFoldController;->mH:Lcom/android/server/wm/MultiWindowFoldController$H;

    .line 15
    .line 16
    return-void
.end method

.method public final setFoldingState(ILjava/lang/String;)V
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/server/wm/MultiWindowFoldController;->mFoldingState:I

    .line 2
    .line 3
    if-eq v0, p1, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string/jumbo v1, "setFoldingState: "

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iget v1, p0, Lcom/android/server/wm/MultiWindowFoldController;->mFoldingState:I

    .line 14
    .line 15
    const-string v2, "->"

    .line 16
    .line 17
    const-string v3, ", reason="

    .line 18
    .line 19
    invoke-static {v1, p1, v2, v3, v0}, Lcom/android/server/ServiceKeeper$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 20
    .line 21
    .line 22
    const-string v1, "MultiWindowFoldController"

    .line 23
    .line 24
    invoke-static {v0, p2, v1}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    iput p1, p0, Lcom/android/server/wm/MultiWindowFoldController;->mFoldingState:I

    .line 28
    .line 29
    :cond_0
    return-void
.end method

.method public final updateCoverDisplayBounds(II)V
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    if-gt p1, p2, :cond_0

    .line 4
    .line 5
    move v2, v0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    move v2, v1

    .line 8
    :goto_0
    iget-object v3, p0, Lcom/android/server/wm/MultiWindowFoldController;->mCoverDisplayBounds:[Landroid/graphics/Rect;

    .line 9
    .line 10
    aget-object v3, v3, v1

    .line 11
    .line 12
    if-eqz v2, :cond_1

    .line 13
    .line 14
    move v4, p1

    .line 15
    goto :goto_1

    .line 16
    :cond_1
    move v4, p2

    .line 17
    :goto_1
    if-eqz v2, :cond_2

    .line 18
    .line 19
    move v5, p2

    .line 20
    goto :goto_2

    .line 21
    :cond_2
    move v5, p1

    .line 22
    :goto_2
    invoke-virtual {v3, v1, v1, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 23
    .line 24
    .line 25
    iget-object p0, p0, Lcom/android/server/wm/MultiWindowFoldController;->mCoverDisplayBounds:[Landroid/graphics/Rect;

    .line 26
    .line 27
    aget-object p0, p0, v0

    .line 28
    .line 29
    if-eqz v2, :cond_3

    .line 30
    .line 31
    move v0, p2

    .line 32
    goto :goto_3

    .line 33
    :cond_3
    move v0, p1

    .line 34
    :goto_3
    if-eqz v2, :cond_4

    .line 35
    .line 36
    goto :goto_4

    .line 37
    :cond_4
    move p1, p2

    .line 38
    :goto_4
    invoke-virtual {p0, v1, v1, v0, p1}, Landroid/graphics/Rect;->set(IIII)V

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method public final updateMainDisplayBounds(II)V
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    if-gt p1, p2, :cond_0

    .line 4
    .line 5
    move v2, v0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    move v2, v1

    .line 8
    :goto_0
    iget-object v3, p0, Lcom/android/server/wm/MultiWindowFoldController;->mMainDisplayBounds:[Landroid/graphics/Rect;

    .line 9
    .line 10
    aget-object v3, v3, v1

    .line 11
    .line 12
    if-eqz v2, :cond_1

    .line 13
    .line 14
    move v4, p1

    .line 15
    goto :goto_1

    .line 16
    :cond_1
    move v4, p2

    .line 17
    :goto_1
    if-eqz v2, :cond_2

    .line 18
    .line 19
    move v5, p2

    .line 20
    goto :goto_2

    .line 21
    :cond_2
    move v5, p1

    .line 22
    :goto_2
    invoke-virtual {v3, v1, v1, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 23
    .line 24
    .line 25
    iget-object p0, p0, Lcom/android/server/wm/MultiWindowFoldController;->mMainDisplayBounds:[Landroid/graphics/Rect;

    .line 26
    .line 27
    aget-object p0, p0, v0

    .line 28
    .line 29
    if-eqz v2, :cond_3

    .line 30
    .line 31
    move v0, p2

    .line 32
    goto :goto_3

    .line 33
    :cond_3
    move v0, p1

    .line 34
    :goto_3
    if-eqz v2, :cond_4

    .line 35
    .line 36
    goto :goto_4

    .line 37
    :cond_4
    move p1, p2

    .line 38
    :goto_4
    invoke-virtual {p0, v1, v1, v0, p1}, Landroid/graphics/Rect;->set(IIII)V

    .line 39
    .line 40
    .line 41
    return-void
.end method
