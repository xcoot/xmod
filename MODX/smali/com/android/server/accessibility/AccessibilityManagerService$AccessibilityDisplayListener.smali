.class public final Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityDisplayListener;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# instance fields
.field public final mDisplayManager:Landroid/hardware/display/DisplayManager;

.field public final mDisplaysList:Ljava/util/ArrayList;

.field public final mSystemUiUid:I

.field public final synthetic this$0:Lcom/android/server/accessibility/AccessibilityManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/AccessibilityManagerService;Landroid/content/Context;Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityDisplayListener;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    .line 8
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 11
    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityDisplayListener;->mDisplaysList:Ljava/util/ArrayList;

    .line 13
    const/4 v1, 0x0

    .line 14
    iput v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityDisplayListener;->mSystemUiUid:I

    .line 16
    invoke-virtual {p3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 19
    move-result-object v2

    .line 20
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 23
    move-result-object v3

    .line 24
    if-ne v2, v3, :cond_0

    .line 26
    const/4 v2, 0x1

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    move v2, v1

    .line 29
    :goto_0
    sget-boolean v3, Landroid/os/Build;->IS_USERDEBUG:Z

    .line 31
    if-nez v3, :cond_2

    .line 33
    sget-boolean v3, Landroid/os/Build;->IS_ENG:Z

    .line 35
    if-eqz v3, :cond_1

    .line 37
    goto :goto_1

    .line 38
    :cond_1
    if-nez v2, :cond_3

    .line 40
    const-string v2, "AccessibilityManagerService"

    .line 42
    const-string v3, "AccessibilityDisplayListener must use the main handler"

    .line 44
    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    goto :goto_2

    .line 48
    :cond_2
    :goto_1
    const-string v3, "AccessibilityDisplayListener must use the main handler"

    .line 50
    invoke-static {v2, v3}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 53
    :cond_3
    :goto_2
    const-string/jumbo v2, "display"

    .line 56
    invoke-virtual {p2, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 59
    move-result-object p2

    .line 60
    check-cast p2, Landroid/hardware/display/DisplayManager;

    .line 62
    iput-object p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityDisplayListener;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 64
    invoke-virtual {p2, p0, p3}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 67
    const-string/jumbo p3, "com.samsung.android.hardware.display.category.BUILTIN"

    .line 70
    invoke-virtual {p2, p3}, Landroid/hardware/display/DisplayManager;->getDisplays(Ljava/lang/String;)[Landroid/view/Display;

    .line 73
    move-result-object p2

    .line 74
    iget-object p3, p1, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    .line 76
    monitor-enter p3

    .line 77
    :try_start_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 80
    :goto_3
    array-length v0, p2

    .line 81
    if-ge v1, v0, :cond_5

    .line 83
    aget-object v0, p2, v1

    .line 85
    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityDisplayListener;->isValidDisplay(Landroid/view/Display;)Z

    .line 88
    move-result v2

    .line 89
    if-eqz v2, :cond_4

    .line 91
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityDisplayListener;->mDisplaysList:Ljava/util/ArrayList;

    .line 93
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 96
    goto :goto_4

    .line 97
    :catchall_0
    move-exception p0

    .line 98
    goto :goto_5

    .line 99
    :cond_4
    :goto_4
    add-int/lit8 v1, v1, 0x1

    .line 101
    goto :goto_3

    .line 102
    :cond_5
    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    const-class p2, Landroid/content/pm/PackageManagerInternal;

    .line 105
    invoke-static {p2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 108
    move-result-object p2

    .line 109
    check-cast p2, Landroid/content/pm/PackageManagerInternal;

    .line 111
    if-eqz p2, :cond_6

    .line 113
    invoke-virtual {p2}, Landroid/content/pm/PackageManagerInternal;->getSystemUiServiceComponent()Landroid/content/ComponentName;

    .line 116
    move-result-object p3

    .line 117
    invoke-virtual {p3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 120
    move-result-object p3

    .line 121
    iget p1, p1, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    .line 123
    const-wide/32 v0, 0x100000

    .line 126
    invoke-virtual {p2, p3, v0, v1, p1}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    .line 129
    move-result p1

    .line 130
    iput p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityDisplayListener;->mSystemUiUid:I

    .line 132
    :cond_6
    return-void

    .line 133
    :goto_5
    :try_start_1
    monitor-exit p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 134
    throw p0
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;)V
    .locals 3

    .line 1
    const-string v0, "Accessibility Display Listener:"

    .line 3
    const-string v1, "    SystemUI uid: "

    .line 5
    invoke-static {p1, v0, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m$1(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    move-result-object v0

    .line 9
    iget v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityDisplayListener;->mSystemUiUid:I

    .line 11
    invoke-static {v0, v1, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;)V

    .line 14
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityDisplayListener;->mDisplaysList:Ljava/util/ArrayList;

    .line 16
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 19
    move-result v0

    .line 20
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 23
    move-result-object v1

    .line 24
    const/4 v2, 0x1

    .line 25
    if-ne v0, v2, :cond_0

    .line 27
    const-string v2, ""

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const-string/jumbo v2, "s"

    .line 33
    :goto_0
    filled-new-array {v1, v2}, [Ljava/lang/Object;

    .line 36
    move-result-object v1

    .line 37
    const-string v2, "    %d valid display%s: "

    .line 39
    invoke-virtual {p1, v2, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 42
    const/4 v1, 0x0

    .line 43
    :goto_1
    if-ge v1, v0, :cond_2

    .line 45
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityDisplayListener;->mDisplaysList:Ljava/util/ArrayList;

    .line 47
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 50
    move-result-object v2

    .line 51
    check-cast v2, Landroid/view/Display;

    .line 53
    invoke-virtual {v2}, Landroid/view/Display;->getDisplayId()I

    .line 56
    move-result v2

    .line 57
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 60
    add-int/lit8 v2, v0, -0x1

    .line 62
    if-ge v1, v2, :cond_1

    .line 64
    const-string v2, ", "

    .line 66
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 69
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 71
    goto :goto_1

    .line 72
    :cond_2
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 75
    return-void
.end method

.method public final isValidDisplay(Landroid/view/Display;)Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_2

    .line 4
    invoke-virtual {p1}, Landroid/view/Display;->getType()I

    .line 7
    move-result v1

    .line 8
    const/4 v2, 0x4

    .line 9
    if-ne v1, v2, :cond_0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {p1}, Landroid/view/Display;->getType()I

    .line 15
    move-result v1

    .line 16
    const/4 v3, 0x5

    .line 17
    if-ne v1, v3, :cond_1

    .line 19
    invoke-virtual {p1}, Landroid/view/Display;->getFlags()I

    .line 22
    move-result v1

    .line 23
    and-int/2addr v1, v2

    .line 24
    if-eqz v1, :cond_1

    .line 26
    invoke-virtual {p1}, Landroid/view/Display;->getOwnerUid()I

    .line 29
    move-result p1

    .line 30
    iget p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityDisplayListener;->mSystemUiUid:I

    .line 32
    if-eq p1, p0, :cond_1

    .line 34
    return v0

    .line 35
    :cond_1
    const/4 p0, 0x1

    .line 36
    return p0

    .line 37
    :cond_2
    :goto_0
    return v0
.end method

.method public final onDisplayAdded(I)V
    .locals 4

    .line 1
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/os/Looper;->isCurrentThread()Z

    .line 8
    move-result v0

    .line 9
    sget-boolean v1, Landroid/os/Build;->IS_USERDEBUG:Z

    .line 11
    if-nez v1, :cond_1

    .line 13
    sget-boolean v1, Landroid/os/Build;->IS_ENG:Z

    .line 15
    if-eqz v1, :cond_0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    if-nez v0, :cond_2

    .line 20
    const-string v0, "AccessibilityManagerService"

    .line 22
    const-string/jumbo v1, "onDisplayAdded must be called from the main thread"

    .line 25
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    goto :goto_1

    .line 29
    :cond_1
    :goto_0
    const-string/jumbo v1, "onDisplayAdded must be called from the main thread"

    .line 32
    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 35
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityDisplayListener;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 37
    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    .line 40
    move-result-object v0

    .line 41
    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityDisplayListener;->isValidDisplay(Landroid/view/Display;)Z

    .line 44
    move-result v1

    .line 45
    if-nez v1, :cond_3

    .line 47
    return-void

    .line 48
    :cond_3
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityDisplayListener;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 50
    iget-object v1, v1, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    .line 52
    monitor-enter v1

    .line 53
    :try_start_0
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityDisplayListener;->mDisplaysList:Ljava/util/ArrayList;

    .line 55
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityDisplayListener;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 60
    iget-object v3, v2, Lcom/android/server/accessibility/AccessibilityManagerService;->mA11yOverlayLayers:Landroid/util/SparseArray;

    .line 62
    iget-object v2, v2, Lcom/android/server/accessibility/AccessibilityManagerService;->mWindowManagerService:Lcom/android/server/wm/WindowManagerInternal;

    .line 64
    invoke-virtual {v2, p1}, Lcom/android/server/wm/WindowManagerInternal;->getA11yOverlayLayer(I)Landroid/view/SurfaceControl;

    .line 67
    move-result-object v2

    .line 68
    invoke-virtual {v3, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 71
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityDisplayListener;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 73
    iget-object v2, v2, Lcom/android/server/accessibility/AccessibilityManagerService;->mInputFilter:Lcom/android/server/accessibility/AccessibilityInputFilter;

    .line 75
    if-eqz v2, :cond_4

    .line 77
    iget-boolean v3, v2, Lcom/android/server/accessibility/AccessibilityInputFilter;->mInstalled:Z

    .line 79
    if-eqz v3, :cond_4

    .line 81
    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    .line 84
    move-result v3

    .line 85
    invoke-virtual {v2, v3}, Lcom/android/server/accessibility/AccessibilityInputFilter;->resetStreamStateForDisplay(I)V

    .line 88
    invoke-virtual {v2, v0}, Lcom/android/server/accessibility/AccessibilityInputFilter;->enableFeaturesForDisplay(Landroid/view/Display;)V

    .line 91
    :cond_4
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityDisplayListener;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 93
    iget v2, v0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    .line 95
    invoke-virtual {v0, v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->getUserStateLocked(I)Lcom/android/server/accessibility/AccessibilityUserState;

    .line 98
    move-result-object v0

    .line 99
    new-instance v2, Ljava/util/ArrayList;

    .line 101
    iget-object v3, v0, Lcom/android/server/accessibility/AccessibilityUserState;->mBoundServices:Ljava/util/ArrayList;

    .line 103
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 106
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityDisplayListener;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 108
    invoke-virtual {v3, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->updateMagnificationLocked(Lcom/android/server/accessibility/AccessibilityUserState;)V

    .line 111
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityDisplayListener;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 113
    invoke-virtual {v3, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->updateWindowsForAccessibilityCallbackLocked(Lcom/android/server/accessibility/AccessibilityUserState;)V

    .line 116
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityDisplayListener;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 118
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->notifyClearAccessibilityCacheLocked()V

    .line 121
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    if-eqz p1, :cond_5

    .line 124
    const/4 p0, 0x0

    .line 125
    :goto_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 128
    move-result v0

    .line 129
    if-ge p0, v0, :cond_5

    .line 131
    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 134
    move-result-object v0

    .line 135
    check-cast v0, Lcom/android/server/accessibility/AccessibilityServiceConnection;

    .line 137
    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->addWindowTokenForDisplay(I)V

    .line 140
    add-int/lit8 p0, p0, 0x1

    .line 142
    goto :goto_2

    .line 143
    :cond_5
    return-void

    .line 144
    :catchall_0
    move-exception p0

    .line 145
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 146
    throw p0
.end method

.method public final onDisplayChanged(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityDisplayListener;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 3
    invoke-static {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$mapplyColorinversion(Lcom/android/server/accessibility/AccessibilityManagerService;)V

    .line 6
    return-void
.end method

.method public final onDisplayRemoved(I)V
    .locals 5

    .line 1
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/os/Looper;->isCurrentThread()Z

    .line 8
    move-result v0

    .line 9
    sget-boolean v1, Landroid/os/Build;->IS_USERDEBUG:Z

    .line 11
    if-nez v1, :cond_1

    .line 13
    sget-boolean v1, Landroid/os/Build;->IS_ENG:Z

    .line 15
    if-eqz v1, :cond_0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    if-nez v0, :cond_2

    .line 20
    const-string v0, "AccessibilityManagerService"

    .line 22
    const-string/jumbo v1, "onDisplayRemoved must be called from the main thread"

    .line 25
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    goto :goto_1

    .line 29
    :cond_1
    :goto_0
    const-string/jumbo v1, "onDisplayRemoved must be called from the main thread"

    .line 32
    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 35
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityDisplayListener;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 37
    iget-object v0, v0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    .line 39
    monitor-enter v0

    .line 40
    const/4 v1, 0x0

    .line 41
    move v2, v1

    .line 42
    :goto_2
    :try_start_0
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityDisplayListener;->mDisplaysList:Ljava/util/ArrayList;

    .line 44
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 47
    move-result v3

    .line 48
    if-ge v2, v3, :cond_9

    .line 50
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityDisplayListener;->mDisplaysList:Ljava/util/ArrayList;

    .line 52
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 55
    move-result-object v3

    .line 56
    check-cast v3, Landroid/view/Display;

    .line 58
    invoke-virtual {v3}, Landroid/view/Display;->getDisplayId()I

    .line 61
    move-result v3

    .line 62
    if-ne v3, p1, :cond_8

    .line 64
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityDisplayListener;->mDisplaysList:Ljava/util/ArrayList;

    .line 66
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 69
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityDisplayListener;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 71
    iget-object v2, v2, Lcom/android/server/accessibility/AccessibilityManagerService;->mA11yOverlayLayers:Landroid/util/SparseArray;

    .line 73
    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 76
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityDisplayListener;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 78
    iget-object v2, v2, Lcom/android/server/accessibility/AccessibilityManagerService;->mInputFilter:Lcom/android/server/accessibility/AccessibilityInputFilter;

    .line 80
    if-eqz v2, :cond_3

    .line 82
    iget-boolean v3, v2, Lcom/android/server/accessibility/AccessibilityInputFilter;->mInstalled:Z

    .line 84
    if-eqz v3, :cond_3

    .line 86
    invoke-virtual {v2, p1}, Lcom/android/server/accessibility/AccessibilityInputFilter;->disableFeaturesForDisplay(I)V

    .line 89
    invoke-virtual {v2, p1}, Lcom/android/server/accessibility/AccessibilityInputFilter;->resetStreamStateForDisplay(I)V

    .line 92
    :cond_3
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityDisplayListener;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 94
    iget v3, v2, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    .line 96
    invoke-virtual {v2, v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->getUserStateLocked(I)Lcom/android/server/accessibility/AccessibilityUserState;

    .line 99
    move-result-object v2

    .line 100
    if-eqz p1, :cond_4

    .line 102
    iget-object v2, v2, Lcom/android/server/accessibility/AccessibilityUserState;->mBoundServices:Ljava/util/ArrayList;

    .line 104
    :goto_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 107
    move-result v3

    .line 108
    if-ge v1, v3, :cond_4

    .line 110
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 113
    move-result-object v3

    .line 114
    check-cast v3, Lcom/android/server/accessibility/AccessibilityServiceConnection;

    .line 116
    invoke-virtual {v3, p1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->onDisplayRemoved(I)V

    .line 119
    add-int/lit8 v1, v1, 0x1

    .line 121
    goto :goto_3

    .line 122
    :catchall_0
    move-exception p0

    .line 123
    goto :goto_7

    .line 124
    :cond_4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityDisplayListener;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 127
    iget-object v0, v0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMagnificationController:Lcom/android/server/accessibility/magnification/MagnificationController;

    .line 129
    iget-object v1, v0, Lcom/android/server/accessibility/magnification/MagnificationController;->mLock:Ljava/lang/Object;

    .line 131
    monitor-enter v1

    .line 132
    :try_start_1
    iget-object v2, v0, Lcom/android/server/accessibility/magnification/MagnificationController;->mFullScreenMagnificationController:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    .line 134
    const/4 v3, 0x1

    .line 135
    if-eqz v2, :cond_5

    .line 137
    iget-object v4, v2, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mLock:Ljava/lang/Object;

    .line 139
    monitor-enter v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 140
    :try_start_2
    invoke-virtual {v2, p1, v3}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->unregisterLocked(IZ)V

    .line 143
    monitor-exit v4

    .line 144
    goto :goto_4

    .line 145
    :catchall_1
    move-exception p0

    .line 146
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 147
    :try_start_3
    throw p0

    .line 148
    :cond_5
    :goto_4
    iget-object v2, v0, Lcom/android/server/accessibility/magnification/MagnificationController;->mMagnificationConnectionManager:Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    .line 150
    if-eqz v2, :cond_6

    .line 152
    invoke-virtual {v2, p1, v3}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->disableWindowMagnification(IZ)V

    .line 155
    :cond_6
    iget-object v2, v0, Lcom/android/server/accessibility/magnification/MagnificationController;->mAccessibilityCallbacksDelegateArray:Landroid/util/SparseArray;

    .line 157
    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 160
    iget-object v2, v0, Lcom/android/server/accessibility/magnification/MagnificationController;->mCurrentMagnificationModeArray:Landroid/util/SparseIntArray;

    .line 162
    invoke-virtual {v2, p1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 165
    iget-object v2, v0, Lcom/android/server/accessibility/magnification/MagnificationController;->mLastMagnificationActivatedModeArray:Landroid/util/SparseIntArray;

    .line 167
    invoke-virtual {v2, p1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 170
    iget-object v2, v0, Lcom/android/server/accessibility/magnification/MagnificationController;->mIsImeVisibleArray:Landroid/util/SparseBooleanArray;

    .line 172
    invoke-virtual {v2, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 175
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 176
    iget-object v0, v0, Lcom/android/server/accessibility/magnification/MagnificationController;->mScaleProvider:Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;

    .line 178
    iget-object v2, v0, Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;->mLock:Ljava/lang/Object;

    .line 180
    monitor-enter v2

    .line 181
    :try_start_4
    iget-object v1, v0, Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;->mUsersScales:Landroid/util/SparseArray;

    .line 183
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 186
    move-result v1

    .line 187
    sub-int/2addr v1, v3

    .line 188
    :goto_5
    if-ltz v1, :cond_7

    .line 190
    iget-object v3, v0, Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;->mUsersScales:Landroid/util/SparseArray;

    .line 192
    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 195
    move-result-object v3

    .line 196
    check-cast v3, Landroid/util/SparseArray;

    .line 198
    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 201
    add-int/lit8 v1, v1, -0x1

    .line 203
    goto :goto_5

    .line 204
    :catchall_2
    move-exception p0

    .line 205
    goto :goto_6

    .line 206
    :cond_7
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 207
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityDisplayListener;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 209
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    .line 211
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityWindowManager;->stopTrackingWindows(I)V

    .line 214
    return-void

    .line 215
    :goto_6
    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 216
    throw p0

    .line 217
    :catchall_3
    move-exception p0

    .line 218
    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 219
    throw p0

    .line 220
    :cond_8
    add-int/lit8 v2, v2, 0x1

    .line 222
    goto/16 :goto_2

    .line 224
    :cond_9
    :try_start_7
    monitor-exit v0

    .line 225
    return-void

    .line 226
    :goto_7
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 227
    throw p0
.end method
