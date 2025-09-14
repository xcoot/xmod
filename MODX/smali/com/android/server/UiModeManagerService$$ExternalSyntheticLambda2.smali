.class public final synthetic Lcom/android/server/UiModeManagerService$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/app/AlarmManager$OnAlarmListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/UiModeManagerService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/UiModeManagerService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/UiModeManagerService$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/UiModeManagerService;

    .line 6
    return-void
.end method


# virtual methods
.method public final onAlarm()V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/UiModeManagerService$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/UiModeManagerService;

    .line 3
    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mNightMode:Lcom/android/server/UiModeManagerService$1;

    .line 8
    iget v1, v1, Lcom/android/server/UiModeManagerService$1;->mNightModeValue:I

    .line 10
    const/4 v2, 0x3

    .line 11
    if-eq v1, v2, :cond_0

    .line 13
    goto :goto_1

    .line 14
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService;->shouldApplyAutomaticChangesImmediately()Z

    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_1

    .line 20
    const/4 v1, 0x0

    .line 21
    invoke-virtual {p0, v1, v1}, Lcom/android/server/UiModeManagerService;->updateLocked(II)V

    .line 24
    goto :goto_0

    .line 25
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService;->registerDeviceInactiveListenerLocked()V

    .line 28
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService;->scheduleNextCustomTimeListener()V

    .line 31
    :goto_1
    monitor-exit v0

    .line 32
    return-void

    .line 33
    :catchall_0
    move-exception p0

    .line 34
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    throw p0
.end method
