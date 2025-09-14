.class public final Lcom/android/server/audio/AudioService$VolumeGroupState;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mAudioAttributes:Landroid/media/AudioAttributes;

.field public final mAudioVolumeGroup:Landroid/media/audiopolicy/AudioVolumeGroup;

.field public final mHasValidStreamType:Z

.field public final mIndexMap:Landroid/util/SparseIntArray;

.field public final mIndexMax:I

.field public final mIndexMin:I

.field public mIsMuted:Z

.field public final mPublicStreamType:I

.field public mSettingName:Ljava/lang/String;

.field public final synthetic this$0:Lcom/android/server/audio/AudioService;


# direct methods
.method public static -$$Nest$mpersistVolumeGroup(Lcom/android/server/audio/AudioService$VolumeGroupState;I)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/audio/AudioService$VolumeGroupState;->this$0:Lcom/android/server/audio/AudioService;

    .line 3
    iget-boolean v1, v0, Lcom/android/server/audio/AudioService;->mUseFixedVolume:Z

    .line 5
    if-nez v1, :cond_2

    .line 7
    iget-boolean v1, p0, Lcom/android/server/audio/AudioService$VolumeGroupState;->mHasValidStreamType:Z

    .line 9
    if-eqz v1, :cond_0

    .line 11
    goto/16 :goto_1

    .line 13
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 15
    const-string/jumbo v2, "persistVolumeGroup: storing index "

    .line 18
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioService$VolumeGroupState;->getIndex(I)I

    .line 24
    move-result v2

    .line 25
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 28
    const-string v2, " for group "

    .line 30
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    iget-object v2, p0, Lcom/android/server/audio/AudioService$VolumeGroupState;->mAudioVolumeGroup:Landroid/media/audiopolicy/AudioVolumeGroup;

    .line 35
    invoke-virtual {v2}, Landroid/media/audiopolicy/AudioVolumeGroup;->name()Ljava/lang/String;

    .line 38
    move-result-object v2

    .line 39
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    const-string v2, ", device "

    .line 44
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    invoke-static {p1}, Landroid/media/AudioSystem;->getOutputDeviceName(I)Ljava/lang/String;

    .line 50
    move-result-object v2

    .line 51
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    const-string v2, " and User="

    .line 56
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    invoke-static {}, Lcom/android/server/audio/AudioService;->getCurrentUserId()I

    .line 62
    move-result v2

    .line 63
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 66
    const-string v2, " mSettingName: "

    .line 68
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    iget-object v2, p0, Lcom/android/server/audio/AudioService$VolumeGroupState;->mSettingName:Ljava/lang/String;

    .line 73
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    move-result-object v1

    .line 80
    const-string v2, "AS.AudioService"

    .line 82
    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    iget-object v1, v0, Lcom/android/server/audio/AudioService;->mSettings:Lcom/android/server/audio/SettingsAdapter;

    .line 87
    iget-object v0, v0, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    .line 89
    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioService$VolumeGroupState;->getSettingNameForDevice(I)Ljava/lang/String;

    .line 92
    move-result-object v3

    .line 93
    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioService$VolumeGroupState;->getIndex(I)I

    .line 96
    move-result p1

    .line 97
    iget-boolean v4, p0, Lcom/android/server/audio/AudioService$VolumeGroupState;->mHasValidStreamType:Z

    .line 99
    if-eqz v4, :cond_1

    .line 101
    iget v4, p0, Lcom/android/server/audio/AudioService$VolumeGroupState;->mPublicStreamType:I

    .line 103
    const/4 v5, 0x3

    .line 104
    if-ne v4, v5, :cond_1

    .line 106
    const/4 v4, 0x0

    .line 107
    goto :goto_0

    .line 108
    :cond_1
    const/4 v4, -0x2

    .line 109
    :goto_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 112
    invoke-static {v0, v3, p1, v4}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 115
    move-result p1

    .line 116
    if-nez p1, :cond_2

    .line 118
    new-instance p1, Ljava/lang/StringBuilder;

    .line 120
    const-string/jumbo v0, "persistVolumeGroup failed for group "

    .line 123
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 126
    iget-object p0, p0, Lcom/android/server/audio/AudioService$VolumeGroupState;->mAudioVolumeGroup:Landroid/media/audiopolicy/AudioVolumeGroup;

    .line 128
    invoke-virtual {p0}, Landroid/media/audiopolicy/AudioVolumeGroup;->name()Ljava/lang/String;

    .line 131
    move-result-object p0

    .line 132
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 138
    move-result-object p0

    .line 139
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    :cond_2
    :goto_1
    return-void
.end method

