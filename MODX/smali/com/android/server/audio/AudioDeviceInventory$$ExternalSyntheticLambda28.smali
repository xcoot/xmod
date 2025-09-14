.class public final synthetic Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda28;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/audio/AudioDeviceInventory;

.field public final synthetic f$1:I

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/audio/AudioDeviceInventory;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda28;->f$0:Lcom/android/server/audio/AudioDeviceInventory;

    .line 6
    iput p2, p0, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda28;->f$1:I

    .line 8
    iput p3, p0, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda28;->f$2:I

    .line 10
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda28;->f$0:Lcom/android/server/audio/AudioDeviceInventory;

    .line 3
    iget v4, p0, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda28;->f$1:I

    .line 5
    iget v7, p0, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda28;->f$2:I

    .line 7
    check-cast p1, Landroid/util/Pair;

    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    iget-object p0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 14
    move-object v6, p0

    .line 15
    check-cast v6, Ljava/lang/String;

    .line 17
    iget-object p0, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 19
    check-cast p0, Ljava/lang/Integer;

    .line 21
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 24
    move-result v5

    .line 25
    const/4 p0, 0x1

    .line 26
    const-string/jumbo p1, "makeLeAudioDeviceUnavailableLater"

    .line 29
    iget-object v1, v0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    .line 31
    invoke-virtual {v1, p1, p0, p0}, Lcom/android/server/audio/AudioDeviceBroker;->setLeAudioSuspended(Ljava/lang/String;ZZ)V

    .line 34
    iget-object p0, v0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Ljava/util/LinkedHashMap;

    .line 36
    invoke-static {v4, v6}, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->makeDeviceListKey(ILjava/lang/String;)Ljava/lang/String;

    .line 39
    move-result-object p1

    .line 40
    invoke-virtual {p0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    const/16 v2, 0x31

    .line 45
    const/4 v3, 0x2

    .line 46
    iget-object v1, v0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    .line 48
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/audio/AudioDeviceBroker;->sendIILMsg(IIIILjava/lang/Object;I)V

    .line 51
    return-void
.end method
