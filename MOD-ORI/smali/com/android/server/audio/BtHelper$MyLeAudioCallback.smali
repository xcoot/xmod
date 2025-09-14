.class public final Lcom/android/server/audio/BtHelper$MyLeAudioCallback;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/bluetooth/BluetoothLeAudio$Callback;


# instance fields
.field public final synthetic this$0:Lcom/android/server/audio/BtHelper;


# direct methods
.method public constructor <init>(Lcom/android/server/audio/BtHelper;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/audio/BtHelper$MyLeAudioCallback;->this$0:Lcom/android/server/audio/BtHelper;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onCodecConfigChanged(ILandroid/bluetooth/BluetoothLeAudioCodecStatus;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onGroupNodeAdded(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/audio/BtHelper$MyLeAudioCallback;->this$0:Lcom/android/server/audio/BtHelper;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/audio/BtHelper;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    .line 4
    .line 5
    const/16 p1, 0x39

    .line 6
    .line 7
    const/4 v0, 0x2

    .line 8
    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/audio/AudioDeviceBroker;->sendIMsgNoDelay(III)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final onGroupNodeRemoved(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/audio/BtHelper$MyLeAudioCallback;->this$0:Lcom/android/server/audio/BtHelper;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/audio/BtHelper;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    .line 4
    .line 5
    const/16 p1, 0x39

    .line 6
    .line 7
    const/4 v0, 0x2

    .line 8
    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/audio/AudioDeviceBroker;->sendIMsgNoDelay(III)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final onGroupStatusChanged(II)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/audio/BtHelper$MyLeAudioCallback;->this$0:Lcom/android/server/audio/BtHelper;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/audio/BtHelper;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    .line 4
    .line 5
    const/16 p2, 0x39

    .line 6
    .line 7
    const/4 v0, 0x2

    .line 8
    invoke-virtual {p0, p2, v0, p1}, Lcom/android/server/audio/AudioDeviceBroker;->sendIMsgNoDelay(III)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
