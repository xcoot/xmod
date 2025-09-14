.class public final synthetic Lcom/android/server/wm/DimmerAnimationHelper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/DimmerAnimationHelper;

.field public final synthetic f$1:Lcom/android/server/wm/Dimmer$DimState;

.field public final synthetic f$2:F


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/DimmerAnimationHelper;Lcom/android/server/wm/Dimmer$DimState;F)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/DimmerAnimationHelper$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/DimmerAnimationHelper;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/wm/DimmerAnimationHelper$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/wm/Dimmer$DimState;

    .line 7
    .line 8
    iput p3, p0, Lcom/android/server/wm/DimmerAnimationHelper$$ExternalSyntheticLambda0;->f$2:F

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onAnimationFinished(ILcom/android/server/wm/AnimationAdapter;)V
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/android/server/wm/DimmerAnimationHelper$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/DimmerAnimationHelper;

    .line 2
    .line 3
    iget-object p2, p0, Lcom/android/server/wm/DimmerAnimationHelper$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/wm/Dimmer$DimState;

    .line 4
    .line 5
    iget p0, p0, Lcom/android/server/wm/DimmerAnimationHelper$$ExternalSyntheticLambda0;->f$2:F

    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    iget-object v0, p2, Lcom/android/server/wm/Dimmer$DimState;->mHostContainer:Lcom/android/server/wm/WindowContainer;

    .line 11
    .line 12
    iget-object v0, v0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 13
    .line 14
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 15
    .line 16
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 17
    .line 18
    .line 19
    monitor-enter v0

    .line 20
    :try_start_0
    iget-object v1, p2, Lcom/android/server/wm/Dimmer$DimState;->mDimSurface:Landroid/view/SurfaceControl;

    .line 21
    .line 22
    invoke-virtual {v1}, Landroid/view/SurfaceControl;->getLayerId()I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    const v2, 0x953c

    .line 27
    .line 28
    .line 29
    invoke-static {v2, v1}, Landroid/util/EventLog;->writeEvent(II)I

    .line 30
    .line 31
    .line 32
    iget-object v1, p2, Lcom/android/server/wm/Dimmer$DimState;->mHostContainer:Lcom/android/server/wm/WindowContainer;

    .line 33
    .line 34
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    iget-object v2, p2, Lcom/android/server/wm/Dimmer$DimState;->mHostContainer:Lcom/android/server/wm/WindowContainer;

    .line 39
    .line 40
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    if-nez v3, :cond_0

    .line 45
    .line 46
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    if-ne v3, v1, :cond_0

    .line 51
    .line 52
    iget-object v2, v2, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 53
    .line 54
    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    if-eqz v2, :cond_0

    .line 59
    .line 60
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayArea;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    goto :goto_0

    .line 65
    :catchall_0
    move-exception p0

    .line 66
    goto :goto_1

    .line 67
    :cond_0
    :goto_0
    iget-object v2, p2, Lcom/android/server/wm/Dimmer$DimState;->mDimSurface:Landroid/view/SurfaceControl;

    .line 68
    .line 69
    invoke-virtual {p1, v1, v2}, Lcom/android/server/wm/DimmerAnimationHelper;->setCurrentAlphaBlur(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V

    .line 70
    .line 71
    .line 72
    const/4 v2, 0x0

    .line 73
    cmpl-float p0, p0, v2

    .line 74
    .line 75
    if-nez p0, :cond_1

    .line 76
    .line 77
    invoke-virtual {p2}, Lcom/android/server/wm/Dimmer$DimState;->isDimming()Z

    .line 78
    .line 79
    .line 80
    move-result p0

    .line 81
    if-nez p0, :cond_1

    .line 82
    .line 83
    invoke-virtual {p2, v1}, Lcom/android/server/wm/Dimmer$DimState;->remove(Landroid/view/SurfaceControl$Transaction;)V

    .line 84
    .line 85
    .line 86
    :cond_1
    const/4 p0, 0x0

    .line 87
    iput-object p0, p1, Lcom/android/server/wm/DimmerAnimationHelper;->mLocalAnimationAdapter:Lcom/android/server/wm/LocalAnimationAdapter;

    .line 88
    .line 89
    iput-object p0, p1, Lcom/android/server/wm/DimmerAnimationHelper;->mAlphaAnimationSpec:Lcom/android/server/wm/DimmerAnimationHelper$AnimationSpec;

    .line 90
    .line 91
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 93
    .line 94
    .line 95
    return-void

    .line 96
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 97
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 98
    .line 99
    .line 100
    throw p0
.end method
