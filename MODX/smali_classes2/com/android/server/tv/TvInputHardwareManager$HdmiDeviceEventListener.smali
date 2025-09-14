.class public final Lcom/android/server/tv/TvInputHardwareManager$HdmiDeviceEventListener;
.super Landroid/hardware/hdmi/IHdmiDeviceEventListener$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/tv/TvInputHardwareManager;


# direct methods
.method public constructor <init>(Lcom/android/server/tv/TvInputHardwareManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/tv/TvInputHardwareManager$HdmiDeviceEventListener;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/hardware/hdmi/IHdmiDeviceEventListener$Stub;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final findHdmiDeviceInfo(I)Landroid/hardware/hdmi/HdmiDeviceInfo;
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/tv/TvInputHardwareManager$HdmiDeviceEventListener;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHdmiDeviceList:Ljava/util/List;

    .line 4
    .line 5
    check-cast p0, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

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
    check-cast v0, Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 22
    .line 23
    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getId()I

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

.method public final onStatusChanged(Landroid/hardware/hdmi/HdmiDeviceInfo;I)V
    .locals 6

    .line 1
    const-string v0, "The list already contains "

    .line 2
    .line 3
    const-string v1, "The list doesn\'t contain "

    .line 4
    .line 5
    const-string v2, "The list doesn\'t contain "

    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->isSourceType()Z

    .line 8
    .line 9
    .line 10
    move-result v3

    .line 11
    if-nez v3, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    iget-object v3, p0, Lcom/android/server/tv/TvInputHardwareManager$HdmiDeviceEventListener;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    .line 15
    .line 16
    iget-object v3, v3, Lcom/android/server/tv/TvInputHardwareManager;->mLock:Ljava/lang/Object;

    .line 17
    .line 18
    monitor-enter v3

    .line 19
    const/4 v4, 0x1

    .line 20
    const/4 v5, 0x0

    .line 21
    if-eq p2, v4, :cond_5

    .line 22
    .line 23
    const/4 v0, 0x2

    .line 24
    if-eq p2, v0, :cond_3

    .line 25
    .line 26
    const/4 v0, 0x3

    .line 27
    if-eq p2, v0, :cond_1

    .line 28
    .line 29
    const/4 p2, 0x0

    .line 30
    move-object v0, p2

    .line 31
    move p2, v5

    .line 32
    goto/16 :goto_1

    .line 33
    .line 34
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getId()I

    .line 35
    .line 36
    .line 37
    move-result p2

    .line 38
    invoke-virtual {p0, p2}, Lcom/android/server/tv/TvInputHardwareManager$HdmiDeviceEventListener;->findHdmiDeviceInfo(I)Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 39
    .line 40
    .line 41
    move-result-object p2

    .line 42
    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager$HdmiDeviceEventListener;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    .line 43
    .line 44
    iget-object v0, v0, Lcom/android/server/tv/TvInputHardwareManager;->mHdmiDeviceList:Ljava/util/List;

    .line 45
    .line 46
    check-cast v0, Ljava/util/ArrayList;

    .line 47
    .line 48
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result p2

    .line 52
    if-nez p2, :cond_2

    .line 53
    .line 54
    const-string p0, "TvInputHardwareManager"

    .line 55
    .line 56
    new-instance p2, Ljava/lang/StringBuilder;

    .line 57
    .line 58
    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    const-string p1, "; ignoring."

    .line 65
    .line 66
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    .line 75
    .line 76
    monitor-exit v3

    .line 77
    return-void

    .line 78
    :catchall_0
    move-exception p0

    .line 79
    goto/16 :goto_3

    .line 80
    .line 81
    :cond_2
    iget-object p2, p0, Lcom/android/server/tv/TvInputHardwareManager$HdmiDeviceEventListener;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    .line 82
    .line 83
    iget-object p2, p2, Lcom/android/server/tv/TvInputHardwareManager;->mHdmiDeviceList:Ljava/util/List;

    .line 84
    .line 85
    check-cast p2, Ljava/util/ArrayList;

    .line 86
    .line 87
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    const/4 p2, 0x6

    .line 91
    :goto_0
    move-object v0, p1

    .line 92
    goto :goto_1

    .line 93
    :cond_3
    invoke-virtual {p1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getId()I

    .line 94
    .line 95
    .line 96
    move-result p2

    .line 97
    invoke-virtual {p0, p2}, Lcom/android/server/tv/TvInputHardwareManager$HdmiDeviceEventListener;->findHdmiDeviceInfo(I)Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 98
    .line 99
    .line 100
    move-result-object p2

    .line 101
    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager$HdmiDeviceEventListener;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    .line 102
    .line 103
    iget-object v0, v0, Lcom/android/server/tv/TvInputHardwareManager;->mHdmiDeviceList:Ljava/util/List;

    .line 104
    .line 105
    check-cast v0, Ljava/util/ArrayList;

    .line 106
    .line 107
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 108
    .line 109
    .line 110
    move-result p2

    .line 111
    if-nez p2, :cond_4

    .line 112
    .line 113
    const-string p0, "TvInputHardwareManager"

    .line 114
    .line 115
    new-instance p2, Ljava/lang/StringBuilder;

    .line 116
    .line 117
    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    const-string p1, "; ignoring."

    .line 124
    .line 125
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object p1

    .line 132
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    .line 134
    .line 135
    monitor-exit v3

    .line 136
    return-void

    .line 137
    :cond_4
    const/4 p2, 0x5

    .line 138
    goto :goto_0

    .line 139
    :cond_5
    invoke-virtual {p1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getId()I

    .line 140
    .line 141
    .line 142
    move-result p2

    .line 143
    invoke-virtual {p0, p2}, Lcom/android/server/tv/TvInputHardwareManager$HdmiDeviceEventListener;->findHdmiDeviceInfo(I)Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 144
    .line 145
    .line 146
    move-result-object p2

    .line 147
    if-nez p2, :cond_7

    .line 148
    .line 149
    iget-object p2, p0, Lcom/android/server/tv/TvInputHardwareManager$HdmiDeviceEventListener;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    .line 150
    .line 151
    iget-object p2, p2, Lcom/android/server/tv/TvInputHardwareManager;->mHdmiDeviceList:Ljava/util/List;

    .line 152
    .line 153
    check-cast p2, Ljava/util/ArrayList;

    .line 154
    .line 155
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 156
    .line 157
    .line 158
    const/4 p2, 0x4

    .line 159
    goto :goto_0

    .line 160
    :goto_1
    iget-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager$HdmiDeviceEventListener;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    .line 161
    .line 162
    iget-object v1, v1, Lcom/android/server/tv/TvInputHardwareManager;->mHandler:Lcom/android/server/tv/TvInputHardwareManager$ListenerHandler;

    .line 163
    .line 164
    invoke-virtual {v1, p2, v5, v5, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 165
    .line 166
    .line 167
    move-result-object p2

    .line 168
    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager$HdmiDeviceEventListener;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    .line 169
    .line 170
    invoke-virtual {p1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPortId()I

    .line 171
    .line 172
    .line 173
    move-result p1

    .line 174
    invoke-virtual {v0, p1}, Lcom/android/server/tv/TvInputHardwareManager;->findHardwareInfoForHdmiPortLocked(I)Landroid/media/tv/TvInputHardwareInfo;

    .line 175
    .line 176
    .line 177
    move-result-object p1

    .line 178
    if-eqz p1, :cond_6

    .line 179
    .line 180
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    .line 181
    .line 182
    .line 183
    goto :goto_2

    .line 184
    :cond_6
    iget-object p0, p0, Lcom/android/server/tv/TvInputHardwareManager$HdmiDeviceEventListener;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    .line 185
    .line 186
    iget-object p0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mPendingHdmiDeviceEvents:Ljava/util/List;

    .line 187
    .line 188
    check-cast p0, Ljava/util/ArrayList;

    .line 189
    .line 190
    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 191
    .line 192
    .line 193
    :goto_2
    monitor-exit v3

    .line 194
    return-void

    .line 195
    :cond_7
    const-string p0, "TvInputHardwareManager"

    .line 196
    .line 197
    new-instance p2, Ljava/lang/StringBuilder;

    .line 198
    .line 199
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 200
    .line 201
    .line 202
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 203
    .line 204
    .line 205
    const-string p1, "; ignoring."

    .line 206
    .line 207
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    .line 209
    .line 210
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object p1

    .line 214
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    .line 216
    .line 217
    monitor-exit v3

    .line 218
    return-void

    .line 219
    :goto_3
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 220
    throw p0
.end method
