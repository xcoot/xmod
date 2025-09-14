.class public final Lcom/android/server/audio/SoundDoseHelper;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mAlarmManager:Landroid/app/AlarmManager;

.field public final mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

.field public final mAudioService:Lcom/android/server/audio/AudioService;

.field public final mCachedAudioDeviceCategories:Ljava/util/ArrayList;

.field public final mContext:Landroid/content/Context;

.field public final mCsdAsAFeatureLock:Ljava/lang/Object;

.field public final mCsdStateLock:Ljava/lang/Object;

.field public mCurrentCsd:F

.field public final mDoseRecords:Ljava/util/List;

.field public final mEarShockLogger:Lcom/android/server/utils/EventLogger;

.field public final mEnableCsd:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final mForceCsdProperty:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public mGlobalTimeOffsetInSecs:J

.field public mIsCsdAsAFeatureAvailable:Z

.field public mIsCsdAsAFeatureEnabled:Z

.field public mIsVolumeEffectOn:Z

.field public mLastMomentaryExposureTimeMs:J

.field public mLastMusicActiveTimeMs:J

.field public final mLogger:Lcom/android/server/utils/EventLogger;

.field public mMcc:I

.field public mMusicActiveIntent:Landroid/app/PendingIntent;

.field public mMusicActiveMs:I

.field public mNextCsdWarning:F

.field public mPendingVolumeCommand:Lcom/android/server/audio/SoundDoseHelper$StreamVolumeCommand;

.field public final mSafeMediaVolumeBTDevices:Landroid/util/SparseIntArray;

.field public mSafeMediaVolumeDbfs:F

.field public final mSafeMediaVolumeDevices:Landroid/util/SparseIntArray;

.field public mSafeMediaVolumeIndex:I

.field public mSafeMediaVolumeState:I

.field public mSafeMediaVolumeStateForBlueTooth:I

.field public final mSafeMediaVolumeStateLock:Ljava/lang/Object;

.field public final mSettings:Lcom/android/server/audio/SettingsAdapter;

.field public final mSoundDose:Ljava/util/concurrent/atomic/AtomicReference;

.field public final mSoundDoseCallback:Lcom/android/server/audio/SoundDoseHelper$1;

.field public mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;


