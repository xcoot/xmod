.class public final Lcom/android/server/policy/DisplayFoldController;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mDisplayId:I

.field public final mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

.field public final mDurationLogger:Lcom/android/server/policy/DisplayFoldDurationLogger;

.field public mFocusedApp:Ljava/lang/String;

.field public mFolded:Ljava/lang/Boolean;

.field public final mFoldedArea:Landroid/graphics/Rect;

.field public final mHandler:Landroid/os/Handler;

.field public final mListeners:Landroid/os/RemoteCallbackList;

.field public final mNonOverrideDisplayInfo:Landroid/view/DisplayInfo;

.field public final mOverrideFoldedArea:Landroid/graphics/Rect;

.field public final mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerInternal;Landroid/hardware/display/DisplayManagerInternal;Landroid/graphics/Rect;Landroid/os/Handler;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/graphics/Rect;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/policy/DisplayFoldController;->mOverrideFoldedArea:Landroid/graphics/Rect;

    .line 10
    .line 11
    new-instance v0, Landroid/view/DisplayInfo;

    .line 12
    .line 13
    invoke-direct {v0}, Landroid/view/DisplayInfo;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/server/policy/DisplayFoldController;->mNonOverrideDisplayInfo:Landroid/view/DisplayInfo;

    .line 17
    .line 18
    new-instance v0, Landroid/os/RemoteCallbackList;

    .line 19
    .line 20
    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/android/server/policy/DisplayFoldController;->mListeners:Landroid/os/RemoteCallbackList;

    .line 24
    .line 25
    new-instance v0, Lcom/android/server/policy/DisplayFoldDurationLogger;

    .line 26
    .line 27
    invoke-direct {v0}, Lcom/android/server/policy/DisplayFoldDurationLogger;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lcom/android/server/policy/DisplayFoldController;->mDurationLogger:Lcom/android/server/policy/DisplayFoldDurationLogger;

    .line 31
    .line 32
    iput-object p2, p0, Lcom/android/server/policy/DisplayFoldController;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    .line 33
    .line 34
    iput-object p3, p0, Lcom/android/server/policy/DisplayFoldController;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    .line 35
    .line 36
    const/4 p2, 0x0

    .line 37
    iput p2, p0, Lcom/android/server/policy/DisplayFoldController;->mDisplayId:I

    .line 38
    .line 39
    new-instance p2, Landroid/graphics/Rect;

    .line 40
    .line 41
    invoke-direct {p2, p4}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 42
    .line 43
    .line 44
    iput-object p2, p0, Lcom/android/server/policy/DisplayFoldController;->mFoldedArea:Landroid/graphics/Rect;

    .line 45
    .line 46
    iput-object p5, p0, Lcom/android/server/policy/DisplayFoldController;->mHandler:Landroid/os/Handler;

    .line 47
    .line 48
    const-class p2, Landroid/hardware/devicestate/DeviceStateManager;

    .line 49
    .line 50
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object p2

    .line 54
    check-cast p2, Landroid/hardware/devicestate/DeviceStateManager;

    .line 55
    .line 56
    new-instance p3, Landroid/os/HandlerExecutor;

    .line 57
    .line 58
    invoke-direct {p3, p5}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    .line 59
    .line 60
    .line 61
    new-instance p4, Landroid/hardware/devicestate/DeviceStateManager$FoldStateListener;

    .line 62
    .line 63
    new-instance p5, Lcom/android/server/policy/DisplayFoldController$$ExternalSyntheticLambda0;

    .line 64
    .line 65
    invoke-direct {p5, p0}, Lcom/android/server/policy/DisplayFoldController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/policy/DisplayFoldController;)V

    .line 66
    .line 67
    .line 68
    invoke-direct {p4, p1, p5}, Landroid/hardware/devicestate/DeviceStateManager$FoldStateListener;-><init>(Landroid/content/Context;Ljava/util/function/Consumer;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p2, p3, p4}, Landroid/hardware/devicestate/DeviceStateManager;->registerCallback(Ljava/util/concurrent/Executor;Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;)V

    .line 72
    .line 73
    .line 74
    return-void
.end method
