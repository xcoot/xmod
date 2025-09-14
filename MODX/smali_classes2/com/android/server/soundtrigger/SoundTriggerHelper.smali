.class public final Lcom/android/server/soundtrigger/SoundTriggerHelper;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/hardware/soundtrigger/SoundTrigger$StatusListener;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mDeviceState:Lcom/android/server/soundtrigger/DeviceStateHandler$SoundTriggerDeviceState;

.field public final mEventLogger:Lcom/android/server/utils/EventLogger;

.field public mIsAppOpPermitted:Z

.field public mIsDetached:Z

.field public final mKeyphraseUuidMap:Ljava/util/HashMap;

.field public final mLock:Ljava/lang/Object;

.field public final mModelDataMap:Ljava/util/HashMap;

.field public mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;

.field public final mModuleId:I

.field public final mModulePropertiesProvider:Ljava/util/function/Supplier;

.field public final mModuleProvider:Ljava/util/function/Function;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/utils/EventLogger;Lcom/android/server/soundtrigger/SoundTriggerService$$ExternalSyntheticLambda1;ILcom/android/server/soundtrigger/SoundTriggerService$$ExternalSyntheticLambda2;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mLock:Ljava/lang/Object;

    .line 10
    .line 11
    new-instance v0, Ljava/util/HashMap;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModelDataMap:Ljava/util/HashMap;

    .line 17
    .line 18
    new-instance v0, Ljava/util/HashMap;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mKeyphraseUuidMap:Ljava/util/HashMap;

    .line 24
    .line 25
    const/4 v0, 0x0

    .line 26
    iput-boolean v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mIsDetached:Z

    .line 27
    .line 28
    sget-object v0, Lcom/android/server/soundtrigger/DeviceStateHandler$SoundTriggerDeviceState;->DISABLE:Lcom/android/server/soundtrigger/DeviceStateHandler$SoundTriggerDeviceState;

    .line 29
    .line 30
    iput-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mDeviceState:Lcom/android/server/soundtrigger/DeviceStateHandler$SoundTriggerDeviceState;

    .line 31
    .line 32
    const/4 v0, 0x1

    .line 33
    iput-boolean v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mIsAppOpPermitted:Z

    .line 34
    .line 35
    iput p4, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModuleId:I

    .line 36
    .line 37
    iput-object p1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mContext:Landroid/content/Context;

    .line 38
    .line 39
    iput-object p3, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModuleProvider:Ljava/util/function/Function;

    .line 40
    .line 41
    iput-object p2, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mEventLogger:Lcom/android/server/utils/EventLogger;

    .line 42
    .line 43
    iput-object p5, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModulePropertiesProvider:Ljava/util/function/Supplier;

    .line 44
    .line 45
    const/4 p1, -0x1

    .line 46
    if-ne p4, p1, :cond_0

    .line 47
    .line 48
    const/4 p1, 0x0

    .line 49
    iput-object p1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_0
    invoke-virtual {p3, p0}, Lcom/android/server/soundtrigger/SoundTriggerService$$ExternalSyntheticLambda1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    check-cast p1, Landroid/hardware/soundtrigger/SoundTriggerModule;

    .line 57
    .line 58
    iput-object p1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;

    .line 59
    .line 60
    :goto_0
    return-void
.end method


# virtual methods
.method public final detach()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mIsDetached:Z

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    monitor-exit v0

    .line 9
    return-void

    .line 10
    :catchall_0
    move-exception p0

    .line 11
    goto :goto_1

    .line 12
    :cond_0
    const/4 v1, 0x1

    .line 13
    iput-boolean v1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mIsDetached:Z

    .line 14
    .line 15
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModelDataMap:Ljava/util/HashMap;

    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    const/4 v3, 0x0

    .line 30
    if-eqz v2, :cond_1

    .line 31
    .line 32
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    check-cast v2, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;

    .line 37
    .line 38
    invoke-virtual {p0, v2, v3, v3}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->forceStopAndUnloadModelLocked(Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;Ljava/lang/Exception;Ljava/util/Iterator;)V

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModelDataMap:Ljava/util/HashMap;

    .line 43
    .line 44
    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 45
    .line 46
    .line 47
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;

    .line 48
    .line 49
    if-eqz v1, :cond_2

    .line 50
    .line 51
    invoke-virtual {v1}, Landroid/hardware/soundtrigger/SoundTriggerModule;->detach()V

    .line 52
    .line 53
    .line 54
    iput-object v3, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;

    .line 55
    .line 56
    :cond_2
    monitor-exit v0

    .line 57
    return-void

    .line 58
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    throw p0
.end method