# direct methods
.method public static -$$Nest$mgetTimeoutMsForWarning(Lcom/android/server/audio/SoundDoseHelper;I)I
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const/4 p0, 0x1

    .line 5
    if-eq p1, p0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x2

    .line 8
    const/16 v0, 0x1388

    .line 9
    .line 10
    if-eq p1, p0, :cond_1

    .line 11
    .line 12
    const/4 p0, 0x3

    .line 13
    if-eq p1, p0, :cond_1

    .line 14
    .line 15
    const/4 p0, 0x4

    .line 16
    const/4 v0, -0x1

    .line 17
    if-eq p1, p0, :cond_1

    .line 18
    .line 19
    const-string p0, "Invalid CSD warning "

    .line 20
    .line 21
    invoke-static {p1, p0}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    new-instance p1, Ljava/lang/Exception;

    .line 26
    .line 27
    invoke-direct {p1}, Ljava/lang/Exception;-><init>()V

    .line 28
    .line 29
    .line 30
    const-string v1, "AS.SoundDoseHelper"

    .line 31
    .line 32
    invoke-static {v1, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    const/16 v0, 0x1b58

    .line 37
    .line 38
    :cond_1
    :goto_0
    return v0
.end method

.method public static -$$Nest$mupdateSoundDoseRecords_l(Lcom/android/server/audio/SoundDoseHelper;[Landroid/media/SoundDoseRecord;F)V
    .locals 12

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    array-length v0, p1

    .line 5
    const-wide/16 v1, 0x0

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    move-wide v5, v1

    .line 9
    move v4, v3

    .line 10
    :goto_0
    if-ge v4, v0, :cond_2

    .line 11
    .line 12
    aget-object v7, p1, v4

    .line 13
    .line 14
    new-instance v8, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    const-string v9, "  new record: "

    .line 17
    .line 18
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v8

    .line 28
    const-string v9, "AS.SoundDoseHelper"

    .line 29
    .line 30
    invoke-static {v9, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    iget v8, v7, Landroid/media/SoundDoseRecord;->duration:I

    .line 34
    .line 35
    int-to-long v10, v8

    .line 36
    add-long/2addr v5, v10

    .line 37
    iget v8, v7, Landroid/media/SoundDoseRecord;->value:F

    .line 38
    .line 39
    const/4 v10, 0x0

    .line 40
    cmpg-float v11, v8, v10

    .line 41
    .line 42
    if-gez v11, :cond_0

    .line 43
    .line 44
    iget-object v8, p0, Lcom/android/server/audio/SoundDoseHelper;->mDoseRecords:Ljava/util/List;

    .line 45
    .line 46
    new-instance v10, Lcom/android/server/audio/SoundDoseHelper$$ExternalSyntheticLambda3;

    .line 47
    .line 48
    invoke-direct {v10, v7}, Lcom/android/server/audio/SoundDoseHelper$$ExternalSyntheticLambda3;-><init>(Landroid/media/SoundDoseRecord;)V

    .line 49
    .line 50
    .line 51
    check-cast v8, Ljava/util/ArrayList;

    .line 52
    .line 53
    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    .line 54
    .line 55
    .line 56
    move-result v8

    .line 57
    if-nez v8, :cond_1

    .line 58
    .line 59
    new-instance v8, Ljava/lang/StringBuilder;

    .line 60
    .line 61
    const-string v10, "Could not find cached record to remove: "

    .line 62
    .line 63
    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v7

    .line 73
    invoke-static {v9, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_0
    cmpl-float v8, v8, v10

    .line 78
    .line 79
    if-lez v8, :cond_1

    .line 80
    .line 81
    iget-object v8, p0, Lcom/android/server/audio/SoundDoseHelper;->mDoseRecords:Ljava/util/List;

    .line 82
    .line 83
    check-cast v8, Ljava/util/ArrayList;

    .line 84
    .line 85
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    :cond_1
    :goto_1
    add-int/lit8 v4, v4, 0x1

    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/audio/SoundDoseHelper;->sanitizeDoseRecords_l()V

    .line 92
    .line 93
    .line 94
    iget-object p1, p0, Lcom/android/server/audio/SoundDoseHelper;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    .line 95
    .line 96
    const/16 v0, 0x3ed

    .line 97
    .line 98
    const/4 v4, 0x0

    .line 99
    invoke-virtual {p1, v0, v3, v3, v4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 104
    .line 105
    .line 106
    new-instance p1, Lcom/android/server/audio/AudioServiceEvents$SoundDoseEvent;

    .line 107
    .line 108
    const/4 v0, 0x1

    .line 109
    invoke-direct {p1, v0, v5, v6, p2}, Lcom/android/server/audio/AudioServiceEvents$SoundDoseEvent;-><init>(IJF)V

    .line 110
    .line 111
    .line 112
    iget-object p0, p0, Lcom/android/server/audio/SoundDoseHelper;->mLogger:Lcom/android/server/utils/EventLogger;

    .line 113
    .line 114
    invoke-virtual {p0, p1}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 115
    .line 116
    .line 117
    return-void
.end method

.method public constructor <init>(Lcom/android/server/audio/AudioService;Landroid/content/Context;Lcom/android/server/audio/AudioService$AudioHandler;Lcom/android/server/audio/SettingsAdapter;Lcom/android/server/audio/AudioService$VolumeController;)V
    .locals 10

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/android/server/utils/EventLogger;

    .line 5
    .line 6
    const/16 v1, 0x1e

    .line 7
    .line 8
    const-string v2, "CSD updates"

    .line 9
    .line 10
    invoke-direct {v0, v1, v2}, Lcom/android/server/utils/EventLogger;-><init>(ILjava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mLogger:Lcom/android/server/utils/EventLogger;

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    iput v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mMcc:I

    .line 17
    .line 18
    new-instance v2, Ljava/lang/Object;

    .line 19
    .line 20
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v2, p0, Lcom/android/server/audio/SoundDoseHelper;->mSafeMediaVolumeStateLock:Ljava/lang/Object;

    .line 24
    .line 25
    new-instance v2, Landroid/util/SparseIntArray;

    .line 26
    .line 27
    invoke-direct {v2}, Landroid/util/SparseIntArray;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object v2, p0, Lcom/android/server/audio/SoundDoseHelper;->mSafeMediaVolumeDevices:Landroid/util/SparseIntArray;

    .line 31
    .line 32
    const-wide/16 v3, 0x0

    .line 33
    .line 34
    iput-wide v3, p0, Lcom/android/server/audio/SoundDoseHelper;->mLastMusicActiveTimeMs:J

    .line 35
    .line 36
    const/4 v3, 0x0

    .line 37
    iput-object v3, p0, Lcom/android/server/audio/SoundDoseHelper;->mMusicActiveIntent:Landroid/app/PendingIntent;

    .line 38
    .line 39
    new-instance v3, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 40
    .line 41
    invoke-direct {v3, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 42
    .line 43
    .line 44
    iput-object v3, p0, Lcom/android/server/audio/SoundDoseHelper;->mEnableCsd:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 45
    .line 46
    new-instance v3, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 47
    .line 48
    invoke-direct {v3, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 49
    .line 50
    .line 51
    iput-object v3, p0, Lcom/android/server/audio/SoundDoseHelper;->mForceCsdProperty:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 52
    .line 53
    new-instance v3, Ljava/lang/Object;

    .line 54
    .line 55
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 56
    .line 57
    .line 58
    iput-object v3, p0, Lcom/android/server/audio/SoundDoseHelper;->mCsdAsAFeatureLock:Ljava/lang/Object;

    .line 59
    .line 60
    iput-boolean v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mIsCsdAsAFeatureAvailable:Z

    .line 61
    .line 62
    iput-boolean v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mIsCsdAsAFeatureEnabled:Z

    .line 63
    .line 64
    new-instance v3, Ljava/util/ArrayList;

    .line 65
    .line 66
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 67
    .line 68
    .line 69
    iput-object v3, p0, Lcom/android/server/audio/SoundDoseHelper;->mCachedAudioDeviceCategories:Ljava/util/ArrayList;

    .line 70
    .line 71
    new-instance v3, Ljava/lang/Object;

    .line 72
    .line 73
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 74
    .line 75
    .line 76
    iput-object v3, p0, Lcom/android/server/audio/SoundDoseHelper;->mCsdStateLock:Ljava/lang/Object;

    .line 77
    .line 78
    new-instance v3, Ljava/util/concurrent/atomic/AtomicReference;

    .line 79
    .line 80
    invoke-direct {v3}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 81
    .line 82
    .line 83
    iput-object v3, p0, Lcom/android/server/audio/SoundDoseHelper;->mSoundDose:Ljava/util/concurrent/atomic/AtomicReference;

    .line 84
    .line 85
    const/4 v4, 0x0

    .line 86
    iput v4, p0, Lcom/android/server/audio/SoundDoseHelper;->mCurrentCsd:F

    .line 87
    .line 88
    const-wide/16 v4, -0x1

    .line 89
    .line 90
    iput-wide v4, p0, Lcom/android/server/audio/SoundDoseHelper;->mLastMomentaryExposureTimeMs:J

    .line 91
    .line 92
    const/high16 v6, 0x3f800000    # 1.0f

    .line 93
    .line 94
    iput v6, p0, Lcom/android/server/audio/SoundDoseHelper;->mNextCsdWarning:F

    .line 95
    .line 96
    new-instance v6, Ljava/util/ArrayList;

    .line 97
    .line 98
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 99
    .line 100
    .line 101
    iput-object v6, p0, Lcom/android/server/audio/SoundDoseHelper;->mDoseRecords:Ljava/util/List;

    .line 102
    .line 103
    iput-wide v4, p0, Lcom/android/server/audio/SoundDoseHelper;->mGlobalTimeOffsetInSecs:J

    .line 104
    .line 105
    new-instance v4, Lcom/android/server/audio/SoundDoseHelper$1;

    .line 106
    .line 107
    invoke-direct {v4, p0}, Lcom/android/server/audio/SoundDoseHelper$1;-><init>(Lcom/android/server/audio/SoundDoseHelper;)V

    .line 108
    .line 109
    .line 110
    iput-object v4, p0, Lcom/android/server/audio/SoundDoseHelper;->mSoundDoseCallback:Lcom/android/server/audio/SoundDoseHelper$1;

    .line 111
    .line 112
    new-instance v5, Landroid/util/SparseIntArray;

    .line 113
    .line 114
    invoke-direct {v5}, Landroid/util/SparseIntArray;-><init>()V

    .line 115
    .line 116
    .line 117
    iput-object v5, p0, Lcom/android/server/audio/SoundDoseHelper;->mSafeMediaVolumeBTDevices:Landroid/util/SparseIntArray;

    .line 118
    .line 119
    const/4 v6, 0x1

    .line 120
    iput v6, p0, Lcom/android/server/audio/SoundDoseHelper;->mSafeMediaVolumeStateForBlueTooth:I

    .line 121
    .line 122
    new-instance v6, Lcom/android/server/utils/EventLogger;

    .line 123
    .line 124
    const-string v7, "Ear shock level history"

    .line 125
    .line 126
    invoke-direct {v6, v1, v7}, Lcom/android/server/utils/EventLogger;-><init>(ILjava/lang/String;)V

    .line 127
    .line 128
    .line 129
    iput-object v6, p0, Lcom/android/server/audio/SoundDoseHelper;->mEarShockLogger:Lcom/android/server/utils/EventLogger;

    .line 130
    .line 131
    iput-object p1, p0, Lcom/android/server/audio/SoundDoseHelper;->mAudioService:Lcom/android/server/audio/AudioService;

    .line 132
    .line 133
    iput-object p3, p0, Lcom/android/server/audio/SoundDoseHelper;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    .line 134
    .line 135
    iput-object p4, p0, Lcom/android/server/audio/SoundDoseHelper;->mSettings:Lcom/android/server/audio/SettingsAdapter;

    .line 136
    .line 137
    iput-object p5, p0, Lcom/android/server/audio/SoundDoseHelper;->mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

    .line 138
    .line 139
    iput-object p2, p0, Lcom/android/server/audio/SoundDoseHelper;->mContext:Landroid/content/Context;

    .line 140
    .line 141
    const/4 p3, 0x4

    .line 142
    const/4 p5, -0x1

    .line 143
    invoke-virtual {v2, p3, p5}, Landroid/util/SparseIntArray;->append(II)V

    .line 144
    .line 145
    .line 146
    const/16 p3, 0x8

    .line 147
    .line 148
    invoke-virtual {v2, p3, p5}, Landroid/util/SparseIntArray;->append(II)V

    .line 149
    .line 150
    .line 151
    const/high16 p3, 0x4000000

    .line 152
    .line 153
    invoke-virtual {v2, p3, p5}, Landroid/util/SparseIntArray;->append(II)V

    .line 154
    .line 155
    .line 156
    const/high16 p3, 0x20000000

    .line 157
    .line 158
    invoke-virtual {v2, p3, p5}, Landroid/util/SparseIntArray;->append(II)V

    .line 159
    .line 160
    .line 161
    const v1, 0x20000002

    .line 162
    .line 163
    .line 164
    invoke-virtual {v2, v1, p5}, Landroid/util/SparseIntArray;->append(II)V

    .line 165
    .line 166
    .line 167
    const/16 v6, 0x100

    .line 168
    .line 169
    invoke-virtual {v2, v6, p5}, Landroid/util/SparseIntArray;->append(II)V

    .line 170
    .line 171
    .line 172
    sget-boolean v7, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_SAFE_MEDIA_VOLUME:Z

    .line 173
    .line 174
    const/16 v7, 0x80

    .line 175
    .line 176
    invoke-virtual {v2, v7, p5}, Landroid/util/SparseIntArray;->append(II)V

    .line 177
    .line 178
    .line 179
    const/high16 v8, 0x8000000

    .line 180
    .line 181
    invoke-virtual {v2, v8, p5}, Landroid/util/SparseIntArray;->append(II)V

    .line 182
    .line 183
    .line 184
    const/16 v9, 0x4000

    .line 185
    .line 186
    invoke-virtual {v2, v9, p5}, Landroid/util/SparseIntArray;->append(II)V

    .line 187
    .line 188
    .line 189
    invoke-virtual {v5, v7, p5}, Landroid/util/SparseIntArray;->append(II)V

    .line 190
    .line 191
    .line 192
    invoke-virtual {v5, v6, p5}, Landroid/util/SparseIntArray;->append(II)V

    .line 193
    .line 194
    .line 195
    invoke-virtual {v5, p3, p5}, Landroid/util/SparseIntArray;->append(II)V

    .line 196
    .line 197
    .line 198
    invoke-virtual {v5, v1, p5}, Landroid/util/SparseIntArray;->append(II)V

    .line 199
    .line 200
    .line 201
    invoke-virtual {v5, v8, p5}, Landroid/util/SparseIntArray;->append(II)V

    .line 202
    .line 203
    .line 204
    iget-object p1, p1, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    .line 205
    .line 206
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 207
    .line 208
    .line 209
    const-string p3, "audio_safe_volume_state"

    .line 210
    .line 211
    invoke-static {p1, p3, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 212
    .line 213
    .line 214
    move-result p1

    .line 215
    iput p1, p0, Lcom/android/server/audio/SoundDoseHelper;->mSafeMediaVolumeState:I

    .line 216
    .line 217
    sget-boolean p1, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_SAFE_VOLUME_COUNTRY:Z

    .line 218
    .line 219
    if-eqz p1, :cond_0

    .line 220
    .line 221
    const/4 p1, 0x3

    .line 222
    iput p1, p0, Lcom/android/server/audio/SoundDoseHelper;->mSafeMediaVolumeStateForBlueTooth:I

    .line 223
    .line 224
    :cond_0
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 225
    .line 226
    .line 227
    move-result-object p1

    .line 228
    const p3, 0x10e0124

    .line 229
    .line 230
    .line 231
    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getInteger(I)I

    .line 232
    .line 233
    .line 234
    move-result p1

    .line 235
    mul-int/lit8 p1, p1, 0xa

    .line 236
    .line 237
    iput p1, p0, Lcom/android/server/audio/SoundDoseHelper;->mSafeMediaVolumeIndex:I

    .line 238
    .line 239
    invoke-static {v4}, Landroid/media/AudioSystem;->getSoundDoseInterface(Landroid/media/ISoundDoseCallback;)Landroid/media/ISoundDose;

    .line 240
    .line 241
    .line 242
    move-result-object p1

    .line 243
    invoke-virtual {v3, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 244
    .line 245
    .line 246
    invoke-virtual {p0}, Lcom/android/server/audio/SoundDoseHelper;->initCsd()V

    .line 247
    .line 248
    .line 249
    const-string p1, "alarm"

    .line 250
    .line 251
    invoke-virtual {p2, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 252
    .line 253
    .line 254
    move-result-object p1

    .line 255
    check-cast p1, Landroid/app/AlarmManager;

    .line 256
    .line 257
    iput-object p1, p0, Lcom/android/server/audio/SoundDoseHelper;->mAlarmManager:Landroid/app/AlarmManager;

    .line 258
    .line 259
    return-void
.end method

.method public static safeMediaVolumeStateToString(I)Ljava/lang/String;
    .locals 1

    .line 1
    if-eqz p0, :cond_3

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p0, v0, :cond_2

    .line 5
    .line 6
    const/4 v0, 0x2

    .line 7
    if-eq p0, v0, :cond_1

    .line 8
    .line 9
    const/4 v0, 0x3

    .line 10
    if-eq p0, v0, :cond_0

    .line 11
    .line 12
    const/4 p0, 0x0

    .line 13
    return-object p0

    .line 14
    :cond_0
    const-string p0, "SAFE_MEDIA_VOLUME_ACTIVE"

    .line 15
    .line 16
    return-object p0

    .line 17
    :cond_1
    const-string p0, "SAFE_MEDIA_VOLUME_INACTIVE"

    .line 18
    .line 19
    return-object p0

    .line 20
    :cond_2
    const-string p0, "SAFE_MEDIA_VOLUME_DISABLED"

    .line 21
    .line 22
    return-object p0

    .line 23
    :cond_3
    const-string p0, "SAFE_MEDIA_VOLUME_NOT_CONFIGURED"

    .line 24
    .line 25
    return-object p0
.end method


# virtual methods
.method public final checkSafeMediaVolume(III)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mSafeMediaVolumeStateLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/audio/SoundDoseHelper;->checkSafeMediaVolume_l(III)Z

    .line 5
    .line 6
    .line 7
    move-result p0

    .line 8
    monitor-exit v0

    .line 9
    return p0

    .line 10
    :catchall_0
    move-exception p0

    .line 11
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    throw p0
.end method

.method public final checkSafeMediaVolume_l(III)Z
    .locals 3

    .line 1
    invoke-static {}, Lcom/samsung/android/server/audio/FactoryUtils;->isFactoryMode()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    sget-boolean v0, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_BIKE_MODE:Z

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    iget-object v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mAudioService:Lcom/android/server/audio/AudioService;

    .line 14
    .line 15
    iget-object v0, v0, Lcom/android/server/audio/AudioService;->mExt:Lcom/android/server/audio/AudioServiceExt;

    .line 16
    .line 17
    iget-boolean v0, v0, Lcom/android/server/audio/AudioServiceExt;->mIsBikeMode:Z

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    return v1

    .line 22
    :cond_1
    iget v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mSafeMediaVolumeState:I

    .line 23
    .line 24
    const/4 v2, 0x3

    .line 25
    if-ne v0, v2, :cond_3

    .line 26
    .line 27
    sget-object v0, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    .line 28
    .line 29
    aget p1, v0, p1

    .line 30
    .line 31
    if-ne p1, v2, :cond_3

    .line 32
    .line 33
    invoke-virtual {p0, p3}, Lcom/android/server/audio/SoundDoseHelper;->safeDevicesContains(I)Z

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    if-eqz p1, :cond_3

    .line 38
    .line 39
    invoke-virtual {p0, p3}, Lcom/android/server/audio/SoundDoseHelper;->safeMediaVolumeIndex(I)I

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    if-le p2, p1, :cond_3

    .line 44
    .line 45
    iget-object p0, p0, Lcom/android/server/audio/SoundDoseHelper;->mSafeMediaVolumeBTDevices:Landroid/util/SparseIntArray;

    .line 46
    .line 47
    invoke-virtual {p0, p3}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    .line 48
    .line 49
    .line 50
    move-result p0

    .line 51
    if-ltz p0, :cond_2

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_2
    const/4 v1, 0x1

    .line 55
    :cond_3
    :goto_0
    return v1
.end method

.method public final configureSafeMedia(Z)V
    .locals 6

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    const/16 v0, 0x3ea

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const/16 v0, 0x3e9

    .line 7
    .line 8
    :goto_0
    iget-object p0, p0, Lcom/android/server/audio/SoundDoseHelper;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    .line 9
    .line 10
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 11
    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    if-eqz p1, :cond_2

    .line 15
    .line 16
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 17
    .line 18
    .line 19
    move-result-wide v2

    .line 20
    sget-boolean p1, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_SAFE_VOLUME_COUNTRY:Z

    .line 21
    .line 22
    xor-int/lit8 p1, p1, 0x1

    .line 23
    .line 24
    const-string v4, "audio.safemedia.bypass"

    .line 25
    .line 26
    invoke-static {v4, p1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    if-eqz p1, :cond_1

    .line 31
    .line 32
    move p1, v1

    .line 33
    goto :goto_1

    .line 34
    :cond_1
    const/16 p1, 0x7530

    .line 35
    .line 36
    :goto_1
    int-to-long v4, p1

    .line 37
    add-long/2addr v2, v4

    .line 38
    goto :goto_2

    .line 39
    :cond_2
    const-wide/16 v2, 0x0

    .line 40
    .line 41
    :goto_2
    const-string p1, "AS.AudioService"

    .line 42
    .line 43
    invoke-virtual {p0, v0, v1, v1, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-virtual {p0, p1, v2, v3}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 48
    .line 49
    .line 50
    return-void
.end method

.method public final dump(Ljava/io/PrintWriter;)V
    .locals 2

    .line 1
    const-string v0, "  mEnableCsd="

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mEnableCsd:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mEnableCsd:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    iget-object v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mCsdStateLock:Ljava/lang/Object;

    .line 24
    .line 25
    monitor-enter v0

    .line 26
    :try_start_0
    const-string v1, "  mCurrentCsd="

    .line 27
    .line 28
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    iget v1, p0, Lcom/android/server/audio/SoundDoseHelper;->mCurrentCsd:F

    .line 32
    .line 33
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(F)V

    .line 34
    .line 35
    .line 36
    monitor-exit v0

    .line 37
    goto :goto_0

    .line 38
    :catchall_0
    move-exception p0

    .line 39
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    throw p0

    .line 41
    :cond_0
    :goto_0
    const-string v0, "  mSafeMediaVolumeState="

    .line 42
    .line 43
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    iget v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mSafeMediaVolumeState:I

    .line 47
    .line 48
    invoke-static {v0}, Lcom/android/server/audio/SoundDoseHelper;->safeMediaVolumeStateToString(I)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    const-string v0, "  mSafeMediaVolumeIndex="

    .line 56
    .line 57
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    iget v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mSafeMediaVolumeIndex:I

    .line 61
    .line 62
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 63
    .line 64
    .line 65
    const/4 v0, 0x0

    .line 66
    :goto_1
    iget-object v1, p0, Lcom/android/server/audio/SoundDoseHelper;->mSafeMediaVolumeDevices:Landroid/util/SparseIntArray;

    .line 67
    .line 68
    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    if-ge v0, v1, :cond_1

    .line 73
    .line 74
    const-string v1, "  mSafeMediaVolumeIndex["

    .line 75
    .line 76
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    iget-object v1, p0, Lcom/android/server/audio/SoundDoseHelper;->mSafeMediaVolumeDevices:Landroid/util/SparseIntArray;

    .line 80
    .line 81
    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    .line 82
    .line 83
    .line 84
    move-result v1

    .line 85
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 86
    .line 87
    .line 88
    const-string v1, "]="

    .line 89
    .line 90
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    iget-object v1, p0, Lcom/android/server/audio/SoundDoseHelper;->mSafeMediaVolumeDevices:Landroid/util/SparseIntArray;

    .line 94
    .line 95
    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    .line 96
    .line 97
    .line 98
    move-result v1

    .line 99
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 100
    .line 101
    .line 102
    add-int/lit8 v0, v0, 0x1

    .line 103
    .line 104
    goto :goto_1

    .line 105
    :cond_1
    const-string v0, "  mSafeMediaVolumeDbfs="

    .line 106
    .line 107
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    iget v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mSafeMediaVolumeDbfs:F

    .line 111
    .line 112
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(F)V

    .line 113
    .line 114
    .line 115
    const-string v0, "  mMusicActiveMs="

    .line 116
    .line 117
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    iget v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mMusicActiveMs:I

    .line 121
    .line 122
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 123
    .line 124
    .line 125
    const-string v0, "  mMcc="

    .line 126
    .line 127
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    iget v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mMcc:I

    .line 131
    .line 132
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 133
    .line 134
    .line 135
    const-string v0, "  mPendingVolumeCommand="

    .line 136
    .line 137
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    iget-object v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mPendingVolumeCommand:Lcom/android/server/audio/SoundDoseHelper$StreamVolumeCommand;

    .line 141
    .line 142
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 146
    .line 147
    .line 148
    iget-object v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mLogger:Lcom/android/server/utils/EventLogger;

    .line 149
    .line 150
    invoke-virtual {v0, p1}, Lcom/android/server/utils/EventLogger;->dump(Ljava/io/PrintWriter;)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 154
    .line 155
    .line 156
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 157
    .line 158
    .line 159
    const-string v0, "  SEC_AUDIO_SAFE_MEDIA_VOLUME="

    .line 160
    .line 161
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    sget-boolean v0, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_SAFE_MEDIA_VOLUME:Z

    .line 165
    .line 166
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 167
    .line 168
    .line 169
    const-string v0, "  SEC_AUDIO_SAFE_VOLUME_COUNTRY="

    .line 170
    .line 171
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    sget-boolean v0, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_SAFE_VOLUME_COUNTRY:Z

    .line 175
    .line 176
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 177
    .line 178
    .line 179
    const-string v0, "  mIsVolumeEffectOn="

    .line 180
    .line 181
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 182
    .line 183
    .line 184
    iget-boolean v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mIsVolumeEffectOn:Z

    .line 185
    .line 186
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 187
    .line 188
    .line 189
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 190
    .line 191
    .line 192
    iget-object p0, p0, Lcom/android/server/audio/SoundDoseHelper;->mEarShockLogger:Lcom/android/server/utils/EventLogger;

    .line 193
    .line 194
    invoke-virtual {p0, p1}, Lcom/android/server/utils/EventLogger;->dump(Ljava/io/PrintWriter;)V

    .line 195
    .line 196
    .line 197
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 198
    .line 199
    .line 200
    return-void
.end method

.method public final enforceSafeMediaVolume(Ljava/lang/String;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mAudioService:Lcom/android/server/audio/AudioService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    .line 4
    .line 5
    const/4 v1, 0x3

    .line 6
    aget-object v0, v0, v1

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    move v2, v1

    .line 10
    :goto_0
    iget-object v3, p0, Lcom/android/server/audio/SoundDoseHelper;->mSafeMediaVolumeDevices:Landroid/util/SparseIntArray;

    .line 11
    .line 12
    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    .line 13
    .line 14
    .line 15
    move-result v3

    .line 16
    if-ge v2, v3, :cond_1

    .line 17
    .line 18
    iget-object v3, p0, Lcom/android/server/audio/SoundDoseHelper;->mSafeMediaVolumeDevices:Landroid/util/SparseIntArray;

    .line 19
    .line 20
    invoke-virtual {v3, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    invoke-virtual {v0, v3}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    .line 25
    .line 26
    .line 27
    move-result v4

    .line 28
    invoke-virtual {p0, v3}, Lcom/android/server/audio/SoundDoseHelper;->safeMediaVolumeIndex(I)I

    .line 29
    .line 30
    .line 31
    move-result v5

    .line 32
    if-le v4, v5, :cond_0

    .line 33
    .line 34
    const/4 v4, 0x1

    .line 35
    invoke-virtual {v0, v5, v3, p1, v4}, Lcom/android/server/audio/AudioService$VolumeStreamState;->setIndex(IILjava/lang/String;Z)Z

    .line 36
    .line 37
    .line 38
    iget-object v4, p0, Lcom/android/server/audio/SoundDoseHelper;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    .line 39
    .line 40
    invoke-virtual {v4, v1, v3, v1, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    const-wide/16 v5, 0x0

    .line 45
    .line 46
    invoke-virtual {v4, v3, v5, v6}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 47
    .line 48
    .line 49
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_1
    return-void
.end method

.method public final getSafeDeviceMediaVolumeIndex(I)I
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mEnableCsd:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_2

    .line 8
    .line 9
    const/16 v0, 0x8

    .line 10
    .line 11
    if-eq p1, v0, :cond_1

    .line 12
    .line 13
    const/4 v0, 0x4

    .line 14
    if-ne p1, v0, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/high16 v0, 0x4000000

    .line 18
    .line 19
    if-eq p1, v0, :cond_2

    .line 20
    .line 21
    iget p0, p0, Lcom/android/server/audio/SoundDoseHelper;->mSafeMediaVolumeIndex:I

    .line 22
    .line 23
    return p0

    .line 24
    :cond_1
    :goto_0
    iget p0, p0, Lcom/android/server/audio/SoundDoseHelper;->mSafeMediaVolumeIndex:I

    .line 25
    .line 26
    return p0

    .line 27
    :cond_2
    sget-object v0, Lcom/android/server/audio/AudioService;->MIN_STREAM_VOLUME:[I

    .line 28
    .line 29
    const/4 v1, 0x3

    .line 30
    aget v0, v0, v1

    .line 31
    .line 32
    sget-object v2, Lcom/android/server/audio/AudioService;->MAX_STREAM_VOLUME:[I

    .line 33
    .line 34
    aget v2, v2, v1

    .line 35
    .line 36
    iget-object v3, p0, Lcom/android/server/audio/SoundDoseHelper;->mContext:Landroid/content/Context;

    .line 37
    .line 38
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    const v4, 0x10e0125

    .line 43
    .line 44
    .line 45
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    int-to-float v3, v3

    .line 50
    const/high16 v4, 0x42c80000    # 100.0f

    .line 51
    .line 52
    div-float/2addr v3, v4

    .line 53
    iput v3, p0, Lcom/android/server/audio/SoundDoseHelper;->mSafeMediaVolumeDbfs:F

    .line 54
    .line 55
    :goto_1
    sub-int v3, v2, v0

    .line 56
    .line 57
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    .line 58
    .line 59
    .line 60
    move-result v3

    .line 61
    const/4 v4, 0x1

    .line 62
    if-le v3, v4, :cond_6

    .line 63
    .line 64
    add-int v3, v2, v0

    .line 65
    .line 66
    div-int/lit8 v3, v3, 0x2

    .line 67
    .line 68
    invoke-static {v1, v3, p1}, Landroid/media/AudioSystem;->getStreamVolumeDB(III)F

    .line 69
    .line 70
    .line 71
    move-result v4

    .line 72
    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    .line 73
    .line 74
    .line 75
    move-result v5

    .line 76
    if-eqz v5, :cond_3

    .line 77
    .line 78
    goto :goto_2

    .line 79
    :cond_3
    iget v5, p0, Lcom/android/server/audio/SoundDoseHelper;->mSafeMediaVolumeDbfs:F

    .line 80
    .line 81
    cmpl-float v6, v4, v5

    .line 82
    .line 83
    if-nez v6, :cond_4

    .line 84
    .line 85
    goto :goto_2

    .line 86
    :cond_4
    cmpg-float v4, v4, v5

    .line 87
    .line 88
    if-gez v4, :cond_5

    .line 89
    .line 90
    move v0, v3

    .line 91
    goto :goto_1

    .line 92
    :cond_5
    move v2, v3

    .line 93
    goto :goto_1

    .line 94
    :cond_6
    :goto_2
    sget-boolean p1, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_VOLUME_MONITOR_PHASE_3:Z

    .line 95
    .line 96
    if-eqz p1, :cond_7

    .line 97
    .line 98
    const/4 p0, 0x7

    .line 99
    goto :goto_3

    .line 100
    :cond_7
    sget-boolean p1, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_SAFE_MEDIA_VOLUME:Z

    .line 101
    .line 102
    if-eqz p1, :cond_8

    .line 103
    .line 104
    iget-object p0, p0, Lcom/android/server/audio/SoundDoseHelper;->mContext:Landroid/content/Context;

    .line 105
    .line 106
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 107
    .line 108
    .line 109
    move-result-object p0

    .line 110
    const p1, 0x10e0124

    .line 111
    .line 112
    .line 113
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getInteger(I)I

    .line 114
    .line 115
    .line 116
    move-result p0

    .line 117
    goto :goto_3

    .line 118
    :cond_8
    const/16 p0, 0x9

    .line 119
    .line 120
    :goto_3
    mul-int/lit8 p0, p0, 0xa

    .line 121
    .line 122
    return p0
.end method

.method public final handleMessage(Landroid/os/Message;)V
    .locals 10

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x1

    .line 6
    packed-switch v0, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    const-string p0, "AS.SoundDoseHelper"

    .line 10
    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const-string v1, "Unexpected msg to handle: "

    .line 14
    .line 15
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iget p1, p1, Landroid/os/Message;->what:I

    .line 19
    .line 20
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    goto/16 :goto_5

    .line 31
    .line 32
    :pswitch_0
    new-instance p1, Lcom/android/server/audio/AudioServiceEvents$SoundDoseEvent;

    .line 33
    .line 34
    const-wide/16 v4, 0x0

    .line 35
    .line 36
    const/4 v0, 0x4

    .line 37
    invoke-direct {p1, v0, v4, v5, v1}, Lcom/android/server/audio/AudioServiceEvents$SoundDoseEvent;-><init>(IJF)V

    .line 38
    .line 39
    .line 40
    iget-object v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mLogger:Lcom/android/server/utils/EventLogger;

    .line 41
    .line 42
    invoke-virtual {v0, p1}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 43
    .line 44
    .line 45
    new-instance p1, Landroid/media/AudioAttributes$Builder;

    .line 46
    .line 47
    invoke-direct {p1}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1, v3}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-virtual {p1}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    iget-object v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mAudioService:Lcom/android/server/audio/AudioService;

    .line 59
    .line 60
    invoke-virtual {v0, p1, v3}, Lcom/android/server/audio/AudioService;->getDevicesForAttributesInt(Landroid/media/AudioAttributes;Z)Ljava/util/ArrayList;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    if-nez v0, :cond_0

    .line 69
    .line 70
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    check-cast p1, Landroid/media/AudioDeviceAttributes;

    .line 75
    .line 76
    invoke-virtual {p1}, Landroid/media/AudioDeviceAttributes;->getInternalType()I

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    move-object v6, p1

    .line 81
    goto :goto_0

    .line 82
    :cond_0
    new-instance p1, Landroid/media/AudioDeviceAttributes;

    .line 83
    .line 84
    const-string v0, ""

    .line 85
    .line 86
    const/high16 v1, 0x4000000

    .line 87
    .line 88
    invoke-direct {p1, v1, v0}, Landroid/media/AudioDeviceAttributes;-><init>(ILjava/lang/String;)V

    .line 89
    .line 90
    .line 91
    move-object v6, p1

    .line 92
    move v0, v1

    .line 93
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/server/audio/SoundDoseHelper;->safeMediaVolumeIndex(I)I

    .line 94
    .line 95
    .line 96
    move-result p1

    .line 97
    div-int/lit8 v4, p1, 0xa

    .line 98
    .line 99
    iget-object p1, p0, Lcom/android/server/audio/SoundDoseHelper;->mContext:Landroid/content/Context;

    .line 100
    .line 101
    invoke-virtual {p1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v7

    .line 105
    iget-object v2, p0, Lcom/android/server/audio/SoundDoseHelper;->mAudioService:Lcom/android/server/audio/AudioService;

    .line 106
    .line 107
    const/4 v8, 0x0

    .line 108
    const/4 v9, 0x1

    .line 109
    const/4 v3, 0x3

    .line 110
    const/4 v5, 0x0

    .line 111
    invoke-virtual/range {v2 .. v9}, Lcom/android/server/audio/AudioService;->setStreamVolumeWithAttributionInt(IIILandroid/media/AudioDeviceAttributes;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 112
    .line 113
    .line 114
    goto/16 :goto_5

    .line 115
    .line 116
    :pswitch_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 117
    .line 118
    iget v4, p1, Landroid/os/Message;->arg2:I

    .line 119
    .line 120
    if-ne v4, v3, :cond_1

    .line 121
    .line 122
    move v2, v3

    .line 123
    :cond_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 124
    .line 125
    check-cast p1, Lcom/android/server/audio/AudioService$VolumeStreamState;

    .line 126
    .line 127
    invoke-virtual {p1, v0}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    .line 128
    .line 129
    .line 130
    move-result v3

    .line 131
    iget p1, p1, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    .line 132
    .line 133
    iget-object v4, p0, Lcom/android/server/audio/SoundDoseHelper;->mEnableCsd:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 134
    .line 135
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 136
    .line 137
    .line 138
    move-result v4

    .line 139
    if-nez v4, :cond_2

    .line 140
    .line 141
    goto/16 :goto_5

    .line 142
    .line 143
    :cond_2
    iget-object v4, p0, Lcom/android/server/audio/SoundDoseHelper;->mSoundDose:Ljava/util/concurrent/atomic/AtomicReference;

    .line 144
    .line 145
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    move-result-object v4

    .line 149
    check-cast v4, Landroid/media/ISoundDose;

    .line 150
    .line 151
    const-string v5, "AS.SoundDoseHelper"

    .line 152
    .line 153
    if-nez v4, :cond_3

    .line 154
    .line 155
    const-string p0, "Can not apply attenuation. ISoundDose itf is null."

    .line 156
    .line 157
    invoke-static {v5, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    .line 159
    .line 160
    goto/16 :goto_5

    .line 161
    .line 162
    :cond_3
    if-nez v2, :cond_4

    .line 163
    .line 164
    :try_start_0
    invoke-interface {v4, v1, v0}, Landroid/media/ISoundDose;->updateAttenuation(FI)V

    .line 165
    .line 166
    .line 167
    goto/16 :goto_5

    .line 168
    .line 169
    :catch_0
    move-exception p0

    .line 170
    goto :goto_1

    .line 171
    :cond_4
    sget-object v1, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    .line 172
    .line 173
    aget p1, v1, p1

    .line 174
    .line 175
    const/4 v1, 0x3

    .line 176
    if-ne p1, v1, :cond_b

    .line 177
    .line 178
    invoke-virtual {p0, v0}, Lcom/android/server/audio/SoundDoseHelper;->safeDevicesContains(I)Z

    .line 179
    .line 180
    .line 181
    move-result p0

    .line 182
    if-eqz p0, :cond_b

    .line 183
    .line 184
    add-int/lit8 p0, v3, 0x5

    .line 185
    .line 186
    div-int/lit8 p0, p0, 0xa

    .line 187
    .line 188
    invoke-static {v1, p0, v0}, Landroid/media/AudioSystem;->getStreamVolumeDB(III)F

    .line 189
    .line 190
    .line 191
    move-result p0

    .line 192
    neg-float p0, p0

    .line 193
    invoke-interface {v4, p0, v0}, Landroid/media/ISoundDose;->updateAttenuation(FI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 194
    .line 195
    .line 196
    goto/16 :goto_5

    .line 197
    .line 198
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 199
    .line 200
    const-string v0, "Could not apply the attenuation for MEL calculation with volume index "

    .line 201
    .line 202
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 203
    .line 204
    .line 205
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 206
    .line 207
    .line 208
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object p1

    .line 212
    invoke-static {v5, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 213
    .line 214
    .line 215
    goto/16 :goto_5

    .line 216
    .line 217
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mCsdStateLock:Ljava/lang/Object;

    .line 218
    .line 219
    monitor-enter v0

    .line 220
    :try_start_1
    iget-wide v1, p0, Lcom/android/server/audio/SoundDoseHelper;->mGlobalTimeOffsetInSecs:J

    .line 221
    .line 222
    const-wide/16 v3, -0x1

    .line 223
    .line 224
    cmp-long p1, v1, v3

    .line 225
    .line 226
    if-nez p1, :cond_5

    .line 227
    .line 228
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 229
    .line 230
    .line 231
    move-result-wide v1

    .line 232
    const-wide/16 v3, 0x3e8

    .line 233
    .line 234
    div-long/2addr v1, v3

    .line 235
    iput-wide v1, p0, Lcom/android/server/audio/SoundDoseHelper;->mGlobalTimeOffsetInSecs:J

    .line 236
    .line 237
    goto :goto_2

    .line 238
    :catchall_0
    move-exception p0

    .line 239
    goto :goto_3

    .line 240
    :cond_5
    :goto_2
    iget-object p1, p0, Lcom/android/server/audio/SoundDoseHelper;->mSettings:Lcom/android/server/audio/SettingsAdapter;

    .line 241
    .line 242
    iget-object v1, p0, Lcom/android/server/audio/SoundDoseHelper;->mAudioService:Lcom/android/server/audio/AudioService;

    .line 243
    .line 244
    iget-object v1, v1, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    .line 245
    .line 246
    const-string v2, "audio_safe_csd_current_value"

    .line 247
    .line 248
    iget v3, p0, Lcom/android/server/audio/SoundDoseHelper;->mCurrentCsd:F

    .line 249
    .line 250
    invoke-static {v3}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    .line 251
    .line 252
    .line 253
    move-result-object v3

    .line 254
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 255
    .line 256
    .line 257
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 258
    .line 259
    .line 260
    iget-object p1, p0, Lcom/android/server/audio/SoundDoseHelper;->mSettings:Lcom/android/server/audio/SettingsAdapter;

    .line 261
    .line 262
    iget-object v1, p0, Lcom/android/server/audio/SoundDoseHelper;->mAudioService:Lcom/android/server/audio/AudioService;

    .line 263
    .line 264
    iget-object v1, v1, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    .line 265
    .line 266
    const-string v2, "audio_safe_csd_next_warning"

    .line 267
    .line 268
    iget v3, p0, Lcom/android/server/audio/SoundDoseHelper;->mNextCsdWarning:F

    .line 269
    .line 270
    invoke-static {v3}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    .line 271
    .line 272
    .line 273
    move-result-object v3

    .line 274
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 275
    .line 276
    .line 277
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 278
    .line 279
    .line 280
    iget-object p1, p0, Lcom/android/server/audio/SoundDoseHelper;->mSettings:Lcom/android/server/audio/SettingsAdapter;

    .line 281
    .line 282
    iget-object v1, p0, Lcom/android/server/audio/SoundDoseHelper;->mAudioService:Lcom/android/server/audio/AudioService;

    .line 283
    .line 284
    iget-object v1, v1, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    .line 285
    .line 286
    const-string v2, "audio_safe_csd_dose_records"

    .line 287
    .line 288
    iget-object v3, p0, Lcom/android/server/audio/SoundDoseHelper;->mDoseRecords:Ljava/util/List;

    .line 289
    .line 290
    invoke-interface {v3}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    .line 291
    .line 292
    .line 293
    move-result-object v3

    .line 294
    new-instance v4, Lcom/android/server/audio/SoundDoseHelper$$ExternalSyntheticLambda2;

    .line 295
    .line 296
    invoke-direct {v4, p0}, Lcom/android/server/audio/SoundDoseHelper$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/audio/SoundDoseHelper;)V

    .line 297
    .line 298
    .line 299
    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    .line 300
    .line 301
    .line 302
    move-result-object p0

    .line 303
    const-string/jumbo v3, "|"

    .line 304
    .line 305
    .line 306
    invoke-static {v3}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    .line 307
    .line 308
    .line 309
    move-result-object v3

    .line 310
    invoke-interface {p0, v3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    .line 311
    .line 312
    .line 313
    move-result-object p0

    .line 314
    check-cast p0, Ljava/lang/String;

    .line 315
    .line 316
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 317
    .line 318
    .line 319
    invoke-static {v1, v2, p0}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 320
    .line 321
    .line 322
    monitor-exit v0

    .line 323
    goto/16 :goto_5

    .line 324
    .line 325
    :goto_3
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 326
    throw p0

    .line 327
    :pswitch_3
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 328
    .line 329
    iget-object v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mSettings:Lcom/android/server/audio/SettingsAdapter;

    .line 330
    .line 331
    iget-object p0, p0, Lcom/android/server/audio/SoundDoseHelper;->mAudioService:Lcom/android/server/audio/AudioService;

    .line 332
    .line 333
    iget-object p0, p0, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    .line 334
    .line 335
    const-string/jumbo v1, "unsafe_volume_music_active_ms"

    .line 336
    .line 337
    .line 338
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 339
    .line 340
    .line 341
    const/4 v0, -0x2

    .line 342
    invoke-static {p0, v1, p1, v0}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 343
    .line 344
    .line 345
    goto :goto_5

    .line 346
    :pswitch_4
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 347
    .line 348
    iget-object v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mAudioService:Lcom/android/server/audio/AudioService;

    .line 349
    .line 350
    iget-object v0, v0, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    .line 351
    .line 352
    iget-object p0, p0, Lcom/android/server/audio/SoundDoseHelper;->mSettings:Lcom/android/server/audio/SettingsAdapter;

    .line 353
    .line 354
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 355
    .line 356
    .line 357
    const-string p0, "audio_safe_volume_state"

    .line 358
    .line 359
    invoke-static {v0, p0, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 360
    .line 361
    .line 362
    goto :goto_5

    .line 363
    :pswitch_5
    const/16 v1, 0x3ea

    .line 364
    .line 365
    if-ne v0, v1, :cond_6

    .line 366
    .line 367
    move v2, v3

    .line 368
    :cond_6
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 369
    .line 370
    check-cast p1, Ljava/lang/String;

    .line 371
    .line 372
    invoke-virtual {p0, p1}, Lcom/android/server/audio/SoundDoseHelper;->updateCsdEnabled(Ljava/lang/String;)V

    .line 373
    .line 374
    .line 375
    iget-object v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mSafeMediaVolumeStateLock:Ljava/lang/Object;

    .line 376
    .line 377
    monitor-enter v0

    .line 378
    :try_start_2
    iget-object v1, p0, Lcom/android/server/audio/SoundDoseHelper;->mContext:Landroid/content/Context;

    .line 379
    .line 380
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 381
    .line 382
    .line 383
    move-result-object v1

    .line 384
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 385
    .line 386
    .line 387
    move-result-object v1

    .line 388
    iget v1, v1, Landroid/content/res/Configuration;->mcc:I

    .line 389
    .line 390
    iget v3, p0, Lcom/android/server/audio/SoundDoseHelper;->mMcc:I

    .line 391
    .line 392
    if-ne v3, v1, :cond_7

    .line 393
    .line 394
    if-nez v3, :cond_a

    .line 395
    .line 396
    if-eqz v2, :cond_a

    .line 397
    .line 398
    :cond_7
    sget-boolean v2, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_VOLUME_MONITOR_PHASE_3:Z

    .line 399
    .line 400
    iget-boolean v3, p0, Lcom/android/server/audio/SoundDoseHelper;->mIsVolumeEffectOn:Z

    .line 401
    .line 402
    if-eqz v3, :cond_8

    .line 403
    .line 404
    const/16 v2, 0x3c

    .line 405
    .line 406
    goto :goto_4

    .line 407
    :cond_8
    if-eqz v2, :cond_9

    .line 408
    .line 409
    const/16 v2, 0x46

    .line 410
    .line 411
    goto :goto_4

    .line 412
    :cond_9
    iget-object v2, p0, Lcom/android/server/audio/SoundDoseHelper;->mContext:Landroid/content/Context;

    .line 413
    .line 414
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 415
    .line 416
    .line 417
    move-result-object v2

    .line 418
    const v3, 0x10e0124

    .line 419
    .line 420
    .line 421
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    .line 422
    .line 423
    .line 424
    move-result v2

    .line 425
    mul-int/lit8 v2, v2, 0xa

    .line 426
    .line 427
    :goto_4
    iput v2, p0, Lcom/android/server/audio/SoundDoseHelper;->mSafeMediaVolumeIndex:I

    .line 428
    .line 429
    invoke-virtual {p0}, Lcom/android/server/audio/SoundDoseHelper;->initSafeMediaVolumeIndex()V

    .line 430
    .line 431
    .line 432
    invoke-virtual {p0, p1}, Lcom/android/server/audio/SoundDoseHelper;->updateSafeMediaVolume_l(Ljava/lang/String;)V

    .line 433
    .line 434
    .line 435
    iput v1, p0, Lcom/android/server/audio/SoundDoseHelper;->mMcc:I

    .line 436
    .line 437
    :cond_a
    monitor-exit v0

    .line 438
    :cond_b
    :goto_5
    return-void

    .line 439
    :catchall_1
    move-exception p0

    .line 440
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 441
    throw p0

    .line 442
    nop

    .line 443
    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final initCsd()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mSoundDose:Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/media/ISoundDose;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    const-string p0, "AS.SoundDoseHelper"

    .line 12
    .line 13
    const-string v0, "ISoundDose instance is null."

    .line 14
    .line 15
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/SoundDoseHelper;->mEnableCsd:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    invoke-interface {v0, v1}, Landroid/media/ISoundDose;->setCsdEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :catch_0
    move-exception v1

    .line 30
    const-string v2, "AS.SoundDoseHelper"

    .line 31
    .line 32
    const-string v3, "Cannot disable CSD"

    .line 33
    .line 34
    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 35
    .line 36
    .line 37
    :goto_0
    iget-object v1, p0, Lcom/android/server/audio/SoundDoseHelper;->mEnableCsd:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 38
    .line 39
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-nez v1, :cond_1

    .line 44
    .line 45
    return-void

    .line 46
    :cond_1
    const-string v1, "AS.SoundDoseHelper"

    .line 47
    .line 48
    const-string v2, "Initializing sound dose"

    .line 49
    .line 50
    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    .line 52
    .line 53
    const/4 v1, 0x0

    .line 54
    :try_start_1
    iget-object v2, p0, Lcom/android/server/audio/SoundDoseHelper;->mCachedAudioDeviceCategories:Ljava/util/ArrayList;

    .line 55
    .line 56
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 57
    .line 58
    .line 59
    move-result v2

    .line 60
    if-nez v2, :cond_2

    .line 61
    .line 62
    iget-object v2, p0, Lcom/android/server/audio/SoundDoseHelper;->mCachedAudioDeviceCategories:Ljava/util/ArrayList;

    .line 63
    .line 64
    new-array v3, v1, [Landroid/media/ISoundDose$AudioDeviceCategory;

    .line 65
    .line 66
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    check-cast v2, [Landroid/media/ISoundDose$AudioDeviceCategory;

    .line 71
    .line 72
    invoke-interface {v0, v2}, Landroid/media/ISoundDose;->initCachedAudioDeviceCategories([Landroid/media/ISoundDose$AudioDeviceCategory;)V

    .line 73
    .line 74
    .line 75
    iget-object v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mCachedAudioDeviceCategories:Ljava/util/ArrayList;

    .line 76
    .line 77
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 78
    .line 79
    .line 80
    goto :goto_1

    .line 81
    :catch_1
    move-exception v0

    .line 82
    const-string v2, "AS.SoundDoseHelper"

    .line 83
    .line 84
    const-string v3, "Exception while initializing the cached audio device categories"

    .line 85
    .line 86
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 87
    .line 88
    .line 89
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mCsdAsAFeatureLock:Ljava/lang/Object;

    .line 90
    .line 91
    monitor-enter v0

    .line 92
    :try_start_2
    iget-object v2, p0, Lcom/android/server/audio/SoundDoseHelper;->mSettings:Lcom/android/server/audio/SettingsAdapter;

    .line 93
    .line 94
    iget-object v3, p0, Lcom/android/server/audio/SoundDoseHelper;->mAudioService:Lcom/android/server/audio/AudioService;

    .line 95
    .line 96
    iget-object v3, v3, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    .line 97
    .line 98
    const-string v4, "audio_safe_csd_as_a_feature_enabled"

    .line 99
    .line 100
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 101
    .line 102
    .line 103
    const/4 v2, -0x2

    .line 104
    invoke-static {v3, v4, v1, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 105
    .line 106
    .line 107
    move-result v2

    .line 108
    if-eqz v2, :cond_3

    .line 109
    .line 110
    const/4 v2, 0x1

    .line 111
    goto :goto_2

    .line 112
    :cond_3
    move v2, v1

    .line 113
    :goto_2
    iput-boolean v2, p0, Lcom/android/server/audio/SoundDoseHelper;->mIsCsdAsAFeatureEnabled:Z

    .line 114
    .line 115
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 116
    iget-object v2, p0, Lcom/android/server/audio/SoundDoseHelper;->mCsdStateLock:Ljava/lang/Object;

    .line 117
    .line 118
    monitor-enter v2

    .line 119
    :try_start_3
    iget-wide v3, p0, Lcom/android/server/audio/SoundDoseHelper;->mGlobalTimeOffsetInSecs:J

    .line 120
    .line 121
    const-wide/16 v5, -0x1

    .line 122
    .line 123
    cmp-long v0, v3, v5

    .line 124
    .line 125
    if-nez v0, :cond_4

    .line 126
    .line 127
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 128
    .line 129
    .line 130
    move-result-wide v3

    .line 131
    const-wide/16 v5, 0x3e8

    .line 132
    .line 133
    div-long/2addr v3, v5

    .line 134
    iput-wide v3, p0, Lcom/android/server/audio/SoundDoseHelper;->mGlobalTimeOffsetInSecs:J

    .line 135
    .line 136
    goto :goto_3

    .line 137
    :catchall_0
    move-exception p0

    .line 138
    goto :goto_6

    .line 139
    :cond_4
    :goto_3
    iget v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mCurrentCsd:F

    .line 140
    .line 141
    const-string v3, "audio_safe_csd_current_value"

    .line 142
    .line 143
    const/4 v4, 0x0

    .line 144
    invoke-virtual {p0, v4, v3}, Lcom/android/server/audio/SoundDoseHelper;->parseGlobalSettingFloat(FLjava/lang/String;)F

    .line 145
    .line 146
    .line 147
    move-result v3

    .line 148
    iput v3, p0, Lcom/android/server/audio/SoundDoseHelper;->mCurrentCsd:F

    .line 149
    .line 150
    cmpl-float v0, v3, v0

    .line 151
    .line 152
    if-eqz v0, :cond_7

    .line 153
    .line 154
    const-string v0, "audio_safe_csd_next_warning"

    .line 155
    .line 156
    const/high16 v3, 0x3f800000    # 1.0f

    .line 157
    .line 158
    invoke-virtual {p0, v3, v0}, Lcom/android/server/audio/SoundDoseHelper;->parseGlobalSettingFloat(FLjava/lang/String;)F

    .line 159
    .line 160
    .line 161
    move-result v0

    .line 162
    iput v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mNextCsdWarning:F

    .line 163
    .line 164
    iget-object v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mSettings:Lcom/android/server/audio/SettingsAdapter;

    .line 165
    .line 166
    iget-object v3, p0, Lcom/android/server/audio/SoundDoseHelper;->mAudioService:Lcom/android/server/audio/AudioService;

    .line 167
    .line 168
    iget-object v3, v3, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    .line 169
    .line 170
    const-string v4, "audio_safe_csd_dose_records"

    .line 171
    .line 172
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 173
    .line 174
    .line 175
    invoke-static {v3, v4}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v0

    .line 179
    iget-wide v3, p0, Lcom/android/server/audio/SoundDoseHelper;->mGlobalTimeOffsetInSecs:J

    .line 180
    .line 181
    if-eqz v0, :cond_6

    .line 182
    .line 183
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 184
    .line 185
    .line 186
    move-result v5

    .line 187
    if-eqz v5, :cond_5

    .line 188
    .line 189
    goto :goto_4

    .line 190
    :cond_5
    const-string v5, "\\|"

    .line 191
    .line 192
    invoke-static {v0, v5}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object v0

    .line 196
    invoke-static {v0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    .line 197
    .line 198
    .line 199
    move-result-object v0

    .line 200
    new-instance v5, Lcom/android/server/audio/SoundDoseHelper$$ExternalSyntheticLambda0;

    .line 201
    .line 202
    invoke-direct {v5, v3, v4}, Lcom/android/server/audio/SoundDoseHelper$$ExternalSyntheticLambda0;-><init>(J)V

    .line 203
    .line 204
    .line 205
    invoke-interface {v0, v5}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    .line 206
    .line 207
    .line 208
    move-result-object v0

    .line 209
    new-instance v3, Lcom/android/server/audio/SoundDoseHelper$$ExternalSyntheticLambda1;

    .line 210
    .line 211
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 212
    .line 213
    .line 214
    invoke-interface {v0, v3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    .line 215
    .line 216
    .line 217
    move-result-object v0

    .line 218
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    .line 219
    .line 220
    .line 221
    move-result-object v3

    .line 222
    invoke-interface {v0, v3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    .line 223
    .line 224
    .line 225
    move-result-object v0

    .line 226
    check-cast v0, Ljava/util/List;

    .line 227
    .line 228
    goto :goto_5

    .line 229
    :cond_6
    :goto_4
    const/4 v0, 0x0

    .line 230
    :goto_5
    if-eqz v0, :cond_7

    .line 231
    .line 232
    iget-object v3, p0, Lcom/android/server/audio/SoundDoseHelper;->mDoseRecords:Ljava/util/List;

    .line 233
    .line 234
    invoke-interface {v3, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 235
    .line 236
    .line 237
    invoke-virtual {p0}, Lcom/android/server/audio/SoundDoseHelper;->sanitizeDoseRecords_l()V

    .line 238
    .line 239
    .line 240
    :cond_7
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 241
    invoke-virtual {p0, v1}, Lcom/android/server/audio/SoundDoseHelper;->reset(Z)V

    .line 242
    .line 243
    .line 244
    return-void

    .line 245
    :goto_6
    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 246
    throw p0

    .line 247
    :catchall_1
    move-exception p0

    .line 248
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 249
    throw p0
.end method

.method public final initSafeMediaVolumeIndex()V
    .locals 4

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Lcom/android/server/audio/SoundDoseHelper;->mSafeMediaVolumeDevices:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2
    iget-object v1, p0, Lcom/android/server/audio/SoundDoseHelper;->mSafeMediaVolumeDevices:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v1

    .line 3
    iget-object v2, p0, Lcom/android/server/audio/SoundDoseHelper;->mSafeMediaVolumeDevices:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 4
    iget-object v2, p0, Lcom/android/server/audio/SoundDoseHelper;->mSafeMediaVolumeDevices:Landroid/util/SparseIntArray;

    invoke-virtual {p0, v1}, Lcom/android/server/audio/SoundDoseHelper;->getSafeDeviceMediaVolumeIndex(I)I

    move-result v3

    invoke-virtual {v2, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final initSafeMediaVolumeIndex(Z)V
    .locals 4

    .line 5
    iput-boolean p1, p0, Lcom/android/server/audio/SoundDoseHelper;->mIsVolumeEffectOn:Z

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "initSafeMediaVolumeIndex isVolumeEffectOn is "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/audio/SoundDoseHelper;->mEarShockLogger:Lcom/android/server/utils/EventLogger;

    const/4 v2, 0x0

    const-string v3, "AS.SoundDoseHelper"

    invoke-virtual {v1, v2, v0, v3}, Lcom/android/server/utils/EventLogger;->enqueueAndLog(ILjava/lang/String;Ljava/lang/String;)V

    .line 7
    :goto_0
    iget-object v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mSafeMediaVolumeDevices:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    if-ge v2, v0, :cond_1

    .line 8
    iget-object v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mSafeMediaVolumeDevices:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v0

    .line 9
    iget-object v1, p0, Lcom/android/server/audio/SoundDoseHelper;->mSafeMediaVolumeDevices:Landroid/util/SparseIntArray;

    if-eqz p1, :cond_0

    const/16 v3, 0x3c

    goto :goto_1

    .line 10
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/server/audio/SoundDoseHelper;->getSafeDeviceMediaVolumeIndex(I)I

    move-result v3

    .line 11
    :goto_1
    invoke-virtual {v1, v0, v3}, Landroid/util/SparseIntArray;->put(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final parseGlobalSettingFloat(FLjava/lang/String;)F
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mAudioService:Lcom/android/server/audio/AudioService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/audio/SoundDoseHelper;->mSettings:Lcom/android/server/audio/SettingsAdapter;

    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-static {v0, p2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    const-string v0, "AS.SoundDoseHelper"

    .line 15
    .line 16
    if-eqz p0, :cond_1

    .line 17
    .line 18
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    goto :goto_1

    .line 25
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 26
    .line 27
    .line 28
    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    goto :goto_0

    .line 30
    :catch_0
    move-exception p0

    .line 31
    const-string v1, "Error parsing float from settings "

    .line 32
    .line 33
    invoke-virtual {v1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p2

    .line 37
    invoke-static {v0, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 38
    .line 39
    .line 40
    :goto_0
    return p1

    .line 41
    :cond_1
    :goto_1
    const-string p0, "No value stored in settings "

    .line 42
    .line 43
    invoke-virtual {p0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    .line 49
    .line 50
    return p1
.end method

.method public final reset(Z)V
    .locals 4

    .line 1
    const-string v0, "Resetting the saved sound dose value "

    .line 2
    .line 3
    const-string v1, "AS.SoundDoseHelper"

    .line 4
    .line 5
    const-string v2, "Reset the sound dose helper"

    .line 6
    .line 7
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    iget-object p1, p0, Lcom/android/server/audio/SoundDoseHelper;->mSoundDose:Ljava/util/concurrent/atomic/AtomicReference;

    .line 13
    .line 14
    iget-object v1, p0, Lcom/android/server/audio/SoundDoseHelper;->mSoundDoseCallback:Lcom/android/server/audio/SoundDoseHelper$1;

    .line 15
    .line 16
    invoke-static {v1}, Landroid/media/AudioSystem;->getSoundDoseInterface(Landroid/media/ISoundDoseCallback;)Landroid/media/ISoundDose;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    :cond_0
    iget-object p1, p0, Lcom/android/server/audio/SoundDoseHelper;->mCsdStateLock:Ljava/lang/Object;

    .line 24
    .line 25
    monitor-enter p1

    .line 26
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/SoundDoseHelper;->mSoundDose:Ljava/util/concurrent/atomic/AtomicReference;

    .line 27
    .line 28
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    check-cast v1, Landroid/media/ISoundDose;

    .line 33
    .line 34
    if-eqz v1, :cond_1

    .line 35
    .line 36
    invoke-interface {v1}, Landroid/media/ISoundDose;->asBinder()Landroid/os/IBinder;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-interface {v2}, Landroid/os/IBinder;->isBinderAlive()Z

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    if-eqz v2, :cond_1

    .line 45
    .line 46
    iget v2, p0, Lcom/android/server/audio/SoundDoseHelper;->mCurrentCsd:F

    .line 47
    .line 48
    const/4 v3, 0x0

    .line 49
    cmpl-float v2, v2, v3

    .line 50
    .line 51
    if-eqz v2, :cond_1

    .line 52
    .line 53
    const-string v2, "AS.SoundDoseHelper"

    .line 54
    .line 55
    new-instance v3, Ljava/lang/StringBuilder;

    .line 56
    .line 57
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    iget v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mCurrentCsd:F

    .line 61
    .line 62
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    .line 71
    .line 72
    iget-object v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mDoseRecords:Ljava/util/List;

    .line 73
    .line 74
    const/4 v2, 0x0

    .line 75
    new-array v2, v2, [Landroid/media/SoundDoseRecord;

    .line 76
    .line 77
    check-cast v0, Ljava/util/ArrayList;

    .line 78
    .line 79
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    check-cast v0, [Landroid/media/SoundDoseRecord;

    .line 84
    .line 85
    iget p0, p0, Lcom/android/server/audio/SoundDoseHelper;->mCurrentCsd:F

    .line 86
    .line 87
    invoke-interface {v1, p0, v0}, Landroid/media/ISoundDose;->resetCsd(F[Landroid/media/SoundDoseRecord;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    .line 89
    .line 90
    goto :goto_0

    .line 91
    :catchall_0
    move-exception p0

    .line 92
    goto :goto_1

    .line 93
    :catch_0
    :cond_1
    :goto_0
    :try_start_1
    monitor-exit p1

    .line 94
    return-void

    .line 95
    :goto_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 96
    throw p0
.end method

.method public final safeDevicesContains(I)Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/audio/SoundDoseHelper;->mSafeMediaVolumeDevices:Landroid/util/SparseIntArray;

    .line 2
    .line 3
    const/4 v0, -0x1

    .line 4
    invoke-virtual {p0, p1, v0}, Landroid/util/SparseIntArray;->get(II)I

    .line 5
    .line 6
    .line 7
    move-result p0

    .line 8
    if-ltz p0, :cond_0

    .line 9
    .line 10
    const/4 p0, 0x1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p0, 0x0

    .line 13
    :goto_0
    return p0
.end method

.method public final safeMediaVolumeIndex(I)I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/audio/SoundDoseHelper;->mSafeMediaVolumeDevices:Landroid/util/SparseIntArray;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroid/util/SparseIntArray;->get(I)I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    const/4 p1, -0x1

    .line 8
    if-ne p0, p1, :cond_0

    .line 9
    .line 10
    sget-object p0, Lcom/android/server/audio/AudioService;->MAX_STREAM_VOLUME:[I

    .line 11
    .line 12
    const/4 p1, 0x3

    .line 13
    aget p0, p0, p1

    .line 14
    .line 15
    :cond_0
    return p0
.end method

.method public final sanitizeDoseRecords_l()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mDoseRecords:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/16 v1, 0x28f

    .line 8
    .line 9
    if-le v0, v1, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mDoseRecords:Ljava/util/List;

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    sub-int/2addr v0, v1

    .line 18
    const-string v1, "Removing "

    .line 19
    .line 20
    const-string v2, " records from the total of "

    .line 21
    .line 22
    invoke-static {v0, v1, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    iget-object v2, p0, Lcom/android/server/audio/SoundDoseHelper;->mDoseRecords:Ljava/util/List;

    .line 27
    .line 28
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    const-string v2, "AS.SoundDoseHelper"

    .line 40
    .line 41
    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    iget-object p0, p0, Lcom/android/server/audio/SoundDoseHelper;->mDoseRecords:Ljava/util/List;

    .line 45
    .line 46
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    if-eqz v1, :cond_0

    .line 55
    .line 56
    if-lez v0, :cond_0

    .line 57
    .line 58
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    .line 62
    .line 63
    .line 64
    add-int/lit8 v0, v0, -0x1

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_0
    return-void
.end method

.method public final scheduleMusicActiveCheck()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mSafeMediaVolumeStateLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/SoundDoseHelper;->mMusicActiveIntent:Landroid/app/PendingIntent;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    iget-object v2, p0, Lcom/android/server/audio/SoundDoseHelper;->mAlarmManager:Landroid/app/AlarmManager;

    .line 9
    .line 10
    invoke-virtual {v2, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 11
    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    iput-object v1, p0, Lcom/android/server/audio/SoundDoseHelper;->mMusicActiveIntent:Landroid/app/PendingIntent;

    .line 15
    .line 16
    :cond_0
    iget-object v1, p0, Lcom/android/server/audio/SoundDoseHelper;->mContext:Landroid/content/Context;

    .line 17
    .line 18
    new-instance v2, Landroid/content/Intent;

    .line 19
    .line 20
    const-string/jumbo v3, "com.android.server.audio.action.CHECK_MUSIC_ACTIVE"

    .line 21
    .line 22
    .line 23
    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    const/high16 v3, 0xc000000

    .line 27
    .line 28
    const/4 v4, 0x1

    .line 29
    invoke-static {v1, v4, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    iput-object v1, p0, Lcom/android/server/audio/SoundDoseHelper;->mMusicActiveIntent:Landroid/app/PendingIntent;

    .line 34
    .line 35
    iget-object v1, p0, Lcom/android/server/audio/SoundDoseHelper;->mAlarmManager:Landroid/app/AlarmManager;

    .line 36
    .line 37
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 38
    .line 39
    .line 40
    move-result-wide v2

    .line 41
    const-wide/32 v4, 0xea60

    .line 42
    .line 43
    .line 44
    add-long/2addr v2, v4

    .line 45
    iget-object p0, p0, Lcom/android/server/audio/SoundDoseHelper;->mMusicActiveIntent:Landroid/app/PendingIntent;

    .line 46
    .line 47
    const/4 v4, 0x2

    .line 48
    invoke-virtual {v1, v4, v2, v3, p0}, Landroid/app/AlarmManager;->setExactAndAllowWhileIdle(IJLandroid/app/PendingIntent;)V

    .line 49
    .line 50
    .line 51
    monitor-exit v0

    .line 52
    return-void

    .line 53
    :catchall_0
    move-exception p0

    .line 54
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    throw p0
.end method

.method public final setAudioDeviceCategory(ILjava/lang/String;Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mEnableCsd:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object p0, p0, Lcom/android/server/audio/SoundDoseHelper;->mSoundDose:Ljava/util/concurrent/atomic/AtomicReference;

    .line 11
    .line 12
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Landroid/media/ISoundDose;

    .line 17
    .line 18
    const-string v0, "AS.SoundDoseHelper"

    .line 19
    .line 20
    if-nez p0, :cond_1

    .line 21
    .line 22
    const-string p0, "Sound dose interface not initialized"

    .line 23
    .line 24
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :cond_1
    :try_start_0
    new-instance v1, Landroid/media/ISoundDose$AudioDeviceCategory;

    .line 29
    .line 30
    invoke-direct {v1}, Landroid/media/ISoundDose$AudioDeviceCategory;-><init>()V

    .line 31
    .line 32
    .line 33
    iput-object p2, v1, Landroid/media/ISoundDose$AudioDeviceCategory;->address:Ljava/lang/String;

    .line 34
    .line 35
    iput p1, v1, Landroid/media/ISoundDose$AudioDeviceCategory;->internalAudioType:I

    .line 36
    .line 37
    iput-boolean p3, v1, Landroid/media/ISoundDose$AudioDeviceCategory;->csdCompatible:Z

    .line 38
    .line 39
    invoke-interface {p0, v1}, Landroid/media/ISoundDose;->setAudioDeviceCategory(Landroid/media/ISoundDose$AudioDeviceCategory;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :catch_0
    move-exception p0

    .line 44
    const-string p1, "Exception while setting the audio device category"

    .line 45
    .line 46
    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 47
    .line 48
    .line 49
    :goto_0
    return-void
.end method

.method public final setSafeMediaVolumeEnabled(Ljava/lang/String;Z)V
    .locals 7

    .line 1
    iget v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mSafeMediaVolumeState:I

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    if-eq v0, v1, :cond_2

    .line 7
    .line 8
    const/4 v2, 0x3

    .line 9
    const/4 v3, 0x2

    .line 10
    if-eqz p2, :cond_0

    .line 11
    .line 12
    if-ne v0, v3, :cond_0

    .line 13
    .line 14
    iput v2, p0, Lcom/android/server/audio/SoundDoseHelper;->mSafeMediaVolumeState:I

    .line 15
    .line 16
    invoke-virtual {p0, p1}, Lcom/android/server/audio/SoundDoseHelper;->enforceSafeMediaVolume(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    if-nez p2, :cond_2

    .line 21
    .line 22
    if-ne v0, v2, :cond_2

    .line 23
    .line 24
    sget-boolean p1, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_VOLUME_MONITOR_PHASE_3:Z

    .line 25
    .line 26
    const/16 p2, 0x3ec

    .line 27
    .line 28
    const/4 v0, 0x0

    .line 29
    const-wide/16 v4, 0x0

    .line 30
    .line 31
    if-eqz p1, :cond_1

    .line 32
    .line 33
    iget-object p1, p0, Lcom/android/server/audio/SoundDoseHelper;->mSafeMediaVolumeStateLock:Ljava/lang/Object;

    .line 34
    .line 35
    monitor-enter p1

    .line 36
    :try_start_0
    iput v1, p0, Lcom/android/server/audio/SoundDoseHelper;->mSafeMediaVolumeState:I

    .line 37
    .line 38
    iput v1, p0, Lcom/android/server/audio/SoundDoseHelper;->mSafeMediaVolumeStateForBlueTooth:I

    .line 39
    .line 40
    iget-object v2, p0, Lcom/android/server/audio/SoundDoseHelper;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    .line 41
    .line 42
    const/16 v3, 0x3eb

    .line 43
    .line 44
    const/4 v6, 0x0

    .line 45
    invoke-virtual {v2, v3, v1, v0, v6}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-virtual {v2, v1, v4, v5}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 50
    .line 51
    .line 52
    iput v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mMusicActiveMs:I

    .line 53
    .line 54
    iget-object p0, p0, Lcom/android/server/audio/SoundDoseHelper;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    .line 55
    .line 56
    invoke-virtual {p0, p2, v0, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 61
    .line 62
    .line 63
    monitor-exit p1

    .line 64
    return-void

    .line 65
    :catchall_0
    move-exception p0

    .line 66
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    throw p0

    .line 68
    :cond_1
    iput v3, p0, Lcom/android/server/audio/SoundDoseHelper;->mSafeMediaVolumeState:I

    .line 69
    .line 70
    iput v1, p0, Lcom/android/server/audio/SoundDoseHelper;->mMusicActiveMs:I

    .line 71
    .line 72
    iput-wide v4, p0, Lcom/android/server/audio/SoundDoseHelper;->mLastMusicActiveTimeMs:J

    .line 73
    .line 74
    iget-object p1, p0, Lcom/android/server/audio/SoundDoseHelper;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    .line 75
    .line 76
    invoke-virtual {p1, p2, v1, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 81
    .line 82
    .line 83
    invoke-virtual {p0}, Lcom/android/server/audio/SoundDoseHelper;->scheduleMusicActiveCheck()V

    .line 84
    .line 85
    .line 86
    :cond_2
    :goto_0
    return-void
.end method

.method public final updateCsdEnabled(Ljava/lang/String;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mForceCsdProperty:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    const-string v1, "audio.safemedia.csd.force"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mContext:Landroid/content/Context;

    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const v1, 0x1110213

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    iget-object v1, p0, Lcom/android/server/audio/SoundDoseHelper;->mContext:Landroid/content/Context;

    .line 27
    .line 28
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    const v3, 0x1110214

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    const/4 v3, 0x1

    .line 40
    if-eqz v0, :cond_0

    .line 41
    .line 42
    if-nez v1, :cond_1

    .line 43
    .line 44
    :cond_0
    iget-object v4, p0, Lcom/android/server/audio/SoundDoseHelper;->mForceCsdProperty:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 45
    .line 46
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 47
    .line 48
    .line 49
    move-result v4

    .line 50
    if-eqz v4, :cond_2

    .line 51
    .line 52
    :cond_1
    move v4, v3

    .line 53
    goto :goto_0

    .line 54
    :cond_2
    move v4, v2

    .line 55
    :goto_0
    iget-object v5, p0, Lcom/android/server/audio/SoundDoseHelper;->mCsdAsAFeatureLock:Ljava/lang/Object;

    .line 56
    .line 57
    monitor-enter v5

    .line 58
    if-nez v0, :cond_5

    .line 59
    .line 60
    if-eqz v1, :cond_5

    .line 61
    .line 62
    :try_start_0
    iput-boolean v3, p0, Lcom/android/server/audio/SoundDoseHelper;->mIsCsdAsAFeatureAvailable:Z

    .line 63
    .line 64
    iget-boolean v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mIsCsdAsAFeatureEnabled:Z

    .line 65
    .line 66
    if-nez v0, :cond_3

    .line 67
    .line 68
    iget-object v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mForceCsdProperty:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 69
    .line 70
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    if-eqz v0, :cond_4

    .line 75
    .line 76
    goto :goto_1

    .line 77
    :catchall_0
    move-exception p0

    .line 78
    goto :goto_4

    .line 79
    :cond_3
    :goto_1
    move v2, v3

    .line 80
    :cond_4
    const-string v0, "AS.SoundDoseHelper"

    .line 81
    .line 82
    new-instance v1, Ljava/lang/StringBuilder;

    .line 83
    .line 84
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    const-string v3, ": CSD as a feature is not enforced and enabled: "

    .line 91
    .line 92
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    .line 104
    .line 105
    move v4, v2

    .line 106
    goto :goto_2

    .line 107
    :cond_5
    iput-boolean v2, p0, Lcom/android/server/audio/SoundDoseHelper;->mIsCsdAsAFeatureAvailable:Z

    .line 108
    .line 109
    :goto_2
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    iget-object v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mEnableCsd:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 111
    .line 112
    xor-int/lit8 v1, v4, 0x1

    .line 113
    .line 114
    invoke-virtual {v0, v1, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 115
    .line 116
    .line 117
    move-result v0

    .line 118
    if-eqz v0, :cond_6

    .line 119
    .line 120
    const-string v0, "AS.SoundDoseHelper"

    .line 121
    .line 122
    new-instance v1, Ljava/lang/StringBuilder;

    .line 123
    .line 124
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    const-string v2, ": enabled CSD "

    .line 131
    .line 132
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v1

    .line 142
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    .line 144
    .line 145
    invoke-virtual {p0}, Lcom/android/server/audio/SoundDoseHelper;->initCsd()V

    .line 146
    .line 147
    .line 148
    iget-object v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mSafeMediaVolumeStateLock:Ljava/lang/Object;

    .line 149
    .line 150
    monitor-enter v0

    .line 151
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/audio/SoundDoseHelper;->initSafeMediaVolumeIndex()V

    .line 152
    .line 153
    .line 154
    invoke-virtual {p0, p1}, Lcom/android/server/audio/SoundDoseHelper;->updateSafeMediaVolume_l(Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    monitor-exit v0

    .line 158
    goto :goto_3

    .line 159
    :catchall_1
    move-exception p0

    .line 160
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 161
    throw p0

    .line 162
    :cond_6
    :goto_3
    return-void

    .line 163
    :goto_4
    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 164
    throw p0
.end method

.method public final updateCsdForTestApi()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mForceCsdProperty:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const-string v1, "audio.safemedia.csd.force"

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eq v0, v1, :cond_0

    .line 15
    .line 16
    const-string v0, "SystemPropertiesChangeCallback"

    .line 17
    .line 18
    invoke-virtual {p0, v0}, Lcom/android/server/audio/SoundDoseHelper;->updateCsdEnabled(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    iget-object p0, p0, Lcom/android/server/audio/SoundDoseHelper;->mEnableCsd:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 22
    .line 23
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 24
    .line 25
    .line 26
    move-result p0

    .line 27
    return p0
.end method

.method public final updateSafeMediaVolume_l(Ljava/lang/String;)V
    .locals 7

    .line 1
    const-string v0, "audio.safemedia.bypass"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const/4 v2, 0x1

    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mEnableCsd:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    move v0, v1

    .line 21
    goto :goto_1

    .line 22
    :cond_1
    :goto_0
    move v0, v2

    .line 23
    :goto_1
    const-string v3, "audio.safemedia.force"

    .line 24
    .line 25
    invoke-static {v3, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    sget-boolean v4, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_SAFE_VOLUME_COUNTRY:Z

    .line 30
    .line 31
    if-nez v4, :cond_2

    .line 32
    .line 33
    move v0, v2

    .line 34
    :cond_2
    iget-object v4, p0, Lcom/android/server/audio/SoundDoseHelper;->mContext:Landroid/content/Context;

    .line 35
    .line 36
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    const v5, 0x1110213

    .line 41
    .line 42
    .line 43
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 44
    .line 45
    .line 46
    move-result v4

    .line 47
    if-nez v4, :cond_3

    .line 48
    .line 49
    if-nez v3, :cond_3

    .line 50
    .line 51
    sget-boolean v3, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_SAFE_MEDIA_VOLUME:Z

    .line 52
    .line 53
    if-eqz v3, :cond_4

    .line 54
    .line 55
    :cond_3
    if-nez v0, :cond_4

    .line 56
    .line 57
    move v0, v2

    .line 58
    goto :goto_2

    .line 59
    :cond_4
    move v0, v1

    .line 60
    :goto_2
    sget-boolean v3, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_VOLUME_MONITOR_PHASE_3:Z

    .line 61
    .line 62
    const/4 v4, 0x3

    .line 63
    if-eqz v3, :cond_6

    .line 64
    .line 65
    iget v5, p0, Lcom/android/server/audio/SoundDoseHelper;->mSafeMediaVolumeState:I

    .line 66
    .line 67
    if-ne v5, v2, :cond_5

    .line 68
    .line 69
    move v0, v1

    .line 70
    goto :goto_3

    .line 71
    :cond_5
    if-ne v5, v4, :cond_6

    .line 72
    .line 73
    move v0, v2

    .line 74
    :cond_6
    :goto_3
    invoke-static {}, Lcom/samsung/android/server/audio/FactoryUtils;->isFactoryMode()Z

    .line 75
    .line 76
    .line 77
    sget-boolean v5, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_BIKE_MODE:Z

    .line 78
    .line 79
    if-eqz v5, :cond_7

    .line 80
    .line 81
    iget-object v5, p0, Lcom/android/server/audio/SoundDoseHelper;->mAudioService:Lcom/android/server/audio/AudioService;

    .line 82
    .line 83
    iget-object v5, v5, Lcom/android/server/audio/AudioService;->mExt:Lcom/android/server/audio/AudioServiceExt;

    .line 84
    .line 85
    iget-boolean v5, v5, Lcom/android/server/audio/AudioServiceExt;->mIsBikeMode:Z

    .line 86
    .line 87
    :cond_7
    const-wide/16 v5, 0x0

    .line 88
    .line 89
    if-eqz v0, :cond_a

    .line 90
    .line 91
    iget v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mSafeMediaVolumeState:I

    .line 92
    .line 93
    const/4 v2, 0x2

    .line 94
    if-eq v0, v2, :cond_9

    .line 95
    .line 96
    iget v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mMusicActiveMs:I

    .line 97
    .line 98
    if-nez v0, :cond_8

    .line 99
    .line 100
    iput v4, p0, Lcom/android/server/audio/SoundDoseHelper;->mSafeMediaVolumeState:I

    .line 101
    .line 102
    invoke-virtual {p0, p1}, Lcom/android/server/audio/SoundDoseHelper;->enforceSafeMediaVolume(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    goto :goto_4

    .line 106
    :cond_8
    iput v2, p0, Lcom/android/server/audio/SoundDoseHelper;->mSafeMediaVolumeState:I

    .line 107
    .line 108
    iput-wide v5, p0, Lcom/android/server/audio/SoundDoseHelper;->mLastMusicActiveTimeMs:J

    .line 109
    .line 110
    :cond_9
    :goto_4
    move v2, v4

    .line 111
    goto :goto_5

    .line 112
    :cond_a
    iput v2, p0, Lcom/android/server/audio/SoundDoseHelper;->mSafeMediaVolumeState:I

    .line 113
    .line 114
    :goto_5
    if-eqz v3, :cond_b

    .line 115
    .line 116
    goto :goto_6

    .line 117
    :cond_b
    const/16 p1, 0x3eb

    .line 118
    .line 119
    const/4 v0, 0x0

    .line 120
    iget-object p0, p0, Lcom/android/server/audio/SoundDoseHelper;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    .line 121
    .line 122
    invoke-virtual {p0, p1, v2, v1, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 123
    .line 124
    .line 125
    move-result-object p1

    .line 126
    invoke-virtual {p0, p1, v5, v6}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 127
    .line 128
    .line 129
    :goto_6
    return-void
.end method
