.class public final synthetic Lcom/android/server/hdmi/HdmiEarcController$EarcAidlCallback$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/hdmi/HdmiEarcController$EarcAidlCallback;

.field public final synthetic f$1:B

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/hdmi/HdmiEarcController$EarcAidlCallback;BI)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiEarcController$EarcAidlCallback$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/hdmi/HdmiEarcController$EarcAidlCallback;

    .line 6
    iput-byte p2, p0, Lcom/android/server/hdmi/HdmiEarcController$EarcAidlCallback$$ExternalSyntheticLambda0;->f$1:B

    .line 8
    iput p3, p0, Lcom/android/server/hdmi/HdmiEarcController$EarcAidlCallback$$ExternalSyntheticLambda0;->f$2:I

    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiEarcController$EarcAidlCallback$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/hdmi/HdmiEarcController$EarcAidlCallback;

    .line 3
    iget-byte v1, p0, Lcom/android/server/hdmi/HdmiEarcController$EarcAidlCallback$$ExternalSyntheticLambda0;->f$1:B

    .line 5
    iget p0, p0, Lcom/android/server/hdmi/HdmiEarcController$EarcAidlCallback$$ExternalSyntheticLambda0;->f$2:I

    .line 7
    iget-object v0, v0, Lcom/android/server/hdmi/HdmiEarcController$EarcAidlCallback;->this$0:Lcom/android/server/hdmi/HdmiEarcController;

    .line 9
    iget-object v0, v0, Lcom/android/server/hdmi/HdmiEarcController;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 11
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    .line 14
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    .line 17
    iget-object v2, v0, Lcom/android/server/hdmi/HdmiControlService;->mEarcLocalDevice:Lcom/android/server/hdmi/HdmiEarcLocalDevice;

    .line 19
    if-eqz v2, :cond_0

    .line 21
    iget-object v2, v0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    .line 23
    monitor-enter v2

    .line 24
    :try_start_0
    iget-object v3, v0, Lcom/android/server/hdmi/HdmiControlService;->mEarcLocalDevice:Lcom/android/server/hdmi/HdmiEarcLocalDevice;

    .line 26
    iget v3, v3, Lcom/android/server/hdmi/HdmiEarcLocalDevice;->mEarcStatus:I

    .line 28
    monitor-exit v2

    .line 29
    goto :goto_0

    .line 30
    :catchall_0
    move-exception p0

    .line 31
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    throw p0

    .line 33
    :cond_0
    const/4 v3, -0x1

    .line 34
    :goto_0
    iget-object v2, v0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecNetwork:Lcom/android/server/hdmi/HdmiCecNetwork;

    .line 36
    invoke-virtual {v2, p0}, Lcom/android/server/hdmi/HdmiCecNetwork;->getPortInfo(I)Landroid/hardware/hdmi/HdmiPortInfo;

    .line 39
    move-result-object p0

    .line 40
    invoke-virtual {p0}, Landroid/hardware/hdmi/HdmiPortInfo;->isEarcSupported()Z

    .line 43
    move-result p0

    .line 44
    const/4 v2, 0x3

    .line 45
    if-nez p0, :cond_1

    .line 47
    const-string p0, "HdmiControlService"

    .line 49
    const-string v4, "Tried to update eARC status on a port that doesn\'t support eARC."

    .line 51
    invoke-static {p0, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->getAtomWriter()Lcom/android/server/hdmi/HdmiCecAtomWriter;

    .line 57
    move-result-object p0

    .line 58
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->isEarcSupported()Z

    .line 61
    move-result v4

    .line 62
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->isEarcEnabled()Z

    .line 65
    move-result v0

    .line 66
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 69
    invoke-static {v3, v1, v2, v4, v0}, Lcom/android/server/hdmi/HdmiCecAtomWriter;->earcStatusChanged(IIIZZ)V

    .line 72
    goto/16 :goto_2

    .line 74
    :cond_1
    iget-object p0, v0, Lcom/android/server/hdmi/HdmiControlService;->mEarcLocalDevice:Lcom/android/server/hdmi/HdmiEarcLocalDevice;

    .line 76
    const/4 v4, 0x2

    .line 77
    const/4 v5, 0x0

    .line 78
    if-eqz p0, :cond_7

    .line 80
    check-cast p0, Lcom/android/server/hdmi/HdmiEarcLocalDeviceTx;

    .line 82
    iget-object v6, p0, Lcom/android/server/hdmi/HdmiLocalDevice;->mLock:Ljava/lang/Object;

    .line 84
    monitor-enter v6

    .line 85
    :try_start_1
    const-string/jumbo v7, "eARC state change [old: %s(%d) new: %s(%d)]"

    .line 88
    iget v8, p0, Lcom/android/server/hdmi/HdmiEarcLocalDevice;->mEarcStatus:I

    .line 90
    sget-object v9, Lcom/android/server/hdmi/HdmiEarcLocalDeviceTx;->earcStatusNames:[Ljava/lang/String;

    .line 92
    aget-object v10, v9, v8

    .line 94
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 97
    move-result-object v8

    .line 98
    aget-object v9, v9, v1

    .line 100
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 103
    move-result-object v11

    .line 104
    filled-new-array {v10, v8, v9, v11}, [Ljava/lang/Object;

    .line 107
    move-result-object v8

    .line 108
    invoke-static {v7, v8}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 111
    iget v7, p0, Lcom/android/server/hdmi/HdmiEarcLocalDevice;->mEarcStatus:I

    .line 113
    iput v1, p0, Lcom/android/server/hdmi/HdmiEarcLocalDevice;->mEarcStatus:I

    .line 115
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 116
    iget-object v6, p0, Lcom/android/server/hdmi/HdmiEarcLocalDeviceTx;->mReportCapsHandler:Landroid/os/Handler;

    .line 118
    const/4 v8, 0x0

    .line 119
    invoke-virtual {v6, v8}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 122
    if-nez v1, :cond_2

    .line 124
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 126
    new-instance v6, Ljava/util/ArrayList;

    .line 128
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 131
    invoke-virtual {v2, v6, v5}, Lcom/android/server/hdmi/HdmiControlService;->notifyEarcStatusToAudioService(Ljava/util/List;Z)V

    .line 134
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 136
    invoke-virtual {p0, v5, v8}, Lcom/android/server/hdmi/HdmiControlService;->startArcAction(ZLcom/android/server/hdmi/HdmiControlService$35;)V

    .line 139
    goto :goto_1

    .line 140
    :cond_2
    const/4 v6, 0x1

    .line 141
    if-ne v1, v4, :cond_3

    .line 143
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 145
    new-instance v7, Ljava/util/ArrayList;

    .line 147
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 150
    invoke-virtual {v2, v7, v5}, Lcom/android/server/hdmi/HdmiControlService;->notifyEarcStatusToAudioService(Ljava/util/List;Z)V

    .line 153
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 155
    invoke-virtual {p0, v6, v8}, Lcom/android/server/hdmi/HdmiControlService;->startArcAction(ZLcom/android/server/hdmi/HdmiControlService$35;)V

    .line 158
    goto :goto_1

    .line 159
    :cond_3
    if-ne v1, v6, :cond_4

    .line 161
    if-ne v7, v4, :cond_4

    .line 163
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 165
    invoke-virtual {p0, v5, v8}, Lcom/android/server/hdmi/HdmiControlService;->startArcAction(ZLcom/android/server/hdmi/HdmiControlService$35;)V

    .line 168
    goto :goto_1

    .line 169
    :cond_4
    if-ne v1, v2, :cond_6

    .line 171
    if-ne v7, v4, :cond_5

    .line 173
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 175
    invoke-virtual {v2, v5, v8}, Lcom/android/server/hdmi/HdmiControlService;->startArcAction(ZLcom/android/server/hdmi/HdmiControlService$35;)V

    .line 178
    :cond_5
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiEarcLocalDeviceTx;->mReportCapsHandler:Landroid/os/Handler;

    .line 180
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiEarcLocalDeviceTx;->mReportCapsRunnable:Lcom/android/server/hdmi/HdmiEarcLocalDeviceTx$ReportCapsRunnable;

    .line 182
    const-wide/16 v5, 0x7d0

    .line 184
    invoke-virtual {v2, p0, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 187
    :cond_6
    :goto_1
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->getAtomWriter()Lcom/android/server/hdmi/HdmiCecAtomWriter;

    .line 190
    move-result-object p0

    .line 191
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->isEarcSupported()Z

    .line 194
    move-result v2

    .line 195
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->isEarcEnabled()Z

    .line 198
    move-result v0

    .line 199
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 202
    invoke-static {v3, v1, v4, v2, v0}, Lcom/android/server/hdmi/HdmiCecAtomWriter;->earcStatusChanged(IIIZZ)V

    .line 205
    goto :goto_2

    .line 206
    :catchall_1
    move-exception p0

    .line 207
    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 208
    throw p0

    .line 209
    :cond_7
    if-ne v1, v4, :cond_8

    .line 211
    const-string/jumbo p0, "eARC state change [new: HDMI_EARC_STATUS_ARC_PENDING(2)]"

    .line 214
    new-array v2, v5, [Ljava/lang/Object;

    .line 216
    invoke-static {p0, v2}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 219
    new-instance p0, Ljava/util/ArrayList;

    .line 221
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 224
    invoke-virtual {v0, p0, v5}, Lcom/android/server/hdmi/HdmiControlService;->notifyEarcStatusToAudioService(Ljava/util/List;Z)V

    .line 227
    iget-object p0, v0, Lcom/android/server/hdmi/HdmiControlService;->mHandler:Landroid/os/Handler;

    .line 229
    new-instance v2, Lcom/android/server/hdmi/HdmiControlService$30;

    .line 231
    const/4 v5, 0x2

    .line 232
    invoke-direct {v2, v0, v5}, Lcom/android/server/hdmi/HdmiControlService$30;-><init>(Lcom/android/server/hdmi/HdmiControlService;I)V

    .line 235
    const-wide/16 v5, 0x1f4

    .line 237
    invoke-virtual {p0, v2, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 240
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->getAtomWriter()Lcom/android/server/hdmi/HdmiCecAtomWriter;

    .line 243
    move-result-object p0

    .line 244
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->isEarcSupported()Z

    .line 247
    move-result v2

    .line 248
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->isEarcEnabled()Z

    .line 251
    move-result v0

    .line 252
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 255
    invoke-static {v3, v1, v4, v2, v0}, Lcom/android/server/hdmi/HdmiCecAtomWriter;->earcStatusChanged(IIIZZ)V

    .line 258
    goto :goto_2

    .line 259
    :cond_8
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->getAtomWriter()Lcom/android/server/hdmi/HdmiCecAtomWriter;

    .line 262
    move-result-object p0

    .line 263
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->isEarcSupported()Z

    .line 266
    move-result v2

    .line 267
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->isEarcEnabled()Z

    .line 270
    move-result v0

    .line 271
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 274
    const/4 p0, 0x4

    .line 275
    invoke-static {v3, v1, p0, v2, v0}, Lcom/android/server/hdmi/HdmiCecAtomWriter;->earcStatusChanged(IIIZZ)V

    .line 278
    :goto_2
    return-void
.end method
