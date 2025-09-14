.class public final Lcom/android/server/audio/AudioDeviceBroker$BtDeviceChangedData;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mEventSource:Ljava/lang/String;

.field public final mInfo:Landroid/media/BluetoothProfileConnectionInfo;

.field public final mNewDevice:Landroid/bluetooth/BluetoothDevice;

.field public final mPreviousDevice:Landroid/bluetooth/BluetoothDevice;


# direct methods
.method public constructor <init>(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothDevice;Landroid/media/BluetoothProfileConnectionInfo;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceChangedData;->mNewDevice:Landroid/bluetooth/BluetoothDevice;

    .line 6
    iput-object p2, p0, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceChangedData;->mPreviousDevice:Landroid/bluetooth/BluetoothDevice;

    .line 8
    iput-object p3, p0, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceChangedData;->mInfo:Landroid/media/BluetoothProfileConnectionInfo;

    .line 10
    iput-object p4, p0, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceChangedData;->mEventSource:Ljava/lang/String;

    .line 12
    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string v1, "BtDeviceChangedData profile="

    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceChangedData;->mInfo:Landroid/media/BluetoothProfileConnectionInfo;

    .line 10
    invoke-virtual {v1}, Landroid/media/BluetoothProfileConnectionInfo;->getProfile()I

    .line 13
    move-result v1

    .line 14
    invoke-static {v1}, Landroid/bluetooth/BluetoothProfile;->getProfileName(I)Ljava/lang/String;

    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    const-string v1, ", switch device: ["

    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceChangedData;->mPreviousDevice:Landroid/bluetooth/BluetoothDevice;

    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    const-string v1, "] -> ["

    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceChangedData;->mNewDevice:Landroid/bluetooth/BluetoothDevice;

    .line 38
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 41
    const-string p0, "]"

    .line 43
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    move-result-object p0

    .line 50
    return-object p0
.end method
