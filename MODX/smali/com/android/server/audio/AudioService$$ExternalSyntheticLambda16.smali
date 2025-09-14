.class public final synthetic Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda16;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda16;->$r8$classId:I

    .line 3
    iput-object p2, p0, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda16;->f$0:Ljava/lang/Object;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 9

    .line 1
    iget v0, p0, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda16;->$r8$classId:I

    .line 3
    iget-object p0, p0, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda16;->f$0:Ljava/lang/Object;

    .line 5
    packed-switch v0, :pswitch_data_0

    .line 8
    check-cast p0, Landroid/media/audiopolicy/AudioMixingRule;

    .line 10
    check-cast p1, Landroid/media/audiopolicy/AudioMix;

    .line 12
    invoke-virtual {p1, p0}, Landroid/media/audiopolicy/AudioMix;->setAudioMixingRule(Landroid/media/audiopolicy/AudioMixingRule;)V

    .line 15
    return-void

    .line 16
    :pswitch_0
    check-cast p0, Lcom/android/server/audio/AudioService;

    .line 18
    check-cast p1, Ljava/lang/Boolean;

    .line 20
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mSpatializerHelper:Lcom/android/server/audio/SpatializerHelper;

    .line 22
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 25
    move-result v1

    .line 26
    monitor-enter v0

    .line 27
    :try_start_0
    const-string/jumbo v2, "setFoldState"

    .line 30
    invoke-virtual {v0, v2}, Lcom/android/server/audio/SpatializerHelper;->checkSpatializer(Ljava/lang/String;)Z

    .line 33
    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    if-nez v2, :cond_0

    .line 36
    monitor-exit v0

    .line 37
    goto :goto_1

    .line 38
    :cond_0
    :try_start_1
    iget-object v2, v0, Lcom/android/server/audio/SpatializerHelper;->mSpat:Landroid/media/ISpatializer;

    .line 40
    invoke-interface {v2, v1}, Landroid/media/ISpatializer;->setFoldState(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 43
    goto :goto_0

    .line 44
    :catchall_0
    move-exception p0

    .line 45
    goto :goto_3

    .line 46
    :catch_0
    move-exception v1

    .line 47
    :try_start_2
    const-string v2, "AS.SpatializerHelper"

    .line 49
    const-string v3, "Error calling setFoldState"

    .line 51
    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 54
    :goto_0
    monitor-exit v0

    .line 55
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 58
    move-result p1

    .line 59
    if-eqz p1, :cond_1

    .line 61
    const-string/jumbo p1, "on"

    .line 64
    goto :goto_2

    .line 65
    :cond_1
    const-string/jumbo p1, "off"

    .line 68
    :goto_2
    const-string/jumbo v0, "device_folded="

    .line 71
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 74
    move-result-object v6

    .line 75
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    .line 77
    const/4 v3, 0x0

    .line 78
    const/4 v4, 0x0

    .line 79
    const/16 v2, 0x31

    .line 81
    const/4 v5, 0x0

    .line 82
    const/4 v7, 0x0

    .line 83
    invoke-static/range {v1 .. v7}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 86
    return-void

    .line 87
    :goto_3
    monitor-exit v0

    .line 88
    throw p0

    .line 89
    :pswitch_1
    check-cast p0, Lcom/android/server/audio/AudioService;

    .line 91
    check-cast p1, Ljava/lang/Integer;

    .line 93
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mSpatializerHelper:Lcom/android/server/audio/SpatializerHelper;

    .line 95
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 98
    move-result v1

    .line 99
    int-to-double v1, v1

    .line 100
    const-wide v3, 0x400921fb54442d18L    # Math.PI

    .line 105
    mul-double/2addr v1, v3

    .line 106
    const-wide v3, 0x4066800000000000L    # 180.0

    .line 111
    div-double/2addr v1, v3

    .line 112
    double-to-float v1, v1

    .line 113
    monitor-enter v0

    .line 114
    :try_start_3
    const-string/jumbo v2, "setDisplayOrientation"

    .line 117
    invoke-virtual {v0, v2}, Lcom/android/server/audio/SpatializerHelper;->checkSpatializer(Ljava/lang/String;)Z

    .line 120
    move-result v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 121
    if-nez v2, :cond_2

    .line 123
    monitor-exit v0

    .line 124
    goto :goto_5

    .line 125
    :cond_2
    :try_start_4
    iget-object v2, v0, Lcom/android/server/audio/SpatializerHelper;->mSpat:Landroid/media/ISpatializer;

    .line 127
    invoke-interface {v2, v1}, Landroid/media/ISpatializer;->setDisplayOrientation(F)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 130
    goto :goto_4

    .line 131
    :catchall_1
    move-exception p0

    .line 132
    goto :goto_6

    .line 133
    :catch_1
    move-exception v1

    .line 134
    :try_start_5
    const-string v2, "AS.SpatializerHelper"

    .line 136
    const-string v3, "Error calling setDisplayOrientation"

    .line 138
    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 141
    :goto_4
    monitor-exit v0

    .line 142
    :goto_5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 144
    const-string/jumbo v1, "rotation="

    .line 147
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 150
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 153
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 156
    move-result-object v7

    .line 157
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    .line 159
    const/4 v4, 0x0

    .line 160
    const/4 v5, 0x0

    .line 161
    const/16 v3, 0x30

    .line 163
    const/4 v6, 0x0

    .line 164
    const/4 v8, 0x0

    .line 165
    invoke-static/range {v2 .. v8}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 168
    return-void

    .line 169
    :goto_6
    monitor-exit v0

    .line 170
    throw p0

    .line 171
    :pswitch_2
    check-cast p0, Lcom/android/server/audio/AudioService;

    .line 173
    check-cast p1, Landroid/media/AudioDeviceAttributes;

    .line 175
    const-string/jumbo v0, "muteAwaitConnection timeout, clearing expected device "

    .line 178
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mMuteAwaitConnectionLock:Ljava/lang/Object;

    .line 180
    monitor-enter v1

    .line 181
    :try_start_6
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mMutingExpectedDevice:Landroid/media/AudioDeviceAttributes;

    .line 183
    invoke-virtual {p1, v2}, Landroid/media/AudioDeviceAttributes;->equals(Ljava/lang/Object;)Z

    .line 186
    move-result v2

    .line 187
    if-nez v2, :cond_3

    .line 189
    monitor-exit v1

    .line 190
    goto :goto_7

    .line 191
    :catchall_2
    move-exception p0

    .line 192
    goto :goto_8

    .line 193
    :cond_3
    const-string v2, "AS.AudioService"

    .line 195
    new-instance v3, Ljava/lang/StringBuilder;

    .line 197
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 200
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mMutingExpectedDevice:Landroid/media/AudioDeviceAttributes;

    .line 202
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 205
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 208
    move-result-object v0

    .line 209
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mMutedUsagesAwaitingConnection:[I

    .line 214
    const/4 v2, 0x0

    .line 215
    iput-object v2, p0, Lcom/android/server/audio/AudioService;->mMutingExpectedDevice:Landroid/media/AudioDeviceAttributes;

    .line 217
    iput-object v2, p0, Lcom/android/server/audio/AudioService;->mMutedUsagesAwaitingConnection:[I

    .line 219
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 220
    new-instance v1, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda19;

    .line 222
    invoke-direct {v1, p1, v0}, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda19;-><init>(Landroid/media/AudioDeviceAttributes;[I)V

    .line 225
    invoke-virtual {p0, v1}, Lcom/android/server/audio/AudioService;->dispatchMuteAwaitConnection(Ljava/util/function/BiConsumer;)V

    .line 228
    :goto_7
    return-void

    .line 229
    :goto_8
    :try_start_7
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 230
    throw p0

    .line 231
    :pswitch_3
    check-cast p0, Lcom/android/server/audio/AudioService;

    .line 233
    check-cast p1, Landroid/media/PlayerBase;

    .line 235
    sget p1, Lcom/android/server/audio/AudioService;->BECOMING_NOISY_DELAY_MS:I

    .line 237
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 240
    return-void

    .line 241
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
