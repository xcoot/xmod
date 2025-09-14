.class public final Lcom/android/server/audio/AudioService$AudioServiceInternal;
.super Landroid/media/AudioManagerInternal;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/audio/AudioService;


# direct methods
.method public constructor <init>(Lcom/android/server/audio/AudioService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/audio/AudioService$AudioServiceInternal;->this$0:Lcom/android/server/audio/AudioService;

    .line 3
    invoke-direct {p0}, Landroid/media/AudioManagerInternal;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final addAssistantServiceUid(I)V
    .locals 7

    .line 1
    iget-object p0, p0, Lcom/android/server/audio/AudioService$AudioServiceInternal;->this$0:Lcom/android/server/audio/AudioService;

    .line 3
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    .line 5
    const/16 v1, 0x2c

    .line 7
    const/4 v2, 0x2

    .line 8
    const/4 v4, 0x0

    .line 9
    const/4 v5, 0x0

    .line 10
    const/4 v6, 0x0

    .line 11
    move v3, p1

    .line 12
    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 15
    return-void
.end method

.method public final getRingerModeInternal()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/audio/AudioService$AudioServiceInternal;->this$0:Lcom/android/server/audio/AudioService;

    .line 3
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->getRingerModeInternal()I

    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final removeAssistantServiceUid(I)V
    .locals 7

    .line 1
    iget-object p0, p0, Lcom/android/server/audio/AudioService$AudioServiceInternal;->this$0:Lcom/android/server/audio/AudioService;

    .line 3
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    .line 5
    const/16 v1, 0x2d

    .line 7
    const/4 v2, 0x2

    .line 8
    const/4 v4, 0x0

    .line 9
    const/4 v5, 0x0

    .line 10
    const/4 v6, 0x0

    .line 11
    move v3, p1

    .line 12
    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 15
    return-void
.end method

.method public final setAccessibilityServiceUids(Landroid/util/IntArray;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioServiceInternal;->this$0:Lcom/android/server/audio/AudioService;

    .line 3
    iget v1, v0, Lcom/android/server/audio/AudioService;->mPlatformType:I

    .line 5
    const/4 v2, 0x3

    .line 6
    if-ne v1, v2, :cond_0

    .line 8
    return-void

    .line 9
    :cond_0
    iget-object v0, v0, Lcom/android/server/audio/AudioService;->mAccessibilityServiceUidsLock:Ljava/lang/Object;

    .line 11
    monitor-enter v0

    .line 12
    :try_start_0
    invoke-virtual {p1}, Landroid/util/IntArray;->size()I

    .line 15
    move-result v1

    .line 16
    if-nez v1, :cond_1

    .line 18
    iget-object p1, p0, Lcom/android/server/audio/AudioService$AudioServiceInternal;->this$0:Lcom/android/server/audio/AudioService;

    .line 20
    const/4 v1, 0x0

    .line 21
    iput-object v1, p1, Lcom/android/server/audio/AudioService;->mAccessibilityServiceUids:[I

    .line 23
    goto :goto_4

    .line 24
    :catchall_0
    move-exception p0

    .line 25
    goto :goto_5

    .line 26
    :cond_1
    iget-object v1, p0, Lcom/android/server/audio/AudioService$AudioServiceInternal;->this$0:Lcom/android/server/audio/AudioService;

    .line 28
    iget-object v1, v1, Lcom/android/server/audio/AudioService;->mAccessibilityServiceUids:[I

    .line 30
    const/4 v2, 0x1

    .line 31
    const/4 v3, 0x0

    .line 32
    if-eqz v1, :cond_3

    .line 34
    array-length v1, v1

    .line 35
    invoke-virtual {p1}, Landroid/util/IntArray;->size()I

    .line 38
    move-result v4

    .line 39
    if-eq v1, v4, :cond_2

    .line 41
    goto :goto_0

    .line 42
    :cond_2
    move v1, v3

    .line 43
    goto :goto_1

    .line 44
    :cond_3
    :goto_0
    move v1, v2

    .line 45
    :goto_1
    if-nez v1, :cond_5

    .line 47
    :goto_2
    iget-object v4, p0, Lcom/android/server/audio/AudioService$AudioServiceInternal;->this$0:Lcom/android/server/audio/AudioService;

    .line 49
    iget-object v4, v4, Lcom/android/server/audio/AudioService;->mAccessibilityServiceUids:[I

    .line 51
    array-length v4, v4

    .line 52
    if-ge v3, v4, :cond_5

    .line 54
    invoke-virtual {p1, v3}, Landroid/util/IntArray;->get(I)I

    .line 57
    move-result v4

    .line 58
    iget-object v5, p0, Lcom/android/server/audio/AudioService$AudioServiceInternal;->this$0:Lcom/android/server/audio/AudioService;

    .line 60
    iget-object v5, v5, Lcom/android/server/audio/AudioService;->mAccessibilityServiceUids:[I

    .line 62
    aget v5, v5, v3

    .line 64
    if-eq v4, v5, :cond_4

    .line 66
    goto :goto_3

    .line 67
    :cond_4
    add-int/lit8 v3, v3, 0x1

    .line 69
    goto :goto_2

    .line 70
    :cond_5
    move v2, v1

    .line 71
    :goto_3
    if-eqz v2, :cond_6

    .line 73
    iget-object v1, p0, Lcom/android/server/audio/AudioService$AudioServiceInternal;->this$0:Lcom/android/server/audio/AudioService;

    .line 75
    invoke-virtual {p1}, Landroid/util/IntArray;->toArray()[I

    .line 78
    move-result-object p1

    .line 79
    iput-object p1, v1, Lcom/android/server/audio/AudioService;->mAccessibilityServiceUids:[I

    .line 81
    :cond_6
    :goto_4
    iget-object p0, p0, Lcom/android/server/audio/AudioService$AudioServiceInternal;->this$0:Lcom/android/server/audio/AudioService;

    .line 83
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    .line 85
    const/4 v6, 0x0

    .line 86
    const/4 v7, 0x0

    .line 87
    const/16 v2, 0x23

    .line 89
    const/4 v3, 0x0

    .line 90
    const/4 v4, 0x0

    .line 91
    const/4 v5, 0x0

    .line 92
    invoke-static/range {v1 .. v7}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 95
    monitor-exit v0

    .line 96
    return-void

    .line 97
    :goto_5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    throw p0
.end method

.method public final setActiveAssistantServicesUids(Landroid/util/IntArray;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioServiceInternal;->this$0:Lcom/android/server/audio/AudioService;

    .line 3
    iget-object v0, v0, Lcom/android/server/audio/AudioService;->mSettingsLock:Ljava/lang/Object;

    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    invoke-virtual {p1}, Landroid/util/IntArray;->size()I

    .line 9
    move-result v1

    .line 10
    if-nez v1, :cond_0

    .line 12
    iget-object p1, p0, Lcom/android/server/audio/AudioService$AudioServiceInternal;->this$0:Lcom/android/server/audio/AudioService;

    .line 14
    sget-object v1, Lcom/android/server/audio/AudioService;->NO_ACTIVE_ASSISTANT_SERVICE_UIDS:[I

    .line 16
    iput-object v1, p1, Lcom/android/server/audio/AudioService;->mActiveAssistantServiceUids:[I

    .line 18
    goto :goto_4

    .line 19
    :catchall_0
    move-exception p0

    .line 20
    goto :goto_5

    .line 21
    :cond_0
    iget-object v1, p0, Lcom/android/server/audio/AudioService$AudioServiceInternal;->this$0:Lcom/android/server/audio/AudioService;

    .line 23
    iget-object v1, v1, Lcom/android/server/audio/AudioService;->mActiveAssistantServiceUids:[I

    .line 25
    const/4 v2, 0x0

    .line 26
    const/4 v3, 0x1

    .line 27
    if-eqz v1, :cond_2

    .line 29
    array-length v1, v1

    .line 30
    invoke-virtual {p1}, Landroid/util/IntArray;->size()I

    .line 33
    move-result v4

    .line 34
    if-eq v1, v4, :cond_1

    .line 36
    goto :goto_0

    .line 37
    :cond_1
    move v1, v2

    .line 38
    goto :goto_1

    .line 39
    :cond_2
    :goto_0
    move v1, v3

    .line 40
    :goto_1
    if-nez v1, :cond_4

    .line 42
    :goto_2
    iget-object v4, p0, Lcom/android/server/audio/AudioService$AudioServiceInternal;->this$0:Lcom/android/server/audio/AudioService;

    .line 44
    iget-object v4, v4, Lcom/android/server/audio/AudioService;->mActiveAssistantServiceUids:[I

    .line 46
    array-length v4, v4

    .line 47
    if-ge v2, v4, :cond_4

    .line 49
    invoke-virtual {p1, v2}, Landroid/util/IntArray;->get(I)I

    .line 52
    move-result v4

    .line 53
    iget-object v5, p0, Lcom/android/server/audio/AudioService$AudioServiceInternal;->this$0:Lcom/android/server/audio/AudioService;

    .line 55
    iget-object v5, v5, Lcom/android/server/audio/AudioService;->mActiveAssistantServiceUids:[I

    .line 57
    aget v5, v5, v2

    .line 59
    if-eq v4, v5, :cond_3

    .line 61
    goto :goto_3

    .line 62
    :cond_3
    add-int/lit8 v2, v2, 0x1

    .line 64
    goto :goto_2

    .line 65
    :cond_4
    move v3, v1

    .line 66
    :goto_3
    if-eqz v3, :cond_5

    .line 68
    iget-object v1, p0, Lcom/android/server/audio/AudioService$AudioServiceInternal;->this$0:Lcom/android/server/audio/AudioService;

    .line 70
    invoke-virtual {p1}, Landroid/util/IntArray;->toArray()[I

    .line 73
    move-result-object p1

    .line 74
    iput-object p1, v1, Lcom/android/server/audio/AudioService;->mActiveAssistantServiceUids:[I

    .line 76
    :cond_5
    :goto_4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    iget-object p0, p0, Lcom/android/server/audio/AudioService$AudioServiceInternal;->this$0:Lcom/android/server/audio/AudioService;

    .line 79
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    .line 81
    const/16 v1, 0x2e

    .line 83
    const/4 v2, 0x0

    .line 84
    const/4 v3, 0x0

    .line 85
    const/4 v4, 0x0

    .line 86
    const/4 v5, 0x0

    .line 87
    const/4 v6, 0x0

    .line 88
    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 91
    return-void

    .line 92
    :goto_5
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 93
    throw p0
.end method

.method public final setInputMethodServiceUid(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioServiceInternal;->this$0:Lcom/android/server/audio/AudioService;

    .line 3
    iget-object v0, v0, Lcom/android/server/audio/AudioService;->mInputMethodServiceUidLock:Ljava/lang/Object;

    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/AudioService$AudioServiceInternal;->this$0:Lcom/android/server/audio/AudioService;

    .line 8
    iget v2, v1, Lcom/android/server/audio/AudioService;->mInputMethodServiceUid:I

    .line 10
    if-eq v2, p1, :cond_0

    .line 12
    iget-object v1, v1, Lcom/android/server/audio/AudioService;->mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

    .line 14
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    invoke-static {p1}, Landroid/media/AudioSystem;->setCurrentImeUid(I)I

    .line 20
    iget-object p0, p0, Lcom/android/server/audio/AudioService$AudioServiceInternal;->this$0:Lcom/android/server/audio/AudioService;

    .line 22
    iput p1, p0, Lcom/android/server/audio/AudioService;->mInputMethodServiceUid:I

    .line 24
    goto :goto_0

    .line 25
    :catchall_0
    move-exception p0

    .line 26
    goto :goto_1

    .line 27
    :cond_0
    :goto_0
    monitor-exit v0

    .line 28
    return-void

    .line 29
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    throw p0
.end method

.method public final setRingerModeDelegate(Landroid/media/AudioManagerInternal$RingerModeDelegate;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioServiceInternal;->this$0:Lcom/android/server/audio/AudioService;

    .line 3
    iput-object p1, v0, Lcom/android/server/audio/AudioService;->mRingerModeDelegate:Landroid/media/AudioManagerInternal$RingerModeDelegate;

    .line 5
    if-eqz p1, :cond_0

    .line 7
    iget-object p1, v0, Lcom/android/server/audio/AudioService;->mSettingsLock:Ljava/lang/Object;

    .line 9
    monitor-enter p1

    .line 10
    :try_start_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioServiceInternal;->this$0:Lcom/android/server/audio/AudioService;

    .line 12
    invoke-virtual {v0}, Lcom/android/server/audio/AudioService;->updateRingerAndZenModeAffectedStreams()Z

    .line 15
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    iget-object p1, p0, Lcom/android/server/audio/AudioService$AudioServiceInternal;->this$0:Lcom/android/server/audio/AudioService;

    .line 18
    invoke-virtual {p1}, Lcom/android/server/audio/AudioService;->getRingerModeInternal()I

    .line 21
    move-result p1

    .line 22
    const-string v0, "AS.AudioService.setRingerModeDelegate"

    .line 24
    invoke-virtual {p0, p1, v0}, Lcom/android/server/audio/AudioService$AudioServiceInternal;->setRingerModeInternal(ILjava/lang/String;)V

    .line 27
    goto :goto_0

    .line 28
    :catchall_0
    move-exception p0

    .line 29
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 30
    throw p0

    .line 31
    :cond_0
    :goto_0
    return-void
.end method

.method public final setRingerModeInternal(ILjava/lang/String;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/audio/AudioService$AudioServiceInternal;->this$0:Lcom/android/server/audio/AudioService;

    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/android/server/audio/AudioService;->setRingerModeInternal(ILjava/lang/String;)V

    .line 6
    return-void
.end method

.method public final silenceRingerModeInternal(Ljava/lang/String;)V
    .locals 10

    .line 1
    iget-object p0, p0, Lcom/android/server/audio/AudioService$AudioServiceInternal;->this$0:Lcom/android/server/audio/AudioService;

    .line 3
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 8
    move-result-object v0

    .line 9
    const v1, 0x1110289

    .line 12
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 15
    move-result v0

    .line 16
    const/4 v1, 0x0

    .line 17
    if-eqz v0, :cond_0

    .line 19
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mSettings:Lcom/android/server/audio/SettingsAdapter;

    .line 21
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    .line 23
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    const-string/jumbo v0, "volume_hush_gesture"

    .line 29
    const/4 v3, -0x2

    .line 30
    invoke-static {v2, v0, v1, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 33
    move-result v0

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    move v0, v1

    .line 36
    :goto_0
    const/4 v2, 0x1

    .line 37
    if-eq v0, v2, :cond_2

    .line 39
    const/4 v3, 0x2

    .line 40
    if-eq v0, v3, :cond_1

    .line 42
    const/4 v0, 0x0

    .line 43
    move-object v7, v0

    .line 44
    move v2, v1

    .line 45
    move v3, v2

    .line 46
    goto :goto_1

    .line 47
    :cond_1
    invoke-static {v2}, Landroid/os/VibrationEffect;->get(I)Landroid/os/VibrationEffect;

    .line 50
    move-result-object v0

    .line 51
    const v2, 0x104100a

    .line 54
    move-object v7, v0

    .line 55
    move v3, v2

    .line 56
    move v2, v1

    .line 57
    goto :goto_1

    .line 58
    :cond_2
    const/4 v0, 0x5

    .line 59
    invoke-static {v0}, Landroid/os/VibrationEffect;->get(I)Landroid/os/VibrationEffect;

    .line 62
    move-result-object v0

    .line 63
    const v3, 0x104100b

    .line 66
    move-object v7, v0

    .line 67
    :goto_1
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mHasVibrator:Z

    .line 69
    if-nez v0, :cond_3

    .line 71
    goto :goto_2

    .line 72
    :cond_3
    if-nez v7, :cond_4

    .line 74
    goto :goto_2

    .line 75
    :cond_4
    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mVibrator:Landroid/os/Vibrator;

    .line 77
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 80
    move-result v5

    .line 81
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    .line 83
    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    .line 86
    move-result-object v6

    .line 87
    sget-object v9, Lcom/android/server/audio/AudioService;->TOUCH_VIBRATION_ATTRIBUTES:Landroid/os/VibrationAttributes;

    .line 89
    move-object v8, p1

    .line 90
    invoke-virtual/range {v4 .. v9}, Landroid/os/Vibrator;->vibrate(ILjava/lang/String;Landroid/os/VibrationEffect;Ljava/lang/String;Landroid/os/VibrationAttributes;)V

    .line 93
    :goto_2
    invoke-virtual {p0, v2, p1}, Lcom/android/server/audio/AudioService;->setRingerModeInternal(ILjava/lang/String;)V

    .line 96
    iget-object p0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    .line 98
    invoke-static {p0, v3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    .line 101
    move-result-object p0

    .line 102
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 105
    return-void
.end method

.method public final updateRingerModeAffectedStreamsInternal()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioServiceInternal;->this$0:Lcom/android/server/audio/AudioService;

    .line 3
    iget-object v0, v0, Lcom/android/server/audio/AudioService;->mSettingsLock:Ljava/lang/Object;

    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/AudioService$AudioServiceInternal;->this$0:Lcom/android/server/audio/AudioService;

    .line 8
    invoke-virtual {v1}, Lcom/android/server/audio/AudioService;->updateRingerAndZenModeAffectedStreams()Z

    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_0

    .line 14
    iget-object p0, p0, Lcom/android/server/audio/AudioService$AudioServiceInternal;->this$0:Lcom/android/server/audio/AudioService;

    .line 16
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->getRingerModeInternal()I

    .line 19
    move-result v1

    .line 20
    const/4 v2, 0x0

    .line 21
    invoke-virtual {p0, v1, v2}, Lcom/android/server/audio/AudioService;->setRingerModeInt(IZ)V

    .line 24
    goto :goto_0

    .line 25
    :catchall_0
    move-exception p0

    .line 26
    goto :goto_1

    .line 27
    :cond_0
    :goto_0
    monitor-exit v0

    .line 28
    return-void

    .line 29
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    throw p0
.end method
