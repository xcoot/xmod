.class public final Lcom/android/server/vibrator/VibrationSettings$1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/os/PowerManagerInternal$LowPowerModeListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/vibrator/VibrationSettings;


# direct methods
.method public constructor <init>(Lcom/android/server/vibrator/VibrationSettings;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/vibrator/VibrationSettings$1;->this$0:Lcom/android/server/vibrator/VibrationSettings;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final getServiceType()I
    .locals 0

    .line 1
    const/4 p0, 0x2

    .line 2
    return p0
.end method

.method public final onLowPowerModeChanged(Landroid/os/PowerSaveState;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/vibrator/VibrationSettings$1;->this$0:Lcom/android/server/vibrator/VibrationSettings;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/vibrator/VibrationSettings;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-boolean p1, p1, Landroid/os/PowerSaveState;->batterySaverEnabled:Z

    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/server/vibrator/VibrationSettings$1;->this$0:Lcom/android/server/vibrator/VibrationSettings;

    .line 9
    .line 10
    iget-boolean v1, p0, Lcom/android/server/vibrator/VibrationSettings;->mBatterySaverMode:Z

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    if-eq p1, v1, :cond_0

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move v1, v2

    .line 18
    :goto_0
    iput-boolean p1, p0, Lcom/android/server/vibrator/VibrationSettings;->mBatterySaverMode:Z

    .line 19
    .line 20
    iput-boolean v2, p0, Lcom/android/server/vibrator/VibrationSettings;->mBatterySaverMode:Z

    .line 21
    .line 22
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    if-eqz v1, :cond_1

    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/android/server/vibrator/VibrationSettings;->notifyListeners()V

    .line 26
    .line 27
    .line 28
    :cond_1
    return-void

    .line 29
    :catchall_0
    move-exception p0

    .line 30
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 31
    throw p0
.end method
