.class public final Lcom/android/server/audio/SoundDoseHelper$1;
.super Landroid/media/ISoundDoseCallback$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/audio/SoundDoseHelper;


# direct methods
.method public constructor <init>(Lcom/android/server/audio/SoundDoseHelper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/audio/SoundDoseHelper$1;->this$0:Lcom/android/server/audio/SoundDoseHelper;

    .line 3
    invoke-direct {p0}, Landroid/media/ISoundDoseCallback$Stub;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final onMomentaryExposure(FI)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/audio/SoundDoseHelper$1;->this$0:Lcom/android/server/audio/SoundDoseHelper;

    .line 3
    iget-object v0, v0, Lcom/android/server/audio/SoundDoseHelper;->mEnableCsd:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 5
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 11
    const-string p0, "AS.SoundDoseHelper"

    .line 13
    const-string/jumbo p1, "onMomentaryExposure: csd not supported, ignoring callback"

    .line 16
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    return-void

    .line 20
    :cond_0
    const-string v0, "AS.SoundDoseHelper"

    .line 22
    new-instance v1, Ljava/lang/StringBuilder;

    .line 24
    const-string v2, "DeviceId "

    .line 26
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 29
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 32
    const-string p2, " triggered momentary exposure with value: "

    .line 34
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 40
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    move-result-object p2

    .line 44
    invoke-static {v0, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    iget-object p2, p0, Lcom/android/server/audio/SoundDoseHelper$1;->this$0:Lcom/android/server/audio/SoundDoseHelper;

    .line 49
    iget-object p2, p2, Lcom/android/server/audio/SoundDoseHelper;->mLogger:Lcom/android/server/utils/EventLogger;

    .line 51
    new-instance v0, Lcom/android/server/audio/AudioServiceEvents$SoundDoseEvent;

    .line 53
    const/4 v1, 0x0

    .line 54
    const-wide/16 v2, 0x0

    .line 56
    invoke-direct {v0, v1, v2, v3, p1}, Lcom/android/server/audio/AudioServiceEvents$SoundDoseEvent;-><init>(IJF)V

    .line 59
    invoke-virtual {p2, v0}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 62
    iget-object p1, p0, Lcom/android/server/audio/SoundDoseHelper$1;->this$0:Lcom/android/server/audio/SoundDoseHelper;

    .line 64
    iget-object p1, p1, Lcom/android/server/audio/SoundDoseHelper;->mCsdStateLock:Ljava/lang/Object;

    .line 66
    monitor-enter p1

    .line 67
    :try_start_0
    iget-object p2, p0, Lcom/android/server/audio/SoundDoseHelper$1;->this$0:Lcom/android/server/audio/SoundDoseHelper;

    .line 69
    iget-wide v4, p2, Lcom/android/server/audio/SoundDoseHelper;->mLastMomentaryExposureTimeMs:J

    .line 71
    cmp-long p2, v4, v2

    .line 73
    if-ltz p2, :cond_1

    .line 75
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 78
    move-result-wide v2

    .line 79
    iget-object p2, p0, Lcom/android/server/audio/SoundDoseHelper$1;->this$0:Lcom/android/server/audio/SoundDoseHelper;

    .line 81
    iget-wide v4, p2, Lcom/android/server/audio/SoundDoseHelper;->mLastMomentaryExposureTimeMs:J

    .line 83
    sub-long/2addr v2, v4

    .line 84
    const-wide/32 v4, 0x44aa200

    .line 87
    cmp-long p2, v2, v4

    .line 89
    if-ltz p2, :cond_2

    .line 91
    goto :goto_0

    .line 92
    :catchall_0
    move-exception p0

    .line 93
    goto :goto_1

    .line 94
    :cond_1
    :goto_0
    iget-object p2, p0, Lcom/android/server/audio/SoundDoseHelper$1;->this$0:Lcom/android/server/audio/SoundDoseHelper;

    .line 96
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 99
    move-result-wide v0

    .line 100
    iput-wide v0, p2, Lcom/android/server/audio/SoundDoseHelper;->mLastMomentaryExposureTimeMs:J

    .line 102
    const/4 v1, 0x1

    .line 103
    :cond_2
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    if-eqz v1, :cond_3

    .line 106
    iget-object p0, p0, Lcom/android/server/audio/SoundDoseHelper$1;->this$0:Lcom/android/server/audio/SoundDoseHelper;

    .line 108
    iget-object p1, p0, Lcom/android/server/audio/SoundDoseHelper;->mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

    .line 110
    const/4 p2, 0x3

    .line 111
    invoke-static {p0, p2}, Lcom/android/server/audio/SoundDoseHelper;->-$$Nest$mgetTimeoutMsForWarning(Lcom/android/server/audio/SoundDoseHelper;I)I

    .line 114
    move-result p0

    .line 115
    invoke-virtual {p1, p2, p0}, Lcom/android/server/audio/AudioService$VolumeController;->postDisplayCsdWarning(II)V

    .line 118
    :cond_3
    return-void

    .line 119
    :goto_1
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 120
    throw p0
.end method

.method public final onNewCsdValue(F[Landroid/media/SoundDoseRecord;)V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/android/server/audio/SoundDoseHelper$1;->this$0:Lcom/android/server/audio/SoundDoseHelper;

    .line 3
    iget-object v0, v0, Lcom/android/server/audio/SoundDoseHelper;->mEnableCsd:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 5
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 11
    const-string p0, "AS.SoundDoseHelper"

    .line 13
    const-string/jumbo p1, "onNewCsdValue: csd not supported, ignoring value"

    .line 16
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    return-void

    .line 20
    :cond_0
    const-string v0, "AS.SoundDoseHelper"

    .line 22
    new-instance v1, Ljava/lang/StringBuilder;

    .line 24
    const-string/jumbo v2, "onNewCsdValue: "

    .line 27
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 30
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 33
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    move-result-object v1

    .line 37
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    iget-object v0, p0, Lcom/android/server/audio/SoundDoseHelper$1;->this$0:Lcom/android/server/audio/SoundDoseHelper;

    .line 42
    iget-object v0, v0, Lcom/android/server/audio/SoundDoseHelper;->mCsdStateLock:Ljava/lang/Object;

    .line 44
    monitor-enter v0

    .line 45
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/SoundDoseHelper$1;->this$0:Lcom/android/server/audio/SoundDoseHelper;

    .line 47
    iget v2, v1, Lcom/android/server/audio/SoundDoseHelper;->mCurrentCsd:F

    .line 49
    cmpg-float v3, v2, p1

    .line 51
    const/high16 v4, 0x3f800000    # 1.0f

    .line 53
    if-gez v3, :cond_2

    .line 55
    iget v3, v1, Lcom/android/server/audio/SoundDoseHelper;->mNextCsdWarning:F

    .line 57
    cmpg-float v2, v2, v3

    .line 59
    if-gez v2, :cond_3

    .line 61
    cmpl-float v2, p1, v3

    .line 63
    if-ltz v2, :cond_3

    .line 65
    const/high16 v2, 0x40a00000    # 5.0f

    .line 67
    cmpl-float v2, v3, v2

    .line 69
    if-nez v2, :cond_1

    .line 71
    iget-object v2, v1, Lcom/android/server/audio/SoundDoseHelper;->mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

    .line 73
    const/4 v3, 0x2

    .line 74
    invoke-static {v1, v3}, Lcom/android/server/audio/SoundDoseHelper;->-$$Nest$mgetTimeoutMsForWarning(Lcom/android/server/audio/SoundDoseHelper;I)I

    .line 77
    move-result v1

    .line 78
    invoke-virtual {v2, v3, v1}, Lcom/android/server/audio/AudioService$VolumeController;->postDisplayCsdWarning(II)V

    .line 81
    iget-object v1, p0, Lcom/android/server/audio/SoundDoseHelper$1;->this$0:Lcom/android/server/audio/SoundDoseHelper;

    .line 83
    iget-object v1, v1, Lcom/android/server/audio/SoundDoseHelper;->mAudioService:Lcom/android/server/audio/AudioService;

    .line 85
    iget-object v5, v1, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    .line 87
    const/4 v8, 0x0

    .line 88
    const/4 v9, 0x0

    .line 89
    const/4 v10, 0x0

    .line 90
    const/4 v11, 0x0

    .line 91
    const/16 v6, 0x3ef

    .line 93
    const/4 v7, 0x2

    .line 94
    invoke-static/range {v5 .. v11}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 97
    goto :goto_0

    .line 98
    :catchall_0
    move-exception p0

    .line 99
    goto :goto_2

    .line 100
    :cond_1
    iget-object v1, v1, Lcom/android/server/audio/SoundDoseHelper;->mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

    .line 102
    const/4 v2, 0x1

    .line 103
    const/16 v3, 0x1b58

    .line 105
    invoke-virtual {v1, v2, v3}, Lcom/android/server/audio/AudioService$VolumeController;->postDisplayCsdWarning(II)V

    .line 108
    :goto_0
    iget-object v1, p0, Lcom/android/server/audio/SoundDoseHelper$1;->this$0:Lcom/android/server/audio/SoundDoseHelper;

    .line 110
    iget v2, v1, Lcom/android/server/audio/SoundDoseHelper;->mNextCsdWarning:F

    .line 112
    add-float/2addr v2, v4

    .line 113
    iput v2, v1, Lcom/android/server/audio/SoundDoseHelper;->mNextCsdWarning:F

    .line 115
    goto :goto_1

    .line 116
    :cond_2
    iget v2, v1, Lcom/android/server/audio/SoundDoseHelper;->mNextCsdWarning:F

    .line 118
    sub-float v3, v2, v4

    .line 120
    cmpg-float v4, p1, v3

    .line 122
    if-gez v4, :cond_3

    .line 124
    const/high16 v4, 0x40000000    # 2.0f

    .line 126
    cmpl-float v2, v2, v4

    .line 128
    if-ltz v2, :cond_3

    .line 130
    iput v3, v1, Lcom/android/server/audio/SoundDoseHelper;->mNextCsdWarning:F

    .line 132
    :cond_3
    :goto_1
    iget-object p0, p0, Lcom/android/server/audio/SoundDoseHelper$1;->this$0:Lcom/android/server/audio/SoundDoseHelper;

    .line 134
    iput p1, p0, Lcom/android/server/audio/SoundDoseHelper;->mCurrentCsd:F

    .line 136
    invoke-static {p0, p2, p1}, Lcom/android/server/audio/SoundDoseHelper;->-$$Nest$mupdateSoundDoseRecords_l(Lcom/android/server/audio/SoundDoseHelper;[Landroid/media/SoundDoseRecord;F)V

    .line 139
    monitor-exit v0

    .line 140
    return-void

    .line 141
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 142
    throw p0
.end method
