.class final Lcom/android/server/vibrator/VibrationSettings$SettingsBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/vibrator/VibrationSettings;


# direct methods
.method public constructor <init>(Lcom/android/server/vibrator/VibrationSettings;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/vibrator/VibrationSettings$SettingsBroadcastReceiver;->this$0:Lcom/android/server/vibrator/VibrationSettings;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const-string p2, "android.media.INTERNAL_RINGER_MODE_CHANGED_ACTION"

    .line 6
    .line 7
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_1

    .line 12
    .line 13
    iget-object p1, p0, Lcom/android/server/vibrator/VibrationSettings$SettingsBroadcastReceiver;->this$0:Lcom/android/server/vibrator/VibrationSettings;

    .line 14
    .line 15
    sget-object p2, Lcom/android/server/vibrator/VibrationSettings;->BACKGROUND_PROCESS_USAGE_ALLOWLIST:Ljava/util/Set;

    .line 16
    .line 17
    iget-object p2, p1, Lcom/android/server/vibrator/VibrationSettings;->mLock:Ljava/lang/Object;

    .line 18
    .line 19
    monitor-enter p2

    .line 20
    :try_start_0
    iget-object v0, p1, Lcom/android/server/vibrator/VibrationSettings;->mAudioManager:Landroid/media/AudioManager;

    .line 21
    .line 22
    if-nez v0, :cond_0

    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerModeInternal()I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    :goto_0
    iput v0, p1, Lcom/android/server/vibrator/VibrationSettings;->mRingerMode:I

    .line 31
    .line 32
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    iget-object p0, p0, Lcom/android/server/vibrator/VibrationSettings$SettingsBroadcastReceiver;->this$0:Lcom/android/server/vibrator/VibrationSettings;

    .line 34
    .line 35
    invoke-virtual {p0}, Lcom/android/server/vibrator/VibrationSettings;->notifyListeners()V

    .line 36
    .line 37
    .line 38
    goto :goto_1

    .line 39
    :catchall_0
    move-exception p0

    .line 40
    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 41
    throw p0

    .line 42
    :cond_1
    :goto_1
    return-void
.end method
