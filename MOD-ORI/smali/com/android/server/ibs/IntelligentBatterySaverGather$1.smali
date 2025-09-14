.class public final Lcom/android/server/ibs/IntelligentBatterySaverGather$1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/ibs/IntelligentBatterySaverGather;


# direct methods
.method public constructor <init>(Lcom/android/server/ibs/IntelligentBatterySaverGather;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/ibs/IntelligentBatterySaverGather$1;->this$0:Lcom/android/server/ibs/IntelligentBatterySaverGather;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onDisplayAdded(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onDisplayChanged(I)V
    .locals 5

    .line 1
    if-nez p1, :cond_3

    .line 2
    .line 3
    iget-object p1, p0, Lcom/android/server/ibs/IntelligentBatterySaverGather$1;->this$0:Lcom/android/server/ibs/IntelligentBatterySaverGather;

    .line 4
    .line 5
    monitor-enter p1

    .line 6
    :try_start_0
    iget-object p0, p0, Lcom/android/server/ibs/IntelligentBatterySaverGather$1;->this$0:Lcom/android/server/ibs/IntelligentBatterySaverGather;

    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/server/ibs/IntelligentBatterySaverGather;->mIBSService:Lcom/android/server/ibs/IntelligentBatterySaverService;

    .line 9
    .line 10
    iget-object p0, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mIBSFastDrainPolicy:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;

    .line 11
    .line 12
    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0}, Landroid/view/Display;->getState()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    const/4 v2, 0x2

    .line 24
    const/4 v3, 0x1

    .line 25
    if-ne v0, v2, :cond_0

    .line 26
    .line 27
    move v0, v3

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    move v0, v1

    .line 30
    :goto_0
    const/4 v2, 0x4

    .line 31
    if-nez v0, :cond_1

    .line 32
    .line 33
    iget-boolean v4, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mScreenOn:Z

    .line 34
    .line 35
    if-eqz v4, :cond_1

    .line 36
    .line 37
    iput-boolean v1, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mScreenOn:Z

    .line 38
    .line 39
    invoke-virtual {p0, v2}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->reportSetState(I)V

    .line 40
    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_1
    if-eqz v0, :cond_2

    .line 44
    .line 45
    iput-boolean v3, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mScreenOn:Z

    .line 46
    .line 47
    invoke-virtual {p0, v2}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->reportClearState(I)V

    .line 48
    .line 49
    .line 50
    :cond_2
    :goto_1
    monitor-exit p1

    .line 51
    goto :goto_2

    .line 52
    :catchall_0
    move-exception p0

    .line 53
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    throw p0

    .line 55
    :cond_3
    :goto_2
    return-void
.end method

.method public final onDisplayRemoved(I)V
    .locals 0

    .line 1
    return-void
.end method
