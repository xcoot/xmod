.class public final synthetic Lcom/android/server/UiModeManagerService$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/UiModeManagerService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/UiModeManagerService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/UiModeManagerService$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/UiModeManagerService;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/UiModeManagerService$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/UiModeManagerService;

    .line 2
    .line 3
    check-cast p1, Landroid/os/PowerSaveState;

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mPowerSave:Z

    .line 9
    .line 10
    iget-boolean p1, p1, Landroid/os/PowerSaveState;->batterySaverEnabled:Z

    .line 11
    .line 12
    if-ne v1, p1, :cond_0

    .line 13
    .line 14
    monitor-exit v0

    .line 15
    goto :goto_0

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    goto :goto_1

    .line 18
    :cond_0
    iput-boolean p1, p0, Lcom/android/server/UiModeManagerService;->mPowerSave:Z

    .line 19
    .line 20
    iget-boolean p1, p0, Lcom/android/server/UiModeManagerService;->mSystemReady:Z

    .line 21
    .line 22
    if-eqz p1, :cond_1

    .line 23
    .line 24
    const/4 p1, 0x0

    .line 25
    invoke-virtual {p0, p1, p1}, Lcom/android/server/UiModeManagerService;->updateLocked(II)V

    .line 26
    .line 27
    .line 28
    :cond_1
    monitor-exit v0

    .line 29
    :goto_0
    return-void

    .line 30
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    throw p0
.end method
