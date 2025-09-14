.class public Lcom/android/server/audio/AudioService$VolumeStreamState;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mCurrentDeviceManager:Lcom/android/server/audio/CurrentDeviceManager;

.field public final mIndexMap:Lcom/android/server/audio/AudioService$VolumeStreamState$1;

.field public final mIndexMax:I

.field public final mIndexMin:I

.field public mIndexMinNoPerm:I

.field public mIsMuted:Z

.field public mIsMutedInternally:Z

.field public mObservedDeviceSet:Ljava/util/Set;

.field public final mStreamDevicesChanged:Landroid/content/Intent;

.field public final mStreamDevicesChangedOptions:Landroid/os/Bundle;

.field public final mStreamType:I

.field public mVolumeGroupState:Lcom/android/server/audio/AudioService$VolumeGroupState;

.field public mVolumeIndexSettingName:Ljava/lang/String;

.field public final synthetic this$0:Lcom/android/server/audio/AudioService;


# direct methods
.method public constructor <init>(ILcom/android/server/audio/AudioService;Ljava/lang/String;)V
    .locals 11

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p2, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    .line 6
    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mVolumeGroupState:Lcom/android/server/audio/AudioService$VolumeGroupState;

    .line 9
    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIsMuted:Z

    .line 12
    iput-boolean v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIsMutedInternally:Z

    .line 14
    new-instance v0, Ljava/util/TreeSet;

    .line 16
    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    .line 19
    iput-object v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mObservedDeviceSet:Ljava/util/Set;

    .line 21
    new-instance v0, Lcom/android/server/audio/AudioService$VolumeStreamState$1;

    .line 23
    invoke-direct {v0, p0}, Lcom/android/server/audio/AudioService$VolumeStreamState$1;-><init>(Lcom/android/server/audio/AudioService$VolumeStreamState;)V

    .line 26
    iput-object v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Lcom/android/server/audio/AudioService$VolumeStreamState$1;

    .line 28
    new-instance v0, Landroid/content/Intent;

    .line 30
    const-string v1, "android.media.VOLUME_CHANGED_ACTION"

    .line 32
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 35
    new-instance v0, Lcom/android/server/audio/CurrentDeviceManager;

    .line 37
    invoke-direct {v0}, Lcom/android/server/audio/CurrentDeviceManager;-><init>()V

    .line 40
    iput-object v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mCurrentDeviceManager:Lcom/android/server/audio/CurrentDeviceManager;

    .line 42
    iput-object p3, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mVolumeIndexSettingName:Ljava/lang/String;

    .line 44
    iput p1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    .line 46
    sget-object p3, Lcom/android/server/audio/AudioService;->MIN_STREAM_VOLUME:[I

    .line 48
    aget p3, p3, p1

    .line 50
    mul-int/lit8 p3, p3, 0xa

    .line 52
    iput p3, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMin:I

    .line 54
    iput p3, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMinNoPerm:I

    .line 56
    sget-object v0, Lcom/android/server/audio/AudioService;->MAX_STREAM_VOLUME:[I

    .line 58
    aget v0, v0, p1

    .line 60
    mul-int/lit8 v0, v0, 0xa

    .line 62
    iput v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I

    .line 64
    div-int/lit8 p3, p3, 0xa

    .line 66
    div-int/lit8 v0, v0, 0xa

    .line 68
    invoke-static {p1, p3, v0}, Landroid/media/AudioSystem;->initStreamVolume(III)I

    .line 71
    move-result p3

    .line 72
    const/4 v0, 0x1

    .line 73
    if-eqz p3, :cond_0

    .line 75
    sget-object v2, Lcom/android/server/audio/AudioService;->sLifecycleLogger:Lcom/android/server/utils/EventLogger;

    .line 77
    new-instance v3, Lcom/android/server/utils/EventLogger$StringEvent;

    .line 79
    const-string v4, "VSS() stream:"

    .line 81
    const-string v5, " initStreamVolume="

    .line 83
    invoke-static {p1, p3, v4, v5}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 86
    move-result-object p3

    .line 87
    invoke-direct {v3, p3}, Lcom/android/server/utils/EventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    .line 90
    const-string p3, "AS.AudioService"

    .line 92
    invoke-virtual {v3, v0, p3}, Lcom/android/server/utils/EventLogger$Event;->printLog(ILjava/lang/String;)Lcom/android/server/utils/EventLogger$Event;

    .line 95
    invoke-virtual {v2, v3}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 98
    iget-object v4, p2, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    .line 100
    const/4 v7, 0x0

    .line 101
    const/4 v8, 0x0

    .line 102
    const/16 v5, 0x22

    .line 104
    const/4 v6, 0x1

    .line 105
    const-string v9, "VSS()"

    .line 107
    const/16 v10, 0x7d0

    .line 109
    invoke-static/range {v4 .. v10}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 112
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService$VolumeStreamState;->readSettings()V

    .line 115
    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    .line 118
    move-result-object p2

    .line 119
    invoke-virtual {p2, v0}, Landroid/app/BroadcastOptions;->setDeliveryGroupPolicy(I)Landroid/app/BroadcastOptions;

    .line 122
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 125
    move-result-object p3

    .line 126
    invoke-virtual {p2, v1, p3}, Landroid/app/BroadcastOptions;->setDeliveryGroupMatchingKey(Ljava/lang/String;Ljava/lang/String;)Landroid/app/BroadcastOptions;

    .line 129
    const/4 p3, 0x2

    .line 130
    invoke-virtual {p2, p3}, Landroid/app/BroadcastOptions;->setDeferralPolicy(I)Landroid/app/BroadcastOptions;

    .line 133
    invoke-virtual {p2}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    .line 136
    new-instance p2, Landroid/content/Intent;

    .line 138
    const-string v1, "android.media.STREAM_DEVICES_CHANGED_ACTION"

    .line 140
    invoke-direct {p2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 143
    iput-object p2, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamDevicesChanged:Landroid/content/Intent;

    .line 145
    const-string v2, "android.media.EXTRA_VOLUME_STREAM_TYPE"

    .line 147
    invoke-virtual {p2, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 150
    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    .line 153
    move-result-object p2

    .line 154
    invoke-virtual {p2, v0}, Landroid/app/BroadcastOptions;->setDeliveryGroupPolicy(I)Landroid/app/BroadcastOptions;

    .line 157
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 160
    move-result-object p1

    .line 161
    invoke-virtual {p2, v1, p1}, Landroid/app/BroadcastOptions;->setDeliveryGroupMatchingKey(Ljava/lang/String;Ljava/lang/String;)Landroid/app/BroadcastOptions;

    .line 164
    invoke-virtual {p2, p3}, Landroid/app/BroadcastOptions;->setDeferralPolicy(I)Landroid/app/BroadcastOptions;

    .line 167
    invoke-virtual {p2}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    .line 170
    move-result-object p1

    .line 171
    iput-object p1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamDevicesChangedOptions:Landroid/os/Bundle;

    .line 173
    return-void
.end method


# virtual methods
.method public final applyAllVolumes()V
    .locals 15

    .line 1
    const/4 v0, 0x1

    .line 2
    const-class v1, Lcom/android/server/audio/AudioService$VolumeStreamState;

    .line 4
    monitor-enter v1

    .line 5
    const/4 v2, 0x0

    .line 6
    move v3, v2

    .line 7
    move v4, v3

    .line 8
    :goto_0
    :try_start_0
    iget-object v5, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Lcom/android/server/audio/AudioService$VolumeStreamState$1;

    .line 10
    invoke-virtual {v5}, Landroid/util/SparseIntArray;->size()I

    .line 13
    move-result v5

    .line 14
    const/4 v6, 0x3

    .line 15
    const/high16 v7, 0x40000000    # 2.0f

    .line 17
    if-ge v3, v5, :cond_a

    .line 19
    iget-object v5, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Lcom/android/server/audio/AudioService$VolumeStreamState$1;

    .line 21
    invoke-virtual {v5, v3}, Landroid/util/SparseIntArray;->keyAt(I)I

    .line 24
    move-result v5

    .line 25
    if-eq v5, v7, :cond_9

    .line 27
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService$VolumeStreamState;->isFullyMuted()Z

    .line 30
    move-result v7

    .line 31
    if-eqz v7, :cond_0

    .line 33
    move v6, v2

    .line 34
    goto/16 :goto_2

    .line 36
    :cond_0
    invoke-static {v5}, Landroid/media/AudioSystem;->isLeAudioDeviceType(I)Z

    .line 39
    move-result v7

    .line 40
    if-eqz v7, :cond_2

    .line 42
    iget-object v7, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    .line 44
    iget-object v7, v7, Lcom/android/server/audio/AudioService;->mMode:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 46
    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 49
    move-result v7

    .line 50
    if-eqz v7, :cond_2

    .line 52
    iget v7, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    .line 54
    if-eqz v7, :cond_2

    .line 56
    if-ne v7, v6, :cond_1

    .line 58
    invoke-virtual {p0, v5}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    .line 61
    move-result v6

    .line 62
    div-int/lit8 v6, v6, 0xa

    .line 64
    goto/16 :goto_2

    .line 66
    :catchall_0
    move-exception p0

    .line 67
    goto/16 :goto_4

    .line 69
    :cond_1
    invoke-virtual {p0, v5}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    .line 72
    move-result v6

    .line 73
    add-int/lit8 v6, v6, 0x5

    .line 75
    div-int/lit8 v6, v6, 0xa

    .line 77
    goto/16 :goto_2

    .line 79
    :cond_2
    iget-object v7, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    .line 81
    sget v8, Lcom/android/server/audio/AudioService;->BECOMING_NOISY_DELAY_MS:I

    .line 83
    invoke-virtual {v7, v5}, Lcom/android/server/audio/AudioService;->isAbsoluteVolumeDevice(I)Z

    .line 86
    move-result v7

    .line 87
    if-nez v7, :cond_7

    .line 89
    iget-object v7, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    .line 91
    invoke-virtual {v7, v5}, Lcom/android/server/audio/AudioService;->isA2dpAbsoluteVolumeDevice(I)Z

    .line 94
    move-result v7

    .line 95
    if-nez v7, :cond_7

    .line 97
    invoke-static {v5}, Landroid/media/AudioSystem;->isLeAudioDeviceType(I)Z

    .line 100
    move-result v7

    .line 101
    if-eqz v7, :cond_3

    .line 103
    goto :goto_1

    .line 104
    :cond_3
    iget-object v7, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    .line 106
    invoke-virtual {v7, v5}, Lcom/android/server/audio/AudioService;->isFullVolumeDevice(I)Z

    .line 109
    move-result v7

    .line 110
    if-eqz v7, :cond_4

    .line 112
    iget v6, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I

    .line 114
    add-int/lit8 v6, v6, 0x5

    .line 116
    div-int/lit8 v6, v6, 0xa

    .line 118
    goto :goto_2

    .line 119
    :cond_4
    const/high16 v7, 0x8000000

    .line 121
    if-ne v5, v7, :cond_5

    .line 123
    invoke-static {}, Lcom/android/media/audio/Flags;->absVolumeIndexFix()Z

    .line 126
    iget v6, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I

    .line 128
    add-int/lit8 v6, v6, 0x5

    .line 130
    div-int/lit8 v6, v6, 0xa

    .line 132
    goto :goto_2

    .line 133
    :cond_5
    iget v7, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    .line 135
    if-ne v7, v6, :cond_6

    .line 137
    iget-object v6, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Lcom/android/server/audio/AudioService$VolumeStreamState$1;

    .line 139
    invoke-virtual {v6, v3}, Landroid/util/SparseIntArray;->valueAt(I)I

    .line 142
    move-result v6

    .line 143
    div-int/lit8 v6, v6, 0xa

    .line 145
    goto :goto_2

    .line 146
    :cond_6
    iget-object v6, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Lcom/android/server/audio/AudioService$VolumeStreamState$1;

    .line 148
    invoke-virtual {v6, v3}, Landroid/util/SparseIntArray;->valueAt(I)I

    .line 151
    move-result v6

    .line 152
    add-int/lit8 v6, v6, 0x5

    .line 154
    div-int/lit8 v6, v6, 0xa

    .line 156
    goto :goto_2

    .line 157
    :cond_7
    :goto_1
    invoke-static {}, Lcom/android/media/audio/Flags;->absVolumeIndexFix()Z

    .line 160
    iget v4, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    .line 162
    const/4 v6, 0x2

    .line 163
    if-ne v4, v6, :cond_8

    .line 165
    iget-object v4, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Lcom/android/server/audio/AudioService$VolumeStreamState$1;

    .line 167
    invoke-virtual {v4, v3}, Landroid/util/SparseIntArray;->valueAt(I)I

    .line 170
    move-result v4

    .line 171
    add-int/lit8 v4, v4, 0x5

    .line 173
    div-int/lit8 v6, v4, 0xa

    .line 175
    move v4, v2

    .line 176
    goto :goto_2

    .line 177
    :cond_8
    invoke-virtual {p0, v5}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndexDividedBy10(I)I

    .line 180
    move-result v4

    .line 181
    invoke-virtual {p0, v4}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getAbsoluteVolumeIndex(I)I

    .line 184
    move-result v6

    .line 185
    move v4, v0

    .line 186
    :goto_2
    iget-object v7, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    .line 188
    iget-object v8, v7, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    .line 190
    const/4 v10, 0x0

    .line 191
    const/4 v14, 0x0

    .line 192
    const/16 v9, 0x3ee

    .line 194
    move v11, v5

    .line 195
    move v12, v4

    .line 196
    move-object v13, p0

    .line 197
    invoke-static/range {v8 .. v14}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 200
    invoke-virtual {p0, v6, v5}, Lcom/android/server/audio/AudioService$VolumeStreamState;->setStreamVolumeIndex(II)V

    .line 203
    :cond_9
    add-int/2addr v3, v0

    .line 204
    goto/16 :goto_0

    .line 206
    :cond_a
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService$VolumeStreamState;->isFullyMuted()Z

    .line 209
    move-result v0

    .line 210
    if-eqz v0, :cond_b

    .line 212
    goto :goto_3

    .line 213
    :cond_b
    iget v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    .line 215
    if-ne v0, v6, :cond_c

    .line 217
    invoke-virtual {p0, v7}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    .line 220
    move-result v0

    .line 221
    div-int/lit8 v2, v0, 0xa

    .line 223
    goto :goto_3

    .line 224
    :cond_c
    invoke-virtual {p0, v7}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    .line 227
    move-result v0

    .line 228
    add-int/lit8 v0, v0, 0x5

    .line 230
    div-int/lit8 v2, v0, 0xa

    .line 232
    :goto_3
    invoke-virtual {p0, v2, v7}, Lcom/android/server/audio/AudioService$VolumeStreamState;->setStreamVolumeIndex(II)V

    .line 235
    monitor-exit v1

    .line 236
    return-void

    .line 237
    :goto_4
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 238
    throw p0
.end method

.method public applyDeviceVolume_syncVSS(I)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService$VolumeStreamState;->isFullyMuted()Z

    .line 5
    move-result v1

    .line 6
    if-eqz v1, :cond_0

    .line 8
    move v1, v0

    .line 9
    goto/16 :goto_1

    .line 11
    :cond_0
    invoke-static {p1}, Landroid/media/AudioSystem;->isLeAudioDeviceType(I)Z

    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_2

    .line 17
    iget-object v1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    .line 19
    iget-object v1, v1, Lcom/android/server/audio/AudioService;->mMode:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 21
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_2

    .line 27
    iget v1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    .line 29
    if-eqz v1, :cond_2

    .line 31
    const/4 v2, 0x3

    .line 32
    if-ne v1, v2, :cond_1

    .line 34
    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    .line 37
    move-result v1

    .line 38
    div-int/lit8 v1, v1, 0xa

    .line 40
    goto :goto_1

    .line 41
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    .line 44
    move-result v1

    .line 45
    add-int/lit8 v1, v1, 0x5

    .line 47
    div-int/lit8 v1, v1, 0xa

    .line 49
    goto :goto_1

    .line 50
    :cond_2
    iget-object v1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    .line 52
    sget v2, Lcom/android/server/audio/AudioService;->BECOMING_NOISY_DELAY_MS:I

    .line 54
    invoke-virtual {v1, p1}, Lcom/android/server/audio/AudioService;->isAbsoluteVolumeDevice(I)Z

    .line 57
    move-result v1

    .line 58
    if-nez v1, :cond_6

    .line 60
    iget-object v1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    .line 62
    invoke-virtual {v1, p1}, Lcom/android/server/audio/AudioService;->isA2dpAbsoluteVolumeDevice(I)Z

    .line 65
    move-result v1

    .line 66
    if-nez v1, :cond_6

    .line 68
    invoke-static {p1}, Landroid/media/AudioSystem;->isLeAudioDeviceType(I)Z

    .line 71
    move-result v1

    .line 72
    if-eqz v1, :cond_3

    .line 74
    goto :goto_0

    .line 75
    :cond_3
    iget-object v1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    .line 77
    invoke-virtual {v1, p1}, Lcom/android/server/audio/AudioService;->isFullVolumeDevice(I)Z

    .line 80
    move-result v1

    .line 81
    if-eqz v1, :cond_4

    .line 83
    iget v1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I

    .line 85
    add-int/lit8 v1, v1, 0x5

    .line 87
    div-int/lit8 v1, v1, 0xa

    .line 89
    goto :goto_1

    .line 90
    :cond_4
    const/high16 v1, 0x8000000

    .line 92
    if-ne p1, v1, :cond_5

    .line 94
    invoke-static {}, Lcom/android/media/audio/Flags;->absVolumeIndexFix()Z

    .line 97
    iget v1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I

    .line 99
    add-int/lit8 v1, v1, 0x5

    .line 101
    div-int/lit8 v1, v1, 0xa

    .line 103
    goto :goto_1

    .line 104
    :cond_5
    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    .line 107
    move-result v1

    .line 108
    div-int/lit8 v1, v1, 0xa

    .line 110
    const/high16 v2, 0x20000000

    .line 112
    if-ne p1, v2, :cond_7

    .line 114
    iget-object v2, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    .line 116
    iget-boolean v2, v2, Lcom/android/server/audio/AudioService;->mAvrcpAbsVolSupported:Z

    .line 118
    if-eqz v2, :cond_7

    .line 120
    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndexDividedBy10(I)I

    .line 123
    move-result v1

    .line 124
    invoke-virtual {p0, v1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getAbsoluteVolumeIndex(I)I

    .line 127
    move-result v1

    .line 128
    goto :goto_1

    .line 129
    :cond_6
    :goto_0
    invoke-static {}, Lcom/android/media/audio/Flags;->absVolumeIndexFix()Z

    .line 132
    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndexDividedBy10(I)I

    .line 135
    move-result v1

    .line 136
    invoke-virtual {p0, v1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getAbsoluteVolumeIndex(I)I

    .line 139
    move-result v1

    .line 140
    :cond_7
    :goto_1
    invoke-virtual {p0, v1, p1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->setStreamVolumeIndex(II)V

    .line 143
    new-instance v2, Lcom/android/server/audio/AudioService$VolumeStreamState$$ExternalSyntheticLambda1;

    .line 145
    invoke-direct {v2, p0, v1, v0}, Lcom/android/server/audio/AudioService$VolumeStreamState$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/audio/AudioService$VolumeStreamState;II)V

    .line 148
    iget-object v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    .line 150
    iget p0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    .line 152
    invoke-static {v0, p1, p0, v2}, Lcom/android/server/audio/AudioService;->-$$Nest$mapplyDeviceAlias(Lcom/android/server/audio/AudioService;IILcom/samsung/android/server/audio/DeviceAliasManager$DeviceAliasRunner;)V

    .line 155
    return-void
.end method

.method public final checkFixedVolumeDevices()V
    .locals 5

    .line 1
    const-class v0, Lcom/android/server/audio/AudioService$VolumeStreamState;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    .line 6
    iget v2, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    .line 8
    aget v1, v1, v2

    .line 10
    const/4 v2, 0x3

    .line 11
    if-ne v1, v2, :cond_2

    .line 13
    const/4 v1, 0x0

    .line 14
    :goto_0
    iget-object v2, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Lcom/android/server/audio/AudioService$VolumeStreamState$1;

    .line 16
    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    .line 19
    move-result v2

    .line 20
    if-ge v1, v2, :cond_2

    .line 22
    iget-object v2, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Lcom/android/server/audio/AudioService$VolumeStreamState$1;

    .line 24
    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    .line 27
    move-result v2

    .line 28
    iget-object v3, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Lcom/android/server/audio/AudioService$VolumeStreamState$1;

    .line 30
    invoke-virtual {v3, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    .line 33
    move-result v3

    .line 34
    iget-object v4, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    .line 36
    invoke-virtual {v4, v2}, Lcom/android/server/audio/AudioService;->isFullVolumeDevice(I)Z

    .line 39
    move-result v4

    .line 40
    if-nez v4, :cond_0

    .line 42
    iget-object v4, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    .line 44
    invoke-virtual {v4, v2}, Lcom/android/server/audio/AudioService;->isFixedVolumeDevice(I)Z

    .line 47
    move-result v4

    .line 48
    if-eqz v4, :cond_1

    .line 50
    if-eqz v3, :cond_1

    .line 52
    goto :goto_1

    .line 53
    :catchall_0
    move-exception p0

    .line 54
    goto :goto_2

    .line 55
    :cond_0
    :goto_1
    iget-object v3, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Lcom/android/server/audio/AudioService$VolumeStreamState$1;

    .line 57
    iget v4, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I

    .line 59
    invoke-virtual {v3, v2, v4}, Lcom/android/server/audio/AudioService$VolumeStreamState$1;->put(II)V

    .line 62
    :cond_1
    invoke-virtual {p0, v2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->applyDeviceVolume_syncVSS(I)V

    .line 65
    add-int/lit8 v1, v1, 0x1

    .line 67
    goto :goto_0

    .line 68
    :cond_2
    monitor-exit v0

    .line 69
    return-void

    .line 70
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    throw p0
.end method

.method public final doMute()V
    .locals 9

    .line 1
    const-class v0, Lcom/android/server/audio/AudioService$VolumeStreamState;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    .line 6
    iget v2, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    .line 8
    invoke-virtual {v1, v2}, Lcom/android/server/audio/AudioService;->getDeviceForStream(I)I

    .line 11
    move-result v1

    .line 12
    const/4 v2, 0x1

    .line 13
    invoke-virtual {p0, v1, v2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->updateVolumeGroupIndex(IZ)V

    .line 16
    iget-object v1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    .line 18
    iget-object v2, v1, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    .line 20
    const/16 v3, 0xa

    .line 22
    const/4 v4, 0x2

    .line 23
    const/4 v5, 0x0

    .line 24
    const/4 v6, 0x0

    .line 25
    const/4 v8, 0x0

    .line 26
    move-object v7, p0

    .line 27
    invoke-static/range {v2 .. v8}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 30
    monitor-exit v0

    .line 31
    return-void

    .line 32
    :catchall_0
    move-exception p0

    .line 33
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    throw p0
.end method

.method public final getAbsoluteVolumeIndex(I)I
    .locals 0

    .line 1
    invoke-static {}, Lcom/android/media/audio/Flags;->absVolumeIndexFix()Z

    .line 4
    if-nez p1, :cond_0

    .line 6
    const/4 p0, 0x0

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget p0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I

    .line 10
    add-int/lit8 p0, p0, 0x5

    .line 12
    div-int/lit8 p0, p0, 0xa

    .line 14
    :goto_0
    return p0
.end method

.method public final getIndex(I)I
    .locals 3

    .line 1
    const-class v0, Lcom/android/server/audio/AudioService$VolumeStreamState;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Lcom/android/server/audio/AudioService$VolumeStreamState$1;

    .line 6
    const/4 v2, -0x1

    .line 7
    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    .line 10
    move-result p1

    .line 11
    if-ne p1, v2, :cond_0

    .line 13
    iget-object p0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Lcom/android/server/audio/AudioService$VolumeStreamState$1;

    .line 15
    const/high16 p1, 0x40000000    # 2.0f

    .line 17
    invoke-virtual {p0, p1}, Landroid/util/SparseIntArray;->get(I)I

    .line 20
    move-result p1

    .line 21
    goto :goto_0

    .line 22
    :catchall_0
    move-exception p0

    .line 23
    goto :goto_1

    .line 24
    :cond_0
    :goto_0
    monitor-exit v0

    .line 25
    return p1

    .line 26
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    throw p0
.end method

.method public final getIndexDividedBy10(I)I
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    .line 4
    move-result p1

    .line 5
    iget p0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    .line 7
    const/4 v0, 0x3

    .line 8
    if-ne p0, v0, :cond_0

    .line 10
    add-int/lit8 p1, p1, 0x9

    .line 12
    div-int/lit8 p1, p1, 0xa

    .line 14
    return p1

    .line 15
    :cond_0
    add-int/lit8 p1, p1, 0x5

    .line 17
    div-int/lit8 p1, p1, 0xa

    .line 19
    return p1
.end method

.method public final getSettingNameForDevice(I)Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mVolumeIndexSettingName:Ljava/lang/String;

    .line 3
    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_1

    .line 11
    invoke-static {p1}, Landroid/media/AudioSystem;->getOutputDeviceName(I)Ljava/lang/String;

    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 21
    iget-object p0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mVolumeIndexSettingName:Ljava/lang/String;

    .line 23
    return-object p0

    .line 24
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 26
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 29
    iget-object p0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mVolumeIndexSettingName:Ljava/lang/String;

    .line 31
    const-string v1, "_"

    .line 33
    invoke-static {v0, p0, v1, p1}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 36
    move-result-object p0

    .line 37
    return-object p0

    .line 38
    :cond_1
    const/4 p0, 0x0

    .line 39
    return-object p0
.end method

.method public final isFullyMuted()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIsMuted:Z

    .line 3
    if-nez v0, :cond_1

    .line 5
    iget-boolean p0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIsMutedInternally:Z

    .line 7
    if-eqz p0, :cond_0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    goto :goto_1

    .line 12
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 13
    :goto_1
    return p0
.end method

.method public final mute(Ljava/lang/String;Z)Z
    .locals 3

    .line 1
    const-class v0, Lcom/android/server/audio/AudioService$VolumeStreamState;

    monitor-enter v0

    const/4 v1, 0x1

    .line 2
    :try_start_0
    invoke-virtual {p0, p1, p2, v1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->mute(Ljava/lang/String;ZZ)Z

    move-result p1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 4
    iget-object v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    iget p0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    sget v1, Lcom/android/server/audio/AudioService;->BECOMING_NOISY_DELAY_MS:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.media.STREAM_MUTE_CHANGED_ACTION"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6
    const-string v2, "android.media.EXTRA_VOLUME_STREAM_TYPE"

    invoke-virtual {v1, v2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 7
    const-string p0, "android.media.EXTRA_STREAM_VOLUME_MUTED"

    invoke-virtual {v1, p0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 p0, 0x0

    .line 8
    invoke-virtual {v0, v1, p0}, Lcom/android/server/audio/AudioService;->sendBroadcastToAll(Landroid/content/Intent;Landroid/os/Bundle;)V

    :cond_0
    return p1

    :catchall_0
    move-exception p0

    .line 9
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final mute(Ljava/lang/String;ZZ)Z
    .locals 7

    .line 10
    const-string v0, "Unmuting stream "

    const-string v1, "Do not unmuting stream "

    const-class v2, Lcom/android/server/audio/AudioService$VolumeStreamState;

    monitor-enter v2

    .line 11
    :try_start_0
    iget-boolean v3, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIsMuted:Z

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq p2, v3, :cond_0

    move v3, v5

    goto :goto_0

    :cond_0
    move v3, v4

    :goto_0
    if-eqz v3, :cond_5

    .line 12
    iget-object v6, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    iget-boolean v6, v6, Lcom/android/server/audio/AudioService;->mIsLeBroadCasting:Z

    if-nez v6, :cond_1

    iget v6, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    .line 13
    invoke-static {v6}, Lcom/android/server/audio/AudioService;->isStreamMutedByRingerOrZenMode(I)Z

    move-result v6

    if-eqz v6, :cond_3

    const-string/jumbo v6, "setLeBroadcasting"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    goto :goto_1

    :catchall_0
    move-exception p0

    goto/16 :goto_2

    :cond_1
    :goto_1
    iget-boolean v6, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIsMuted:Z

    if-eqz v6, :cond_3

    iget v6, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    if-eq v6, v5, :cond_2

    const/4 v5, 0x5

    if-ne v6, v5, :cond_3

    .line 14
    :cond_2
    const-string p1, "AS.AudioService"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " because of le broadcasting or ringer, zen mode"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    monitor-exit v2

    return v4

    .line 16
    :cond_3
    sget-object v1, Lcom/android/server/audio/AudioService;->sMuteLogger:Lcom/android/server/utils/EventLogger;

    new-instance v4, Lcom/android/server/audio/AudioServiceEvents$StreamMuteEvent;

    iget v5, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    invoke-direct {v4, v5, p1, p2}, Lcom/android/server/audio/AudioServiceEvents$StreamMuteEvent;-><init>(ILjava/lang/String;Z)V

    invoke-virtual {v1, v4}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    if-nez p2, :cond_4

    .line 17
    iget-object p1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    iget v4, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4}, Lcom/android/server/audio/AudioService;->isStreamMutedByRingerOrZenMode(I)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 18
    const-string p1, "AS.AudioService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " despite ringer-zen muted stream 0x"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Lcom/android/server/audio/AudioService;->sRingerAndZenModeMutedStreams:I

    .line 19
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/Exception;

    invoke-direct {v4}, Ljava/lang/Exception;-><init>()V

    .line 20
    invoke-static {p1, v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 21
    new-instance p1, Lcom/android/server/audio/AudioServiceEvents$StreamUnmuteErrorEvent;

    iget v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    sget v4, Lcom/android/server/audio/AudioService;->sRingerAndZenModeMutedStreams:I

    invoke-direct {p1, v0, v4}, Lcom/android/server/audio/AudioServiceEvents$StreamUnmuteErrorEvent;-><init>(II)V

    invoke-virtual {v1, p1}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 22
    :cond_4
    iput-boolean p2, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIsMuted:Z

    if-eqz p3, :cond_5

    .line 23
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService$VolumeStreamState;->doMute()V

    .line 24
    :cond_5
    monitor-exit v2

    return v3

    .line 25
    :goto_2
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final observeDevicesForStream_syncVSS(Z)Ljava/util/Set;
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    .line 3
    iget-object v0, v0, Lcom/android/server/audio/AudioService;->mSystemServer:Lcom/android/server/audio/SystemServerAdapter;

    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    iget-object v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    .line 10
    iget v1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    .line 12
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    invoke-static {v1}, Landroid/media/audiopolicy/AudioProductStrategy;->getAudioAttributesForStrategyWithLegacyStreamType(I)Landroid/media/AudioAttributes;

    .line 18
    move-result-object v1

    .line 19
    const/4 v2, 0x1

    .line 20
    invoke-virtual {v0, v1, v2}, Lcom/android/server/audio/AudioService;->getDevicesForAttributesInt(Landroid/media/AudioAttributes;Z)Ljava/util/ArrayList;

    .line 23
    move-result-object v0

    .line 24
    invoke-static {v0}, Landroid/media/AudioSystem;->generateAudioDeviceTypesSet(Ljava/util/List;)Ljava/util/Set;

    .line 27
    move-result-object v0

    .line 28
    iget-object v1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mObservedDeviceSet:Ljava/util/Set;

    .line 30
    invoke-interface {v0, v1}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    .line 33
    move-result v1

    .line 34
    if-eqz v1, :cond_0

    .line 36
    iget-object p0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mObservedDeviceSet:Ljava/util/Set;

    .line 38
    return-object p0

    .line 39
    :cond_0
    invoke-static {v0}, Landroid/media/AudioSystem;->getDeviceMaskFromSet(Ljava/util/Set;)I

    .line 42
    move-result v7

    .line 43
    iget-object v1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mObservedDeviceSet:Ljava/util/Set;

    .line 45
    invoke-static {v1}, Landroid/media/AudioSystem;->getDeviceMaskFromSet(Ljava/util/Set;)I

    .line 48
    move-result v8

    .line 49
    iput-object v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mObservedDeviceSet:Ljava/util/Set;

    .line 51
    if-eqz p1, :cond_1

    .line 53
    iget-object p1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    .line 55
    iget v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    .line 57
    invoke-virtual {p1, v0}, Lcom/android/server/audio/AudioService;->postObserveDevicesForAllStreams(I)V

    .line 60
    :cond_1
    sget-object p1, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    .line 62
    iget v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    .line 64
    aget p1, p1, v0

    .line 66
    if-ne p1, v0, :cond_2

    .line 68
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 71
    move-result-object p1

    .line 72
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 75
    move-result-object v0

    .line 76
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 79
    move-result-object v1

    .line 80
    filled-new-array {p1, v0, v1}, [Ljava/lang/Object;

    .line 83
    move-result-object p1

    .line 84
    const v0, 0x9c41

    .line 87
    invoke-static {v0, p1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 90
    :cond_2
    iget-object p1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    .line 92
    iget-object p1, p1, Lcom/android/server/audio/AudioService;->mMultiSoundManager:Lcom/samsung/android/server/audio/MultiSoundManager;

    .line 94
    const/4 v0, 0x3

    .line 95
    if-eqz p1, :cond_3

    .line 97
    iget-object v1, p1, Lcom/samsung/android/server/audio/MultiSoundManager;->mPreventOverheatState:Lcom/samsung/android/server/audio/MultiSoundManager$PreventOverheatState;

    .line 99
    iget-boolean v1, v1, Lcom/samsung/android/server/audio/MultiSoundManager$PreventOverheatState;->mState:Z

    .line 101
    if-eqz v1, :cond_3

    .line 103
    iget v1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    .line 105
    if-ne v1, v0, :cond_3

    .line 107
    iget-object v1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mObservedDeviceSet:Ljava/util/Set;

    .line 109
    invoke-static {v1}, Landroid/media/AudioSystem;->getDeviceMaskFromSet(Ljava/util/Set;)I

    .line 112
    move-result v1

    .line 113
    iget-object p1, p1, Lcom/samsung/android/server/audio/MultiSoundManager;->mPreventOverheatState:Lcom/samsung/android/server/audio/MultiSoundManager$PreventOverheatState;

    .line 115
    iget v2, p1, Lcom/samsung/android/server/audio/MultiSoundManager$PreventOverheatState;->mCurDevice:I

    .line 117
    if-eq v2, v1, :cond_3

    .line 119
    iput v1, p1, Lcom/samsung/android/server/audio/MultiSoundManager$PreventOverheatState;->mCurDevice:I

    .line 121
    const-string/jumbo v1, "l_volume_prevent_overheat_key;gain"

    .line 124
    invoke-static {v1}, Lcom/samsung/android/media/SemAudioSystem;->getPolicyParameters(Ljava/lang/String;)Ljava/lang/String;

    .line 127
    move-result-object v1

    .line 128
    :try_start_0
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 131
    move-result v1
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    goto :goto_0

    .line 133
    :catch_0
    const/high16 v1, 0x3f800000    # 1.0f

    .line 135
    :goto_0
    iput v1, p1, Lcom/samsung/android/server/audio/MultiSoundManager$PreventOverheatState;->mLimitedVolumeForOverheat:F

    .line 137
    iget-object v1, p1, Lcom/samsung/android/server/audio/MultiSoundManager$PreventOverheatState;->this$0:Lcom/samsung/android/server/audio/MultiSoundManager;

    .line 139
    iget p1, p1, Lcom/samsung/android/server/audio/MultiSoundManager$PreventOverheatState;->mUid:I

    .line 141
    invoke-virtual {v1, p1}, Lcom/samsung/android/server/audio/MultiSoundManager;->setAppVolumeToNative(I)V

    .line 144
    :cond_3
    iget p1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    .line 146
    if-ne p1, v0, :cond_4

    .line 148
    iget-object p1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    .line 150
    iget-object p1, p1, Lcom/android/server/audio/AudioService;->mMode:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 152
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 155
    move-result p1

    .line 156
    if-nez p1, :cond_4

    .line 158
    iget-object p1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    .line 160
    iget-object v0, p1, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    .line 162
    const/4 v5, 0x0

    .line 163
    const/4 v6, 0x0

    .line 164
    const/16 v1, 0xacd

    .line 166
    const/4 v2, 0x0

    .line 167
    const/4 v4, 0x0

    .line 168
    move v3, v7

    .line 169
    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 172
    iget-object p1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    .line 174
    iget-object v0, p1, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    .line 176
    const/4 v5, 0x0

    .line 177
    const/4 v6, 0x0

    .line 178
    const/16 v1, 0xacf

    .line 180
    const/4 v2, 0x0

    .line 181
    const/4 v4, 0x0

    .line 182
    move v3, v7

    .line 183
    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 186
    :cond_4
    iget-object p1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mCurrentDeviceManager:Lcom/android/server/audio/CurrentDeviceManager;

    .line 188
    iget-object v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mObservedDeviceSet:Ljava/util/Set;

    .line 190
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    .line 193
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 196
    sget-object v0, Lcom/android/server/audio/CurrentDeviceManager;->lock:Ljava/lang/Object;

    .line 198
    monitor-enter v0

    .line 199
    :try_start_1
    iget-object v1, p1, Lcom/android/server/audio/CurrentDeviceManager;->callbacks:Ljava/util/Set;

    .line 201
    check-cast v1, Ljava/util/HashSet;

    .line 203
    invoke-virtual {v1}, Ljava/util/HashSet;->isEmpty()Z

    .line 206
    move-result v1

    .line 207
    if-eqz v1, :cond_5

    .line 209
    monitor-exit v0

    .line 210
    goto :goto_1

    .line 211
    :catchall_0
    move-exception p0

    .line 212
    goto :goto_2

    .line 213
    :cond_5
    iget-object p1, p1, Lcom/android/server/audio/CurrentDeviceManager;->callbacks:Ljava/util/Set;

    .line 215
    new-instance v1, Lcom/android/server/audio/CurrentDeviceManager$$ExternalSyntheticLambda0;

    .line 217
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 220
    invoke-interface {p1, v1}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    .line 223
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 224
    :goto_1
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    .line 227
    move-result-object v5

    .line 228
    iget-object p1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamDevicesChanged:Landroid/content/Intent;

    .line 230
    iput-object p1, v5, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 232
    iget-object p1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamDevicesChangedOptions:Landroid/os/Bundle;

    .line 234
    iput-object p1, v5, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 236
    iget-object p1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    .line 238
    iget-object v0, p1, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    .line 240
    const/4 v2, 0x2

    .line 241
    const/4 v6, 0x0

    .line 242
    const/16 v1, 0x20

    .line 244
    move v3, v8

    .line 245
    move v4, v7

    .line 246
    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 249
    iget-object p0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mObservedDeviceSet:Ljava/util/Set;

    .line 251
    return-object p0

    .line 252
    :goto_2
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 253
    throw p0
.end method

.method public final readSettings()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    .line 3
    iget-object v0, v0, Lcom/android/server/audio/AudioService;->mSettingsLock:Ljava/lang/Object;

    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    const-class v1, Lcom/android/server/audio/AudioService$VolumeStreamState;

    .line 8
    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    :try_start_1
    iget-object v2, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    .line 11
    iget-boolean v2, v2, Lcom/android/server/audio/AudioService;->mUseFixedVolume:Z

    .line 13
    const/high16 v3, 0x40000000    # 2.0f

    .line 15
    if-eqz v2, :cond_0

    .line 17
    iget-object v2, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Lcom/android/server/audio/AudioService$VolumeStreamState$1;

    .line 19
    iget p0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I

    .line 21
    invoke-virtual {v2, v3, p0}, Lcom/android/server/audio/AudioService$VolumeStreamState$1;->put(II)V

    .line 24
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 25
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 26
    return-void

    .line 27
    :catchall_0
    move-exception p0

    .line 28
    goto/16 :goto_5

    .line 30
    :catchall_1
    move-exception p0

    .line 31
    goto :goto_4

    .line 32
    :cond_0
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 33
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 34
    const-class v1, Lcom/android/server/audio/AudioService$VolumeStreamState;

    .line 36
    monitor-enter v1

    .line 37
    :try_start_5
    sget-object v0, Landroid/media/AudioSystem;->DEVICE_OUT_ALL_SET:Ljava/util/Set;

    .line 39
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 42
    move-result-object v0

    .line 43
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 46
    move-result v2

    .line 47
    if-eqz v2, :cond_7

    .line 49
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 52
    move-result-object v2

    .line 53
    check-cast v2, Ljava/lang/Integer;

    .line 55
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 58
    move-result v2

    .line 59
    const/4 v4, -0x1

    .line 60
    if-ne v2, v3, :cond_1

    .line 62
    sget-object v5, Landroid/media/AudioSystem;->DEFAULT_STREAM_VOLUME:[I

    .line 64
    iget v6, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    .line 66
    aget v5, v5, v6

    .line 68
    goto :goto_1

    .line 69
    :catchall_2
    move-exception p0

    .line 70
    goto :goto_3

    .line 71
    :cond_1
    move v5, v4

    .line 72
    :goto_1
    iget-object v6, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mVolumeIndexSettingName:Ljava/lang/String;

    .line 74
    if-eqz v6, :cond_2

    .line 76
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    .line 79
    move-result v6

    .line 80
    if-nez v6, :cond_2

    .line 82
    invoke-virtual {p0, v2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getSettingNameForDevice(I)Ljava/lang/String;

    .line 85
    move-result-object v6

    .line 86
    iget-object v7, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    .line 88
    iget-object v8, v7, Lcom/android/server/audio/AudioService;->mSettings:Lcom/android/server/audio/SettingsAdapter;

    .line 90
    iget-object v7, v7, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    .line 92
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 95
    const/4 v8, -0x2

    .line 96
    invoke-static {v7, v6, v5, v8}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 99
    move-result v5

    .line 100
    :cond_2
    if-ne v5, v4, :cond_3

    .line 102
    goto :goto_0

    .line 103
    :cond_3
    iget-object v4, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Lcom/android/server/audio/AudioService$VolumeStreamState$1;

    .line 105
    mul-int/lit8 v5, v5, 0xa

    .line 107
    iget v6, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMin:I

    .line 109
    if-ge v5, v6, :cond_4

    .line 111
    move v5, v6

    .line 112
    goto :goto_2

    .line 113
    :cond_4
    iget-object v6, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    .line 115
    iget-boolean v6, v6, Lcom/android/server/audio/AudioService;->mUseFixedVolume:Z

    .line 117
    iget v7, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I

    .line 119
    if-nez v6, :cond_5

    .line 121
    if-le v5, v7, :cond_6

    .line 123
    :cond_5
    move v5, v7

    .line 124
    :cond_6
    :goto_2
    invoke-virtual {v4, v2, v5}, Lcom/android/server/audio/AudioService$VolumeStreamState$1;->put(II)V

    .line 127
    goto :goto_0

    .line 128
    :cond_7
    monitor-exit v1

    .line 129
    return-void

    .line 130
    :goto_3
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 131
    throw p0

    .line 132
    :goto_4
    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 133
    :try_start_7
    throw p0

    .line 134
    :goto_5
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 135
    throw p0
.end method

.method public final setAllIndexes(Lcom/android/server/audio/AudioService$VolumeStreamState;Ljava/lang/String;)V
    .locals 9

    .line 1
    const/4 v0, 0x1

    .line 2
    iget v1, p1, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    .line 4
    iget v2, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    .line 6
    if-ne v2, v1, :cond_0

    .line 8
    return-void

    .line 9
    :cond_0
    const/high16 v3, 0x40000000    # 2.0f

    .line 11
    invoke-virtual {p1, v3}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    .line 14
    move-result v3

    .line 15
    sget v4, Lcom/android/server/audio/AudioService;->BECOMING_NOISY_DELAY_MS:I

    .line 17
    iget-object v4, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    .line 19
    invoke-virtual {v4, v3, v1, v2}, Lcom/android/server/audio/AudioService;->rescaleIndex(III)I

    .line 22
    move-result v3

    .line 23
    const/4 v5, 0x0

    .line 24
    move v6, v5

    .line 25
    :goto_0
    iget-object v7, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Lcom/android/server/audio/AudioService$VolumeStreamState$1;

    .line 27
    invoke-virtual {v7}, Landroid/util/SparseIntArray;->size()I

    .line 30
    move-result v8

    .line 31
    if-ge v6, v8, :cond_1

    .line 33
    invoke-virtual {v7, v6}, Landroid/util/SparseIntArray;->keyAt(I)I

    .line 36
    move-result v8

    .line 37
    invoke-virtual {v7, v8, v3}, Lcom/android/server/audio/AudioService$VolumeStreamState$1;->put(II)V

    .line 40
    add-int/2addr v6, v0

    .line 41
    goto :goto_0

    .line 42
    :cond_1
    :goto_1
    iget-object v3, p1, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Lcom/android/server/audio/AudioService$VolumeStreamState$1;

    .line 44
    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    .line 47
    move-result v6

    .line 48
    if-ge v5, v6, :cond_2

    .line 50
    invoke-virtual {v3, v5}, Landroid/util/SparseIntArray;->keyAt(I)I

    .line 53
    move-result v6

    .line 54
    invoke-virtual {v3, v5}, Landroid/util/SparseIntArray;->valueAt(I)I

    .line 57
    move-result v3

    .line 58
    invoke-virtual {v4, v3, v1, v2}, Lcom/android/server/audio/AudioService;->rescaleIndex(III)I

    .line 61
    move-result v3

    .line 62
    invoke-virtual {p0, v3, v6, p2, v0}, Lcom/android/server/audio/AudioService$VolumeStreamState;->setIndex(IILjava/lang/String;Z)Z

    .line 65
    add-int/2addr v5, v0

    .line 66
    goto :goto_1

    .line 67
    :cond_2
    return-void
.end method

.method public setIndex(IILjava/lang/String;Z)Z
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 3
    move/from16 v1, p1

    .line 5
    move/from16 v2, p2

    .line 7
    move-object/from16 v3, p3

    .line 9
    move/from16 v4, p4

    .line 11
    iget-object v5, v0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    .line 13
    iget-object v5, v5, Lcom/android/server/audio/AudioService;->mSettingsLock:Ljava/lang/Object;

    .line 15
    monitor-enter v5

    .line 16
    :try_start_0
    const-class v6, Lcom/android/server/audio/AudioService$VolumeStreamState;

    .line 18
    monitor-enter v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 19
    :try_start_1
    invoke-virtual {v0, v2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    .line 22
    move-result v7

    .line 23
    if-eqz v4, :cond_0

    .line 25
    iget v8, v0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMin:I

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    iget v8, v0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMinNoPerm:I

    .line 30
    :goto_0
    if-ge v1, v8, :cond_1

    .line 32
    move v1, v8

    .line 33
    goto :goto_1

    .line 34
    :cond_1
    iget-object v8, v0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    .line 36
    iget-boolean v8, v8, Lcom/android/server/audio/AudioService;->mUseFixedVolume:Z

    .line 38
    iget v9, v0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I

    .line 40
    if-nez v8, :cond_2

    .line 42
    if-le v1, v9, :cond_3

    .line 44
    :cond_2
    move v1, v9

    .line 45
    :cond_3
    :goto_1
    iget v8, v0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    .line 47
    const/4 v9, 0x7

    .line 48
    if-ne v8, v9, :cond_4

    .line 50
    iget-object v8, v0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    .line 52
    iget-boolean v8, v8, Lcom/android/server/audio/AudioService;->mCameraSoundForced:Z

    .line 54
    if-eqz v8, :cond_4

    .line 56
    iget v8, v0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I

    .line 58
    goto :goto_2

    .line 59
    :catchall_0
    move-exception v0

    .line 60
    goto/16 :goto_b

    .line 62
    :cond_4
    move v8, v1

    .line 63
    :goto_2
    iget-object v9, v0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Lcom/android/server/audio/AudioService$VolumeStreamState$1;

    .line 65
    invoke-virtual {v9, v2, v8}, Lcom/android/server/audio/AudioService$VolumeStreamState$1;->put(II)V

    .line 68
    const/4 v10, 0x1

    .line 69
    if-eq v7, v8, :cond_5

    .line 71
    move v11, v10

    .line 72
    goto :goto_3

    .line 73
    :cond_5
    const/4 v11, 0x0

    .line 74
    :goto_3
    iget-object v12, v0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    .line 76
    iget v13, v0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    .line 78
    invoke-virtual {v12, v13}, Lcom/android/server/audio/AudioService;->getDeviceForStream(I)I

    .line 81
    move-result v12

    .line 82
    if-ne v2, v12, :cond_6

    .line 84
    move v12, v10

    .line 85
    goto :goto_4

    .line 86
    :cond_6
    const/4 v12, 0x0

    .line 87
    :goto_4
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    .line 90
    move-result v13

    .line 91
    sub-int/2addr v13, v10

    .line 92
    :goto_5
    if-ltz v13, :cond_b

    .line 94
    iget-object v14, v0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    .line 96
    iget-object v14, v14, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    .line 98
    aget-object v14, v14, v13

    .line 100
    iget v15, v0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    .line 102
    if-eq v13, v15, :cond_a

    .line 104
    sget-object v16, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    .line 106
    aget v10, v16, v13

    .line 108
    if-ne v10, v15, :cond_a

    .line 110
    if-nez v11, :cond_8

    .line 112
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 115
    const-class v10, Lcom/android/server/audio/AudioService$VolumeStreamState;

    .line 117
    monitor-enter v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 118
    :try_start_2
    iget-object v15, v14, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Lcom/android/server/audio/AudioService$VolumeStreamState$1;

    .line 120
    const/4 v9, -0x1

    .line 121
    invoke-virtual {v15, v2, v9}, Landroid/util/SparseIntArray;->get(II)I

    .line 124
    move-result v15

    .line 125
    if-eq v15, v9, :cond_7

    .line 127
    const/4 v9, 0x1

    .line 128
    goto :goto_6

    .line 129
    :cond_7
    const/4 v9, 0x0

    .line 130
    :goto_6
    monitor-exit v10

    .line 131
    if-nez v9, :cond_a

    .line 133
    goto :goto_7

    .line 134
    :catchall_1
    move-exception v0

    .line 135
    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 136
    :try_start_3
    throw v0

    .line 137
    :cond_8
    :goto_7
    iget-object v9, v0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    .line 139
    iget v10, v0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    .line 141
    invoke-virtual {v9, v1, v10, v13}, Lcom/android/server/audio/AudioService;->rescaleIndex(III)I

    .line 144
    move-result v9

    .line 145
    invoke-virtual {v14, v9, v2, v3, v4}, Lcom/android/server/audio/AudioService$VolumeStreamState;->setIndex(IILjava/lang/String;Z)Z

    .line 148
    move-result v10

    .line 149
    if-eqz v12, :cond_9

    .line 151
    iget-object v15, v0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    .line 153
    invoke-virtual {v15, v13}, Lcom/android/server/audio/AudioService;->getDeviceForStream(I)I

    .line 156
    move-result v15

    .line 157
    invoke-virtual {v14, v9, v15, v3, v4}, Lcom/android/server/audio/AudioService$VolumeStreamState;->setIndex(IILjava/lang/String;Z)Z

    .line 160
    move-result v9

    .line 161
    or-int/2addr v10, v9

    .line 162
    :cond_9
    if-eqz v10, :cond_a

    .line 164
    invoke-static {v13}, Landroid/media/AudioSystem;->streamToString(I)Ljava/lang/String;

    .line 167
    :cond_a
    add-int/lit8 v13, v13, -0x1

    .line 169
    const/4 v10, 0x1

    .line 170
    goto :goto_5

    .line 171
    :cond_b
    const/4 v1, 0x2

    .line 172
    if-eqz v11, :cond_d

    .line 174
    iget v4, v0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    .line 176
    if-ne v4, v1, :cond_d

    .line 178
    if-ne v2, v1, :cond_d

    .line 180
    const/4 v4, 0x0

    .line 181
    :goto_8
    iget-object v9, v0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Lcom/android/server/audio/AudioService$VolumeStreamState$1;

    .line 183
    invoke-virtual {v9}, Landroid/util/SparseIntArray;->size()I

    .line 186
    move-result v9

    .line 187
    if-ge v4, v9, :cond_d

    .line 189
    iget-object v9, v0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Lcom/android/server/audio/AudioService$VolumeStreamState$1;

    .line 191
    invoke-virtual {v9, v4}, Landroid/util/SparseIntArray;->keyAt(I)I

    .line 194
    move-result v9

    .line 195
    sget-object v10, Landroid/media/AudioSystem;->DEVICE_OUT_ALL_SCO_SET:Ljava/util/Set;

    .line 197
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 200
    move-result-object v12

    .line 201
    invoke-interface {v10, v12}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 204
    move-result v10

    .line 205
    if-eqz v10, :cond_c

    .line 207
    iget-object v10, v0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Lcom/android/server/audio/AudioService$VolumeStreamState$1;

    .line 209
    invoke-virtual {v10, v9, v8}, Lcom/android/server/audio/AudioService$VolumeStreamState$1;->put(II)V

    .line 212
    :cond_c
    add-int/lit8 v4, v4, 0x1

    .line 214
    goto :goto_8

    .line 215
    :cond_d
    new-instance v4, Lcom/android/server/audio/AudioService$VolumeStreamState$$ExternalSyntheticLambda1;

    .line 217
    const/4 v9, 0x1

    .line 218
    invoke-direct {v4, v0, v8, v9}, Lcom/android/server/audio/AudioService$VolumeStreamState$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/audio/AudioService$VolumeStreamState;II)V

    .line 221
    iget-object v9, v0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    .line 223
    iget v10, v0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    .line 225
    invoke-static {v9, v2, v10, v4}, Lcom/android/server/audio/AudioService;->-$$Nest$mapplyDeviceAlias(Lcom/android/server/audio/AudioService;IILcom/samsung/android/server/audio/DeviceAliasManager$DeviceAliasRunner;)V

    .line 228
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 229
    :try_start_4
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 230
    if-eqz v11, :cond_15

    .line 232
    const/4 v4, 0x0

    .line 233
    invoke-virtual {v0, v2, v4}, Lcom/android/server/audio/AudioService$VolumeStreamState;->updateVolumeGroupIndex(IZ)V

    .line 236
    iget v2, v0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    .line 238
    const/4 v5, 0x3

    .line 239
    if-eq v2, v5, :cond_e

    .line 241
    add-int/lit8 v7, v7, 0x5

    .line 243
    div-int/lit8 v7, v7, 0xa

    .line 245
    add-int/lit8 v8, v8, 0x5

    .line 247
    div-int/lit8 v8, v8, 0xa

    .line 249
    :cond_e
    sget-object v6, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    .line 251
    aget v6, v6, v2

    .line 253
    if-ne v6, v2, :cond_10

    .line 255
    if-nez v3, :cond_f

    .line 257
    const-string v2, "AS.AudioService"

    .line 259
    const-string v6, "No caller for volume_changed event"

    .line 261
    new-instance v9, Ljava/lang/Throwable;

    .line 263
    invoke-direct {v9}, Ljava/lang/Throwable;-><init>()V

    .line 266
    invoke-static {v2, v6, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 269
    :cond_f
    iget v2, v0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    .line 271
    iget v6, v0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I

    .line 273
    div-int/lit8 v6, v6, 0xa

    .line 275
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 278
    move-result-object v2

    .line 279
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 282
    move-result-object v9

    .line 283
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 286
    move-result-object v10

    .line 287
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 290
    move-result-object v6

    .line 291
    filled-new-array {v2, v9, v10, v6, v3}, [Ljava/lang/Object;

    .line 294
    move-result-object v2

    .line 295
    const v6, 0x9c40

    .line 298
    invoke-static {v6, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 301
    :cond_10
    iget v2, v0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    .line 303
    if-ne v2, v5, :cond_15

    .line 305
    if-eqz v7, :cond_11

    .line 307
    if-eqz v8, :cond_12

    .line 309
    :cond_11
    if-nez v7, :cond_14

    .line 311
    if-eqz v8, :cond_14

    .line 313
    :cond_12
    iget-object v0, v0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    .line 315
    if-nez v8, :cond_13

    .line 317
    const/4 v9, 0x1

    .line 318
    goto :goto_9

    .line 319
    :cond_13
    move v9, v4

    .line 320
    :goto_9
    invoke-virtual {v0, v1, v9, v3}, Lcom/android/server/audio/AudioService;->sendBroadcastToSoundEventReceiver(IILjava/lang/String;)V

    .line 323
    goto :goto_a

    .line 324
    :cond_14
    iget-object v0, v0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    .line 326
    const/16 v1, 0x100

    .line 328
    invoke-virtual {v0, v1, v8, v3}, Lcom/android/server/audio/AudioService;->sendBroadcastToSoundEventReceiver(IILjava/lang/String;)V

    .line 331
    :cond_15
    :goto_a
    return v11

    .line 332
    :catchall_2
    move-exception v0

    .line 333
    goto :goto_c

    .line 334
    :goto_b
    :try_start_5
    monitor-exit v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 335
    :try_start_6
    throw v0

    .line 336
    :goto_c
    monitor-exit v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 337
    throw v0
.end method

.method public final setStreamVolumeIndex(II)V
    .locals 5

    .line 1
    const/4 v0, 0x6

    .line 2
    const-string v1, "AS.AudioService"

    .line 4
    iget-object v2, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    .line 6
    iget v3, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    .line 8
    if-ne v3, v0, :cond_1

    .line 10
    if-nez p1, :cond_1

    .line 12
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService$VolumeStreamState;->isFullyMuted()Z

    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_1

    .line 18
    sget-boolean v0, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_REMOTE_MIC:Z

    .line 20
    if-eqz v0, :cond_0

    .line 22
    iget-boolean v0, v2, Lcom/android/server/audio/AudioService;->mRemoteMic:Z

    .line 24
    if-eqz v0, :cond_0

    .line 26
    const-string v0, "SCO stream volume can be muted while remote mic is active"

    .line 28
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    const/4 p1, 0x1

    .line 33
    :cond_1
    :goto_0
    const-string/jumbo v0, "setStreamVolumeIndexAS("

    .line 36
    const-string v4, ", "

    .line 38
    invoke-static {v3, p1, v0, v4, v4}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    move-result-object v0

    .line 42
    const-string v4, ")"

    .line 44
    invoke-static {v0, p2, v4, v1}, Lcom/android/server/audio/AudioService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    .line 47
    const/4 v0, 0x3

    .line 48
    if-ne v3, v0, :cond_3

    .line 50
    const/high16 v0, 0x40000000    # 2.0f

    .line 52
    if-eq p2, v0, :cond_3

    .line 54
    invoke-virtual {p0, p2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    .line 57
    move-result v0

    .line 58
    rem-int/lit8 v0, v0, 0xa

    .line 60
    iget-boolean p0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIsMuted:Z

    .line 62
    if-eqz p0, :cond_2

    .line 64
    const/4 v0, 0x0

    .line 65
    :cond_2
    mul-int/lit8 p1, p1, 0xa

    .line 67
    add-int/2addr p1, v0

    .line 68
    const-string/jumbo p0, "l_volume_fine_key;index="

    .line 71
    const-string v0, ";device="

    .line 73
    invoke-static {p1, p2, p0, v0}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 76
    move-result-object p0

    .line 77
    iget-object p1, v2, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    .line 79
    new-instance p2, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda4;

    .line 81
    const/4 v0, 0x2

    .line 82
    invoke-direct {p2, v0, p0}, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda4;-><init>(ILjava/lang/Object;)V

    .line 85
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 88
    goto :goto_1

    .line 89
    :cond_3
    iget-object p0, v2, Lcom/android/server/audio/AudioService;->mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

    .line 91
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 94
    invoke-static {v3, p1, p2}, Landroid/media/AudioSystem;->setStreamVolumeIndexAS(III)I

    .line 97
    :goto_1
    return-void
.end method

.method public final updateVolumeGroupIndex(IZ)V
    .locals 6

    .line 1
    const-string/jumbo v0, "updateVolumeGroupIndex for stream "

    .line 4
    iget-object v1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    .line 6
    iget-object v1, v1, Lcom/android/server/audio/AudioService;->mSettingsLock:Ljava/lang/Object;

    .line 8
    monitor-enter v1

    .line 9
    :try_start_0
    const-class v2, Lcom/android/server/audio/AudioService$VolumeStreamState;

    .line 11
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 12
    :try_start_1
    iget-object v3, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mVolumeGroupState:Lcom/android/server/audio/AudioService$VolumeGroupState;

    .line 14
    if-eqz v3, :cond_1

    .line 16
    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    .line 19
    move-result v3

    .line 20
    add-int/lit8 v3, v3, 0x5

    .line 22
    div-int/lit8 v3, v3, 0xa

    .line 24
    const-string v4, "AS.AudioService"

    .line 26
    new-instance v5, Ljava/lang/StringBuilder;

    .line 28
    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 31
    iget v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    .line 33
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 36
    const-string v0, ", muted="

    .line 38
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIsMuted:Z

    .line 43
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 46
    const-string v0, ", device="

    .line 48
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 54
    const-string v0, ", index="

    .line 56
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    .line 62
    move-result v0

    .line 63
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 66
    const-string v0, ", group "

    .line 68
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    iget-object v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mVolumeGroupState:Lcom/android/server/audio/AudioService$VolumeGroupState;

    .line 73
    iget-object v0, v0, Lcom/android/server/audio/AudioService$VolumeGroupState;->mAudioVolumeGroup:Landroid/media/audiopolicy/AudioVolumeGroup;

    .line 75
    invoke-virtual {v0}, Landroid/media/audiopolicy/AudioVolumeGroup;->name()Ljava/lang/String;

    .line 78
    move-result-object v0

    .line 79
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    const-string v0, " Muted="

    .line 84
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    iget-object v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mVolumeGroupState:Lcom/android/server/audio/AudioService$VolumeGroupState;

    .line 89
    iget-boolean v0, v0, Lcom/android/server/audio/AudioService$VolumeGroupState;->mIsMuted:Z

    .line 91
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 94
    const-string v0, ", Index="

    .line 96
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 102
    const-string v0, ", forceMuteState="

    .line 104
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 110
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 113
    move-result-object p2

    .line 114
    invoke-static {v4, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    iget-object p2, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mVolumeGroupState:Lcom/android/server/audio/AudioService$VolumeGroupState;

    .line 119
    invoke-virtual {p2, v3, p1}, Lcom/android/server/audio/AudioService$VolumeGroupState;->updateVolumeIndex(II)V

    .line 122
    iget-object p1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    .line 124
    iget p2, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    .line 126
    invoke-virtual {p1, p2}, Lcom/android/server/audio/AudioService;->isStreamAffectedByMute(I)Z

    .line 129
    move-result p1

    .line 130
    if-eqz p1, :cond_1

    .line 132
    iget p1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMin:I

    .line 134
    if-eqz p1, :cond_0

    .line 136
    if-eqz p2, :cond_0

    .line 138
    const/4 p1, 0x6

    .line 139
    if-ne p2, p1, :cond_1

    .line 141
    :cond_0
    iget-object p1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mVolumeGroupState:Lcom/android/server/audio/AudioService$VolumeGroupState;

    .line 143
    iget-boolean p0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIsMuted:Z

    .line 145
    invoke-virtual {p1, p0}, Lcom/android/server/audio/AudioService$VolumeGroupState;->mute(Z)Z

    .line 148
    goto :goto_0

    .line 149
    :catchall_0
    move-exception p0

    .line 150
    goto :goto_1

    .line 151
    :cond_1
    :goto_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 152
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 153
    return-void

    .line 154
    :catchall_1
    move-exception p0

    .line 155
    goto :goto_2

    .line 156
    :goto_1
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 157
    :try_start_4
    throw p0

    .line 158
    :goto_2
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 159
    throw p0
.end method
