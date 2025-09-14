.class public final synthetic Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda33;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda33;->$r8$classId:I

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda33;->f$0:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda33;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda33;->f$0:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p0, Lcom/android/server/audio/AudioDeviceInventory;

    .line 9
    .line 10
    check-cast p1, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;

    .line 11
    .line 12
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    iget-object p1, p1, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceName:Ljava/lang/String;

    .line 16
    .line 17
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    .line 18
    .line 19
    iget-object p0, p0, Landroid/media/AudioRoutesInfo;->bluetoothName:Ljava/lang/CharSequence;

    .line 20
    .line 21
    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    return p0

    .line 26
    :pswitch_0
    check-cast p0, Landroid/media/AudioDeviceAttributes;

    .line 27
    .line 28
    check-cast p1, Landroid/media/AudioDeviceInfo;

    .line 29
    .line 30
    invoke-virtual {p1}, Landroid/media/AudioDeviceInfo;->getInternalType()I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    invoke-static {v0}, Landroid/media/AudioSystem;->isBluetoothDevice(I)Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-eqz v0, :cond_1

    .line 39
    .line 40
    invoke-virtual {p1}, Landroid/media/AudioDeviceInfo;->getAddress()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-virtual {p0}, Landroid/media/AudioDeviceAttributes;->getAddress()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result p0

    .line 52
    if-eqz p0, :cond_0

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_0
    const/4 p0, 0x0

    .line 56
    goto :goto_1

    .line 57
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 58
    :goto_1
    return p0

    .line 59
    :pswitch_1
    check-cast p0, Landroid/media/AudioDeviceAttributes;

    .line 60
    .line 61
    check-cast p1, Landroid/media/AudioDeviceInfo;

    .line 62
    .line 63
    invoke-virtual {p1}, Landroid/media/AudioDeviceInfo;->getInternalType()I

    .line 64
    .line 65
    .line 66
    move-result p1

    .line 67
    invoke-virtual {p0}, Landroid/media/AudioDeviceAttributes;->getInternalType()I

    .line 68
    .line 69
    .line 70
    move-result p0

    .line 71
    if-ne p1, p0, :cond_2

    .line 72
    .line 73
    const/4 p0, 0x1

    .line 74
    goto :goto_2

    .line 75
    :cond_2
    const/4 p0, 0x0

    .line 76
    :goto_2
    return p0

    .line 77
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