.method public final forceStopAndUnloadModelLocked(Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;Ljava/lang/Exception;Ljava/util/Iterator;)V
    .locals 2

    .line 1
    const-string v0, "SoundTriggerHelper"

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    const-string v1, "forceStopAndUnloadModel"

    .line 6
    .line 7
    invoke-static {v0, v1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 8
    .line 9
    .line 10
    :cond_0
    iget-object p2, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;

    .line 11
    .line 12
    if-nez p2, :cond_1

    .line 13
    .line 14
    return-void

    .line 15
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->isModelStarted()Z

    .line 16
    .line 17
    .line 18
    move-result p2

    .line 19
    if-eqz p2, :cond_3

    .line 20
    .line 21
    new-instance p2, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    const-string v1, "Stopping previously started dangling model "

    .line 24
    .line 25
    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->getHandle()I

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p2

    .line 39
    invoke-static {v0, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    .line 41
    .line 42
    iget-object p2, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;

    .line 43
    .line 44
    invoke-virtual {p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->getHandle()I

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    invoke-virtual {p2, v1}, Landroid/hardware/soundtrigger/SoundTriggerModule;->stopRecognition(I)I

    .line 49
    .line 50
    .line 51
    move-result p2

    .line 52
    if-nez p2, :cond_2

    .line 53
    .line 54
    invoke-virtual {p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->setStopped()V

    .line 55
    .line 56
    .line 57
    const/4 p2, 0x0

    .line 58
    invoke-virtual {p1, p2}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->setRequested(Z)V

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_2
    new-instance p2, Ljava/lang/StringBuilder;

    .line 63
    .line 64
    const-string v1, "Failed to stop model "

    .line 65
    .line 66
    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->getHandle()I

    .line 70
    .line 71
    .line 72
    move-result v1

    .line 73
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p2

    .line 80
    invoke-static {v0, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    .line 82
    .line 83
    :cond_3
    :goto_0
    invoke-virtual {p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->isModelLoaded()Z

    .line 84
    .line 85
    .line 86
    move-result p2

    .line 87
    if-eqz p2, :cond_8

    .line 88
    .line 89
    new-instance p2, Ljava/lang/StringBuilder;

    .line 90
    .line 91
    const-string v1, "Unloading previously loaded dangling model "

    .line 92
    .line 93
    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->getHandle()I

    .line 97
    .line 98
    .line 99
    move-result v1

    .line 100
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object p2

    .line 107
    invoke-static {v0, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    .line 109
    .line 110
    iget-object p2, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;

    .line 111
    .line 112
    invoke-virtual {p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->getHandle()I

    .line 113
    .line 114
    .line 115
    move-result v1

    .line 116
    invoke-virtual {p2, v1}, Landroid/hardware/soundtrigger/SoundTriggerModule;->unloadSoundModel(I)I

    .line 117
    .line 118
    .line 119
    move-result p2

    .line 120
    if-nez p2, :cond_7

    .line 121
    .line 122
    if-eqz p3, :cond_4

    .line 123
    .line 124
    invoke-interface {p3}, Ljava/util/Iterator;->remove()V

    .line 125
    .line 126
    .line 127
    goto :goto_1

    .line 128
    :cond_4
    iget-object p2, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModelDataMap:Ljava/util/HashMap;

    .line 129
    .line 130
    invoke-virtual {p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->getModelId()Ljava/util/UUID;

    .line 131
    .line 132
    .line 133
    move-result-object p3

    .line 134
    invoke-virtual {p2, p3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    :goto_1
    iget-object p0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mKeyphraseUuidMap:Ljava/util/HashMap;

    .line 138
    .line 139
    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 140
    .line 141
    .line 142
    move-result-object p0

    .line 143
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 144
    .line 145
    .line 146
    move-result-object p0

    .line 147
    :cond_5
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 148
    .line 149
    .line 150
    move-result p2

    .line 151
    if-eqz p2, :cond_6

    .line 152
    .line 153
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    move-result-object p2

    .line 157
    check-cast p2, Ljava/util/Map$Entry;

    .line 158
    .line 159
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 160
    .line 161
    .line 162
    move-result-object p2

    .line 163
    invoke-virtual {p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->getModelId()Ljava/util/UUID;

    .line 164
    .line 165
    .line 166
    move-result-object p3

    .line 167
    invoke-virtual {p2, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 168
    .line 169
    .line 170
    move-result p2

    .line 171
    if-eqz p2, :cond_5

    .line 172
    .line 173
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    .line 174
    .line 175
    .line 176
    goto :goto_2

    .line 177
    :cond_6
    invoke-virtual {p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->clearState()V

    .line 178
    .line 179
    .line 180
    goto :goto_3

    .line 181
    :cond_7
    new-instance p0, Ljava/lang/StringBuilder;

    .line 182
    .line 183
    const-string p2, "Failed to unload model "

    .line 184
    .line 185
    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 186
    .line 187
    .line 188
    invoke-virtual {p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->getHandle()I

    .line 189
    .line 190
    .line 191
    move-result p1

    .line 192
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 193
    .line 194
    .line 195
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object p0

    .line 199
    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    .line 201
    .line 202
    :cond_8
    :goto_3
    return-void
.end method

.method public final getGenericModelState(Ljava/util/UUID;)I
    .locals 7

    .line 1
    const-string v0, "GetGenericModelState error: Invalid generic model id:"

    .line 2
    .line 3
    const-string v1, "GetGenericModelState: Given generic model is not started:"

    .line 4
    .line 5
    const-string v2, "GetGenericModelState: Given generic model is not loaded:"

    .line 6
    .line 7
    iget-object v3, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mLock:Ljava/lang/Object;

    .line 8
    .line 9
    monitor-enter v3

    .line 10
    :try_start_0
    iget-object v4, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mContext:Landroid/content/Context;

    .line 11
    .line 12
    const-string/jumbo v5, "sth_get_generic_model_state"

    .line 13
    .line 14
    .line 15
    const/4 v6, 0x1

    .line 16
    invoke-static {v4, v5, v6}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    const/high16 v4, -0x80000000

    .line 20
    .line 21
    if-eqz p1, :cond_6

    .line 22
    .line 23
    iget-object v5, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;

    .line 24
    .line 25
    if-nez v5, :cond_0

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_0
    iget-boolean v5, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mIsDetached:Z

    .line 29
    .line 30
    if-nez v5, :cond_5

    .line 31
    .line 32
    iget-object v5, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModelDataMap:Ljava/util/HashMap;

    .line 33
    .line 34
    invoke-virtual {v5, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v5

    .line 38
    check-cast v5, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;

    .line 39
    .line 40
    if-eqz v5, :cond_4

    .line 41
    .line 42
    invoke-virtual {v5}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->isGenericModel()Z

    .line 43
    .line 44
    .line 45
    move-result v6

    .line 46
    if-nez v6, :cond_1

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    invoke-virtual {v5}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->isModelLoaded()Z

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    if-nez v0, :cond_2

    .line 54
    .line 55
    const-string p0, "SoundTriggerHelper"

    .line 56
    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    .line 58
    .line 59
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    .line 71
    .line 72
    monitor-exit v3

    .line 73
    return v4

    .line 74
    :catchall_0
    move-exception p0

    .line 75
    goto :goto_2

    .line 76
    :cond_2
    invoke-virtual {v5}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->isModelStarted()Z

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    if-nez v0, :cond_3

    .line 81
    .line 82
    const-string p0, "SoundTriggerHelper"

    .line 83
    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    .line 85
    .line 86
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    .line 98
    .line 99
    monitor-exit v3

    .line 100
    return v4

    .line 101
    :cond_3
    iget-object p0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;

    .line 102
    .line 103
    invoke-virtual {v5}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->getHandle()I

    .line 104
    .line 105
    .line 106
    move-result p1

    .line 107
    invoke-virtual {p0, p1}, Landroid/hardware/soundtrigger/SoundTriggerModule;->getModelState(I)I

    .line 108
    .line 109
    .line 110
    move-result p0

    .line 111
    monitor-exit v3

    .line 112
    return p0

    .line 113
    :cond_4
    :goto_0
    const-string p0, "SoundTriggerHelper"

    .line 114
    .line 115
    new-instance v1, Ljava/lang/StringBuilder;

    .line 116
    .line 117
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    .line 129
    .line 130
    monitor-exit v3

    .line 131
    return v4

    .line 132
    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 133
    .line 134
    const-string p1, "SoundTriggerHelper has been detached"

    .line 135
    .line 136
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    throw p0

    .line 140
    :cond_6
    :goto_1
    monitor-exit v3

    .line 141
    return v4

    .line 142
    :goto_2
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 143
    throw p0
.end method

.method public final getKeyphraseModelDataLocked(I)Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mKeyphraseUuidMap:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Ljava/util/UUID;

    .line 12
    .line 13
    if-nez p1, :cond_0

    .line 14
    .line 15
    const/4 p0, 0x0

    .line 16
    return-object p0

    .line 17
    :cond_0
    iget-object p0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModelDataMap:Ljava/util/HashMap;

    .line 18
    .line 19
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    check-cast p0, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;

    .line 24
    .line 25
    return-object p0
.end method

.method public final getModelDataForLocked(I)Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModelDataMap:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;

    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->getHandle()I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-ne v1, p1, :cond_0

    .line 28
    .line 29
    return-object v0

    .line 30
    :cond_1
    const/4 p0, 0x0

    .line 31
    return-object p0
.end method

.method public final getModuleProperties()Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mIsDetached:Z

    .line 5
    .line 6
    if-nez v1, :cond_2

    .line 7
    .line 8
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModulePropertiesProvider:Ljava/util/function/Supplier;

    .line 10
    .line 11
    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Ljava/util/List;

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_1

    .line 26
    .line 27
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    check-cast v1, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;

    .line 32
    .line 33
    invoke-virtual {v1}, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->getId()I

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    iget v3, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModuleId:I

    .line 38
    .line 39
    if-ne v2, v3, :cond_0

    .line 40
    .line 41
    return-object v1

    .line 42
    :cond_1
    const-string v0, "SoundTriggerHelper"

    .line 43
    .line 44
    new-instance v1, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    const-string v2, "Module properties not found for existing moduleId "

    .line 47
    .line 48
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    iget p0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModuleId:I

    .line 52
    .line 53
    invoke-static {v1, p0, v0}, Lcom/android/server/VaultKeeperService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 54
    .line 55
    .line 56
    const/4 p0, 0x0

    .line 57
    return-object p0

    .line 58
    :catchall_0
    move-exception p0

    .line 59
    goto :goto_0

    .line 60
    :cond_2
    :try_start_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 61
    .line 62
    const-string v1, "SoundTriggerHelper has been detached"

    .line 63
    .line 64
    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    throw p0

    .line 68
    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 69
    throw p0
.end method

.method public final getParameterLocked(Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;I)I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-string/jumbo v1, "sth_get_parameter"

    .line 4
    .line 5
    .line 6
    const/4 v2, 0x1

    .line 7
    invoke-static {v0, v1, v2}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;

    .line 11
    .line 12
    if-eqz v0, :cond_2

    .line 13
    .line 14
    if-eqz p1, :cond_1

    .line 15
    .line 16
    invoke-virtual {p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->isModelLoaded()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    iget-object p0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;

    .line 23
    .line 24
    invoke-virtual {p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->getHandle()I

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    invoke-virtual {p0, p1, p2}, Landroid/hardware/soundtrigger/SoundTriggerModule;->getParameter(II)I

    .line 29
    .line 30
    .line 31
    move-result p0

    .line 32
    return p0

    .line 33
    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 34
    .line 35
    new-instance p2, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    const-string v0, "Given model is not loaded:"

    .line 38
    .line 39
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    throw p0

    .line 53
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 54
    .line 55
    const-string p1, "Invalid model id"

    .line 56
    .line 57
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    throw p0

    .line 61
    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 62
    .line 63
    const-string p1, "SoundTriggerModule not initialized"

    .line 64
    .line 65
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    throw p0
.end method

.method public final isRecognitionAllowed(Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;)Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mIsAppOpPermitted:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    iget-object p0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mDeviceState:Lcom/android/server/soundtrigger/DeviceStateHandler$SoundTriggerDeviceState;

    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    if-eqz p0, :cond_3

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    if-eq p0, v1, :cond_2

    .line 17
    .line 18
    const/4 p1, 0x2

    .line 19
    if-ne p0, p1, :cond_1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    new-instance p0, Ljava/lang/AssertionError;

    .line 23
    .line 24
    const-string p1, "Enum changed between compile and runtime"

    .line 25
    .line 26
    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    throw p0

    .line 30
    :cond_2
    monitor-enter p1

    .line 31
    :try_start_0
    iget-boolean v1, p1, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->mRunInBatterySaverMode:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    .line 33
    monitor-exit p1

    .line 34
    goto :goto_0

    .line 35
    :catchall_0
    move-exception p0

    .line 36
    monitor-exit p1

    .line 37
    throw p0

    .line 38
    :cond_3
    :goto_0
    return v1
.end method

.method public final onDeviceStateChanged(Lcom/android/server/soundtrigger/DeviceStateHandler$SoundTriggerDeviceState;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mIsDetached:Z

    .line 5
    .line 6
    if-nez v1, :cond_1

    .line 7
    .line 8
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mDeviceState:Lcom/android/server/soundtrigger/DeviceStateHandler$SoundTriggerDeviceState;

    .line 9
    .line 10
    if-ne v1, p1, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iput-object p1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mDeviceState:Lcom/android/server/soundtrigger/DeviceStateHandler$SoundTriggerDeviceState;

    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->updateAllRecognitionsLocked()V

    .line 16
    .line 17
    .line 18
    monitor-exit v0

    .line 19
    return-void

    .line 20
    :catchall_0
    move-exception p0

    .line 21
    goto :goto_1

    .line 22
    :cond_1
    :goto_0
    monitor-exit v0

    .line 23
    return-void

    .line 24
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw p0
.end method

.method public final onGenericRecognitionLocked(Landroid/hardware/soundtrigger/SoundTrigger$GenericRecognitionEvent;)V
    .locals 9

    .line 1
    sget-object v0, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;->RECOGNITION:Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    const-string/jumbo v2, "sth_generic_recognition_event"

    .line 6
    .line 7
    .line 8
    const/4 v3, 0x1

    .line 9
    invoke-static {v1, v2, v3}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    .line 10
    .line 11
    .line 12
    iget v1, p1, Landroid/hardware/soundtrigger/SoundTrigger$GenericRecognitionEvent;->status:I

    .line 13
    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    const/4 v2, 0x3

    .line 17
    if-eq v1, v2, :cond_0

    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    iget v1, p1, Landroid/hardware/soundtrigger/SoundTrigger$GenericRecognitionEvent;->soundModelHandle:I

    .line 21
    .line 22
    invoke-virtual {p0, v1}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->getModelDataForLocked(I)Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    const-string v2, "SoundTriggerHelper"

    .line 27
    .line 28
    if-eqz v1, :cond_7

    .line 29
    .line 30
    invoke-virtual {v1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->isGenericModel()Z

    .line 31
    .line 32
    .line 33
    move-result v4

    .line 34
    if-nez v4, :cond_1

    .line 35
    .line 36
    goto/16 :goto_0

    .line 37
    .line 38
    :cond_1
    invoke-virtual {p1}, Landroid/hardware/soundtrigger/SoundTrigger$GenericRecognitionEvent;->getToken()Landroid/os/IBinder;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    monitor-enter v1

    .line 43
    :try_start_0
    iget-object v5, v1, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->mRecognitionToken:Landroid/os/IBinder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 44
    .line 45
    monitor-exit v1

    .line 46
    invoke-static {v4, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v4

    .line 50
    if-nez v4, :cond_2

    .line 51
    .line 52
    return-void

    .line 53
    :cond_2
    invoke-virtual {v1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->getCallback()Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    .line 54
    .line 55
    .line 56
    move-result-object v4

    .line 57
    if-nez v4, :cond_3

    .line 58
    .line 59
    new-instance p0, Ljava/lang/StringBuilder;

    .line 60
    .line 61
    const-string v0, "Generic recognition event: Null callback for model handle: "

    .line 62
    .line 63
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    iget p1, p1, Landroid/hardware/soundtrigger/SoundTrigger$GenericRecognitionEvent;->soundModelHandle:I

    .line 67
    .line 68
    invoke-static {p0, p1, v2}, Lcom/android/server/HeapdumpWatcher$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 69
    .line 70
    .line 71
    return-void

    .line 72
    :cond_3
    iget-boolean v5, p1, Landroid/hardware/soundtrigger/SoundTrigger$GenericRecognitionEvent;->recognitionStillActive:Z

    .line 73
    .line 74
    if-nez v5, :cond_4

    .line 75
    .line 76
    invoke-virtual {v1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->setStopped()V

    .line 77
    .line 78
    .line 79
    :cond_4
    const/4 v5, 0x0

    .line 80
    :try_start_1
    iget-object v6, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mEventLogger:Lcom/android/server/utils/EventLogger;

    .line 81
    .line 82
    new-instance v7, Lcom/android/server/soundtrigger/SoundTriggerEvent$ServiceEvent;

    .line 83
    .line 84
    invoke-virtual {v1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->getModelId()Ljava/util/UUID;

    .line 85
    .line 86
    .line 87
    move-result-object v8

    .line 88
    invoke-direct {v7, v0, v8, v5}, Lcom/android/server/soundtrigger/SoundTriggerEvent$ServiceEvent;-><init>(Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;Ljava/util/UUID;Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v6, v7}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 92
    .line 93
    .line 94
    invoke-interface {v4, p1}, Landroid/hardware/soundtrigger/IRecognitionStatusCallback;->onGenericSoundTriggerDetected(Landroid/hardware/soundtrigger/SoundTrigger$GenericRecognitionEvent;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 95
    .line 96
    .line 97
    monitor-enter v1

    .line 98
    :try_start_2
    iget-object v0, v1, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->mRecognitionConfig:Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 99
    .line 100
    monitor-exit v1

    .line 101
    if-nez v0, :cond_5

    .line 102
    .line 103
    new-instance p0, Ljava/lang/StringBuilder;

    .line 104
    .line 105
    const-string v0, "Generic recognition event: Null RecognitionConfig for model handle: "

    .line 106
    .line 107
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    iget p1, p1, Landroid/hardware/soundtrigger/SoundTrigger$GenericRecognitionEvent;->soundModelHandle:I

    .line 111
    .line 112
    invoke-static {p0, p1, v2}, Lcom/android/server/HeapdumpWatcher$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 113
    .line 114
    .line 115
    return-void

    .line 116
    :cond_5
    iget-boolean p1, v0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;->allowMultipleTriggers:Z

    .line 117
    .line 118
    invoke-virtual {v1, p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->setRequested(Z)V

    .line 119
    .line 120
    .line 121
    monitor-enter v1

    .line 122
    :try_start_3
    iget-boolean p1, v1, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->mRequested:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 123
    .line 124
    monitor-exit v1

    .line 125
    if-eqz p1, :cond_6

    .line 126
    .line 127
    invoke-virtual {p0, v1, v3}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->updateRecognitionLocked(Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;Z)I

    .line 128
    .line 129
    .line 130
    :cond_6
    return-void

    .line 131
    :catchall_0
    move-exception p0

    .line 132
    monitor-exit v1

    .line 133
    throw p0

    .line 134
    :catchall_1
    move-exception p0

    .line 135
    monitor-exit v1

    .line 136
    throw p0

    .line 137
    :catch_0
    move-exception p1

    .line 138
    iget-object v3, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mEventLogger:Lcom/android/server/utils/EventLogger;

    .line 139
    .line 140
    new-instance v4, Lcom/android/server/soundtrigger/SoundTriggerEvent$ServiceEvent;

    .line 141
    .line 142
    invoke-virtual {v1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->getModelId()Ljava/util/UUID;

    .line 143
    .line 144
    .line 145
    move-result-object v6

    .line 146
    const-string v7, "RemoteException"

    .line 147
    .line 148
    invoke-direct {v4, v0, v6, v7}, Lcom/android/server/soundtrigger/SoundTriggerEvent$ServiceEvent;-><init>(Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;Ljava/util/UUID;Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    const/4 v0, 0x2

    .line 152
    invoke-virtual {v4, v0, v2}, Lcom/android/server/soundtrigger/SoundTriggerEvent$ServiceEvent;->printLog(ILjava/lang/String;)Lcom/android/server/utils/EventLogger$Event;

    .line 153
    .line 154
    .line 155
    invoke-virtual {v3, v4}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {p0, v1, p1, v5}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->forceStopAndUnloadModelLocked(Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;Ljava/lang/Exception;Ljava/util/Iterator;)V

    .line 159
    .line 160
    .line 161
    return-void

    .line 162
    :catchall_2
    move-exception p0

    .line 163
    monitor-exit v1

    .line 164
    throw p0

    .line 165
    :cond_7
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    .line 166
    .line 167
    const-string v0, "Generic recognition event: Model does not exist for handle: "

    .line 168
    .line 169
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    iget p1, p1, Landroid/hardware/soundtrigger/SoundTrigger$GenericRecognitionEvent;->soundModelHandle:I

    .line 173
    .line 174
    invoke-static {p0, p1, v2}, Lcom/android/server/HeapdumpWatcher$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 175
    .line 176
    .line 177
    return-void
.end method

.method public final onKeyphraseRecognitionLocked(Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;)V
    .locals 8

    .line 1
    sget-object v0, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;->RECOGNITION:Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;

    .line 2
    .line 3
    const-string v1, "Recognition success"

    .line 4
    .line 5
    const-string v2, "SoundTriggerHelper"

    .line 6
    .line 7
    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mContext:Landroid/content/Context;

    .line 11
    .line 12
    const-string/jumbo v3, "sth_keyphrase_recognition_event"

    .line 13
    .line 14
    .line 15
    const/4 v4, 0x1

    .line 16
    invoke-static {v1, v3, v4}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    const/high16 v1, -0x80000000

    .line 20
    .line 21
    if-nez p1, :cond_0

    .line 22
    .line 23
    const-string v3, "Null RecognitionEvent received."

    .line 24
    .line 25
    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_0
    iget-object v3, p1, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;->keyphraseExtras:[Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;

    .line 30
    .line 31
    if-eqz v3, :cond_2

    .line 32
    .line 33
    array-length v5, v3

    .line 34
    if-nez v5, :cond_1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    const/4 v1, 0x0

    .line 38
    aget-object v1, v3, v1

    .line 39
    .line 40
    iget v1, v1, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;->id:I

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_2
    :goto_0
    const-string v3, "Invalid keyphrase recognition event!"

    .line 44
    .line 45
    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    .line 47
    .line 48
    :goto_1
    invoke-virtual {p0, v1}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->getKeyphraseModelDataLocked(I)Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    if-eqz v3, :cond_9

    .line 53
    .line 54
    invoke-virtual {v3}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->isKeyphraseModel()Z

    .line 55
    .line 56
    .line 57
    move-result v5

    .line 58
    if-nez v5, :cond_3

    .line 59
    .line 60
    goto :goto_2

    .line 61
    :cond_3
    invoke-virtual {p1}, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;->getToken()Landroid/os/IBinder;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    monitor-enter v3

    .line 66
    :try_start_0
    iget-object v5, v3, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->mRecognitionToken:Landroid/os/IBinder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 67
    .line 68
    monitor-exit v3

    .line 69
    invoke-static {v1, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    move-result v1

    .line 73
    if-nez v1, :cond_4

    .line 74
    .line 75
    return-void

    .line 76
    :cond_4
    invoke-virtual {v3}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->getCallback()Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    if-nez v1, :cond_5

    .line 81
    .line 82
    const-string p0, "Received onRecognition event without callback for keyphrase model."

    .line 83
    .line 84
    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    .line 86
    .line 87
    return-void

    .line 88
    :cond_5
    iget-boolean v1, p1, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;->recognitionStillActive:Z

    .line 89
    .line 90
    if-nez v1, :cond_6

    .line 91
    .line 92
    invoke-virtual {v3}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->setStopped()V

    .line 93
    .line 94
    .line 95
    :cond_6
    const/4 v1, 0x0

    .line 96
    :try_start_1
    iget-object v5, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mEventLogger:Lcom/android/server/utils/EventLogger;

    .line 97
    .line 98
    new-instance v6, Lcom/android/server/soundtrigger/SoundTriggerEvent$ServiceEvent;

    .line 99
    .line 100
    invoke-virtual {v3}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->getModelId()Ljava/util/UUID;

    .line 101
    .line 102
    .line 103
    move-result-object v7

    .line 104
    invoke-direct {v6, v0, v7, v1}, Lcom/android/server/soundtrigger/SoundTriggerEvent$ServiceEvent;-><init>(Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;Ljava/util/UUID;Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v5, v6}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v3}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->getCallback()Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    .line 111
    .line 112
    .line 113
    move-result-object v5

    .line 114
    invoke-interface {v5, p1}, Landroid/hardware/soundtrigger/IRecognitionStatusCallback;->onKeyphraseDetected(Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 115
    .line 116
    .line 117
    monitor-enter v3

    .line 118
    :try_start_2
    iget-object p1, v3, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->mRecognitionConfig:Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 119
    .line 120
    monitor-exit v3

    .line 121
    if-eqz p1, :cond_7

    .line 122
    .line 123
    iget-boolean p1, p1, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;->allowMultipleTriggers:Z

    .line 124
    .line 125
    invoke-virtual {v3, p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->setRequested(Z)V

    .line 126
    .line 127
    .line 128
    :cond_7
    monitor-enter v3

    .line 129
    :try_start_3
    iget-boolean p1, v3, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->mRequested:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 130
    .line 131
    monitor-exit v3

    .line 132
    if-eqz p1, :cond_8

    .line 133
    .line 134
    invoke-virtual {p0, v3, v4}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->updateRecognitionLocked(Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;Z)I

    .line 135
    .line 136
    .line 137
    :cond_8
    return-void

    .line 138
    :catchall_0
    move-exception p0

    .line 139
    monitor-exit v3

    .line 140
    throw p0

    .line 141
    :catchall_1
    move-exception p0

    .line 142
    monitor-exit v3

    .line 143
    throw p0

    .line 144
    :catch_0
    move-exception p1

    .line 145
    iget-object v4, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mEventLogger:Lcom/android/server/utils/EventLogger;

    .line 146
    .line 147
    new-instance v5, Lcom/android/server/soundtrigger/SoundTriggerEvent$ServiceEvent;

    .line 148
    .line 149
    invoke-virtual {v3}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->getModelId()Ljava/util/UUID;

    .line 150
    .line 151
    .line 152
    move-result-object v6

    .line 153
    const-string v7, "RemoteException"

    .line 154
    .line 155
    invoke-direct {v5, v0, v6, v7}, Lcom/android/server/soundtrigger/SoundTriggerEvent$ServiceEvent;-><init>(Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;Ljava/util/UUID;Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    const/4 v0, 0x2

    .line 159
    invoke-virtual {v5, v0, v2}, Lcom/android/server/soundtrigger/SoundTriggerEvent$ServiceEvent;->printLog(ILjava/lang/String;)Lcom/android/server/utils/EventLogger$Event;

    .line 160
    .line 161
    .line 162
    invoke-virtual {v4, v5}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 163
    .line 164
    .line 165
    invoke-virtual {p0, v3, p1, v1}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->forceStopAndUnloadModelLocked(Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;Ljava/lang/Exception;Ljava/util/Iterator;)V

    .line 166
    .line 167
    .line 168
    return-void

    .line 169
    :catchall_2
    move-exception p0

    .line 170
    monitor-exit v3

    .line 171
    throw p0

    .line 172
    :cond_9
    :goto_2
    const-string p0, "Keyphase model data does not exist for ID:"

    .line 173
    .line 174
    invoke-static {v1, p0, v2}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 175
    .line 176
    .line 177
    return-void
.end method

.method public final onModelUnloaded(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mContext:Landroid/content/Context;

    .line 5
    .line 6
    const-string/jumbo v2, "sth_sound_model_updated"

    .line 7
    .line 8
    .line 9
    const/4 v3, 0x1

    .line 10
    invoke-static {v1, v2, v3}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->getModelDataForLocked(I)Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    if-eqz p0, :cond_0

    .line 18
    .line 19
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 20
    const/4 p1, 0x0

    .line 21
    :try_start_1
    iput-object p1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->mRecognitionToken:Landroid/os/IBinder;

    .line 22
    .line 23
    const/4 p1, 0x0

    .line 24
    iput p1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->mModelState:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 25
    .line 26
    :try_start_2
    monitor-exit p0

    .line 27
    goto :goto_0

    .line 28
    :catchall_0
    move-exception p1

    .line 29
    monitor-exit p0

    .line 30
    throw p1

    .line 31
    :cond_0
    :goto_0
    monitor-exit v0

    .line 32
    return-void

    .line 33
    :catchall_1
    move-exception p0

    .line 34
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 35
    throw p0
.end method

.method public final onRecognition(Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;)V
    .locals 3

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const-string p0, "SoundTriggerHelper"

    .line 4
    .line 5
    const-string p1, "Null recognition event!"

    .line 6
    .line 7
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    instance-of v0, p1, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;

    .line 12
    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    instance-of v0, p1, Landroid/hardware/soundtrigger/SoundTrigger$GenericRecognitionEvent;

    .line 16
    .line 17
    if-nez v0, :cond_1

    .line 18
    .line 19
    const-string p0, "SoundTriggerHelper"

    .line 20
    .line 21
    const-string p1, "Invalid recognition event type (not one of generic or keyphrase)!"

    .line 22
    .line 23
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :cond_1
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mLock:Ljava/lang/Object;

    .line 28
    .line 29
    monitor-enter v0

    .line 30
    :try_start_0
    iget v1, p1, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->status:I

    .line 31
    .line 32
    if-eqz v1, :cond_3

    .line 33
    .line 34
    const/4 v2, 0x1

    .line 35
    if-eq v1, v2, :cond_2

    .line 36
    .line 37
    const/4 v2, 0x2

    .line 38
    if-eq v1, v2, :cond_3

    .line 39
    .line 40
    const/4 v2, 0x3

    .line 41
    if-eq v1, v2, :cond_3

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->onRecognitionAbortLocked(Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;)V

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :catchall_0
    move-exception p0

    .line 49
    goto :goto_1

    .line 50
    :cond_3
    instance-of v1, p1, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;

    .line 51
    .line 52
    if-eqz v1, :cond_4

    .line 53
    .line 54
    check-cast p1, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;

    .line 55
    .line 56
    invoke-virtual {p0, p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->onKeyphraseRecognitionLocked(Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;)V

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_4
    check-cast p1, Landroid/hardware/soundtrigger/SoundTrigger$GenericRecognitionEvent;

    .line 61
    .line 62
    invoke-virtual {p0, p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->onGenericRecognitionLocked(Landroid/hardware/soundtrigger/SoundTrigger$GenericRecognitionEvent;)V

    .line 63
    .line 64
    .line 65
    :goto_0
    monitor-exit v0

    .line 66
    return-void

    .line 67
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    throw p0
.end method

.method public final onRecognitionAbortLocked(Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;)V
    .locals 8

    .line 1
    sget-object v0, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;->PAUSE:Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;

    .line 2
    .line 3
    const-string v1, "Recognition aborted"

    .line 4
    .line 5
    const-string v2, "SoundTriggerHelper"

    .line 6
    .line 7
    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mContext:Landroid/content/Context;

    .line 11
    .line 12
    const-string/jumbo v3, "sth_recognition_aborted"

    .line 13
    .line 14
    .line 15
    const/4 v4, 0x1

    .line 16
    invoke-static {v1, v3, v4}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    iget v1, p1, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->soundModelHandle:I

    .line 20
    .line 21
    invoke-virtual {p0, v1}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->getModelDataForLocked(I)Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    if-eqz v1, :cond_1

    .line 26
    .line 27
    invoke-virtual {v1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->isModelStarted()Z

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    if-eqz v3, :cond_1

    .line 32
    .line 33
    invoke-virtual {p1}, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->getToken()Landroid/os/IBinder;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    monitor-enter v1

    .line 38
    :try_start_0
    iget-object v3, v1, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->mRecognitionToken:Landroid/os/IBinder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    .line 40
    monitor-exit v1

    .line 41
    invoke-static {p1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    if-nez p1, :cond_0

    .line 46
    .line 47
    return-void

    .line 48
    :cond_0
    invoke-virtual {v1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->setStopped()V

    .line 49
    .line 50
    .line 51
    const/4 p1, 0x0

    .line 52
    :try_start_1
    invoke-virtual {v1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->getCallback()Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    if-eqz v3, :cond_1

    .line 57
    .line 58
    iget-object v4, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mEventLogger:Lcom/android/server/utils/EventLogger;

    .line 59
    .line 60
    new-instance v5, Lcom/android/server/soundtrigger/SoundTriggerEvent$ServiceEvent;

    .line 61
    .line 62
    invoke-virtual {v1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->getModelId()Ljava/util/UUID;

    .line 63
    .line 64
    .line 65
    move-result-object v6

    .line 66
    invoke-direct {v5, v0, v6, p1}, Lcom/android/server/soundtrigger/SoundTriggerEvent$ServiceEvent;-><init>(Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;Ljava/util/UUID;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v4, v5}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 70
    .line 71
    .line 72
    invoke-interface {v3}, Landroid/hardware/soundtrigger/IRecognitionStatusCallback;->onRecognitionPaused()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 73
    .line 74
    .line 75
    goto :goto_0

    .line 76
    :catch_0
    move-exception v3

    .line 77
    iget-object v4, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mEventLogger:Lcom/android/server/utils/EventLogger;

    .line 78
    .line 79
    new-instance v5, Lcom/android/server/soundtrigger/SoundTriggerEvent$ServiceEvent;

    .line 80
    .line 81
    invoke-virtual {v1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->getModelId()Ljava/util/UUID;

    .line 82
    .line 83
    .line 84
    move-result-object v6

    .line 85
    const-string v7, "RemoteException"

    .line 86
    .line 87
    invoke-direct {v5, v0, v6, v7}, Lcom/android/server/soundtrigger/SoundTriggerEvent$ServiceEvent;-><init>(Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;Ljava/util/UUID;Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    const/4 v0, 0x2

    .line 91
    invoke-virtual {v5, v0, v2}, Lcom/android/server/soundtrigger/SoundTriggerEvent$ServiceEvent;->printLog(ILjava/lang/String;)Lcom/android/server/utils/EventLogger$Event;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v4, v5}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {p0, v1, v3, p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->forceStopAndUnloadModelLocked(Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;Ljava/lang/Exception;Ljava/util/Iterator;)V

    .line 98
    .line 99
    .line 100
    goto :goto_0

    .line 101
    :catchall_0
    move-exception p0

    .line 102
    monitor-exit v1

    .line 103
    throw p0

    .line 104
    :cond_1
    :goto_0
    return-void
.end method

.method public final onResourcesAvailable()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mEventLogger:Lcom/android/server/utils/EventLogger;

    .line 5
    .line 6
    new-instance v2, Lcom/android/server/soundtrigger/SoundTriggerEvent$ServiceEvent;

    .line 7
    .line 8
    sget-object v3, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;->RESOURCES_AVAILABLE:Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;

    .line 9
    .line 10
    const/4 v4, 0x0

    .line 11
    invoke-direct {v2, v3, v4, v4}, Lcom/android/server/soundtrigger/SoundTriggerEvent$ServiceEvent;-><init>(Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;Ljava/util/UUID;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, v2}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->updateAllRecognitionsLocked()V

    .line 18
    .line 19
    .line 20
    monitor-exit v0

    .line 21
    return-void

    .line 22
    :catchall_0
    move-exception p0

    .line 23
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    throw p0
.end method

.method public final onServiceDied()V
    .locals 3

    .line 1
    const-string v0, "SoundTriggerHelper"

    .line 2
    .line 3
    const-string/jumbo v1, "onServiceDied!!"

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mContext:Landroid/content/Context;

    .line 10
    .line 11
    const-string/jumbo v1, "sth_service_died"

    .line 12
    .line 13
    .line 14
    const/4 v2, 0x1

    .line 15
    invoke-static {v0, v1, v2}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mLock:Ljava/lang/Object;

    .line 19
    .line 20
    monitor-enter v0

    .line 21
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->onServiceDiedLocked()V

    .line 22
    .line 23
    .line 24
    monitor-exit v0

    .line 25
    return-void

    .line 26
    :catchall_0
    move-exception p0

    .line 27
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    throw p0
.end method

.method public final onServiceDiedLocked()V
    .locals 10

    .line 1
    const-string v0, "SoundTriggerHelper"

    .line 2
    .line 3
    sget-object v1, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;->MODULE_DIED:Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    :try_start_0
    iget-object v3, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mContext:Landroid/content/Context;

    .line 7
    .line 8
    const-string/jumbo v4, "sth_service_died"

    .line 9
    .line 10
    .line 11
    const/4 v5, 0x1

    .line 12
    invoke-static {v3, v4, v5}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    .line 13
    .line 14
    .line 15
    iget-object v3, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModelDataMap:Ljava/util/HashMap;

    .line 16
    .line 17
    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    .line 27
    .line 28
    move-result v4

    .line 29
    if-eqz v4, :cond_1

    .line 30
    .line 31
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    check-cast v4, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;

    .line 36
    .line 37
    invoke-virtual {v4}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->getCallback()Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    .line 38
    .line 39
    .line 40
    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    if-eqz v5, :cond_0

    .line 42
    .line 43
    const/4 v6, 0x2

    .line 44
    :try_start_1
    iget-object v7, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mEventLogger:Lcom/android/server/utils/EventLogger;

    .line 45
    .line 46
    new-instance v8, Lcom/android/server/soundtrigger/SoundTriggerEvent$ServiceEvent;

    .line 47
    .line 48
    invoke-virtual {v4}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->getModelId()Ljava/util/UUID;

    .line 49
    .line 50
    .line 51
    move-result-object v9

    .line 52
    invoke-direct {v8, v1, v9, v2}, Lcom/android/server/soundtrigger/SoundTriggerEvent$ServiceEvent;-><init>(Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;Ljava/util/UUID;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v8, v6, v0}, Lcom/android/server/soundtrigger/SoundTriggerEvent$ServiceEvent;->printLog(ILjava/lang/String;)Lcom/android/server/utils/EventLogger$Event;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v7, v8}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 59
    .line 60
    .line 61
    invoke-interface {v5}, Landroid/hardware/soundtrigger/IRecognitionStatusCallback;->onModuleDied()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 62
    .line 63
    .line 64
    goto :goto_0

    .line 65
    :catchall_0
    move-exception v0

    .line 66
    goto :goto_3

    .line 67
    :catch_0
    :try_start_2
    iget-object v5, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mEventLogger:Lcom/android/server/utils/EventLogger;

    .line 68
    .line 69
    new-instance v7, Lcom/android/server/soundtrigger/SoundTriggerEvent$ServiceEvent;

    .line 70
    .line 71
    invoke-virtual {v4}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->getModelId()Ljava/util/UUID;

    .line 72
    .line 73
    .line 74
    move-result-object v4

    .line 75
    const-string v8, "RemoteException"

    .line 76
    .line 77
    invoke-direct {v7, v1, v4, v8}, Lcom/android/server/soundtrigger/SoundTriggerEvent$ServiceEvent;-><init>(Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;Ljava/util/UUID;Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v7, v6, v0}, Lcom/android/server/soundtrigger/SoundTriggerEvent$ServiceEvent;->printLog(ILjava/lang/String;)Lcom/android/server/utils/EventLogger$Event;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v5, v7}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 84
    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_1
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModelDataMap:Ljava/util/HashMap;

    .line 88
    .line 89
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 98
    .line 99
    .line 100
    move-result v1

    .line 101
    if-eqz v1, :cond_2

    .line 102
    .line 103
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    check-cast v1, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;

    .line 108
    .line 109
    invoke-virtual {v1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->clearState()V

    .line 110
    .line 111
    .line 112
    goto :goto_1

    .line 113
    :cond_2
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;

    .line 114
    .line 115
    if-eqz v0, :cond_3

    .line 116
    .line 117
    invoke-virtual {v0}, Landroid/hardware/soundtrigger/SoundTriggerModule;->detach()V

    .line 118
    .line 119
    .line 120
    :try_start_3
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModuleProvider:Ljava/util/function/Function;

    .line 121
    .line 122
    invoke-interface {v0, p0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    check-cast v0, Landroid/hardware/soundtrigger/SoundTriggerModule;

    .line 127
    .line 128
    iput-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 129
    .line 130
    goto :goto_2

    .line 131
    :catch_1
    iput-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;

    .line 132
    .line 133
    :cond_3
    :goto_2
    return-void

    .line 134
    :goto_3
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModelDataMap:Ljava/util/HashMap;

    .line 135
    .line 136
    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 137
    .line 138
    .line 139
    move-result-object v1

    .line 140
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 141
    .line 142
    .line 143
    move-result-object v1

    .line 144
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 145
    .line 146
    .line 147
    move-result v3

    .line 148
    if-eqz v3, :cond_4

    .line 149
    .line 150
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    move-result-object v3

    .line 154
    check-cast v3, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;

    .line 155
    .line 156
    invoke-virtual {v3}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->clearState()V

    .line 157
    .line 158
    .line 159
    goto :goto_4

    .line 160
    :cond_4
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;

    .line 161
    .line 162
    if-eqz v1, :cond_5

    .line 163
    .line 164
    invoke-virtual {v1}, Landroid/hardware/soundtrigger/SoundTriggerModule;->detach()V

    .line 165
    .line 166
    .line 167
    :try_start_4
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModuleProvider:Ljava/util/function/Function;

    .line 168
    .line 169
    invoke-interface {v1, p0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    .line 171
    .line 172
    move-result-object v1

    .line 173
    check-cast v1, Landroid/hardware/soundtrigger/SoundTriggerModule;

    .line 174
    .line 175
    iput-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 176
    .line 177
    goto :goto_5

    .line 178
    :catch_2
    iput-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;

    .line 179
    .line 180
    :cond_5
    :goto_5
    throw v0
.end method

.method public final queryParameterLocked(Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;I)Landroid/hardware/soundtrigger/SoundTrigger$ModelParamRange;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-string/jumbo v1, "sth_query_parameter"

    .line 4
    .line 5
    .line 6
    const/4 v2, 0x1

    .line 7
    invoke-static {v0, v1, v2}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    return-object v1

    .line 16
    :cond_0
    const-string v0, "SoundTriggerHelper"

    .line 17
    .line 18
    if-nez p1, :cond_1

    .line 19
    .line 20
    const-string/jumbo p0, "queryParameter: Invalid model id"

    .line 21
    .line 22
    .line 23
    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    return-object v1

    .line 27
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->isModelLoaded()Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-nez v2, :cond_2

    .line 32
    .line 33
    new-instance p0, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    const-string/jumbo p2, "queryParameter: Given model is not loaded:"

    .line 36
    .line 37
    .line 38
    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    .line 50
    .line 51
    return-object v1

    .line 52
    :cond_2
    iget-object p0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;

    .line 53
    .line 54
    invoke-virtual {p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->getHandle()I

    .line 55
    .line 56
    .line 57
    move-result p1

    .line 58
    invoke-virtual {p0, p1, p2}, Landroid/hardware/soundtrigger/SoundTriggerModule;->queryParameter(II)Landroid/hardware/soundtrigger/SoundTrigger$ModelParamRange;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    return-object p0
.end method

.method public final setParameterLocked(Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;II)I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-string/jumbo v1, "sth_set_parameter"

    .line 4
    .line 5
    .line 6
    const/4 v2, 0x1

    .line 7
    invoke-static {v0, v1, v2}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    sget p0, Landroid/hardware/soundtrigger/SoundTrigger;->STATUS_NO_INIT:I

    .line 15
    .line 16
    return p0

    .line 17
    :cond_0
    if-eqz p1, :cond_2

    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->isModelLoaded()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    iget-object p0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;

    .line 27
    .line 28
    invoke-virtual {p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->getHandle()I

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    invoke-virtual {p0, p1, p2, p3}, Landroid/hardware/soundtrigger/SoundTriggerModule;->setParameter(III)I

    .line 33
    .line 34
    .line 35
    move-result p0

    .line 36
    return p0

    .line 37
    :cond_2
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    const-string p2, "SetParameter: Given model is not loaded:"

    .line 40
    .line 41
    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    const-string p1, "SoundTriggerHelper"

    .line 52
    .line 53
    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    .line 55
    .line 56
    sget p0, Landroid/hardware/soundtrigger/SoundTrigger;->STATUS_BAD_VALUE:I

    .line 57
    .line 58
    return p0
.end method

.method public final startGenericRecognition(Ljava/util/UUID;Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;Landroid/hardware/soundtrigger/IRecognitionStatusCallback;Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;Z)I
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-string/jumbo v1, "sth_start_recognition"

    .line 4
    .line 5
    .line 6
    const/4 v2, 0x1

    .line 7
    invoke-static {v0, v1, v2}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    .line 8
    .line 9
    .line 10
    const/high16 v0, -0x80000000

    .line 11
    .line 12
    if-eqz p1, :cond_5

    .line 13
    .line 14
    if-eqz p2, :cond_5

    .line 15
    .line 16
    if-eqz p3, :cond_5

    .line 17
    .line 18
    if-nez p4, :cond_0

    .line 19
    .line 20
    goto :goto_3

    .line 21
    :cond_0
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mLock:Ljava/lang/Object;

    .line 22
    .line 23
    monitor-enter v1

    .line 24
    :try_start_0
    iget-boolean v3, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mIsDetached:Z

    .line 25
    .line 26
    if-nez v3, :cond_4

    .line 27
    .line 28
    iget-object v3, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModelDataMap:Ljava/util/HashMap;

    .line 29
    .line 30
    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    check-cast v3, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;

    .line 35
    .line 36
    if-nez v3, :cond_1

    .line 37
    .line 38
    new-instance v3, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;

    .line 39
    .line 40
    invoke-direct {v3, p1, v2}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;-><init>(Ljava/util/UUID;I)V

    .line 41
    .line 42
    .line 43
    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModelDataMap:Ljava/util/HashMap;

    .line 44
    .line 45
    invoke-virtual {v2, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    invoke-virtual {v3}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->isGenericModel()Z

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    if-nez p1, :cond_2

    .line 54
    .line 55
    const-string p1, "SoundTriggerHelper"

    .line 56
    .line 57
    const-string v2, "UUID already used for non-generic model."

    .line 58
    .line 59
    invoke-static {p1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    .line 61
    .line 62
    const/4 p1, 0x0

    .line 63
    move-object v6, p1

    .line 64
    goto :goto_1

    .line 65
    :cond_2
    :goto_0
    move-object v6, v3

    .line 66
    :goto_1
    if-nez v6, :cond_3

    .line 67
    .line 68
    const-string p0, "SoundTriggerHelper"

    .line 69
    .line 70
    const-string p1, "Irrecoverable error occurred, check UUID / sound model data."

    .line 71
    .line 72
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    .line 74
    .line 75
    monitor-exit v1

    .line 76
    return v0

    .line 77
    :catchall_0
    move-exception p0

    .line 78
    goto :goto_2

    .line 79
    :cond_3
    move-object v4, p0

    .line 80
    move-object v5, p2

    .line 81
    move-object v7, p3

    .line 82
    move-object v8, p4

    .line 83
    move v9, p5

    .line 84
    invoke-virtual/range {v4 .. v9}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->startRecognition(Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;Landroid/hardware/soundtrigger/IRecognitionStatusCallback;Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;Z)I

    .line 85
    .line 86
    .line 87
    move-result p0

    .line 88
    monitor-exit v1

    .line 89
    return p0

    .line 90
    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 91
    .line 92
    const-string p1, "SoundTriggerHelper has been detached"

    .line 93
    .line 94
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    throw p0

    .line 98
    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    throw p0

    .line 100
    :cond_5
    :goto_3
    const-string p0, "SoundTriggerHelper"

    .line 101
    .line 102
    const-string p1, "Passed in bad data to startGenericRecognition()."

    .line 103
    .line 104
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    .line 106
    .line 107
    return v0
.end method

.method public final startRecognition(Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;Landroid/hardware/soundtrigger/IRecognitionStatusCallback;Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;Z)I
    .locals 7

    .line 1
    const-string v0, "Unable to stop or unload previous model: "

    .line 2
    .line 3
    const-string v1, "Canceling previous recognition for model id: "

    .line 4
    .line 5
    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mLock:Ljava/lang/Object;

    .line 6
    .line 7
    monitor-enter v2

    .line 8
    :try_start_0
    invoke-virtual {p2}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->getCallback()Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    .line 9
    .line 10
    .line 11
    move-result-object v3

    .line 12
    const/4 v4, 0x0

    .line 13
    if-eqz v3, :cond_0

    .line 14
    .line 15
    invoke-interface {v3}, Landroid/hardware/soundtrigger/IRecognitionStatusCallback;->asBinder()Landroid/os/IBinder;

    .line 16
    .line 17
    .line 18
    move-result-object v5

    .line 19
    invoke-interface {p3}, Landroid/hardware/soundtrigger/IRecognitionStatusCallback;->asBinder()Landroid/os/IBinder;

    .line 20
    .line 21
    .line 22
    move-result-object v6

    .line 23
    if-eq v5, v6, :cond_0

    .line 24
    .line 25
    const-string v5, "SoundTriggerHelper"

    .line 26
    .line 27
    new-instance v6, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    invoke-direct {v6, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p2}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->getModelId()Ljava/util/UUID;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-static {v5, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    .line 45
    .line 46
    :try_start_1
    invoke-interface {v3}, Landroid/hardware/soundtrigger/IRecognitionStatusCallback;->onPreempted()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :catchall_0
    move-exception p0

    .line 51
    goto/16 :goto_4

    .line 52
    .line 53
    :catch_0
    move-exception v1

    .line 54
    :try_start_2
    const-string v3, "SoundTriggerHelper"

    .line 55
    .line 56
    const-string v5, "RemoteException in onDetectionStopped"

    .line 57
    .line 58
    invoke-static {v3, v5, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 59
    .line 60
    .line 61
    :goto_0
    monitor-enter p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 62
    :try_start_3
    iput-object v4, p2, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->mCallback:Landroid/hardware/soundtrigger/IRecognitionStatusCallback;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 63
    .line 64
    :try_start_4
    monitor-exit p2

    .line 65
    goto :goto_1

    .line 66
    :catchall_1
    move-exception p0

    .line 67
    monitor-exit p2

    .line 68
    throw p0

    .line 69
    :cond_0
    :goto_1
    monitor-enter p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 70
    :try_start_5
    iget-object v1, p2, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->mSoundModel:Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_8

    .line 71
    .line 72
    :try_start_6
    monitor-exit p2

    .line 73
    const/4 v3, 0x1

    .line 74
    const/4 v5, 0x0

    .line 75
    if-eqz v1, :cond_4

    .line 76
    .line 77
    monitor-enter p2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 78
    :try_start_7
    iget-object v1, p2, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->mSoundModel:Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 79
    .line 80
    :try_start_8
    monitor-exit p2

    .line 81
    invoke-virtual {v1, p1}, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->equals(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    move-result v1

    .line 85
    if-eqz v1, :cond_1

    .line 86
    .line 87
    invoke-virtual {p2}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->isModelStarted()Z

    .line 88
    .line 89
    .line 90
    move-result v1

    .line 91
    if-eqz v1, :cond_1

    .line 92
    .line 93
    move v1, v3

    .line 94
    move v6, v5

    .line 95
    goto :goto_2

    .line 96
    :cond_1
    monitor-enter p2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 97
    :try_start_9
    iget-object v1, p2, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->mSoundModel:Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 98
    .line 99
    :try_start_a
    monitor-exit p2

    .line 100
    invoke-virtual {v1, p1}, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->equals(Ljava/lang/Object;)Z

    .line 101
    .line 102
    .line 103
    move-result v1

    .line 104
    if-nez v1, :cond_2

    .line 105
    .line 106
    invoke-virtual {p2}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->isModelStarted()Z

    .line 107
    .line 108
    .line 109
    move-result v1

    .line 110
    invoke-virtual {p2}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->isModelLoaded()Z

    .line 111
    .line 112
    .line 113
    move-result v6

    .line 114
    goto :goto_2

    .line 115
    :cond_2
    move v1, v5

    .line 116
    move v6, v1

    .line 117
    :goto_2
    if-nez v1, :cond_3

    .line 118
    .line 119
    if-eqz v6, :cond_4

    .line 120
    .line 121
    :cond_3
    invoke-virtual {p0, p2, v1, v6}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->tryStopAndUnloadLocked(Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;ZZ)I

    .line 122
    .line 123
    .line 124
    move-result v1

    .line 125
    if-eqz v1, :cond_4

    .line 126
    .line 127
    const-string p0, "SoundTriggerHelper"

    .line 128
    .line 129
    new-instance p1, Ljava/lang/StringBuilder;

    .line 130
    .line 131
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {p2}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->toString()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object p2

    .line 138
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object p1

    .line 145
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    .line 147
    .line 148
    monitor-exit v2

    .line 149
    return v1

    .line 150
    :catchall_2
    move-exception p0

    .line 151
    monitor-exit p2

    .line 152
    throw p0

    .line 153
    :catchall_3
    move-exception p0

    .line 154
    monitor-exit p2

    .line 155
    throw p0

    .line 156
    :cond_4
    monitor-enter p2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 157
    :try_start_b
    iput-object p3, p2, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->mCallback:Landroid/hardware/soundtrigger/IRecognitionStatusCallback;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_7

    .line 158
    .line 159
    :try_start_c
    monitor-exit p2

    .line 160
    invoke-virtual {p2, v3}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->setRequested(Z)V

    .line 161
    .line 162
    .line 163
    monitor-enter p2
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 164
    :try_start_d
    iput-object p4, p2, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->mRecognitionConfig:Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_6

    .line 165
    .line 166
    :try_start_e
    monitor-exit p2

    .line 167
    monitor-enter p2
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 168
    :try_start_f
    iput-boolean p5, p2, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->mRunInBatterySaverMode:Z
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    .line 169
    .line 170
    :try_start_10
    monitor-exit p2

    .line 171
    monitor-enter p2
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 172
    :try_start_11
    iput-object p1, p2, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->mSoundModel:Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_4

    .line 173
    .line 174
    :try_start_12
    monitor-exit p2

    .line 175
    invoke-virtual {p0, p2}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->isRecognitionAllowed(Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;)Z

    .line 176
    .line 177
    .line 178
    move-result p1

    .line 179
    if-eqz p1, :cond_6

    .line 180
    .line 181
    invoke-virtual {p0, p2, v5}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->updateRecognitionLocked(Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;Z)I

    .line 182
    .line 183
    .line 184
    move-result p1

    .line 185
    if-nez p1, :cond_5

    .line 186
    .line 187
    monitor-exit v2

    .line 188
    return p1

    .line 189
    :cond_5
    sget p4, Landroid/hardware/soundtrigger/SoundTrigger;->STATUS_BUSY:I

    .line 190
    .line 191
    if-eq p1, p4, :cond_6

    .line 192
    .line 193
    invoke-virtual {p2, v5}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->setRequested(Z)V

    .line 194
    .line 195
    .line 196
    monitor-exit v2
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    .line 197
    return p1

    .line 198
    :cond_6
    if-eqz p3, :cond_7

    .line 199
    .line 200
    :try_start_13
    iget-object p1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mEventLogger:Lcom/android/server/utils/EventLogger;

    .line 201
    .line 202
    new-instance p4, Lcom/android/server/soundtrigger/SoundTriggerEvent$ServiceEvent;

    .line 203
    .line 204
    sget-object p5, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;->PAUSE:Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;

    .line 205
    .line 206
    invoke-virtual {p2}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->getModelId()Ljava/util/UUID;

    .line 207
    .line 208
    .line 209
    move-result-object v0

    .line 210
    invoke-direct {p4, p5, v0, v4}, Lcom/android/server/soundtrigger/SoundTriggerEvent$ServiceEvent;-><init>(Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;Ljava/util/UUID;Ljava/lang/String;)V

    .line 211
    .line 212
    .line 213
    invoke-virtual {p1, p4}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 214
    .line 215
    .line 216
    invoke-interface {p3}, Landroid/hardware/soundtrigger/IRecognitionStatusCallback;->onRecognitionPaused()V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_13} :catch_1
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    .line 217
    .line 218
    .line 219
    goto :goto_3

    .line 220
    :catch_1
    move-exception p1

    .line 221
    :try_start_14
    iget-object p3, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mEventLogger:Lcom/android/server/utils/EventLogger;

    .line 222
    .line 223
    new-instance p4, Lcom/android/server/soundtrigger/SoundTriggerEvent$ServiceEvent;

    .line 224
    .line 225
    sget-object p5, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;->PAUSE:Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;

    .line 226
    .line 227
    invoke-virtual {p2}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->getModelId()Ljava/util/UUID;

    .line 228
    .line 229
    .line 230
    move-result-object v0

    .line 231
    const-string v1, "RemoteException"

    .line 232
    .line 233
    invoke-direct {p4, p5, v0, v1}, Lcom/android/server/soundtrigger/SoundTriggerEvent$ServiceEvent;-><init>(Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;Ljava/util/UUID;Ljava/lang/String;)V

    .line 234
    .line 235
    .line 236
    const-string p5, "SoundTriggerHelper"

    .line 237
    .line 238
    const/4 v0, 0x2

    .line 239
    invoke-virtual {p4, v0, p5}, Lcom/android/server/soundtrigger/SoundTriggerEvent$ServiceEvent;->printLog(ILjava/lang/String;)Lcom/android/server/utils/EventLogger$Event;

    .line 240
    .line 241
    .line 242
    invoke-virtual {p3, p4}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 243
    .line 244
    .line 245
    invoke-virtual {p0, p2, p1, v4}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->forceStopAndUnloadModelLocked(Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;Ljava/lang/Exception;Ljava/util/Iterator;)V

    .line 246
    .line 247
    .line 248
    :cond_7
    :goto_3
    monitor-exit v2

    .line 249
    return v5

    .line 250
    :catchall_4
    move-exception p0

    .line 251
    monitor-exit p2

    .line 252
    throw p0

    .line 253
    :catchall_5
    move-exception p0

    .line 254
    monitor-exit p2

    .line 255
    throw p0

    .line 256
    :catchall_6
    move-exception p0

    .line 257
    monitor-exit p2

    .line 258
    throw p0

    .line 259
    :catchall_7
    move-exception p0

    .line 260
    monitor-exit p2

    .line 261
    throw p0

    .line 262
    :catchall_8
    move-exception p0

    .line 263
    monitor-exit p2

    .line 264
    throw p0

    .line 265
    :goto_4
    monitor-exit v2
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    .line 266
    throw p0
.end method

.method public final stopGenericRecognition(Ljava/util/UUID;Landroid/hardware/soundtrigger/IRecognitionStatusCallback;)I
    .locals 7

    .line 1
    const-string v0, "Null callbackreceived for stopGenericRecognition() for modelid:"

    .line 2
    .line 3
    const-string v1, "Attempting stopRecognition on invalid model with id:"

    .line 4
    .line 5
    const-string/jumbo v2, "stopGenericRecognition failed: "

    .line 6
    .line 7
    .line 8
    iget-object v3, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mLock:Ljava/lang/Object;

    .line 9
    .line 10
    monitor-enter v3

    .line 11
    :try_start_0
    iget-object v4, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mContext:Landroid/content/Context;

    .line 12
    .line 13
    const-string/jumbo v5, "sth_stop_recognition"

    .line 14
    .line 15
    .line 16
    const/4 v6, 0x1

    .line 17
    invoke-static {v4, v5, v6}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    .line 18
    .line 19
    .line 20
    const/high16 v4, -0x80000000

    .line 21
    .line 22
    if-eqz p2, :cond_5

    .line 23
    .line 24
    if-nez p1, :cond_0

    .line 25
    .line 26
    goto :goto_2

    .line 27
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mIsDetached:Z

    .line 28
    .line 29
    if-nez v0, :cond_4

    .line 30
    .line 31
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModelDataMap:Ljava/util/HashMap;

    .line 32
    .line 33
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    check-cast v0, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;

    .line 38
    .line 39
    if-eqz v0, :cond_3

    .line 40
    .line 41
    invoke-virtual {v0}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->isGenericModel()Z

    .line 42
    .line 43
    .line 44
    move-result v5

    .line 45
    if-nez v5, :cond_1

    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_1
    invoke-virtual {p0, v0, p2}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->stopRecognition(Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;Landroid/hardware/soundtrigger/IRecognitionStatusCallback;)I

    .line 49
    .line 50
    .line 51
    move-result p0

    .line 52
    if-eqz p0, :cond_2

    .line 53
    .line 54
    const-string p1, "SoundTriggerHelper"

    .line 55
    .line 56
    new-instance p2, Ljava/lang/StringBuilder;

    .line 57
    .line 58
    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p2

    .line 68
    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    .line 70
    .line 71
    goto :goto_0

    .line 72
    :catchall_0
    move-exception p0

    .line 73
    goto :goto_3

    .line 74
    :cond_2
    :goto_0
    monitor-exit v3

    .line 75
    return p0

    .line 76
    :cond_3
    :goto_1
    const-string p0, "SoundTriggerHelper"

    .line 77
    .line 78
    new-instance p2, Ljava/lang/StringBuilder;

    .line 79
    .line 80
    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    .line 92
    .line 93
    monitor-exit v3

    .line 94
    return v4

    .line 95
    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 96
    .line 97
    const-string p1, "SoundTriggerHelper has been detached"

    .line 98
    .line 99
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    throw p0

    .line 103
    :cond_5
    :goto_2
    const-string p0, "SoundTriggerHelper"

    .line 104
    .line 105
    new-instance p2, Ljava/lang/StringBuilder;

    .line 106
    .line 107
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    .line 119
    .line 120
    monitor-exit v3

    .line 121
    return v4

    .line 122
    :goto_3
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    throw p0
.end method

.method public final stopKeyphraseRecognition(ILandroid/hardware/soundtrigger/IRecognitionStatusCallback;)I
    .locals 6

    .line 1
    const-string v0, "No model exists for given keyphrase Id "

    .line 2
    .line 3
    const-string v1, "Null callback received for stopKeyphraseRecognition() for keyphraseId:"

    .line 4
    .line 5
    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mLock:Ljava/lang/Object;

    .line 6
    .line 7
    monitor-enter v2

    .line 8
    :try_start_0
    iget-object v3, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mContext:Landroid/content/Context;

    .line 9
    .line 10
    const-string/jumbo v4, "sth_stop_recognition"

    .line 11
    .line 12
    .line 13
    const/4 v5, 0x1

    .line 14
    invoke-static {v3, v4, v5}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    .line 15
    .line 16
    .line 17
    const/high16 v3, -0x80000000

    .line 18
    .line 19
    if-nez p2, :cond_0

    .line 20
    .line 21
    const-string p0, "SoundTriggerHelper"

    .line 22
    .line 23
    new-instance p2, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    monitor-exit v2

    .line 39
    return v3

    .line 40
    :catchall_0
    move-exception p0

    .line 41
    goto :goto_1

    .line 42
    :cond_0
    iget-boolean v1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mIsDetached:Z

    .line 43
    .line 44
    if-nez v1, :cond_4

    .line 45
    .line 46
    invoke-virtual {p0, p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->getKeyphraseModelDataLocked(I)Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    if-eqz v1, :cond_3

    .line 51
    .line 52
    invoke-virtual {v1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->isKeyphraseModel()Z

    .line 53
    .line 54
    .line 55
    move-result v4

    .line 56
    if-nez v4, :cond_1

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_1
    invoke-virtual {p0, v1, p2}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->stopRecognition(Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;Landroid/hardware/soundtrigger/IRecognitionStatusCallback;)I

    .line 60
    .line 61
    .line 62
    move-result p0

    .line 63
    if-eqz p0, :cond_2

    .line 64
    .line 65
    monitor-exit v2

    .line 66
    return p0

    .line 67
    :cond_2
    monitor-exit v2

    .line 68
    return p0

    .line 69
    :cond_3
    :goto_0
    const-string p0, "SoundTriggerHelper"

    .line 70
    .line 71
    new-instance p2, Ljava/lang/StringBuilder;

    .line 72
    .line 73
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    .line 85
    .line 86
    monitor-exit v2

    .line 87
    return v3

    .line 88
    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 89
    .line 90
    const-string p1, "SoundTriggerHelper has been detached"

    .line 91
    .line 92
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    throw p0

    .line 96
    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    throw p0
.end method

.method public final stopRecognition(Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;Landroid/hardware/soundtrigger/IRecognitionStatusCallback;)I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    const/high16 v1, -0x80000000

    .line 5
    .line 6
    if-nez p2, :cond_0

    .line 7
    .line 8
    :try_start_0
    monitor-exit v0

    .line 9
    return v1

    .line 10
    :catchall_0
    move-exception p0

    .line 11
    goto :goto_1

    .line 12
    :cond_0
    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;

    .line 13
    .line 14
    if-nez v2, :cond_1

    .line 15
    .line 16
    const-string p0, "SoundTriggerHelper"

    .line 17
    .line 18
    const-string p1, "Attempting stopRecognition after detach"

    .line 19
    .line 20
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    .line 22
    .line 23
    monitor-exit v0

    .line 24
    return v1

    .line 25
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->getCallback()Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    if-eqz v2, :cond_5

    .line 30
    .line 31
    monitor-enter p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    :try_start_1
    iget-boolean v3, p1, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->mRequested:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 33
    .line 34
    :try_start_2
    monitor-exit p1

    .line 35
    if-nez v3, :cond_2

    .line 36
    .line 37
    invoke-virtual {p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->isModelStarted()Z

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    if-nez v3, :cond_2

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_2
    invoke-interface {v2}, Landroid/hardware/soundtrigger/IRecognitionStatusCallback;->asBinder()Landroid/os/IBinder;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    invoke-interface {p2}, Landroid/hardware/soundtrigger/IRecognitionStatusCallback;->asBinder()Landroid/os/IBinder;

    .line 49
    .line 50
    .line 51
    move-result-object p2

    .line 52
    if-eq v2, p2, :cond_3

    .line 53
    .line 54
    const-string p0, "SoundTriggerHelper"

    .line 55
    .line 56
    const-string p1, "Attempting stopRecognition for another recognition"

    .line 57
    .line 58
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    .line 60
    .line 61
    monitor-exit v0

    .line 62
    return v1

    .line 63
    :cond_3
    const/4 p2, 0x0

    .line 64
    invoke-virtual {p1, p2}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->setRequested(Z)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0, p1, p2}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->updateRecognitionLocked(Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;Z)I

    .line 68
    .line 69
    .line 70
    move-result p0

    .line 71
    if-eqz p0, :cond_4

    .line 72
    .line 73
    monitor-exit v0

    .line 74
    return p0

    .line 75
    :cond_4
    monitor-enter p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 76
    const/4 p2, 0x1

    .line 77
    :try_start_3
    iput p2, p1, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->mModelState:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 78
    .line 79
    :try_start_4
    monitor-exit p1

    .line 80
    monitor-enter p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 81
    const/4 p2, 0x0

    .line 82
    :try_start_5
    iput-object p2, p1, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->mCallback:Landroid/hardware/soundtrigger/IRecognitionStatusCallback;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 83
    .line 84
    :try_start_6
    monitor-exit p1

    .line 85
    monitor-enter p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 86
    :try_start_7
    iput-object p2, p1, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->mRecognitionConfig:Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 87
    .line 88
    :try_start_8
    monitor-exit p1

    .line 89
    monitor-exit v0

    .line 90
    return p0

    .line 91
    :catchall_1
    move-exception p0

    .line 92
    monitor-exit p1

    .line 93
    throw p0

    .line 94
    :catchall_2
    move-exception p0

    .line 95
    monitor-exit p1

    .line 96
    throw p0

    .line 97
    :catchall_3
    move-exception p0

    .line 98
    monitor-exit p1

    .line 99
    throw p0

    .line 100
    :catchall_4
    move-exception p0

    .line 101
    monitor-exit p1

    .line 102
    throw p0

    .line 103
    :cond_5
    :goto_0
    const-string p0, "SoundTriggerHelper"

    .line 104
    .line 105
    const-string p1, "Attempting stopRecognition without a successful startRecognition"

    .line 106
    .line 107
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    .line 109
    .line 110
    monitor-exit v0

    .line 111
    return v1

    .line 112
    :goto_1
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 113
    throw p0
.end method

.method public final stopRecognitionLocked(Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;Z)I
    .locals 10

    .line 1
    sget-object v0, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;->PAUSE:Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;

    .line 2
    .line 3
    sget-object v1, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;->PAUSE_FAILED:Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;

    .line 6
    .line 7
    if-nez v2, :cond_0

    .line 8
    .line 9
    const/high16 p0, -0x80000000

    .line 10
    .line 11
    return p0

    .line 12
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->getCallback()Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    iget-object v3, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;

    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->getHandle()I

    .line 19
    .line 20
    .line 21
    move-result v4

    .line 22
    invoke-virtual {v3, v4}, Landroid/hardware/soundtrigger/SoundTriggerModule;->stopRecognition(I)I

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    const/4 v4, 0x1

    .line 27
    const/4 v5, 0x0

    .line 28
    const/4 v6, 0x2

    .line 29
    const-string v7, "SoundTriggerHelper"

    .line 30
    .line 31
    if-eqz v3, :cond_1

    .line 32
    .line 33
    const-string/jumbo v0, "stopRecognition call failed with "

    .line 34
    .line 35
    .line 36
    invoke-static {v3, v0, v7}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mContext:Landroid/content/Context;

    .line 40
    .line 41
    const-string/jumbo v8, "sth_stop_recognition_error"

    .line 42
    .line 43
    .line 44
    invoke-static {v0, v8, v4}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    .line 45
    .line 46
    .line 47
    if-eqz p2, :cond_2

    .line 48
    .line 49
    :try_start_0
    iget-object p2, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mEventLogger:Lcom/android/server/utils/EventLogger;

    .line 50
    .line 51
    new-instance v0, Lcom/android/server/soundtrigger/SoundTriggerEvent$ServiceEvent;

    .line 52
    .line 53
    invoke-virtual {p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->getModelId()Ljava/util/UUID;

    .line 54
    .line 55
    .line 56
    move-result-object v4

    .line 57
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v8

    .line 61
    invoke-direct {v0, v1, v4, v8}, Lcom/android/server/soundtrigger/SoundTriggerEvent$ServiceEvent;-><init>(Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;Ljava/util/UUID;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0, v6, v7}, Lcom/android/server/soundtrigger/SoundTriggerEvent$ServiceEvent;->printLog(ILjava/lang/String;)Lcom/android/server/utils/EventLogger$Event;

    .line 65
    .line 66
    .line 67
    invoke-virtual {p2, v0}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 68
    .line 69
    .line 70
    const/4 p2, 0x0

    .line 71
    invoke-virtual {p1, p2}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->setRequested(Z)V

    .line 72
    .line 73
    .line 74
    invoke-interface {v2, v3}, Landroid/hardware/soundtrigger/IRecognitionStatusCallback;->onPauseFailed(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    .line 76
    .line 77
    goto :goto_0

    .line 78
    :catch_0
    move-exception p2

    .line 79
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mEventLogger:Lcom/android/server/utils/EventLogger;

    .line 80
    .line 81
    new-instance v2, Lcom/android/server/soundtrigger/SoundTriggerEvent$ServiceEvent;

    .line 82
    .line 83
    invoke-virtual {p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->getModelId()Ljava/util/UUID;

    .line 84
    .line 85
    .line 86
    move-result-object v4

    .line 87
    new-instance v8, Ljava/lang/StringBuilder;

    .line 88
    .line 89
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 90
    .line 91
    .line 92
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v9

    .line 96
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    const-string v9, " - RemoteException"

    .line 100
    .line 101
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v8

    .line 108
    invoke-direct {v2, v1, v4, v8}, Lcom/android/server/soundtrigger/SoundTriggerEvent$ServiceEvent;-><init>(Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;Ljava/util/UUID;Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {v2, v6, v7}, Lcom/android/server/soundtrigger/SoundTriggerEvent$ServiceEvent;->printLog(ILjava/lang/String;)Lcom/android/server/utils/EventLogger$Event;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v0, v2}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {p0, p1, p2, v5}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->forceStopAndUnloadModelLocked(Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;Ljava/lang/Exception;Ljava/util/Iterator;)V

    .line 118
    .line 119
    .line 120
    goto :goto_0

    .line 121
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->setStopped()V

    .line 122
    .line 123
    .line 124
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mContext:Landroid/content/Context;

    .line 125
    .line 126
    const-string/jumbo v8, "sth_stop_recognition_success"

    .line 127
    .line 128
    .line 129
    invoke-static {v1, v8, v4}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    .line 130
    .line 131
    .line 132
    if-eqz p2, :cond_2

    .line 133
    .line 134
    :try_start_1
    iget-object p2, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mEventLogger:Lcom/android/server/utils/EventLogger;

    .line 135
    .line 136
    new-instance v1, Lcom/android/server/soundtrigger/SoundTriggerEvent$ServiceEvent;

    .line 137
    .line 138
    invoke-virtual {p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->getModelId()Ljava/util/UUID;

    .line 139
    .line 140
    .line 141
    move-result-object v4

    .line 142
    invoke-direct {v1, v0, v4, v5}, Lcom/android/server/soundtrigger/SoundTriggerEvent$ServiceEvent;-><init>(Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;Ljava/util/UUID;Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {p2, v1}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 146
    .line 147
    .line 148
    invoke-interface {v2}, Landroid/hardware/soundtrigger/IRecognitionStatusCallback;->onRecognitionPaused()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 149
    .line 150
    .line 151
    goto :goto_0

    .line 152
    :catch_1
    move-exception p2

    .line 153
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mEventLogger:Lcom/android/server/utils/EventLogger;

    .line 154
    .line 155
    new-instance v2, Lcom/android/server/soundtrigger/SoundTriggerEvent$ServiceEvent;

    .line 156
    .line 157
    invoke-virtual {p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->getModelId()Ljava/util/UUID;

    .line 158
    .line 159
    .line 160
    move-result-object v4

    .line 161
    const-string v8, "RemoteException"

    .line 162
    .line 163
    invoke-direct {v2, v0, v4, v8}, Lcom/android/server/soundtrigger/SoundTriggerEvent$ServiceEvent;-><init>(Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;Ljava/util/UUID;Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {v2, v6, v7}, Lcom/android/server/soundtrigger/SoundTriggerEvent$ServiceEvent;->printLog(ILjava/lang/String;)Lcom/android/server/utils/EventLogger$Event;

    .line 167
    .line 168
    .line 169
    invoke-virtual {v1, v2}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 170
    .line 171
    .line 172
    invoke-virtual {p0, p1, p2, v5}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->forceStopAndUnloadModelLocked(Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;Ljava/lang/Exception;Ljava/util/Iterator;)V

    .line 173
    .line 174
    .line 175
    :cond_2
    :goto_0
    return v3
.end method

.method public final tryStopAndUnloadLocked(Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;ZZ)I
    .locals 3

    .line 1
    monitor-enter p1

    .line 2
    :try_start_0
    iget v0, p1, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->mModelState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    const/4 v1, 0x1

    .line 5
    const/4 v2, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    move v0, v1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    move v0, v2

    .line 11
    :goto_0
    monitor-exit p1

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    return v2

    .line 15
    :cond_1
    if-eqz p2, :cond_2

    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->isModelStarted()Z

    .line 18
    .line 19
    .line 20
    move-result p2

    .line 21
    if-eqz p2, :cond_2

    .line 22
    .line 23
    invoke-virtual {p0, p1, v2}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->stopRecognitionLocked(Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;Z)I

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-eqz v2, :cond_2

    .line 28
    .line 29
    const-string p0, "SoundTriggerHelper"

    .line 30
    .line 31
    const-string/jumbo p1, "stopRecognition failed: "

    .line 32
    .line 33
    .line 34
    invoke-static {v2, p1, p0}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    return v2

    .line 38
    :cond_2
    if-eqz p3, :cond_5

    .line 39
    .line 40
    invoke-virtual {p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->isModelLoaded()Z

    .line 41
    .line 42
    .line 43
    move-result p2

    .line 44
    if-eqz p2, :cond_5

    .line 45
    .line 46
    const-string p2, "SoundTriggerHelper"

    .line 47
    .line 48
    const-string p3, "Unloading previously loaded stale model."

    .line 49
    .line 50
    invoke-static {p2, p3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    .line 52
    .line 53
    iget-object p2, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;

    .line 54
    .line 55
    if-nez p2, :cond_3

    .line 56
    .line 57
    const/high16 p0, -0x80000000

    .line 58
    .line 59
    return p0

    .line 60
    :cond_3
    invoke-virtual {p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->getHandle()I

    .line 61
    .line 62
    .line 63
    move-result p3

    .line 64
    invoke-virtual {p2, p3}, Landroid/hardware/soundtrigger/SoundTriggerModule;->unloadSoundModel(I)I

    .line 65
    .line 66
    .line 67
    move-result v2

    .line 68
    iget-object p0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mContext:Landroid/content/Context;

    .line 69
    .line 70
    const-string/jumbo p2, "sth_unloading_stale_model"

    .line 71
    .line 72
    .line 73
    invoke-static {p0, p2, v1}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    .line 74
    .line 75
    .line 76
    if-eqz v2, :cond_4

    .line 77
    .line 78
    const-string p0, "SoundTriggerHelper"

    .line 79
    .line 80
    const-string/jumbo p1, "unloadSoundModel call failed with "

    .line 81
    .line 82
    .line 83
    invoke-static {v2, p1, p0}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    goto :goto_1

    .line 87
    :cond_4
    invoke-virtual {p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->clearState()V

    .line 88
    .line 89
    .line 90
    :cond_5
    :goto_1
    return v2

    .line 91
    :catchall_0
    move-exception p0

    .line 92
    monitor-exit p1

    .line 93
    throw p0
.end method

.method public final unloadGenericSoundModel(Ljava/util/UUID;)I
    .locals 8

    .line 1
    const-string v0, "Unload error: Attempting unload invalid generic model with id:"

    .line 2
    .line 3
    const-string/jumbo v1, "unloadGenericSoundModel() call failed with "

    .line 4
    .line 5
    .line 6
    const-string/jumbo v2, "stopGenericRecognition failed: "

    .line 7
    .line 8
    .line 9
    const-string v3, "Unload: Given generic model is not loaded:"

    .line 10
    .line 11
    iget-object v4, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mLock:Ljava/lang/Object;

    .line 12
    .line 13
    monitor-enter v4

    .line 14
    :try_start_0
    iget-object v5, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mContext:Landroid/content/Context;

    .line 15
    .line 16
    const-string/jumbo v6, "sth_unload_generic_sound_model"

    .line 17
    .line 18
    .line 19
    const/4 v7, 0x1

    .line 20
    invoke-static {v5, v6, v7}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    .line 21
    .line 22
    .line 23
    const/high16 v5, -0x80000000

    .line 24
    .line 25
    if-eqz p1, :cond_8

    .line 26
    .line 27
    iget-object v6, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;

    .line 28
    .line 29
    if-nez v6, :cond_0

    .line 30
    .line 31
    goto/16 :goto_1

    .line 32
    .line 33
    :cond_0
    iget-boolean v6, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mIsDetached:Z

    .line 34
    .line 35
    if-nez v6, :cond_7

    .line 36
    .line 37
    iget-object v6, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModelDataMap:Ljava/util/HashMap;

    .line 38
    .line 39
    invoke-virtual {v6, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v6

    .line 43
    check-cast v6, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;

    .line 44
    .line 45
    if-eqz v6, :cond_6

    .line 46
    .line 47
    invoke-virtual {v6}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->isGenericModel()Z

    .line 48
    .line 49
    .line 50
    move-result v7

    .line 51
    if-nez v7, :cond_1

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_1
    invoke-virtual {v6}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->isModelLoaded()Z

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    const/4 v7, 0x0

    .line 59
    if-nez v0, :cond_2

    .line 60
    .line 61
    const-string p0, "SoundTriggerHelper"

    .line 62
    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    .line 64
    .line 65
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    .line 77
    .line 78
    monitor-exit v4

    .line 79
    return v7

    .line 80
    :catchall_0
    move-exception p0

    .line 81
    goto :goto_2

    .line 82
    :cond_2
    invoke-virtual {v6}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->isModelStarted()Z

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    if-eqz v0, :cond_3

    .line 87
    .line 88
    invoke-virtual {p0, v6, v7}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->stopRecognitionLocked(Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;Z)I

    .line 89
    .line 90
    .line 91
    move-result v0

    .line 92
    if-eqz v0, :cond_3

    .line 93
    .line 94
    const-string v3, "SoundTriggerHelper"

    .line 95
    .line 96
    new-instance v7, Ljava/lang/StringBuilder;

    .line 97
    .line 98
    invoke-direct {v7, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    .line 110
    .line 111
    :cond_3
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;

    .line 112
    .line 113
    if-nez v0, :cond_4

    .line 114
    .line 115
    monitor-exit v4

    .line 116
    return v5

    .line 117
    :cond_4
    invoke-virtual {v6}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->getHandle()I

    .line 118
    .line 119
    .line 120
    move-result v2

    .line 121
    invoke-virtual {v0, v2}, Landroid/hardware/soundtrigger/SoundTriggerModule;->unloadSoundModel(I)I

    .line 122
    .line 123
    .line 124
    move-result v0

    .line 125
    if-eqz v0, :cond_5

    .line 126
    .line 127
    const-string v2, "SoundTriggerHelper"

    .line 128
    .line 129
    new-instance v3, Ljava/lang/StringBuilder;

    .line 130
    .line 131
    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v1

    .line 141
    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    .line 143
    .line 144
    const-string v1, "SoundTriggerHelper"

    .line 145
    .line 146
    const-string/jumbo v2, "unloadGenericSoundModel() force-marking model as unloaded."

    .line 147
    .line 148
    .line 149
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    .line 151
    .line 152
    :cond_5
    iget-object p0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModelDataMap:Ljava/util/HashMap;

    .line 153
    .line 154
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    monitor-exit v4

    .line 158
    return v0

    .line 159
    :cond_6
    :goto_0
    const-string p0, "SoundTriggerHelper"

    .line 160
    .line 161
    new-instance v1, Ljava/lang/StringBuilder;

    .line 162
    .line 163
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object p1

    .line 173
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    .line 175
    .line 176
    monitor-exit v4

    .line 177
    return v5

    .line 178
    :cond_7
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 179
    .line 180
    const-string p1, "SoundTriggerHelper has been detached"

    .line 181
    .line 182
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 183
    .line 184
    .line 185
    throw p0

    .line 186
    :cond_8
    :goto_1
    monitor-exit v4

    .line 187
    return v5

    .line 188
    :goto_2
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 189
    throw p0
.end method

.method public final unloadKeyphraseSoundModel(I)I
    .locals 7

    .line 1
    const-string/jumbo v0, "unloadKeyphraseSoundModel call failed with "

    .line 2
    .line 3
    .line 4
    const-string v1, "Stop recognition failed for keyphrase ID:"

    .line 5
    .line 6
    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mLock:Ljava/lang/Object;

    .line 7
    .line 8
    monitor-enter v2

    .line 9
    :try_start_0
    iget-object v3, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mContext:Landroid/content/Context;

    .line 10
    .line 11
    const-string/jumbo v4, "sth_unload_keyphrase_sound_model"

    .line 12
    .line 13
    .line 14
    const/4 v5, 0x1

    .line 15
    invoke-static {v3, v4, v5}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->getKeyphraseModelDataLocked(I)Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    iget-object v4, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;

    .line 23
    .line 24
    if-eqz v4, :cond_5

    .line 25
    .line 26
    if-eqz v3, :cond_5

    .line 27
    .line 28
    invoke-virtual {v3}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->isModelLoaded()Z

    .line 29
    .line 30
    .line 31
    move-result v4

    .line 32
    if-eqz v4, :cond_5

    .line 33
    .line 34
    invoke-virtual {v3}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->isKeyphraseModel()Z

    .line 35
    .line 36
    .line 37
    move-result v4

    .line 38
    if-nez v4, :cond_0

    .line 39
    .line 40
    goto :goto_2

    .line 41
    :cond_0
    iget-boolean v4, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mIsDetached:Z

    .line 42
    .line 43
    if-nez v4, :cond_4

    .line 44
    .line 45
    const/4 v4, 0x0

    .line 46
    invoke-virtual {v3, v4}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->setRequested(Z)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0, v3, v4}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->updateRecognitionLocked(Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;Z)I

    .line 50
    .line 51
    .line 52
    move-result v4

    .line 53
    if-eqz v4, :cond_1

    .line 54
    .line 55
    const-string v5, "SoundTriggerHelper"

    .line 56
    .line 57
    new-instance v6, Ljava/lang/StringBuilder;

    .line 58
    .line 59
    invoke-direct {v6, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    invoke-static {v5, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    .line 71
    .line 72
    goto :goto_0

    .line 73
    :catchall_0
    move-exception p0

    .line 74
    goto :goto_3

    .line 75
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;

    .line 76
    .line 77
    invoke-virtual {v3}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->getHandle()I

    .line 78
    .line 79
    .line 80
    move-result v3

    .line 81
    invoke-virtual {v1, v3}, Landroid/hardware/soundtrigger/SoundTriggerModule;->unloadSoundModel(I)I

    .line 82
    .line 83
    .line 84
    move-result v1

    .line 85
    if-eqz v1, :cond_2

    .line 86
    .line 87
    const-string v3, "SoundTriggerHelper"

    .line 88
    .line 89
    new-instance v4, Ljava/lang/StringBuilder;

    .line 90
    .line 91
    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    .line 103
    .line 104
    :cond_2
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mKeyphraseUuidMap:Ljava/util/HashMap;

    .line 105
    .line 106
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 107
    .line 108
    .line 109
    move-result-object v3

    .line 110
    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    check-cast v0, Ljava/util/UUID;

    .line 115
    .line 116
    if-nez v0, :cond_3

    .line 117
    .line 118
    goto :goto_1

    .line 119
    :cond_3
    iget-object v3, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModelDataMap:Ljava/util/HashMap;

    .line 120
    .line 121
    invoke-virtual {v3, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    iget-object p0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mKeyphraseUuidMap:Ljava/util/HashMap;

    .line 125
    .line 126
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    :goto_1
    monitor-exit v2

    .line 134
    return v1

    .line 135
    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 136
    .line 137
    const-string p1, "SoundTriggerHelper has been detached"

    .line 138
    .line 139
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    throw p0

    .line 143
    :cond_5
    :goto_2
    monitor-exit v2

    .line 144
    const/high16 p0, -0x80000000

    .line 145
    .line 146
    return p0

    .line 147
    :goto_3
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 148
    throw p0
.end method

.method public final updateAllRecognitionsLocked()V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModelDataMap:Ljava/util/HashMap;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    check-cast v1, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;

    .line 27
    .line 28
    const/4 v2, 0x1

    .line 29
    invoke-virtual {p0, v1, v2}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->updateRecognitionLocked(Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;Z)I

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    return-void
.end method

.method public final updateRecognitionLocked(Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;Z)I
    .locals 9

    .line 1
    monitor-enter p1

    .line 2
    :try_start_0
    iget-boolean v0, p1, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->mRequested:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    .line 3
    .line 4
    monitor-exit p1

    .line 5
    const/4 v1, 0x1

    .line 6
    const/4 v2, 0x0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0, p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->isRecognitionAllowed(Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    move v0, v1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move v0, v2

    .line 18
    :goto_0
    invoke-virtual {p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->isModelStarted()Z

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    if-ne v0, v3, :cond_1

    .line 23
    .line 24
    return v2

    .line 25
    :cond_1
    if-eqz v0, :cond_10

    .line 26
    .line 27
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;

    .line 28
    .line 29
    const/4 v3, 0x0

    .line 30
    const/high16 v4, -0x80000000

    .line 31
    .line 32
    if-nez v0, :cond_2

    .line 33
    .line 34
    const-string v0, "SoundTriggerHelper"

    .line 35
    .line 36
    const-string/jumbo v5, "prepareForRecognition: cannot attach to sound trigger module"

    .line 37
    .line 38
    .line 39
    invoke-static {v0, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    .line 41
    .line 42
    move v5, v4

    .line 43
    goto/16 :goto_3

    .line 44
    .line 45
    :cond_2
    invoke-virtual {p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->isModelLoaded()Z

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    if-nez v0, :cond_8

    .line 50
    .line 51
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModelDataMap:Ljava/util/HashMap;

    .line 52
    .line 53
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 62
    .line 63
    .line 64
    move-result v5

    .line 65
    if-eqz v5, :cond_6

    .line 66
    .line 67
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v5

    .line 71
    check-cast v5, Ljava/util/Map$Entry;

    .line 72
    .line 73
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v5

    .line 77
    check-cast v5, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;

    .line 78
    .line 79
    invoke-virtual {v5}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->isModelLoaded()Z

    .line 80
    .line 81
    .line 82
    move-result v6

    .line 83
    if-nez v6, :cond_4

    .line 84
    .line 85
    goto :goto_1

    .line 86
    :cond_4
    invoke-virtual {v5}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->getCallback()Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    .line 87
    .line 88
    .line 89
    move-result-object v6

    .line 90
    if-eqz v6, :cond_5

    .line 91
    .line 92
    invoke-virtual {v5}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->getCallback()Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    .line 93
    .line 94
    .line 95
    move-result-object v6

    .line 96
    invoke-interface {v6}, Landroid/hardware/soundtrigger/IRecognitionStatusCallback;->asBinder()Landroid/os/IBinder;

    .line 97
    .line 98
    .line 99
    move-result-object v6

    .line 100
    if-eqz v6, :cond_3

    .line 101
    .line 102
    invoke-virtual {v5}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->getCallback()Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    .line 103
    .line 104
    .line 105
    move-result-object v6

    .line 106
    invoke-interface {v6}, Landroid/hardware/soundtrigger/IRecognitionStatusCallback;->asBinder()Landroid/os/IBinder;

    .line 107
    .line 108
    .line 109
    move-result-object v6

    .line 110
    invoke-interface {v6}, Landroid/os/IBinder;->pingBinder()Z

    .line 111
    .line 112
    .line 113
    move-result v6

    .line 114
    if-nez v6, :cond_3

    .line 115
    .line 116
    :cond_5
    new-instance v6, Ljava/lang/StringBuilder;

    .line 117
    .line 118
    const-string v7, "Removing model "

    .line 119
    .line 120
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v5}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->getHandle()I

    .line 124
    .line 125
    .line 126
    move-result v7

    .line 127
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    const-string v7, " that has no clients"

    .line 131
    .line 132
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v6

    .line 139
    const-string v7, "SoundTriggerHelper"

    .line 140
    .line 141
    invoke-static {v7, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    .line 143
    .line 144
    invoke-virtual {p0, v5, v3, v0}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->forceStopAndUnloadModelLocked(Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;Ljava/lang/Exception;Ljava/util/Iterator;)V

    .line 145
    .line 146
    .line 147
    goto :goto_1

    .line 148
    :cond_6
    filled-new-array {v2}, [I

    .line 149
    .line 150
    .line 151
    move-result-object v0

    .line 152
    iget-object v5, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;

    .line 153
    .line 154
    monitor-enter p1

    .line 155
    :try_start_1
    iget-object v6, p1, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->mSoundModel:Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 156
    .line 157
    monitor-exit p1

    .line 158
    invoke-virtual {v5, v6, v0}, Landroid/hardware/soundtrigger/SoundTriggerModule;->loadSoundModel(Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;[I)I

    .line 159
    .line 160
    .line 161
    move-result v5

    .line 162
    if-eqz v5, :cond_7

    .line 163
    .line 164
    const-string v0, "SoundTriggerHelper"

    .line 165
    .line 166
    const-string/jumbo v6, "prepareForRecognition: loadSoundModel failed with status: "

    .line 167
    .line 168
    .line 169
    invoke-static {v5, v6, v0}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    goto :goto_3

    .line 173
    :cond_7
    aget v0, v0, v2

    .line 174
    .line 175
    monitor-enter p1

    .line 176
    :try_start_2
    iput v0, p1, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->mModelHandle:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 177
    .line 178
    monitor-exit p1

    .line 179
    monitor-enter p1

    .line 180
    :try_start_3
    iput v1, p1, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->mModelState:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 181
    .line 182
    monitor-exit p1

    .line 183
    goto :goto_2

    .line 184
    :catchall_0
    move-exception p0

    .line 185
    monitor-exit p1

    .line 186
    throw p0

    .line 187
    :catchall_1
    move-exception p0

    .line 188
    monitor-exit p1

    .line 189
    throw p0

    .line 190
    :catchall_2
    move-exception p0

    .line 191
    monitor-exit p1

    .line 192
    throw p0

    .line 193
    :cond_8
    :goto_2
    move v5, v2

    .line 194
    :goto_3
    if-eqz v5, :cond_9

    .line 195
    .line 196
    const-string p0, "SoundTriggerHelper"

    .line 197
    .line 198
    const-string/jumbo p1, "startRecognition failed to prepare model for recognition"

    .line 199
    .line 200
    .line 201
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    .line 203
    .line 204
    return v5

    .line 205
    :cond_9
    invoke-virtual {p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->getCallback()Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    .line 206
    .line 207
    .line 208
    move-result-object v0

    .line 209
    monitor-enter p1

    .line 210
    :try_start_4
    iget-object v5, p1, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->mRecognitionConfig:Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    .line 211
    .line 212
    monitor-exit p1

    .line 213
    if-eqz v0, :cond_f

    .line 214
    .line 215
    invoke-virtual {p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->isModelLoaded()Z

    .line 216
    .line 217
    .line 218
    move-result v6

    .line 219
    if-eqz v6, :cond_f

    .line 220
    .line 221
    if-nez v5, :cond_a

    .line 222
    .line 223
    goto/16 :goto_6

    .line 224
    .line 225
    :cond_a
    invoke-virtual {p0, p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->isRecognitionAllowed(Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;)Z

    .line 226
    .line 227
    .line 228
    move-result v6

    .line 229
    if-nez v6, :cond_b

    .line 230
    .line 231
    const-string p1, "SoundTriggerHelper"

    .line 232
    .line 233
    const-string/jumbo p2, "startRecognition requested but not allowed."

    .line 234
    .line 235
    .line 236
    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    .line 238
    .line 239
    iget-object p0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mContext:Landroid/content/Context;

    .line 240
    .line 241
    const-string/jumbo p1, "sth_start_recognition_not_allowed"

    .line 242
    .line 243
    .line 244
    invoke-static {p0, p1, v1}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    .line 245
    .line 246
    .line 247
    goto/16 :goto_7

    .line 248
    .line 249
    :cond_b
    iget-object v6, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;

    .line 250
    .line 251
    if-nez v6, :cond_d

    .line 252
    .line 253
    :cond_c
    :goto_4
    move v2, v4

    .line 254
    goto/16 :goto_7

    .line 255
    .line 256
    :cond_d
    :try_start_5
    invoke-virtual {p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->getHandle()I

    .line 257
    .line 258
    .line 259
    move-result v4

    .line 260
    invoke-virtual {v6, v4, v5}, Landroid/hardware/soundtrigger/SoundTriggerModule;->startRecognitionWithToken(ILandroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;)Landroid/os/IBinder;

    .line 261
    .line 262
    .line 263
    move-result-object v4

    .line 264
    monitor-enter p1
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 265
    :try_start_6
    iput-object v4, p1, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->mRecognitionToken:Landroid/os/IBinder;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 266
    .line 267
    :try_start_7
    monitor-exit p1

    .line 268
    move v4, v2

    .line 269
    goto :goto_5

    .line 270
    :catchall_3
    move-exception v4

    .line 271
    monitor-exit p1

    .line 272
    throw v4
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    .line 273
    :catch_0
    move-exception v4

    .line 274
    invoke-static {v4}, Landroid/hardware/soundtrigger/SoundTrigger;->handleException(Ljava/lang/Exception;)I

    .line 275
    .line 276
    .line 277
    move-result v4

    .line 278
    :goto_5
    const/4 v5, 0x2

    .line 279
    if-eqz v4, :cond_e

    .line 280
    .line 281
    const-string v6, "SoundTriggerHelper"

    .line 282
    .line 283
    const-string/jumbo v7, "startRecognition failed with "

    .line 284
    .line 285
    .line 286
    invoke-static {v4, v7, v6}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 287
    .line 288
    .line 289
    iget-object v6, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mContext:Landroid/content/Context;

    .line 290
    .line 291
    const-string/jumbo v7, "sth_start_recognition_error"

    .line 292
    .line 293
    .line 294
    invoke-static {v6, v7, v1}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    .line 295
    .line 296
    .line 297
    if-eqz p2, :cond_c

    .line 298
    .line 299
    :try_start_8
    iget-object p2, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mEventLogger:Lcom/android/server/utils/EventLogger;

    .line 300
    .line 301
    new-instance v1, Lcom/android/server/soundtrigger/SoundTriggerEvent$ServiceEvent;

    .line 302
    .line 303
    sget-object v6, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;->RESUME_FAILED:Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;

    .line 304
    .line 305
    invoke-virtual {p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->getModelId()Ljava/util/UUID;

    .line 306
    .line 307
    .line 308
    move-result-object v7

    .line 309
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 310
    .line 311
    .line 312
    move-result-object v8

    .line 313
    invoke-direct {v1, v6, v7, v8}, Lcom/android/server/soundtrigger/SoundTriggerEvent$ServiceEvent;-><init>(Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;Ljava/util/UUID;Ljava/lang/String;)V

    .line 314
    .line 315
    .line 316
    const-string v6, "SoundTriggerHelper"

    .line 317
    .line 318
    invoke-virtual {v1, v5, v6}, Lcom/android/server/soundtrigger/SoundTriggerEvent$ServiceEvent;->printLog(ILjava/lang/String;)Lcom/android/server/utils/EventLogger$Event;

    .line 319
    .line 320
    .line 321
    invoke-virtual {p2, v1}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 322
    .line 323
    .line 324
    invoke-virtual {p1, v2}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->setRequested(Z)V

    .line 325
    .line 326
    .line 327
    invoke-interface {v0, v4}, Landroid/hardware/soundtrigger/IRecognitionStatusCallback;->onResumeFailed(I)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_1

    .line 328
    .line 329
    .line 330
    goto :goto_4

    .line 331
    :catch_1
    move-exception p2

    .line 332
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mEventLogger:Lcom/android/server/utils/EventLogger;

    .line 333
    .line 334
    new-instance v1, Lcom/android/server/soundtrigger/SoundTriggerEvent$ServiceEvent;

    .line 335
    .line 336
    sget-object v2, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;->RESUME_FAILED:Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;

    .line 337
    .line 338
    invoke-virtual {p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->getModelId()Ljava/util/UUID;

    .line 339
    .line 340
    .line 341
    move-result-object v6

    .line 342
    new-instance v7, Ljava/lang/StringBuilder;

    .line 343
    .line 344
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 345
    .line 346
    .line 347
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 348
    .line 349
    .line 350
    move-result-object v8

    .line 351
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 352
    .line 353
    .line 354
    const-string v8, " - RemoteException"

    .line 355
    .line 356
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 357
    .line 358
    .line 359
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 360
    .line 361
    .line 362
    move-result-object v7

    .line 363
    invoke-direct {v1, v2, v6, v7}, Lcom/android/server/soundtrigger/SoundTriggerEvent$ServiceEvent;-><init>(Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;Ljava/util/UUID;Ljava/lang/String;)V

    .line 364
    .line 365
    .line 366
    const-string v2, "SoundTriggerHelper"

    .line 367
    .line 368
    invoke-virtual {v1, v5, v2}, Lcom/android/server/soundtrigger/SoundTriggerEvent$ServiceEvent;->printLog(ILjava/lang/String;)Lcom/android/server/utils/EventLogger$Event;

    .line 369
    .line 370
    .line 371
    invoke-virtual {v0, v1}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 372
    .line 373
    .line 374
    invoke-virtual {p0, p1, p2, v3}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->forceStopAndUnloadModelLocked(Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;Ljava/lang/Exception;Ljava/util/Iterator;)V

    .line 375
    .line 376
    .line 377
    goto :goto_4

    .line 378
    :cond_e
    const-string v2, "SoundTriggerHelper"

    .line 379
    .line 380
    const-string/jumbo v6, "startRecognition successful."

    .line 381
    .line 382
    .line 383
    invoke-static {v2, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    .line 385
    .line 386
    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mContext:Landroid/content/Context;

    .line 387
    .line 388
    const-string/jumbo v6, "sth_start_recognition_success"

    .line 389
    .line 390
    .line 391
    invoke-static {v2, v6, v1}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    .line 392
    .line 393
    .line 394
    monitor-enter p1

    .line 395
    :try_start_9
    iput v5, p1, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->mModelState:I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 396
    .line 397
    monitor-exit p1

    .line 398
    if-eqz p2, :cond_c

    .line 399
    .line 400
    :try_start_a
    iget-object p2, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mEventLogger:Lcom/android/server/utils/EventLogger;

    .line 401
    .line 402
    new-instance v1, Lcom/android/server/soundtrigger/SoundTriggerEvent$ServiceEvent;

    .line 403
    .line 404
    sget-object v2, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;->RESUME:Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;

    .line 405
    .line 406
    invoke-virtual {p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->getModelId()Ljava/util/UUID;

    .line 407
    .line 408
    .line 409
    move-result-object v6

    .line 410
    invoke-direct {v1, v2, v6, v3}, Lcom/android/server/soundtrigger/SoundTriggerEvent$ServiceEvent;-><init>(Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;Ljava/util/UUID;Ljava/lang/String;)V

    .line 411
    .line 412
    .line 413
    invoke-virtual {p2, v1}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 414
    .line 415
    .line 416
    invoke-interface {v0}, Landroid/hardware/soundtrigger/IRecognitionStatusCallback;->onRecognitionResumed()V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_2

    .line 417
    .line 418
    .line 419
    goto/16 :goto_4

    .line 420
    .line 421
    :catch_2
    move-exception p2

    .line 422
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mEventLogger:Lcom/android/server/utils/EventLogger;

    .line 423
    .line 424
    new-instance v1, Lcom/android/server/soundtrigger/SoundTriggerEvent$ServiceEvent;

    .line 425
    .line 426
    sget-object v2, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;->RESUME:Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;

    .line 427
    .line 428
    invoke-virtual {p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->getModelId()Ljava/util/UUID;

    .line 429
    .line 430
    .line 431
    move-result-object v6

    .line 432
    const-string v7, "RemoteException"

    .line 433
    .line 434
    invoke-direct {v1, v2, v6, v7}, Lcom/android/server/soundtrigger/SoundTriggerEvent$ServiceEvent;-><init>(Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;Ljava/util/UUID;Ljava/lang/String;)V

    .line 435
    .line 436
    .line 437
    const-string v2, "SoundTriggerHelper"

    .line 438
    .line 439
    invoke-virtual {v1, v5, v2}, Lcom/android/server/soundtrigger/SoundTriggerEvent$ServiceEvent;->printLog(ILjava/lang/String;)Lcom/android/server/utils/EventLogger$Event;

    .line 440
    .line 441
    .line 442
    invoke-virtual {v0, v1}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 443
    .line 444
    .line 445
    invoke-virtual {p0, p1, p2, v3}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->forceStopAndUnloadModelLocked(Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;Ljava/lang/Exception;Ljava/util/Iterator;)V

    .line 446
    .line 447
    .line 448
    goto/16 :goto_4

    .line 449
    .line 450
    :catchall_4
    move-exception p0

    .line 451
    monitor-exit p1

    .line 452
    throw p0

    .line 453
    :cond_f
    :goto_6
    const-string p1, "SoundTriggerHelper"

    .line 454
    .line 455
    const-string/jumbo p2, "startRecognition: Bad data passed in."

    .line 456
    .line 457
    .line 458
    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    .line 460
    .line 461
    iget-object p0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mContext:Landroid/content/Context;

    .line 462
    .line 463
    const-string/jumbo p1, "sth_start_recognition_error"

    .line 464
    .line 465
    .line 466
    invoke-static {p0, p1, v1}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    .line 467
    .line 468
    .line 469
    goto/16 :goto_4

    .line 470
    .line 471
    :goto_7
    return v2

    .line 472
    :catchall_5
    move-exception p0

    .line 473
    monitor-exit p1

    .line 474
    throw p0

    .line 475
    :cond_10
    invoke-virtual {p0, p1, p2}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->stopRecognitionLocked(Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;Z)I

    .line 476
    .line 477
    .line 478
    move-result p0

    .line 479
    return p0

    .line 480
    :catchall_6
    move-exception p0

    .line 481
    monitor-exit p1

    .line 482
    throw p0
.end method
