.class public final synthetic Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda27;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:I

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILandroid/util/ArraySet;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda27;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda27;->f$0:I

    iput-object p2, p0, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda27;->f$1:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/audio/AudioDeviceInventory;I)V
    .locals 1

    .line 2
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda27;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda27;->f$1:Ljava/lang/Object;

    iput p2, p0, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda27;->f$0:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 8

    .line 1
    iget v0, p0, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda27;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda27;->f$1:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Lcom/android/server/audio/AudioDeviceInventory;

    .line 9
    .line 10
    iget v7, p0, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda27;->f$0:I

    .line 11
    .line 12
    move-object v6, p1

    .line 13
    check-cast v6, Ljava/lang/String;

    .line 14
    .line 15
    iget-object p0, v0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    .line 16
    .line 17
    const/4 p1, 0x1

    .line 18
    const-string/jumbo v1, "makeA2dpDeviceUnavailableLater"

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, v1, p1, p1}, Lcom/android/server/audio/AudioDeviceBroker;->setA2dpSuspended(Ljava/lang/String;ZZ)V

    .line 22
    .line 23
    .line 24
    const/16 p0, 0x80

    .line 25
    .line 26
    invoke-static {p0, v6}, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->makeDeviceListKey(ILjava/lang/String;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    iget-object p1, v0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Ljava/util/LinkedHashMap;

    .line 31
    .line 32
    invoke-virtual {p1, p0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    check-cast p1, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;

    .line 37
    .line 38
    if-eqz p1, :cond_0

    .line 39
    .line 40
    iget p1, p1, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceCodecFormat:I

    .line 41
    .line 42
    :goto_0
    move v4, p1

    .line 43
    goto :goto_1

    .line 44
    :cond_0
    const/4 p1, 0x0

    .line 45
    goto :goto_0

    .line 46
    :goto_1
    iget-object p1, v0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Ljava/util/LinkedHashMap;

    .line 47
    .line 48
    invoke-virtual {p1, p0}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    iget-object v1, v0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    .line 52
    .line 53
    const/4 v5, 0x0

    .line 54
    const/16 v2, 0xa

    .line 55
    .line 56
    const/4 v3, 0x2

    .line 57
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/audio/AudioDeviceBroker;->sendIILMsg(IIIILjava/lang/Object;I)V

    .line 58
    .line 59
    .line 60
    return-void

    .line 61
    :pswitch_0
    iget v0, p0, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda27;->f$0:I

    .line 62
    .line 63
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda27;->f$1:Ljava/lang/Object;

    .line 64
    .line 65
    check-cast p0, Landroid/util/ArraySet;

    .line 66
    .line 67
    check-cast p1, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;

    .line 68
    .line 69
    iget v1, p1, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceType:I

    .line 70
    .line 71
    if-ne v1, v0, :cond_1

    .line 72
    .line 73
    new-instance v0, Landroid/util/Pair;

    .line 74
    .line 75
    iget v1, p1, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceCodecFormat:I

    .line 76
    .line 77
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    iget-object p1, p1, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceAddress:Ljava/lang/String;

    .line 82
    .line 83
    invoke-direct {v0, p1, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    :cond_1
    return-void

    .line 90
    nop

    .line 91
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
