.class public final synthetic Lcom/android/server/display/DisplayManagerService$DesiredDisplayModeSpecsObserver$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/display/DisplayManagerService$DesiredDisplayModeSpecsObserver;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/display/DisplayManagerService$DesiredDisplayModeSpecsObserver;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/display/DisplayManagerService$DesiredDisplayModeSpecsObserver$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 3
    iput-object p1, p0, Lcom/android/server/display/DisplayManagerService$DesiredDisplayModeSpecsObserver$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/display/DisplayManagerService$DesiredDisplayModeSpecsObserver;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 6

    .line 1
    iget v0, p0, Lcom/android/server/display/DisplayManagerService$DesiredDisplayModeSpecsObserver$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 3
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$DesiredDisplayModeSpecsObserver$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/display/DisplayManagerService$DesiredDisplayModeSpecsObserver;

    .line 5
    check-cast p1, Lcom/android/server/display/LogicalDisplay;

    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    packed-switch v0, :pswitch_data_0

    .line 13
    invoke-virtual {p1}, Lcom/android/server/display/LogicalDisplay;->getDisplayInfoLocked()Landroid/view/DisplayInfo;

    .line 16
    move-result-object v0

    .line 17
    iget v0, v0, Landroid/view/DisplayInfo;->type:I

    .line 19
    const/4 v1, 0x1

    .line 20
    if-ne v0, v1, :cond_0

    .line 22
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$DesiredDisplayModeSpecsObserver;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 24
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayManagerService;->handleLogicalDisplayChangedLocked(Lcom/android/server/display/LogicalDisplay;)V

    .line 27
    :cond_0
    return-void

    .line 28
    :pswitch_0
    iget v0, p1, Lcom/android/server/display/LogicalDisplay;->mDisplayId:I

    .line 30
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService$DesiredDisplayModeSpecsObserver;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 32
    iget-object v1, v1, Lcom/android/server/display/DisplayManagerService;->mDisplayModeDirector:Lcom/android/server/display/mode/DisplayModeDirector;

    .line 34
    invoke-virtual {v1, v0}, Lcom/android/server/display/mode/DisplayModeDirector;->getDesiredDisplayModeSpecs(I)Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;

    .line 37
    move-result-object v1

    .line 38
    iget-object v2, p1, Lcom/android/server/display/LogicalDisplay;->mDesiredDisplayModeSpecs:Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;

    .line 40
    sget-boolean v3, Lcom/android/server/display/DisplayManagerService;->DEBUG:Z

    .line 42
    if-eqz v3, :cond_1

    .line 44
    const-string v3, "DisplayManagerService"

    .line 46
    new-instance v4, Ljava/lang/StringBuilder;

    .line 48
    const-string v5, "Comparing display specs: "

    .line 50
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 53
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 56
    const-string v5, ", existing: "

    .line 58
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 64
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    move-result-object v4

    .line 68
    invoke-static {v3, v4}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    :cond_1
    invoke-virtual {v1, v2}, Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;->equals(Ljava/lang/Object;)Z

    .line 74
    move-result v2

    .line 75
    if-nez v2, :cond_3

    .line 77
    iput-object v1, p1, Lcom/android/server/display/LogicalDisplay;->mDesiredDisplayModeSpecs:Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;

    .line 79
    const/4 p1, 0x1

    .line 80
    iput-boolean p1, p0, Lcom/android/server/display/DisplayManagerService$DesiredDisplayModeSpecsObserver;->mChanged:Z

    .line 82
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->FW_VRR_SYSTEM_HISTORY:Z

    .line 84
    if-eqz p1, :cond_3

    .line 86
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$DesiredDisplayModeSpecsObserver;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 88
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayModeDirector:Lcom/android/server/display/mode/DisplayModeDirector;

    .line 90
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mRefreshRateModeManager:Lcom/android/server/display/mode/RefreshRateModeManager;

    .line 92
    if-eqz v0, :cond_2

    .line 94
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 97
    goto :goto_0

    .line 98
    :cond_2
    iget-object p1, p0, Lcom/android/server/display/mode/RefreshRateModeManager;->mLock:Ljava/lang/Object;

    .line 100
    monitor-enter p1

    .line 101
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/display/mode/RefreshRateModeManager;->getController()Lcom/android/server/display/mode/RefreshRateController;

    .line 104
    move-result-object p0

    .line 105
    invoke-virtual {p0, v1}, Lcom/android/server/display/mode/RefreshRateController;->logCurrentStateLocked(Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;)V

    .line 108
    monitor-exit p1

    .line 109
    goto :goto_0

    .line 110
    :catchall_0
    move-exception p0

    .line 111
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    throw p0

    .line 113
    :cond_3
    :goto_0
    return-void

    .line 114
    nop

    .line 115
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
