.class public final synthetic Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;

    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 1
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;

    .line 3
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    .line 5
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBtHelper:Lcom/android/server/audio/BtHelper;

    .line 7
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mContext:Landroid/content/Context;

    .line 9
    const-string/jumbo v1, "updateBtAppList get list from BT. version = "

    .line 12
    monitor-enter v0

    .line 13
    :try_start_0
    const-string v2, "AS.BtHelper"

    .line 15
    const-string/jumbo v3, "updateBtAppList for BLE broadcast"

    .line 18
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    iget-object v2, v0, Lcom/android/server/audio/BtHelper;->mLeBroadcast:Landroid/bluetooth/BluetoothLeBroadcast;

    .line 23
    if-eqz v2, :cond_2

    .line 25
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothLeBroadcast;->getAuracastDbVersion()J

    .line 28
    move-result-wide v2

    .line 29
    sget-wide v4, Lcom/samsung/android/server/audio/utils/BtUtils;->sBtAppPackageListVersion:J

    .line 31
    cmp-long v6, v2, v4

    .line 33
    if-gtz v6, :cond_1

    .line 35
    const-wide/16 v6, 0x0

    .line 37
    cmp-long v4, v4, v6

    .line 39
    if-nez v4, :cond_0

    .line 41
    goto :goto_0

    .line 42
    :cond_0
    cmp-long p0, v2, v6

    .line 44
    if-nez p0, :cond_2

    .line 46
    sget-object p0, Lcom/samsung/android/server/audio/utils/BtUtils;->sAuracastLogger:Lcom/android/server/utils/EventLogger;

    .line 48
    new-instance v1, Lcom/android/server/utils/EventLogger$StringEvent;

    .line 50
    const-string/jumbo v2, "updateBtAppList skipped version update : DB version is 0"

    .line 53
    invoke-direct {v1, v2}, Lcom/android/server/utils/EventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p0, v1}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 59
    goto :goto_1

    .line 60
    :catchall_0
    move-exception p0

    .line 61
    goto :goto_2

    .line 62
    :cond_1
    :goto_0
    iget-object v4, v0, Lcom/android/server/audio/BtHelper;->mLeBroadcast:Landroid/bluetooth/BluetoothLeBroadcast;

    .line 64
    invoke-virtual {v4}, Landroid/bluetooth/BluetoothLeBroadcast;->getBlockPlayerList()Ljava/util/List;

    .line 67
    move-result-object v4

    .line 68
    sget-object v5, Lcom/samsung/android/server/audio/utils/BtUtils;->sAuracastLogger:Lcom/android/server/utils/EventLogger;

    .line 70
    new-instance v6, Lcom/android/server/utils/EventLogger$StringEvent;

    .line 72
    new-instance v7, Ljava/lang/StringBuilder;

    .line 74
    invoke-direct {v7, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 77
    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 80
    const-string v1, " list size = "

    .line 82
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 88
    move-result v1

    .line 89
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 92
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 95
    move-result-object v1

    .line 96
    invoke-direct {v6, v1}, Lcom/android/server/utils/EventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    .line 99
    invoke-virtual {v5, v6}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 102
    invoke-static {p0, v4, v2, v3}, Lcom/samsung/android/server/audio/utils/BtUtils;->updateBtAppList(Landroid/content/Context;Ljava/util/List;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 105
    :cond_2
    :goto_1
    monitor-exit v0

    .line 106
    return-void

    .line 107
    :goto_2
    monitor-exit v0

    .line 108
    throw p0
.end method