.method public constructor <init>(Lcom/android/server/audio/AudioService;Landroid/media/audiopolicy/AudioVolumeGroup;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/audio/AudioService$VolumeGroupState;->this$0:Lcom/android/server/audio/AudioService;

    .line 6
    new-instance p1, Landroid/util/SparseIntArray;

    .line 8
    const/16 v0, 0x8

    .line 10
    invoke-direct {p1, v0}, Landroid/util/SparseIntArray;-><init>(I)V

    .line 13
    iput-object p1, p0, Lcom/android/server/audio/AudioService$VolumeGroupState;->mIndexMap:Landroid/util/SparseIntArray;

    .line 15
    const/4 p1, 0x0

    .line 16
    iput-boolean p1, p0, Lcom/android/server/audio/AudioService$VolumeGroupState;->mHasValidStreamType:Z

    .line 18
    const/4 v0, 0x3

    .line 19
    iput v0, p0, Lcom/android/server/audio/AudioService$VolumeGroupState;->mPublicStreamType:I

    .line 21
    invoke-static {}, Landroid/media/audiopolicy/AudioProductStrategy;->getDefaultAttributes()Landroid/media/AudioAttributes;

    .line 24
    move-result-object v0

    .line 25
    iput-object v0, p0, Lcom/android/server/audio/AudioService$VolumeGroupState;->mAudioAttributes:Landroid/media/AudioAttributes;

    .line 27
    iput-boolean p1, p0, Lcom/android/server/audio/AudioService$VolumeGroupState;->mIsMuted:Z

    .line 29
    iput-object p2, p0, Lcom/android/server/audio/AudioService$VolumeGroupState;->mAudioVolumeGroup:Landroid/media/audiopolicy/AudioVolumeGroup;

    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    .line 33
    const-string v1, "VolumeGroupState for "

    .line 35
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 38
    invoke-virtual {p2}, Landroid/media/audiopolicy/AudioVolumeGroup;->toString()Ljava/lang/String;

    .line 41
    move-result-object v1

    .line 42
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    move-result-object v0

    .line 49
    const-string v1, "AS.AudioService"

    .line 51
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    invoke-virtual {p2}, Landroid/media/audiopolicy/AudioVolumeGroup;->getAudioAttributes()Ljava/util/List;

    .line 57
    move-result-object v0

    .line 58
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 61
    move-result-object v0

    .line 62
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 65
    move-result v1

    .line 66
    if-eqz v1, :cond_1

    .line 68
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 71
    move-result-object v1

    .line 72
    check-cast v1, Landroid/media/AudioAttributes;

    .line 74
    iget-object v2, p0, Lcom/android/server/audio/AudioService$VolumeGroupState;->mAudioAttributes:Landroid/media/AudioAttributes;

    .line 76
    invoke-virtual {v1, v2}, Landroid/media/AudioAttributes;->equals(Ljava/lang/Object;)Z

    .line 79
    move-result v2

    .line 80
    if-nez v2, :cond_0

    .line 82
    iput-object v1, p0, Lcom/android/server/audio/AudioService$VolumeGroupState;->mAudioAttributes:Landroid/media/AudioAttributes;

    .line 84
    :cond_1
    iget-object v0, p0, Lcom/android/server/audio/AudioService$VolumeGroupState;->mAudioVolumeGroup:Landroid/media/audiopolicy/AudioVolumeGroup;

    .line 86
    invoke-virtual {v0}, Landroid/media/audiopolicy/AudioVolumeGroup;->getLegacyStreamTypes()[I

    .line 89
    move-result-object v0

    .line 90
    array-length v1, v0

    .line 91
    const-string v2, ""

    .line 93
    if-eqz v1, :cond_4

    .line 95
    array-length p2, v0

    .line 96
    :goto_0
    if-ge p1, p2, :cond_3

    .line 98
    aget v1, v0, p1

    .line 100
    const/4 v3, -0x1

    .line 101
    if-eq v1, v3, :cond_2

    .line 103
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    .line 106
    move-result v3

    .line 107
    if-ge v1, v3, :cond_2

    .line 109
    iput v1, p0, Lcom/android/server/audio/AudioService$VolumeGroupState;->mPublicStreamType:I

    .line 111
    const/4 p1, 0x1

    .line 112
    iput-boolean p1, p0, Lcom/android/server/audio/AudioService$VolumeGroupState;->mHasValidStreamType:Z

    .line 114
    sget-object p1, Landroid/provider/Settings$System;->VOLUME_SETTINGS_INT:[Ljava/lang/String;

    .line 116
    aget-object v2, p1, v1

    .line 118
    goto :goto_1

    .line 119
    :cond_2
    add-int/lit8 p1, p1, 0x1

    .line 121
    goto :goto_0

    .line 122
    :cond_3
    :goto_1
    sget-object p1, Lcom/android/server/audio/AudioService;->MIN_STREAM_VOLUME:[I

    .line 124
    iget p2, p0, Lcom/android/server/audio/AudioService$VolumeGroupState;->mPublicStreamType:I

    .line 126
    aget p1, p1, p2

    .line 128
    iput p1, p0, Lcom/android/server/audio/AudioService$VolumeGroupState;->mIndexMin:I

    .line 130
    sget-object p1, Lcom/android/server/audio/AudioService;->MAX_STREAM_VOLUME:[I

    .line 132
    aget p1, p1, p2

    .line 134
    iput p1, p0, Lcom/android/server/audio/AudioService$VolumeGroupState;->mIndexMax:I

    .line 136
    goto :goto_2

    .line 137
    :cond_4
    invoke-virtual {p2}, Landroid/media/audiopolicy/AudioVolumeGroup;->getAudioAttributes()Ljava/util/List;

    .line 140
    move-result-object p1

    .line 141
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 144
    move-result p1

    .line 145
    if-nez p1, :cond_6

    .line 147
    iget-object p1, p0, Lcom/android/server/audio/AudioService$VolumeGroupState;->mAudioAttributes:Landroid/media/AudioAttributes;

    .line 149
    invoke-static {p1}, Landroid/media/AudioSystem;->getMinVolumeIndexForAttributes(Landroid/media/AudioAttributes;)I

    .line 152
    move-result p1

    .line 153
    iput p1, p0, Lcom/android/server/audio/AudioService$VolumeGroupState;->mIndexMin:I

    .line 155
    iget-object p1, p0, Lcom/android/server/audio/AudioService$VolumeGroupState;->mAudioAttributes:Landroid/media/AudioAttributes;

    .line 157
    invoke-static {p1}, Landroid/media/AudioSystem;->getMaxVolumeIndexForAttributes(Landroid/media/AudioAttributes;)I

    .line 160
    move-result p1

    .line 161
    iput p1, p0, Lcom/android/server/audio/AudioService$VolumeGroupState;->mIndexMax:I

    .line 163
    :goto_2
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 166
    move-result p1

    .line 167
    if-nez p1, :cond_5

    .line 169
    goto :goto_3

    .line 170
    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    .line 172
    const-string/jumbo p2, "volume_"

    .line 175
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 178
    iget-object p2, p0, Lcom/android/server/audio/AudioService$VolumeGroupState;->mAudioVolumeGroup:Landroid/media/audiopolicy/AudioVolumeGroup;

    .line 180
    invoke-virtual {p2}, Landroid/media/audiopolicy/AudioVolumeGroup;->name()Ljava/lang/String;

    .line 183
    move-result-object p2

    .line 184
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 190
    move-result-object v2

    .line 191
    :goto_3
    iput-object v2, p0, Lcom/android/server/audio/AudioService$VolumeGroupState;->mSettingName:Ljava/lang/String;

    .line 193
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService$VolumeGroupState;->readSettings()V

    .line 196
    return-void

    .line 197
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 199
    new-instance p2, Ljava/lang/StringBuilder;

    .line 201
    const-string/jumbo v0, "volume group: "

    .line 204
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 207
    iget-object p0, p0, Lcom/android/server/audio/AudioService$VolumeGroupState;->mAudioVolumeGroup:Landroid/media/audiopolicy/AudioVolumeGroup;

    .line 209
    invoke-virtual {p0}, Landroid/media/audiopolicy/AudioVolumeGroup;->name()Ljava/lang/String;

    .line 212
    move-result-object p0

    .line 213
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    const-string p0, " has neither valid attributes nor valid stream types assigned"

    .line 218
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 224
    move-result-object p0

    .line 225
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 228
    throw p1
.end method


# virtual methods
.method public final applyAllVolumes(Z)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 3
    const-string/jumbo v1, "from vgs"

    .line 6
    const-class v2, Lcom/android/server/audio/AudioService$VolumeStreamState;

    .line 8
    monitor-enter v2

    .line 9
    const/4 v4, 0x0

    .line 10
    :goto_0
    :try_start_0
    iget-object v5, v0, Lcom/android/server/audio/AudioService$VolumeGroupState;->mIndexMap:Landroid/util/SparseIntArray;

    .line 12
    invoke-virtual {v5}, Landroid/util/SparseIntArray;->size()I

    .line 15
    move-result v5

    .line 16
    const/4 v6, -0x1

    .line 17
    const/4 v7, 0x1

    .line 18
    const/high16 v8, 0x40000000    # 2.0f

    .line 20
    if-ge v4, v5, :cond_7

    .line 22
    iget-object v5, v0, Lcom/android/server/audio/AudioService$VolumeGroupState;->mIndexMap:Landroid/util/SparseIntArray;

    .line 24
    invoke-virtual {v5, v4}, Landroid/util/SparseIntArray;->keyAt(I)I

    .line 27
    move-result v5

    .line 28
    iget-object v9, v0, Lcom/android/server/audio/AudioService$VolumeGroupState;->mIndexMap:Landroid/util/SparseIntArray;

    .line 30
    invoke-virtual {v9, v4}, Landroid/util/SparseIntArray;->valueAt(I)I

    .line 33
    move-result v9

    .line 34
    if-eq v5, v8, :cond_6

    .line 36
    iget-object v8, v0, Lcom/android/server/audio/AudioService$VolumeGroupState;->mAudioVolumeGroup:Landroid/media/audiopolicy/AudioVolumeGroup;

    .line 38
    invoke-virtual {v8}, Landroid/media/audiopolicy/AudioVolumeGroup;->getLegacyStreamTypes()[I

    .line 41
    move-result-object v8

    .line 42
    array-length v10, v8

    .line 43
    const/4 v11, 0x0

    .line 44
    const/4 v12, 0x0

    .line 45
    :goto_1
    if-ge v11, v10, :cond_4

    .line 47
    aget v13, v8, v11

    .line 49
    if-eq v13, v6, :cond_3

    .line 51
    iget-object v14, v0, Lcom/android/server/audio/AudioService$VolumeGroupState;->this$0:Lcom/android/server/audio/AudioService;

    .line 53
    iget-object v15, v14, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    .line 55
    array-length v3, v15

    .line 56
    if-ge v13, v3, :cond_3

    .line 58
    aget-object v3, v15, v13

    .line 60
    iget-boolean v3, v3, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIsMuted:Z

    .line 62
    invoke-virtual {v14, v13}, Lcom/android/server/audio/AudioService;->getDeviceForStream(I)I

    .line 65
    move-result v14

    .line 66
    iget-object v15, v0, Lcom/android/server/audio/AudioService$VolumeGroupState;->this$0:Lcom/android/server/audio/AudioService;

    .line 68
    iget-object v15, v15, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    .line 70
    aget-object v15, v15, v13

    .line 72
    invoke-virtual {v15, v14}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    .line 75
    move-result v15

    .line 76
    add-int/lit8 v15, v15, 0x5

    .line 78
    div-int/lit8 v15, v15, 0xa

    .line 80
    if-ne v5, v14, :cond_3

    .line 82
    if-ne v15, v9, :cond_0

    .line 84
    iget-boolean v14, v0, Lcom/android/server/audio/AudioService$VolumeGroupState;->mIsMuted:Z

    .line 86
    if-ne v14, v3, :cond_0

    .line 88
    invoke-virtual {v0, v13}, Lcom/android/server/audio/AudioService$VolumeGroupState;->isVssMuteBijective(I)Z

    .line 91
    move-result v14

    .line 92
    if-eqz v14, :cond_0

    .line 94
    move v12, v7

    .line 95
    goto :goto_2

    .line 96
    :catchall_0
    move-exception v0

    .line 97
    goto/16 :goto_7

    .line 99
    :cond_0
    invoke-static {}, Lcom/android/media/audio/Flags;->vgsVssSyncMuteOrder()Z

    .line 102
    iget-boolean v14, v0, Lcom/android/server/audio/AudioService$VolumeGroupState;->mIsMuted:Z

    .line 104
    if-eq v14, v3, :cond_1

    .line 106
    invoke-virtual {v0, v13}, Lcom/android/server/audio/AudioService$VolumeGroupState;->isVssMuteBijective(I)Z

    .line 109
    move-result v3

    .line 110
    if-eqz v3, :cond_1

    .line 112
    iget-object v3, v0, Lcom/android/server/audio/AudioService$VolumeGroupState;->this$0:Lcom/android/server/audio/AudioService;

    .line 114
    iget-object v3, v3, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    .line 116
    aget-object v3, v3, v13

    .line 118
    iget-boolean v14, v0, Lcom/android/server/audio/AudioService$VolumeGroupState;->mIsMuted:Z

    .line 120
    const-string v6, "VGS.applyAllVolumes#1"

    .line 122
    invoke-virtual {v3, v6, v14}, Lcom/android/server/audio/AudioService$VolumeStreamState;->mute(Ljava/lang/String;Z)Z

    .line 125
    :cond_1
    if-eq v15, v9, :cond_2

    .line 127
    iget-object v3, v0, Lcom/android/server/audio/AudioService$VolumeGroupState;->this$0:Lcom/android/server/audio/AudioService;

    .line 129
    iget-object v3, v3, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    .line 131
    aget-object v3, v3, v13

    .line 133
    mul-int/lit8 v6, v9, 0xa

    .line 135
    invoke-virtual {v3, v6, v5, v1, v7}, Lcom/android/server/audio/AudioService$VolumeStreamState;->setIndex(IILjava/lang/String;Z)Z

    .line 138
    :cond_2
    invoke-static {}, Lcom/android/media/audio/Flags;->vgsVssSyncMuteOrder()Z

    .line 141
    :cond_3
    :goto_2
    add-int/lit8 v11, v11, 0x1

    .line 143
    const/4 v6, -0x1

    .line 144
    goto :goto_1

    .line 145
    :cond_4
    if-nez v12, :cond_6

    .line 147
    const-string v3, "AS.AudioService"

    .line 149
    new-instance v6, Ljava/lang/StringBuilder;

    .line 151
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 154
    const-string v7, "applyAllVolumes: apply index "

    .line 156
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 162
    const-string v7, ", group "

    .line 164
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    iget-object v7, v0, Lcom/android/server/audio/AudioService$VolumeGroupState;->mAudioVolumeGroup:Landroid/media/audiopolicy/AudioVolumeGroup;

    .line 169
    invoke-virtual {v7}, Landroid/media/audiopolicy/AudioVolumeGroup;->name()Ljava/lang/String;

    .line 172
    move-result-object v7

    .line 173
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    const-string v7, " and device "

    .line 178
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    invoke-static {v5}, Landroid/media/AudioSystem;->getOutputDeviceName(I)Ljava/lang/String;

    .line 184
    move-result-object v7

    .line 185
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 191
    move-result-object v6

    .line 192
    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    iget-boolean v3, v0, Lcom/android/server/audio/AudioService$VolumeGroupState;->mIsMuted:Z

    .line 197
    if-eqz v3, :cond_5

    .line 199
    const/4 v9, 0x0

    .line 200
    :cond_5
    invoke-virtual {v0, v9, v5}, Lcom/android/server/audio/AudioService$VolumeGroupState;->setVolumeIndexInt(II)V

    .line 203
    :cond_6
    add-int/lit8 v4, v4, 0x1

    .line 205
    goto/16 :goto_0

    .line 207
    :cond_7
    invoke-virtual {v0, v8}, Lcom/android/server/audio/AudioService$VolumeGroupState;->getIndex(I)I

    .line 210
    move-result v3

    .line 211
    iget-object v4, v0, Lcom/android/server/audio/AudioService$VolumeGroupState;->this$0:Lcom/android/server/audio/AudioService;

    .line 213
    iget v5, v0, Lcom/android/server/audio/AudioService$VolumeGroupState;->mPublicStreamType:I

    .line 215
    invoke-virtual {v4, v5}, Lcom/android/server/audio/AudioService;->getDeviceForStream(I)I

    .line 218
    move-result v4

    .line 219
    if-eqz p1, :cond_8

    .line 221
    iget-object v5, v0, Lcom/android/server/audio/AudioService$VolumeGroupState;->mIndexMap:Landroid/util/SparseIntArray;

    .line 223
    invoke-virtual {v5, v4}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    .line 226
    move-result v5

    .line 227
    if-gez v5, :cond_8

    .line 229
    move v5, v7

    .line 230
    goto :goto_3

    .line 231
    :cond_8
    const/4 v5, 0x0

    .line 232
    :goto_3
    iget-object v6, v0, Lcom/android/server/audio/AudioService$VolumeGroupState;->mAudioVolumeGroup:Landroid/media/audiopolicy/AudioVolumeGroup;

    .line 234
    invoke-virtual {v6}, Landroid/media/audiopolicy/AudioVolumeGroup;->getLegacyStreamTypes()[I

    .line 237
    move-result-object v6

    .line 238
    array-length v9, v6

    .line 239
    const/4 v10, 0x0

    .line 240
    const/4 v11, 0x0

    .line 241
    :goto_4
    if-ge v10, v9, :cond_d

    .line 243
    aget v12, v6, v10

    .line 245
    const/4 v13, -0x1

    .line 246
    if-eq v12, v13, :cond_c

    .line 248
    iget-object v14, v0, Lcom/android/server/audio/AudioService$VolumeGroupState;->this$0:Lcom/android/server/audio/AudioService;

    .line 250
    iget-object v14, v14, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    .line 252
    array-length v15, v14

    .line 253
    if-ge v12, v15, :cond_c

    .line 255
    aget-object v14, v14, v12

    .line 257
    iget-boolean v15, v14, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIsMuted:Z

    .line 259
    invoke-virtual {v14, v8}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    .line 262
    move-result v14

    .line 263
    add-int/lit8 v14, v14, 0x5

    .line 265
    div-int/lit8 v14, v14, 0xa

    .line 267
    if-eqz v5, :cond_9

    .line 269
    iget-object v13, v0, Lcom/android/server/audio/AudioService$VolumeGroupState;->this$0:Lcom/android/server/audio/AudioService;

    .line 271
    iget-object v13, v13, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    .line 273
    aget-object v13, v13, v12

    .line 275
    mul-int/lit8 v8, v3, 0xa

    .line 277
    invoke-virtual {v13, v8, v4, v1, v7}, Lcom/android/server/audio/AudioService$VolumeStreamState;->setIndex(IILjava/lang/String;Z)Z

    .line 280
    :cond_9
    if-ne v14, v3, :cond_a

    .line 282
    iget-boolean v8, v0, Lcom/android/server/audio/AudioService$VolumeGroupState;->mIsMuted:Z

    .line 284
    if-ne v8, v15, :cond_a

    .line 286
    invoke-virtual {v0, v12}, Lcom/android/server/audio/AudioService$VolumeGroupState;->isVssMuteBijective(I)Z

    .line 289
    move-result v8

    .line 290
    if-eqz v8, :cond_a

    .line 292
    move v11, v7

    .line 293
    goto :goto_5

    .line 294
    :cond_a
    if-eq v14, v3, :cond_b

    .line 296
    iget-object v8, v0, Lcom/android/server/audio/AudioService$VolumeGroupState;->this$0:Lcom/android/server/audio/AudioService;

    .line 298
    iget-object v8, v8, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    .line 300
    aget-object v8, v8, v12

    .line 302
    mul-int/lit8 v13, v3, 0xa

    .line 304
    const/high16 v14, 0x40000000    # 2.0f

    .line 306
    invoke-virtual {v8, v13, v14, v1, v7}, Lcom/android/server/audio/AudioService$VolumeStreamState;->setIndex(IILjava/lang/String;Z)Z

    .line 309
    :cond_b
    iget-boolean v8, v0, Lcom/android/server/audio/AudioService$VolumeGroupState;->mIsMuted:Z

    .line 311
    if-eq v8, v15, :cond_c

    .line 313
    invoke-virtual {v0, v12}, Lcom/android/server/audio/AudioService$VolumeGroupState;->isVssMuteBijective(I)Z

    .line 316
    move-result v8

    .line 317
    if-eqz v8, :cond_c

    .line 319
    iget-object v8, v0, Lcom/android/server/audio/AudioService$VolumeGroupState;->this$0:Lcom/android/server/audio/AudioService;

    .line 321
    iget-object v8, v8, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    .line 323
    aget-object v8, v8, v12

    .line 325
    iget-boolean v12, v0, Lcom/android/server/audio/AudioService$VolumeGroupState;->mIsMuted:Z

    .line 327
    const-string v13, "VGS.applyAllVolumes#2"

    .line 329
    invoke-virtual {v8, v13, v12}, Lcom/android/server/audio/AudioService$VolumeStreamState;->mute(Ljava/lang/String;Z)Z

    .line 332
    :cond_c
    :goto_5
    add-int/lit8 v10, v10, 0x1

    .line 334
    const/high16 v8, 0x40000000    # 2.0f

    .line 336
    goto :goto_4

    .line 337
    :cond_d
    if-nez v11, :cond_f

    .line 339
    const-string v1, "AS.AudioService"

    .line 341
    new-instance v6, Ljava/lang/StringBuilder;

    .line 343
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 346
    const-string v7, "applyAllVolumes: apply default device index "

    .line 348
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 351
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 354
    const-string v7, ", group "

    .line 356
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 359
    iget-object v7, v0, Lcom/android/server/audio/AudioService$VolumeGroupState;->mAudioVolumeGroup:Landroid/media/audiopolicy/AudioVolumeGroup;

    .line 361
    invoke-virtual {v7}, Landroid/media/audiopolicy/AudioVolumeGroup;->name()Ljava/lang/String;

    .line 364
    move-result-object v7

    .line 365
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 368
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 371
    move-result-object v6

    .line 372
    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    iget-boolean v1, v0, Lcom/android/server/audio/AudioService$VolumeGroupState;->mIsMuted:Z

    .line 377
    if-eqz v1, :cond_e

    .line 379
    const/high16 v1, 0x40000000    # 2.0f

    .line 381
    const/4 v6, 0x0

    .line 382
    goto :goto_6

    .line 383
    :cond_e
    move v6, v3

    .line 384
    const/high16 v1, 0x40000000    # 2.0f

    .line 386
    :goto_6
    invoke-virtual {v0, v6, v1}, Lcom/android/server/audio/AudioService$VolumeGroupState;->setVolumeIndexInt(II)V

    .line 389
    :cond_f
    if-eqz v5, :cond_11

    .line 391
    const-string v1, "AS.AudioService"

    .line 393
    new-instance v5, Ljava/lang/StringBuilder;

    .line 395
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 398
    const-string v6, "applyAllVolumes: forceDeviceSync index "

    .line 400
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 403
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 406
    const-string v6, ", device "

    .line 408
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 411
    invoke-static {v4}, Landroid/media/AudioSystem;->getOutputDeviceName(I)Ljava/lang/String;

    .line 414
    move-result-object v6

    .line 415
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 418
    const-string v6, ", group "

    .line 420
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 423
    iget-object v6, v0, Lcom/android/server/audio/AudioService$VolumeGroupState;->mAudioVolumeGroup:Landroid/media/audiopolicy/AudioVolumeGroup;

    .line 425
    invoke-virtual {v6}, Landroid/media/audiopolicy/AudioVolumeGroup;->name()Ljava/lang/String;

    .line 428
    move-result-object v6

    .line 429
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 432
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 435
    move-result-object v5

    .line 436
    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    iget-boolean v1, v0, Lcom/android/server/audio/AudioService$VolumeGroupState;->mIsMuted:Z

    .line 441
    if-eqz v1, :cond_10

    .line 443
    const/4 v3, 0x0

    .line 444
    :cond_10
    invoke-virtual {v0, v3, v4}, Lcom/android/server/audio/AudioService$VolumeGroupState;->setVolumeIndexInt(II)V

    .line 447
    :cond_11
    monitor-exit v2

    .line 448
    return-void

    .line 449
    :goto_7
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 450
    throw v0
.end method

.method public final getIndex(I)I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/audio/AudioService$VolumeGroupState;->mIndexMap:Landroid/util/SparseIntArray;

    .line 3
    const/4 v1, -0x1

    .line 4
    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    .line 7
    move-result p1

    .line 8
    if-eq p1, v1, :cond_0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iget-object p0, p0, Lcom/android/server/audio/AudioService$VolumeGroupState;->mIndexMap:Landroid/util/SparseIntArray;

    .line 13
    const/high16 p1, 0x40000000    # 2.0f

    .line 15
    invoke-virtual {p0, p1}, Landroid/util/SparseIntArray;->get(I)I

    .line 18
    move-result p1

    .line 19
    :goto_0
    return p1
.end method

.method public final getSettingNameForDevice(I)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/media/AudioSystem;->getOutputDeviceName(I)Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 11
    iget-object p0, p0, Lcom/android/server/audio/AudioService$VolumeGroupState;->mSettingName:Ljava/lang/String;

    .line 13
    return-object p0

    .line 14
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 16
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    iget-object p0, p0, Lcom/android/server/audio/AudioService$VolumeGroupState;->mSettingName:Ljava/lang/String;

    .line 21
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    const-string p0, "_"

    .line 26
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    invoke-static {p1}, Landroid/media/AudioSystem;->getOutputDeviceName(I)Ljava/lang/String;

    .line 32
    move-result-object p0

    .line 33
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    move-result-object p0

    .line 40
    return-object p0
.end method

.method public final getValidIndex(I)I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/server/audio/AudioService$VolumeGroupState;->mIndexMin:I

    .line 3
    if-ge p1, v0, :cond_0

    .line 5
    return v0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService$VolumeGroupState;->this$0:Lcom/android/server/audio/AudioService;

    .line 8
    iget-boolean v0, v0, Lcom/android/server/audio/AudioService;->mUseFixedVolume:Z

    .line 10
    iget p0, p0, Lcom/android/server/audio/AudioService$VolumeGroupState;->mIndexMax:I

    .line 12
    if-nez v0, :cond_2

    .line 14
    if-le p1, p0, :cond_1

    .line 16
    goto :goto_0

    .line 17
    :cond_1
    return p1

    .line 18
    :cond_2
    :goto_0
    return p0
.end method

.method public final isVssMuteBijective(I)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/audio/AudioService$VolumeGroupState;->this$0:Lcom/android/server/audio/AudioService;

    .line 3
    invoke-virtual {v0, p1}, Lcom/android/server/audio/AudioService;->isStreamAffectedByMute(I)Z

    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_1

    .line 9
    iget-object v0, v0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    .line 11
    aget-object v0, v0, p1

    .line 13
    iget v0, v0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMin:I

    .line 15
    add-int/lit8 v0, v0, 0x5

    .line 17
    div-int/lit8 v0, v0, 0xa

    .line 19
    iget p0, p0, Lcom/android/server/audio/AudioService$VolumeGroupState;->mIndexMin:I

    .line 21
    if-ne p0, v0, :cond_1

    .line 23
    if-eqz p0, :cond_0

    .line 25
    if-eqz p1, :cond_0

    .line 27
    const/4 p0, 0x6

    .line 28
    if-ne p1, p0, :cond_1

    .line 30
    :cond_0
    const/4 p0, 0x1

    .line 31
    goto :goto_0

    .line 32
    :cond_1
    const/4 p0, 0x0

    .line 33
    :goto_0
    return p0
.end method

.method public final mute(Z)Z
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/server/audio/AudioService$VolumeGroupState;->mIndexMin:I

    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-eqz v0, :cond_1

    .line 7
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService$VolumeGroupState;->mHasValidStreamType:Z

    .line 9
    if-eqz v0, :cond_0

    .line 11
    iget v0, p0, Lcom/android/server/audio/AudioService$VolumeGroupState;->mPublicStreamType:I

    .line 13
    invoke-virtual {p0, v0}, Lcom/android/server/audio/AudioService$VolumeGroupState;->isVssMuteBijective(I)Z

    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    move v0, v2

    .line 21
    goto :goto_1

    .line 22
    :cond_1
    :goto_0
    move v0, v1

    .line 23
    :goto_1
    if-nez v0, :cond_2

    .line 25
    new-instance p1, Ljava/lang/StringBuilder;

    .line 27
    const-string/jumbo v0, "invalid mute on unmutable volume group "

    .line 30
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 33
    iget-object p0, p0, Lcom/android/server/audio/AudioService$VolumeGroupState;->mAudioVolumeGroup:Landroid/media/audiopolicy/AudioVolumeGroup;

    .line 35
    invoke-virtual {p0}, Landroid/media/audiopolicy/AudioVolumeGroup;->name()Ljava/lang/String;

    .line 38
    move-result-object p0

    .line 39
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    move-result-object p0

    .line 46
    const-string p1, "AS.AudioService"

    .line 48
    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    return v2

    .line 52
    :cond_2
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService$VolumeGroupState;->mIsMuted:Z

    .line 54
    if-eq v0, p1, :cond_3

    .line 56
    goto :goto_2

    .line 57
    :cond_3
    move v1, v2

    .line 58
    :goto_2
    if-eqz v1, :cond_4

    .line 60
    iput-boolean p1, p0, Lcom/android/server/audio/AudioService$VolumeGroupState;->mIsMuted:Z

    .line 62
    :cond_4
    return v1
.end method

.method public final readSettings()V
    .locals 11

    .line 1
    const-class v0, Lcom/android/server/audio/AudioService$VolumeStreamState;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/AudioService$VolumeGroupState;->this$0:Lcom/android/server/audio/AudioService;

    .line 6
    iget-boolean v1, v1, Lcom/android/server/audio/AudioService;->mUseFixedVolume:Z

    .line 8
    const/high16 v2, 0x40000000    # 2.0f

    .line 10
    if-eqz v1, :cond_0

    .line 12
    iget-object v1, p0, Lcom/android/server/audio/AudioService$VolumeGroupState;->mIndexMap:Landroid/util/SparseIntArray;

    .line 14
    iget p0, p0, Lcom/android/server/audio/AudioService$VolumeGroupState;->mIndexMax:I

    .line 16
    invoke-virtual {v1, v2, p0}, Landroid/util/SparseIntArray;->put(II)V

    .line 19
    monitor-exit v0

    .line 20
    return-void

    .line 21
    :catchall_0
    move-exception p0

    .line 22
    goto/16 :goto_3

    .line 24
    :cond_0
    sget-object v1, Landroid/media/AudioSystem;->DEVICE_OUT_ALL_SET:Ljava/util/Set;

    .line 26
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 29
    move-result-object v1

    .line 30
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 33
    move-result v3

    .line 34
    if-eqz v3, :cond_5

    .line 36
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 39
    move-result-object v3

    .line 40
    check-cast v3, Ljava/lang/Integer;

    .line 42
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 45
    move-result v3

    .line 46
    const/4 v4, -0x1

    .line 47
    if-ne v3, v2, :cond_1

    .line 49
    sget-object v5, Landroid/media/AudioSystem;->DEFAULT_STREAM_VOLUME:[I

    .line 51
    iget v6, p0, Lcom/android/server/audio/AudioService$VolumeGroupState;->mPublicStreamType:I

    .line 53
    aget v5, v5, v6

    .line 55
    goto :goto_1

    .line 56
    :cond_1
    move v5, v4

    .line 57
    :goto_1
    invoke-virtual {p0, v3}, Lcom/android/server/audio/AudioService$VolumeGroupState;->getSettingNameForDevice(I)Ljava/lang/String;

    .line 60
    move-result-object v6

    .line 61
    iget-object v7, p0, Lcom/android/server/audio/AudioService$VolumeGroupState;->this$0:Lcom/android/server/audio/AudioService;

    .line 63
    iget-object v8, v7, Lcom/android/server/audio/AudioService;->mSettings:Lcom/android/server/audio/SettingsAdapter;

    .line 65
    iget-object v7, v7, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    .line 67
    iget-boolean v9, p0, Lcom/android/server/audio/AudioService$VolumeGroupState;->mHasValidStreamType:Z

    .line 69
    if-eqz v9, :cond_2

    .line 71
    iget v9, p0, Lcom/android/server/audio/AudioService$VolumeGroupState;->mPublicStreamType:I

    .line 73
    const/4 v10, 0x3

    .line 74
    if-ne v9, v10, :cond_2

    .line 76
    const/4 v9, 0x0

    .line 77
    goto :goto_2

    .line 78
    :cond_2
    const/4 v9, -0x2

    .line 79
    :goto_2
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 82
    invoke-static {v7, v6, v5, v9}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 85
    move-result v5

    .line 86
    if-ne v5, v4, :cond_3

    .line 88
    goto :goto_0

    .line 89
    :cond_3
    iget v4, p0, Lcom/android/server/audio/AudioService$VolumeGroupState;->mPublicStreamType:I

    .line 91
    const/4 v7, 0x7

    .line 92
    if-ne v4, v7, :cond_4

    .line 94
    iget-object v4, p0, Lcom/android/server/audio/AudioService$VolumeGroupState;->this$0:Lcom/android/server/audio/AudioService;

    .line 96
    iget-boolean v4, v4, Lcom/android/server/audio/AudioService;->mCameraSoundForced:Z

    .line 98
    if-eqz v4, :cond_4

    .line 100
    iget v5, p0, Lcom/android/server/audio/AudioService$VolumeGroupState;->mIndexMax:I

    .line 102
    :cond_4
    const-string v4, "AS.AudioService"

    .line 104
    new-instance v7, Ljava/lang/StringBuilder;

    .line 106
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 109
    const-string/jumbo v8, "readSettings: found stored index "

    .line 112
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    invoke-virtual {p0, v5}, Lcom/android/server/audio/AudioService$VolumeGroupState;->getValidIndex(I)I

    .line 118
    move-result v8

    .line 119
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 122
    const-string v8, " for group "

    .line 124
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    iget-object v8, p0, Lcom/android/server/audio/AudioService$VolumeGroupState;->mAudioVolumeGroup:Landroid/media/audiopolicy/AudioVolumeGroup;

    .line 129
    invoke-virtual {v8}, Landroid/media/audiopolicy/AudioVolumeGroup;->name()Ljava/lang/String;

    .line 132
    move-result-object v8

    .line 133
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    const-string v8, ", device: "

    .line 138
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    const-string v6, ", User="

    .line 146
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    iget-object v6, p0, Lcom/android/server/audio/AudioService$VolumeGroupState;->this$0:Lcom/android/server/audio/AudioService;

    .line 151
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 154
    invoke-static {}, Lcom/android/server/audio/AudioService;->getCurrentUserId()I

    .line 157
    move-result v6

    .line 158
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 161
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 164
    move-result-object v6

    .line 165
    invoke-static {v4, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    iget-object v4, p0, Lcom/android/server/audio/AudioService$VolumeGroupState;->mIndexMap:Landroid/util/SparseIntArray;

    .line 170
    invoke-virtual {p0, v5}, Lcom/android/server/audio/AudioService$VolumeGroupState;->getValidIndex(I)I

    .line 173
    move-result v5

    .line 174
    invoke-virtual {v4, v3, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 177
    goto/16 :goto_0

    .line 179
    :cond_5
    monitor-exit v0

    .line 180
    return-void

    .line 181
    :goto_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 182
    throw p0
.end method

.method public final setVolumeIndex(III)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/android/server/audio/AudioService$VolumeGroupState;->updateVolumeIndex(II)V

    .line 4
    if-nez p1, :cond_0

    .line 6
    const/4 p3, 0x1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 p3, 0x0

    .line 9
    :goto_0
    invoke-virtual {p0, p3}, Lcom/android/server/audio/AudioService$VolumeGroupState;->mute(Z)Z

    .line 12
    move-result p3

    .line 13
    if-nez p3, :cond_1

    .line 15
    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioService$VolumeGroupState;->getValidIndex(I)I

    .line 18
    move-result p1

    .line 19
    invoke-virtual {p0, p1, p2}, Lcom/android/server/audio/AudioService$VolumeGroupState;->setVolumeIndexInt(II)V

    .line 22
    :cond_1
    return-void
.end method

.method public final setVolumeIndexInt(II)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService$VolumeGroupState;->mHasValidStreamType:Z

    .line 3
    iget v1, p0, Lcom/android/server/audio/AudioService$VolumeGroupState;->mPublicStreamType:I

    .line 5
    iget-object v2, p0, Lcom/android/server/audio/AudioService$VolumeGroupState;->this$0:Lcom/android/server/audio/AudioService;

    .line 7
    if-eqz v0, :cond_0

    .line 9
    invoke-virtual {p0, v1}, Lcom/android/server/audio/AudioService$VolumeGroupState;->isVssMuteBijective(I)Z

    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 15
    iget-object v0, v2, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    .line 17
    aget-object v0, v0, v1

    .line 19
    invoke-virtual {v0}, Lcom/android/server/audio/AudioService$VolumeStreamState;->isFullyMuted()Z

    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_0

    .line 25
    const/4 p1, 0x0

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 v0, 0x6

    .line 28
    if-ne v1, v0, :cond_1

    .line 30
    if-nez p1, :cond_1

    .line 32
    const/4 p1, 0x1

    .line 33
    :cond_1
    :goto_0
    iget-object v0, v2, Lcom/android/server/audio/AudioService;->mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

    .line 35
    iget-object p0, p0, Lcom/android/server/audio/AudioService$VolumeGroupState;->mAudioAttributes:Landroid/media/AudioAttributes;

    .line 37
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    invoke-static {p0, p1, p2}, Landroid/media/AudioSystem;->setVolumeIndexForAttributes(Landroid/media/AudioAttributes;II)I

    .line 43
    return-void
.end method

.method public final updateVolumeIndex(II)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/audio/AudioService$VolumeGroupState;->mIndexMap:Landroid/util/SparseIntArray;

    .line 3
    invoke-virtual {v0, p2}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    .line 6
    move-result v0

    .line 7
    if-ltz v0, :cond_0

    .line 9
    iget-object v0, p0, Lcom/android/server/audio/AudioService$VolumeGroupState;->mIndexMap:Landroid/util/SparseIntArray;

    .line 11
    invoke-virtual {v0, p2}, Landroid/util/SparseIntArray;->get(I)I

    .line 14
    move-result v0

    .line 15
    if-eq v0, p1, :cond_1

    .line 17
    :cond_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService$VolumeGroupState;->mIndexMap:Landroid/util/SparseIntArray;

    .line 19
    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioService$VolumeGroupState;->getValidIndex(I)I

    .line 22
    move-result p1

    .line 23
    invoke-virtual {v0, p2, p1}, Landroid/util/SparseIntArray;->put(II)V

    .line 26
    iget-object p1, p0, Lcom/android/server/audio/AudioService$VolumeGroupState;->this$0:Lcom/android/server/audio/AudioService;

    .line 28
    iget-object v0, p1, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    .line 30
    const/4 v1, 0x2

    .line 31
    const/4 v2, 0x2

    .line 32
    const/4 v4, 0x0

    .line 33
    const/16 v6, 0x1f4

    .line 35
    move v3, p2

    .line 36
    move-object v5, p0

    .line 37
    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 40
    :cond_1
    return-void
.end method
