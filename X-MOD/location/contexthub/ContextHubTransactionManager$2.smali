.class public final Lcom/android/server/location/contexthub/ContextHubTransactionManager$2;
.super Lcom/android/server/location/contexthub/ContextHubServiceTransaction;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/server/location/contexthub/ContextHubTransactionManager;

.field public final synthetic val$contextHubId:I

.field public final synthetic val$nanoAppId:J

.field public final synthetic val$onCompleteCallback:Landroid/hardware/location/IContextHubTransactionCallback;


# direct methods
.method public constructor <init>(Lcom/android/server/location/contexthub/ContextHubTransactionManager;IJLjava/lang/String;IJLandroid/hardware/location/IContextHubTransactionCallback;)V
    .locals 6

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$2;->$r8$classId:I

    .line 1
    iput-object p1, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$2;->this$0:Lcom/android/server/location/contexthub/ContextHubTransactionManager;

    iput p6, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$2;->val$contextHubId:I

    iput-wide p7, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$2;->val$nanoAppId:J

    iput-object p9, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$2;->val$onCompleteCallback:Landroid/hardware/location/IContextHubTransactionCallback;

    const/4 v2, 0x1

    move-object v0, p0

    move v1, p2

    move-wide v3, p3

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;-><init>(IIJLjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/location/contexthub/ContextHubTransactionManager;ILjava/lang/String;IJLandroid/hardware/location/IContextHubTransactionCallback;I)V
    .locals 0

    iput p8, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$2;->$r8$classId:I

    packed-switch p8, :pswitch_data_0

    .line 2
    iput-object p1, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$2;->this$0:Lcom/android/server/location/contexthub/ContextHubTransactionManager;

    iput p4, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$2;->val$contextHubId:I

    iput-wide p5, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$2;->val$nanoAppId:J

    iput-object p7, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$2;->val$onCompleteCallback:Landroid/hardware/location/IContextHubTransactionCallback;

    const/4 p1, 0x2

    invoke-direct {p0, p2, p1, p3}, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;-><init>(IILjava/lang/String;)V

    return-void

    .line 3
    :pswitch_0
    iput-object p1, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$2;->this$0:Lcom/android/server/location/contexthub/ContextHubTransactionManager;

    iput p4, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$2;->val$contextHubId:I

    iput-wide p5, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$2;->val$nanoAppId:J

    iput-object p7, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$2;->val$onCompleteCallback:Landroid/hardware/location/IContextHubTransactionCallback;

    const/4 p1, 0x3

    invoke-direct {p0, p2, p1, p3}, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;-><init>(IILjava/lang/String;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final onTransact()I
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$2;->$r8$classId:I

    .line 3
    packed-switch v0, :pswitch_data_0

    .line 6
    iget-wide v0, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$2;->val$nanoAppId:J

    .line 8
    :try_start_0
    iget-object v2, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$2;->this$0:Lcom/android/server/location/contexthub/ContextHubTransactionManager;

    .line 10
    iget-object v2, v2, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mContextHubProxy:Lcom/android/server/location/contexthub/IContextHubWrapper;

    .line 12
    iget v3, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$2;->val$contextHubId:I

    .line 14
    iget p0, p0, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->mTransactionId:I

    .line 16
    invoke-virtual {v2, v3, p0, v0, v1}, Lcom/android/server/location/contexthub/IContextHubWrapper;->disableNanoapp(IIJ)I

    .line 19
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    goto :goto_0

    .line 21
    :catch_0
    move-exception p0

    .line 22
    new-instance v2, Ljava/lang/StringBuilder;

    .line 24
    const-string v3, "RemoteException while trying to disable nanoapp with ID 0x"

    .line 26
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 29
    invoke-static {v0, v1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    move-result-object v0

    .line 40
    const-string v1, "ContextHubTransactionManager"

    .line 42
    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 45
    const/4 p0, 0x1

    .line 46
    :goto_0
    return p0

    .line 47
    :pswitch_0
    iget-wide v0, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$2;->val$nanoAppId:J

    .line 49
    :try_start_1
    iget-object v2, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$2;->this$0:Lcom/android/server/location/contexthub/ContextHubTransactionManager;

    .line 51
    iget-object v2, v2, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mContextHubProxy:Lcom/android/server/location/contexthub/IContextHubWrapper;

    .line 53
    iget v3, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$2;->val$contextHubId:I

    .line 55
    iget p0, p0, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->mTransactionId:I

    .line 57
    invoke-virtual {v2, v3, p0, v0, v1}, Lcom/android/server/location/contexthub/IContextHubWrapper;->enableNanoapp(IIJ)I

    .line 60
    move-result p0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 61
    goto :goto_1

    .line 62
    :catch_1
    move-exception p0

    .line 63
    new-instance v2, Ljava/lang/StringBuilder;

    .line 65
    const-string v3, "RemoteException while trying to enable nanoapp with ID 0x"

    .line 67
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 70
    invoke-static {v0, v1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    .line 73
    move-result-object v0

    .line 74
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    move-result-object v0

    .line 81
    const-string v1, "ContextHubTransactionManager"

    .line 83
    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 86
    const/4 p0, 0x1

    .line 87
    :goto_1
    return p0

    .line 88
    :pswitch_1
    iget-wide v0, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$2;->val$nanoAppId:J

    .line 90
    :try_start_2
    iget-object v2, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$2;->this$0:Lcom/android/server/location/contexthub/ContextHubTransactionManager;

    .line 92
    iget-object v2, v2, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mContextHubProxy:Lcom/android/server/location/contexthub/IContextHubWrapper;

    .line 94
    iget v3, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$2;->val$contextHubId:I

    .line 96
    iget p0, p0, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->mTransactionId:I

    .line 98
    invoke-virtual {v2, v3, p0, v0, v1}, Lcom/android/server/location/contexthub/IContextHubWrapper;->unloadNanoapp(IIJ)I

    .line 101
    move-result p0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 102
    goto :goto_2

    .line 103
    :catch_2
    move-exception p0

    .line 104
    new-instance v2, Ljava/lang/StringBuilder;

    .line 106
    const-string v3, "RemoteException while trying to unload nanoapp with ID 0x"

    .line 108
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 111
    invoke-static {v0, v1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    .line 114
    move-result-object v0

    .line 115
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 121
    move-result-object v0

    .line 122
    const-string v1, "ContextHubTransactionManager"

    .line 124
    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 127
    const/4 p0, 0x1

    .line 128
    :goto_2
    return p0

    .line 129
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onTransactionComplete(I)V
    .locals 12

    .line 1
    iget v0, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$2;->$r8$classId:I

    .line 3
    packed-switch v0, :pswitch_data_0

    .line 6
    :try_start_0
    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$2;->val$onCompleteCallback:Landroid/hardware/location/IContextHubTransactionCallback;

    .line 8
    invoke-interface {p0, p1}, Landroid/hardware/location/IContextHubTransactionCallback;->onTransactionComplete(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    goto :goto_0

    .line 12
    :catch_0
    move-exception p0

    .line 13
    const-string p1, "ContextHubTransactionManager"

    .line 15
    const-string v0, "RemoteException while calling client onTransactionComplete"

    .line 17
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 20
    :goto_0
    return-void

    .line 21
    :pswitch_0
    :try_start_1
    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$2;->val$onCompleteCallback:Landroid/hardware/location/IContextHubTransactionCallback;

    .line 23
    invoke-interface {p0, p1}, Landroid/hardware/location/IContextHubTransactionCallback;->onTransactionComplete(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 26
    goto :goto_1

    .line 27
    :catch_1
    move-exception p0

    .line 28
    const-string p1, "ContextHubTransactionManager"

    .line 30
    const-string v0, "RemoteException while calling client onTransactionComplete"

    .line 32
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 35
    :goto_1
    return-void

    .line 36
    :pswitch_1
    iget-wide v0, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$2;->val$nanoAppId:J

    .line 38
    iget-object v2, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$2;->this$0:Lcom/android/server/location/contexthub/ContextHubTransactionManager;

    .line 40
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 43
    const/4 v2, 0x2

    .line 44
    const/4 v3, 0x1

    .line 45
    const/4 v4, 0x0

    .line 46
    if-eqz p1, :cond_0

    .line 48
    packed-switch p1, :pswitch_data_1

    .line 51
    move v5, v3

    .line 52
    goto :goto_2

    .line 53
    :pswitch_2
    const/16 v5, 0x8

    .line 55
    goto :goto_2

    .line 56
    :pswitch_3
    const/4 v5, 0x7

    .line 57
    goto :goto_2

    .line 58
    :pswitch_4
    const/4 v5, 0x6

    .line 59
    goto :goto_2

    .line 60
    :pswitch_5
    const/4 v5, 0x5

    .line 61
    goto :goto_2

    .line 62
    :pswitch_6
    const/4 v5, 0x4

    .line 63
    goto :goto_2

    .line 64
    :pswitch_7
    const/4 v5, 0x3

    .line 65
    goto :goto_2

    .line 66
    :pswitch_8
    move v5, v2

    .line 67
    goto :goto_2

    .line 68
    :cond_0
    move v5, v4

    .line 69
    :goto_2
    invoke-static {}, Landroid/util/StatsEvent;->newBuilder()Landroid/util/StatsEvent$Builder;

    .line 72
    move-result-object v6

    .line 73
    const/16 v7, 0x191

    .line 75
    invoke-virtual {v6, v7}, Landroid/util/StatsEvent$Builder;->setAtomId(I)Landroid/util/StatsEvent$Builder;

    .line 78
    invoke-virtual {v6, v0, v1}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    .line 81
    invoke-virtual {v6, v4}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 84
    invoke-virtual {v6, v2}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 87
    invoke-virtual {v6, v5}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 90
    invoke-virtual {v6}, Landroid/util/StatsEvent$Builder;->usePooledBuffer()Landroid/util/StatsEvent$Builder;

    .line 93
    invoke-virtual {v6}, Landroid/util/StatsEvent$Builder;->build()Landroid/util/StatsEvent;

    .line 96
    move-result-object v0

    .line 97
    invoke-static {v0}, Landroid/util/StatsLog;->write(Landroid/util/StatsEvent;)V

    .line 100
    invoke-static {}, Lcom/android/server/location/contexthub/ContextHubEventLogger;->getInstance()Lcom/android/server/location/contexthub/ContextHubEventLogger;

    .line 103
    move-result-object v0

    .line 104
    iget v6, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$2;->val$contextHubId:I

    .line 106
    iget-wide v9, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$2;->val$nanoAppId:J

    .line 108
    if-nez p1, :cond_1

    .line 110
    move v11, v3

    .line 111
    goto :goto_3

    .line 112
    :cond_1
    move v11, v4

    .line 113
    :goto_3
    const-string v1, "Unable to add nanoapp unload event to queue: "

    .line 115
    monitor-enter v0

    .line 116
    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 119
    move-result-wide v7

    .line 120
    new-instance v2, Lcom/android/server/location/contexthub/ContextHubEventLogger$NanoappUnloadEvent;

    .line 122
    move-object v5, v2

    .line 123
    invoke-direct/range {v5 .. v11}, Lcom/android/server/location/contexthub/ContextHubEventLogger$NanoappEventBase;-><init>(IJJZ)V

    .line 126
    iget-object v3, v0, Lcom/android/server/location/contexthub/ContextHubEventLogger;->mNanoappUnloadEventQueue:Lcom/android/server/location/contexthub/ConcurrentLinkedEvictingDeque;

    .line 128
    invoke-virtual {v3, v2}, Lcom/android/server/location/contexthub/ConcurrentLinkedEvictingDeque;->add(Ljava/lang/Object;)Z

    .line 131
    move-result v3

    .line 132
    if-nez v3, :cond_2

    .line 134
    const-string v3, "ContextHubEventLogger"

    .line 136
    new-instance v4, Ljava/lang/StringBuilder;

    .line 138
    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 141
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 144
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 147
    move-result-object v1

    .line 148
    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 151
    goto :goto_4

    .line 152
    :catchall_0
    move-exception p0

    .line 153
    goto :goto_7

    .line 154
    :cond_2
    :goto_4
    monitor-exit v0

    .line 155
    if-nez p1, :cond_3

    .line 157
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$2;->this$0:Lcom/android/server/location/contexthub/ContextHubTransactionManager;

    .line 159
    iget-object v0, v0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mNanoAppStateManager:Lcom/android/server/location/contexthub/NanoAppStateManager;

    .line 161
    iget v1, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$2;->val$contextHubId:I

    .line 163
    iget-wide v2, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$2;->val$nanoAppId:J

    .line 165
    monitor-enter v0

    .line 166
    :try_start_3
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/location/contexthub/NanoAppStateManager;->getNanoAppHandle(IJ)I

    .line 169
    move-result v1

    .line 170
    iget-object v2, v0, Lcom/android/server/location/contexthub/NanoAppStateManager;->mNanoAppHash:Ljava/util/HashMap;

    .line 172
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 175
    move-result-object v1

    .line 176
    invoke-virtual {v2, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 179
    monitor-exit v0

    .line 180
    goto :goto_5

    .line 181
    :catchall_1
    move-exception p0

    .line 182
    monitor-exit v0

    .line 183
    throw p0

    .line 184
    :cond_3
    :goto_5
    :try_start_4
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$2;->val$onCompleteCallback:Landroid/hardware/location/IContextHubTransactionCallback;

    .line 186
    invoke-interface {v0, p1}, Landroid/hardware/location/IContextHubTransactionCallback;->onTransactionComplete(I)V

    .line 189
    if-nez p1, :cond_4

    .line 191
    iget-object p1, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$2;->this$0:Lcom/android/server/location/contexthub/ContextHubTransactionManager;

    .line 193
    iget-object p1, p1, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mClientManager:Lcom/android/server/location/contexthub/ContextHubClientManager;

    .line 195
    iget v0, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$2;->val$contextHubId:I

    .line 197
    iget-wide v1, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$2;->val$nanoAppId:J

    .line 199
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 202
    new-instance p0, Lcom/android/server/location/contexthub/ContextHubClientManager$$ExternalSyntheticLambda3;

    .line 204
    const/4 v3, 0x0

    .line 205
    invoke-direct {p0, v1, v2, v3}, Lcom/android/server/location/contexthub/ContextHubClientManager$$ExternalSyntheticLambda3;-><init>(JI)V

    .line 208
    invoke-virtual {p1, v0, p0}, Lcom/android/server/location/contexthub/ContextHubClientManager;->forEachClientOfHub(ILjava/util/function/Consumer;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_2

    .line 211
    goto :goto_6

    .line 212
    :catch_2
    move-exception p0

    .line 213
    const-string p1, "ContextHubTransactionManager"

    .line 215
    const-string v0, "RemoteException while calling client onTransactionComplete"

    .line 217
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 220
    :cond_4
    :goto_6
    return-void

    .line 221
    :goto_7
    monitor-exit v0

    .line 222
    throw p0

    .line 223
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 231
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method
