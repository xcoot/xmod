.class public final Lcom/android/server/display/DisplayManagerService$DesiredDisplayModeSpecsObserver;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mChanged:Z

.field public final mSpecsChangedConsumer:Lcom/android/server/display/DisplayManagerService$DesiredDisplayModeSpecsObserver$$ExternalSyntheticLambda0;

.field public final synthetic this$0:Lcom/android/server/display/DisplayManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/display/DisplayManagerService;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/display/DisplayManagerService$DesiredDisplayModeSpecsObserver;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 6
    new-instance p1, Lcom/android/server/display/DisplayManagerService$DesiredDisplayModeSpecsObserver$$ExternalSyntheticLambda0;

    .line 8
    const/4 v0, 0x0

    .line 9
    invoke-direct {p1, p0, v0}, Lcom/android/server/display/DisplayManagerService$DesiredDisplayModeSpecsObserver$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/display/DisplayManagerService$DesiredDisplayModeSpecsObserver;I)V

    .line 12
    iput-object p1, p0, Lcom/android/server/display/DisplayManagerService$DesiredDisplayModeSpecsObserver;->mSpecsChangedConsumer:Lcom/android/server/display/DisplayManagerService$DesiredDisplayModeSpecsObserver$$ExternalSyntheticLambda0;

    .line 14
    const/4 p1, 0x0

    .line 15
    iput-boolean p1, p0, Lcom/android/server/display/DisplayManagerService$DesiredDisplayModeSpecsObserver;->mChanged:Z

    .line 17
    return-void
.end method


# virtual methods
.method public final onDesiredDisplayModeSpecsChanged()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$DesiredDisplayModeSpecsObserver;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 3
    iget-object v0, v0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    .line 5
    monitor-enter v0

    .line 6
    const/4 v1, 0x0

    .line 7
    :try_start_0
    iput-boolean v1, p0, Lcom/android/server/display/DisplayManagerService$DesiredDisplayModeSpecsObserver;->mChanged:Z

    .line 9
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService$DesiredDisplayModeSpecsObserver;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 11
    iget-object v2, v2, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

    .line 13
    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService$DesiredDisplayModeSpecsObserver;->mSpecsChangedConsumer:Lcom/android/server/display/DisplayManagerService$DesiredDisplayModeSpecsObserver$$ExternalSyntheticLambda0;

    .line 15
    invoke-virtual {v2, v3, v1}, Lcom/android/server/display/LogicalDisplayMapper;->forEachLocked(Ljava/util/function/Consumer;Z)V

    .line 18
    iget-boolean v2, p0, Lcom/android/server/display/DisplayManagerService$DesiredDisplayModeSpecsObserver;->mChanged:Z

    .line 20
    if-eqz v2, :cond_0

    .line 22
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService$DesiredDisplayModeSpecsObserver;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 24
    invoke-virtual {v2, v1}, Lcom/android/server/display/DisplayManagerService;->scheduleTraversalLocked(Z)V

    .line 27
    iput-boolean v1, p0, Lcom/android/server/display/DisplayManagerService$DesiredDisplayModeSpecsObserver;->mChanged:Z

    .line 29
    goto :goto_0

    .line 30
    :catchall_0
    move-exception p0

    .line 31
    goto :goto_1

    .line 32
    :cond_0
    :goto_0
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->FW_VRR_REFRESH_RATE_MODE:Z

    .line 34
    if-eqz v2, :cond_1

    .line 36
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService$DesiredDisplayModeSpecsObserver;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 38
    iget-object v2, v2, Lcom/android/server/display/DisplayManagerService;->mDisplayModeDirector:Lcom/android/server/display/mode/DisplayModeDirector;

    .line 40
    iget-object v2, v2, Lcom/android/server/display/mode/DisplayModeDirector;->mRefreshRateModeManager:Lcom/android/server/display/mode/RefreshRateModeManager;

    .line 42
    invoke-virtual {v2}, Lcom/android/server/display/mode/RefreshRateModeManager;->getController()Lcom/android/server/display/mode/RefreshRateController;

    .line 45
    move-result-object v2

    .line 46
    iget-object v2, v2, Lcom/android/server/display/mode/RefreshRateController;->mUpdateRefreshRateMode:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 48
    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    .line 51
    move-result v1

    .line 52
    if-eqz v1, :cond_1

    .line 54
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService$DesiredDisplayModeSpecsObserver;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 56
    iget-object v1, v1, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

    .line 58
    new-instance v2, Lcom/android/server/display/DisplayManagerService$DesiredDisplayModeSpecsObserver$$ExternalSyntheticLambda0;

    .line 60
    const/4 v3, 0x1

    .line 61
    invoke-direct {v2, p0, v3}, Lcom/android/server/display/DisplayManagerService$DesiredDisplayModeSpecsObserver$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/display/DisplayManagerService$DesiredDisplayModeSpecsObserver;I)V

    .line 64
    const/4 p0, 0x1

    .line 65
    invoke-virtual {v1, v2, p0}, Lcom/android/server/display/LogicalDisplayMapper;->forEachLocked(Ljava/util/function/Consumer;Z)V

    .line 68
    :cond_1
    monitor-exit v0

    .line 69
    return-void

    .line 70
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    throw p0
.end method
