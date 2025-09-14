.class public final synthetic Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda29;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/ActivityRecord;

.field public final synthetic f$1:[F

.field public final synthetic f$2:[F


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/ActivityRecord;[F[F)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda29;->f$0:Lcom/android/server/wm/ActivityRecord;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda29;->f$1:[F

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda29;->f$2:[F

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda29;->f$0:Lcom/android/server/wm/ActivityRecord;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda29;->f$1:[F

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda29;->f$2:[F

    .line 6
    .line 7
    iget-object v2, v0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 8
    .line 9
    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 10
    .line 11
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 12
    .line 13
    .line 14
    monitor-enter v2

    .line 15
    :try_start_0
    iget-object v3, v0, Lcom/android/server/wm/ActivityRecord;->mLastAppSaturationInfo:Lcom/android/server/wm/ActivityRecord$AppSaturationInfo;

    .line 16
    .line 17
    if-nez v3, :cond_0

    .line 18
    .line 19
    new-instance v3, Lcom/android/server/wm/ActivityRecord$AppSaturationInfo;

    .line 20
    .line 21
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 22
    .line 23
    .line 24
    const/16 v4, 0x9

    .line 25
    .line 26
    new-array v4, v4, [F

    .line 27
    .line 28
    iput-object v4, v3, Lcom/android/server/wm/ActivityRecord$AppSaturationInfo;->mMatrix:[F

    .line 29
    .line 30
    const/4 v4, 0x3

    .line 31
    new-array v4, v4, [F

    .line 32
    .line 33
    iput-object v4, v3, Lcom/android/server/wm/ActivityRecord$AppSaturationInfo;->mTranslation:[F

    .line 34
    .line 35
    iput-object v3, v0, Lcom/android/server/wm/ActivityRecord;->mLastAppSaturationInfo:Lcom/android/server/wm/ActivityRecord$AppSaturationInfo;

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :catchall_0
    move-exception p0

    .line 39
    goto :goto_1

    .line 40
    :cond_0
    :goto_0
    iget-object v3, v0, Lcom/android/server/wm/ActivityRecord;->mLastAppSaturationInfo:Lcom/android/server/wm/ActivityRecord$AppSaturationInfo;

    .line 41
    .line 42
    iget-object v4, v3, Lcom/android/server/wm/ActivityRecord$AppSaturationInfo;->mMatrix:[F

    .line 43
    .line 44
    array-length v5, v4

    .line 45
    const/4 v6, 0x0

    .line 46
    invoke-static {v1, v6, v4, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 47
    .line 48
    .line 49
    iget-object v1, v3, Lcom/android/server/wm/ActivityRecord$AppSaturationInfo;->mTranslation:[F

    .line 50
    .line 51
    array-length v3, v1

    .line 52
    invoke-static {p0, v6, v1, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 53
    .line 54
    .line 55
    iget-object p0, v0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 56
    .line 57
    if-eqz p0, :cond_1

    .line 58
    .line 59
    iget-object p0, v0, Lcom/android/server/wm/ActivityRecord;->mLastAppSaturationInfo:Lcom/android/server/wm/ActivityRecord$AppSaturationInfo;

    .line 60
    .line 61
    if-eqz p0, :cond_1

    .line 62
    .line 63
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    iget-object v1, v0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 68
    .line 69
    iget-object v3, v0, Lcom/android/server/wm/ActivityRecord;->mLastAppSaturationInfo:Lcom/android/server/wm/ActivityRecord$AppSaturationInfo;

    .line 70
    .line 71
    iget-object v4, v3, Lcom/android/server/wm/ActivityRecord$AppSaturationInfo;->mMatrix:[F

    .line 72
    .line 73
    iget-object v3, v3, Lcom/android/server/wm/ActivityRecord$AppSaturationInfo;->mTranslation:[F

    .line 74
    .line 75
    invoke-virtual {p0, v1, v4, v3}, Landroid/view/SurfaceControl$Transaction;->setColorTransform(Landroid/view/SurfaceControl;[F[F)Landroid/view/SurfaceControl$Transaction;

    .line 76
    .line 77
    .line 78
    iget-object p0, v0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 79
    .line 80
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->scheduleAnimationLocked()V

    .line 81
    .line 82
    .line 83
    :cond_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 85
    .line 86
    .line 87
    return-void

    .line 88
    :goto_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 89
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 90
    .line 91
    .line 92
    throw p0
.end method
