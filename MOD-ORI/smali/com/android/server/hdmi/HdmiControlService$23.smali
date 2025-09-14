.class public final Lcom/android/server/hdmi/HdmiControlService$23;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/server/hdmi/HdmiControlService;

.field public final synthetic val$listener:Ljava/lang/Object;

.field public final synthetic val$record:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/android/server/hdmi/HdmiControlService;Lcom/android/server/hdmi/HdmiControlService$HdmiControlStatusChangeListenerRecord;Landroid/hardware/hdmi/IHdmiControlStatusChangeListener;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/hdmi/HdmiControlService$23;->$r8$classId:I

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlService$23;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    iput-object p2, p0, Lcom/android/server/hdmi/HdmiControlService$23;->val$record:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/server/hdmi/HdmiControlService$23;->val$listener:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/hdmi/HdmiControlService;Lcom/android/server/hdmi/HdmiControlService$HotplugEventListenerRecord;Landroid/hardware/hdmi/IHdmiHotplugEventListener;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/hdmi/HdmiControlService$23;->$r8$classId:I

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlService$23;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    iput-object p2, p0, Lcom/android/server/hdmi/HdmiControlService$23;->val$record:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/server/hdmi/HdmiControlService$23;->val$listener:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget v0, p0, Lcom/android/server/hdmi/HdmiControlService$23;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$23;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 7
    .line 8
    iget-object v0, v0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    .line 9
    .line 10
    monitor-enter v0

    .line 11
    :try_start_0
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService$23;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 12
    .line 13
    iget-object v1, v1, Lcom/android/server/hdmi/HdmiControlService;->mHotplugEventListenerRecords:Ljava/util/ArrayList;

    .line 14
    .line 15
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiControlService$23;->val$record:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v2, Lcom/android/server/hdmi/HdmiControlService$HotplugEventListenerRecord;

    .line 18
    .line 19
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-nez v1, :cond_0

    .line 24
    .line 25
    monitor-exit v0

    .line 26
    goto :goto_2

    .line 27
    :catchall_0
    move-exception p0

    .line 28
    goto :goto_3

    .line 29
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$23;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 31
    .line 32
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->getPortInfo()Ljava/util/List;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    if-eqz v1, :cond_1

    .line 45
    .line 46
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    check-cast v1, Landroid/hardware/hdmi/HdmiPortInfo;

    .line 51
    .line 52
    new-instance v2, Landroid/hardware/hdmi/HdmiHotplugEvent;

    .line 53
    .line 54
    invoke-virtual {v1}, Landroid/hardware/hdmi/HdmiPortInfo;->getId()I

    .line 55
    .line 56
    .line 57
    move-result v3

    .line 58
    iget-object v4, p0, Lcom/android/server/hdmi/HdmiControlService$23;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 59
    .line 60
    iget-object v4, v4, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    .line 61
    .line 62
    invoke-virtual {v1}, Landroid/hardware/hdmi/HdmiPortInfo;->getId()I

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    invoke-virtual {v4}, Lcom/android/server/hdmi/HdmiCecController;->assertRunOnServiceThread()V

    .line 67
    .line 68
    .line 69
    iget-object v4, v4, Lcom/android/server/hdmi/HdmiCecController;->mNativeWrapperImpl:Lcom/android/server/hdmi/HdmiCecController$NativeWrapper;

    .line 70
    .line 71
    invoke-interface {v4, v1}, Lcom/android/server/hdmi/HdmiCecController$NativeWrapper;->nativeIsConnected(I)Z

    .line 72
    .line 73
    .line 74
    move-result v1

    .line 75
    invoke-direct {v2, v3, v1}, Landroid/hardware/hdmi/HdmiHotplugEvent;-><init>(IZ)V

    .line 76
    .line 77
    .line 78
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService$23;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 79
    .line 80
    iget-object v1, v1, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    .line 81
    .line 82
    monitor-enter v1

    .line 83
    :try_start_1
    iget-object v3, p0, Lcom/android/server/hdmi/HdmiControlService$23;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 84
    .line 85
    iget-object v4, p0, Lcom/android/server/hdmi/HdmiControlService$23;->val$listener:Ljava/lang/Object;

    .line 86
    .line 87
    check-cast v4, Landroid/hardware/hdmi/IHdmiHotplugEventListener;

    .line 88
    .line 89
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 90
    .line 91
    .line 92
    :try_start_2
    invoke-interface {v4, v2}, Landroid/hardware/hdmi/IHdmiHotplugEventListener;->onReceived(Landroid/hardware/hdmi/HdmiHotplugEvent;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 93
    .line 94
    .line 95
    goto :goto_1

    .line 96
    :catch_0
    move-exception v3

    .line 97
    :try_start_3
    new-instance v4, Ljava/lang/StringBuilder;

    .line 98
    .line 99
    const-string v5, "Failed to report hotplug event:"

    .line 100
    .line 101
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v2

    .line 108
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v2

    .line 115
    const-string v4, "HdmiControlService"

    .line 116
    .line 117
    invoke-static {v4, v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 118
    .line 119
    .line 120
    :goto_1
    monitor-exit v1

    .line 121
    goto :goto_0

    .line 122
    :catchall_1
    move-exception p0

    .line 123
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 124
    throw p0

    .line 125
    :cond_1
    :goto_2
    return-void

    .line 126
    :goto_3
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 127
    throw p0

    .line 128
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$23;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 129
    .line 130
    iget-object v0, v0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    .line 131
    .line 132
    monitor-enter v0

    .line 133
    :try_start_5
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService$23;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 134
    .line 135
    iget-object v1, v1, Lcom/android/server/hdmi/HdmiControlService;->mHdmiControlStatusChangeListenerRecords:Ljava/util/ArrayList;

    .line 136
    .line 137
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiControlService$23;->val$record:Ljava/lang/Object;

    .line 138
    .line 139
    check-cast v2, Lcom/android/server/hdmi/HdmiControlService$HdmiControlStatusChangeListenerRecord;

    .line 140
    .line 141
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 142
    .line 143
    .line 144
    move-result v1

    .line 145
    if-nez v1, :cond_2

    .line 146
    .line 147
    monitor-exit v0

    .line 148
    goto :goto_5

    .line 149
    :catchall_2
    move-exception p0

    .line 150
    goto :goto_6

    .line 151
    :cond_2
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 152
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$23;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 153
    .line 154
    iget-object v1, v0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    .line 155
    .line 156
    monitor-enter v1

    .line 157
    :try_start_6
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$23;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 158
    .line 159
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService$23;->val$listener:Ljava/lang/Object;

    .line 160
    .line 161
    check-cast p0, Landroid/hardware/hdmi/IHdmiControlStatusChangeListener;

    .line 162
    .line 163
    iget v2, v0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiControlEnabled:I

    .line 164
    .line 165
    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 166
    .line 167
    .line 168
    move-result-object p0

    .line 169
    const/4 v3, 0x1

    .line 170
    if-ne v2, v3, :cond_3

    .line 171
    .line 172
    new-instance v3, Lcom/android/server/hdmi/HdmiControlService$26;

    .line 173
    .line 174
    invoke-direct {v3, v0, p0, v2}, Lcom/android/server/hdmi/HdmiControlService$26;-><init>(Lcom/android/server/hdmi/HdmiControlService;Ljava/util/Collection;I)V

    .line 175
    .line 176
    .line 177
    invoke-virtual {v0, v3}, Lcom/android/server/hdmi/HdmiControlService;->queryDisplayStatus(Landroid/hardware/hdmi/IHdmiControlCallback;)V

    .line 178
    .line 179
    .line 180
    goto :goto_4

    .line 181
    :cond_3
    const/4 v3, 0x0

    .line 182
    iput-boolean v3, v0, Lcom/android/server/hdmi/HdmiControlService;->mIsCecAvailable:Z

    .line 183
    .line 184
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    .line 185
    .line 186
    .line 187
    move-result v3

    .line 188
    if-nez v3, :cond_4

    .line 189
    .line 190
    iget-boolean v0, v0, Lcom/android/server/hdmi/HdmiControlService;->mIsCecAvailable:Z

    .line 191
    .line 192
    invoke-static {v2, p0, v0}, Lcom/android/server/hdmi/HdmiControlService;->invokeHdmiControlStatusChangeListenerLocked(ILjava/util/Collection;Z)V

    .line 193
    .line 194
    .line 195
    :cond_4
    :goto_4
    monitor-exit v1

    .line 196
    :goto_5
    return-void

    .line 197
    :catchall_3
    move-exception p0

    .line 198
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 199
    throw p0

    .line 200
    :goto_6
    :try_start_7
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 201
    throw p0

    .line 202
    nop

    .line 203
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
