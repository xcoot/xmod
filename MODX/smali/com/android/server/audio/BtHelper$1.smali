.class public final Lcom/android/server/audio/BtHelper$1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/audio/BtHelper;


# direct methods
.method public constructor <init>(Lcom/android/server/audio/BtHelper;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/audio/BtHelper$1;->this$0:Lcom/android/server/audio/BtHelper;

    .line 6
    return-void
.end method


# virtual methods
.method public final onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eq p1, v0, :cond_0

    .line 4
    const/4 v0, 0x2

    .line 5
    if-eq p1, v0, :cond_0

    .line 7
    const/16 v0, 0xb

    .line 9
    if-eq p1, v0, :cond_0

    .line 11
    const/16 v0, 0x1a

    .line 13
    if-eq p1, v0, :cond_0

    .line 15
    const/16 v0, 0x15

    .line 17
    if-eq p1, v0, :cond_0

    .line 19
    const/16 v0, 0x16

    .line 21
    if-eq p1, v0, :cond_0

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    sget-object v0, Lcom/android/server/audio/AudioService;->sDeviceLogger:Lcom/android/server/utils/EventLogger;

    .line 26
    new-instance v1, Lcom/android/server/utils/EventLogger$StringEvent;

    .line 28
    new-instance v2, Ljava/lang/StringBuilder;

    .line 30
    const-string v3, "BT profile service: connecting "

    .line 32
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 35
    invoke-static {p1}, Landroid/bluetooth/BluetoothProfile;->getProfileName(I)Ljava/lang/String;

    .line 38
    move-result-object v3

    .line 39
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    const-string v3, " profile"

    .line 44
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    move-result-object v2

    .line 51
    invoke-direct {v1, v2}, Lcom/android/server/utils/EventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    .line 54
    const/4 v2, 0x0

    .line 55
    const-string v3, "AS.BtHelper"

    .line 57
    invoke-virtual {v1, v2, v3}, Lcom/android/server/utils/EventLogger$Event;->printLog(ILjava/lang/String;)Lcom/android/server/utils/EventLogger$Event;

    .line 60
    invoke-virtual {v0, v1}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 63
    iget-object p0, p0, Lcom/android/server/audio/BtHelper$1;->this$0:Lcom/android/server/audio/BtHelper;

    .line 65
    iget-object p0, p0, Lcom/android/server/audio/BtHelper;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    .line 67
    const/16 v0, 0x17

    .line 69
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/audio/AudioDeviceBroker;->sendILMsgNoDelay(IILjava/lang/Object;)V

    .line 72
    :goto_0
    return-void
.end method

.method public final onServiceDisconnected(I)V
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    const/16 v1, 0x16

    .line 4
    const/4 v2, 0x2

    .line 5
    if-eq p1, v0, :cond_0

    .line 7
    if-eq p1, v2, :cond_0

    .line 9
    const/16 v0, 0xb

    .line 11
    if-eq p1, v0, :cond_0

    .line 13
    const/16 v0, 0x1a

    .line 15
    if-eq p1, v0, :cond_0

    .line 17
    const/16 v0, 0x15

    .line 19
    if-eq p1, v0, :cond_0

    .line 21
    if-eq p1, v1, :cond_0

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    sget-object v0, Lcom/android/server/audio/AudioService;->sDeviceLogger:Lcom/android/server/utils/EventLogger;

    .line 26
    new-instance v3, Lcom/android/server/utils/EventLogger$StringEvent;

    .line 28
    new-instance v4, Ljava/lang/StringBuilder;

    .line 30
    const-string v5, "BT profile service: disconnecting "

    .line 32
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 35
    invoke-static {p1}, Landroid/bluetooth/BluetoothProfile;->getProfileName(I)Ljava/lang/String;

    .line 38
    move-result-object v5

    .line 39
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    const-string v5, " profile"

    .line 44
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    move-result-object v4

    .line 51
    invoke-direct {v3, v4}, Lcom/android/server/utils/EventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    .line 54
    const/4 v4, 0x0

    .line 55
    const-string v5, "AS.BtHelper"

    .line 57
    invoke-virtual {v3, v4, v5}, Lcom/android/server/utils/EventLogger$Event;->printLog(ILjava/lang/String;)Lcom/android/server/utils/EventLogger$Event;

    .line 60
    invoke-virtual {v0, v3}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 63
    iget-object p0, p0, Lcom/android/server/audio/BtHelper$1;->this$0:Lcom/android/server/audio/BtHelper;

    .line 65
    iget-object p0, p0, Lcom/android/server/audio/BtHelper;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    .line 67
    invoke-virtual {p0, v1, v2, p1}, Lcom/android/server/audio/AudioDeviceBroker;->sendIMsgNoDelay(III)V

    .line 70
    :goto_0
    return-void
.end method
