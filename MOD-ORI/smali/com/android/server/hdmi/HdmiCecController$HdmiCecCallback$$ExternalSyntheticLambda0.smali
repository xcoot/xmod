.class public final synthetic Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback;

.field public final synthetic f$1:I

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback;IZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback;

    .line 5
    .line 6
    iput p2, p0, Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback$$ExternalSyntheticLambda0;->f$1:I

    .line 7
    .line 8
    iput-boolean p3, p0, Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback$$ExternalSyntheticLambda0;->f$2:Z

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback;

    .line 2
    .line 3
    iget v1, p0, Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback$$ExternalSyntheticLambda0;->f$1:I

    .line 4
    .line 5
    iget-boolean p0, p0, Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback$$ExternalSyntheticLambda0;->f$2:Z

    .line 6
    .line 7
    iget-object v0, v0, Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback;->this$0:Lcom/android/server/hdmi/HdmiCecController;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecController;->assertRunOnServiceThread()V

    .line 10
    .line 11
    .line 12
    const-string v2, "Hotplug event:[port:%d, connected:%b]"

    .line 13
    .line 14
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 19
    .line 20
    .line 21
    move-result-object v4

    .line 22
    filled-new-array {v3, v4}, [Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    invoke-static {v2, v3}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecController;->assertRunOnServiceThread()V

    .line 30
    .line 31
    .line 32
    new-instance v2, Lcom/android/server/hdmi/HdmiCecController$HotplugHistoryRecord;

    .line 33
    .line 34
    invoke-direct {v2, v1, p0}, Lcom/android/server/hdmi/HdmiCecController$HotplugHistoryRecord;-><init>(IZ)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, v2}, Lcom/android/server/hdmi/HdmiCecController;->addEventToHistory(Lcom/android/server/hdmi/HdmiCecController$Dumpable;)V

    .line 38
    .line 39
    .line 40
    iget-object v0, v0, Lcom/android/server/hdmi/HdmiCecController;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 41
    .line 42
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    .line 43
    .line 44
    .line 45
    iget-object v2, v0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecNetwork:Lcom/android/server/hdmi/HdmiCecNetwork;

    .line 46
    .line 47
    invoke-virtual {v2}, Lcom/android/server/hdmi/HdmiCecNetwork;->initPortInfo()V

    .line 48
    .line 49
    .line 50
    iget-object v2, v0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecNetwork:Lcom/android/server/hdmi/HdmiCecNetwork;

    .line 51
    .line 52
    invoke-virtual {v2, v1}, Lcom/android/server/hdmi/HdmiCecNetwork;->getPortInfo(I)Landroid/hardware/hdmi/HdmiPortInfo;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    if-eqz p0, :cond_3

    .line 57
    .line 58
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->isTvDevice()Z

    .line 59
    .line 60
    .line 61
    move-result v3

    .line 62
    if-nez v3, :cond_3

    .line 63
    .line 64
    if-eqz v2, :cond_3

    .line 65
    .line 66
    invoke-virtual {v2}, Landroid/hardware/hdmi/HdmiPortInfo;->getType()I

    .line 67
    .line 68
    .line 69
    move-result v2

    .line 70
    const/4 v3, 0x1

    .line 71
    if-ne v2, v3, :cond_3

    .line 72
    .line 73
    new-instance v2, Ljava/util/ArrayList;

    .line 74
    .line 75
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->getCecLocalDeviceTypes()Ljava/util/List;

    .line 79
    .line 80
    .line 81
    move-result-object v4

    .line 82
    check-cast v4, Ljava/util/ArrayList;

    .line 83
    .line 84
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 85
    .line 86
    .line 87
    move-result-object v4

    .line 88
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 89
    .line 90
    .line 91
    move-result v5

    .line 92
    if-eqz v5, :cond_2

    .line 93
    .line 94
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v5

    .line 98
    check-cast v5, Ljava/lang/Integer;

    .line 99
    .line 100
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 101
    .line 102
    .line 103
    move-result v5

    .line 104
    iget-object v6, v0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecNetwork:Lcom/android/server/hdmi/HdmiCecNetwork;

    .line 105
    .line 106
    invoke-virtual {v6, v5}, Lcom/android/server/hdmi/HdmiCecNetwork;->getLocalDevice(I)Lcom/android/server/hdmi/HdmiCecLocalDevice;

    .line 107
    .line 108
    .line 109
    move-result-object v6

    .line 110
    if-nez v6, :cond_1

    .line 111
    .line 112
    invoke-static {v0, v5}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->create(Lcom/android/server/hdmi/HdmiControlService;I)Lcom/android/server/hdmi/HdmiCecLocalDevice;

    .line 113
    .line 114
    .line 115
    move-result-object v6

    .line 116
    invoke-virtual {v6}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 117
    .line 118
    .line 119
    invoke-virtual {v6}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getPreferredAddress()I

    .line 120
    .line 121
    .line 122
    move-result v5

    .line 123
    iput v5, v6, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mPreferredAddress:I

    .line 124
    .line 125
    iget-object v5, v6, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mHandler:Lcom/android/server/hdmi/HdmiCecLocalDevice$1;

    .line 126
    .line 127
    invoke-virtual {v5, v3}, Landroid/os/Handler;->hasMessages(I)Z

    .line 128
    .line 129
    .line 130
    move-result v7

    .line 131
    if-eqz v7, :cond_0

    .line 132
    .line 133
    invoke-virtual {v5, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {v6}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->handleDisableDeviceTimeout()V

    .line 137
    .line 138
    .line 139
    :cond_0
    const/4 v5, 0x0

    .line 140
    iput-object v5, v6, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mPendingActionClearedCallback:Lcom/android/server/hdmi/HdmiCecLocalDevice$4;

    .line 141
    .line 142
    :cond_1
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 143
    .line 144
    .line 145
    goto :goto_0

    .line 146
    :cond_2
    const/4 v3, 0x4

    .line 147
    invoke-virtual {v0, v2, v3}, Lcom/android/server/hdmi/HdmiControlService;->allocateLogicalAddress(Ljava/util/ArrayList;I)V

    .line 148
    .line 149
    .line 150
    :cond_3
    iget-object v2, v0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecNetwork:Lcom/android/server/hdmi/HdmiCecNetwork;

    .line 151
    .line 152
    invoke-virtual {v2}, Lcom/android/server/hdmi/HdmiCecNetwork;->getLocalDeviceList()Ljava/util/List;

    .line 153
    .line 154
    .line 155
    move-result-object v2

    .line 156
    check-cast v2, Ljava/util/ArrayList;

    .line 157
    .line 158
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 159
    .line 160
    .line 161
    move-result-object v2

    .line 162
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 163
    .line 164
    .line 165
    move-result v3

    .line 166
    if-eqz v3, :cond_4

    .line 167
    .line 168
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 169
    .line 170
    .line 171
    move-result-object v3

    .line 172
    check-cast v3, Lcom/android/server/hdmi/HdmiCecLocalDevice;

    .line 173
    .line 174
    invoke-virtual {v3, v1, p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->onHotplug(IZ)V

    .line 175
    .line 176
    .line 177
    goto :goto_1

    .line 178
    :cond_4
    new-instance v2, Landroid/hardware/hdmi/HdmiHotplugEvent;

    .line 179
    .line 180
    invoke-direct {v2, v1, p0}, Landroid/hardware/hdmi/HdmiHotplugEvent;-><init>(IZ)V

    .line 181
    .line 182
    .line 183
    iget-object p0, v0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    .line 184
    .line 185
    monitor-enter p0

    .line 186
    :try_start_0
    iget-object v0, v0, Lcom/android/server/hdmi/HdmiControlService;->mHotplugEventListenerRecords:Ljava/util/ArrayList;

    .line 187
    .line 188
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 189
    .line 190
    .line 191
    move-result-object v0

    .line 192
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 193
    .line 194
    .line 195
    move-result v1

    .line 196
    if-eqz v1, :cond_5

    .line 197
    .line 198
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 199
    .line 200
    .line 201
    move-result-object v1

    .line 202
    check-cast v1, Lcom/android/server/hdmi/HdmiControlService$HotplugEventListenerRecord;

    .line 203
    .line 204
    iget-object v1, v1, Lcom/android/server/hdmi/HdmiControlService$HotplugEventListenerRecord;->mListener:Landroid/hardware/hdmi/IHdmiHotplugEventListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 205
    .line 206
    :try_start_1
    invoke-interface {v1, v2}, Landroid/hardware/hdmi/IHdmiHotplugEventListener;->onReceived(Landroid/hardware/hdmi/HdmiHotplugEvent;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 207
    .line 208
    .line 209
    goto :goto_2

    .line 210
    :catch_0
    move-exception v1

    .line 211
    :try_start_2
    new-instance v3, Ljava/lang/StringBuilder;

    .line 212
    .line 213
    const-string v4, "Failed to report hotplug event:"

    .line 214
    .line 215
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 216
    .line 217
    .line 218
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object v4

    .line 222
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    .line 224
    .line 225
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    move-result-object v3

    .line 229
    const-string v4, "HdmiControlService"

    .line 230
    .line 231
    invoke-static {v4, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 232
    .line 233
    .line 234
    goto :goto_2

    .line 235
    :catchall_0
    move-exception v0

    .line 236
    goto :goto_3

    .line 237
    :cond_5
    monitor-exit p0

    .line 238
    return-void

    .line 239
    :goto_3
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 240
    throw v0
.end method
