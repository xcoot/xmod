.class public final Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager$2;
.super Landroid/os/Binder;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/os/IInterface;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/mcfds/lib/DeviceSyncManager;


# direct methods
.method public constructor <init>(Lcom/samsung/android/mcfds/lib/DeviceSyncManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager$2;->this$0:Lcom/samsung/android/mcfds/lib/DeviceSyncManager;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string p1, "com.samsung.android.mcfds.lib.common.ISimpleCallback"

    .line 7
    .line 8
    invoke-virtual {p0, p0, p1}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final asBinder()Landroid/os/IBinder;
    .locals 0

    .line 1
    return-object p0
.end method

.method public final onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3

    .line 1
    const-string v0, "com.samsung.android.mcfds.lib.common.ISimpleCallback"

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-lt p1, v1, :cond_0

    .line 5
    .line 6
    const v2, 0xffffff

    .line 7
    .line 8
    .line 9
    if-gt p1, v2, :cond_0

    .line 10
    .line 11
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    const v2, 0x5f4e5446

    .line 15
    .line 16
    .line 17
    if-eq p1, v2, :cond_6

    .line 18
    .line 19
    if-eq p1, v1, :cond_1

    .line 20
    .line 21
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    return p0

    .line 26
    :cond_1
    sget-object p1, Landroid/os/Message;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 27
    .line 28
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 29
    .line 30
    .line 31
    move-result p3

    .line 32
    if-eqz p3, :cond_2

    .line 33
    .line 34
    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    goto :goto_0

    .line 39
    :cond_2
    const/4 p1, 0x0

    .line 40
    :goto_0
    check-cast p1, Landroid/os/Message;

    .line 41
    .line 42
    iget p2, p1, Landroid/os/Message;->what:I

    .line 43
    .line 44
    const/16 p3, 0x2710

    .line 45
    .line 46
    if-ne p2, p3, :cond_5

    .line 47
    .line 48
    new-instance p2, Ljava/lang/StringBuilder;

    .line 49
    .line 50
    const-string/jumbo p3, "mServiceStateListener - "

    .line 51
    .line 52
    .line 53
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    iget p3, p1, Landroid/os/Message;->arg1:I

    .line 57
    .line 58
    const-string p4, "[MCF_DS_LIB]_DeviceSyncManager"

    .line 59
    .line 60
    invoke-static {p2, p3, p4}, Lcom/android/server/accessibility/GestureWakeup$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 61
    .line 62
    .line 63
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 64
    .line 65
    const/4 p2, 0x5

    .line 66
    if-ne p1, v1, :cond_3

    .line 67
    .line 68
    iget-object p0, p0, Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager$2;->this$0:Lcom/samsung/android/mcfds/lib/DeviceSyncManager;

    .line 69
    .line 70
    iput p2, p0, Lcom/samsung/android/mcfds/lib/DeviceSyncManager;->mServiceState:I

    .line 71
    .line 72
    invoke-static {p0, p2}, Lcom/samsung/android/mcfds/lib/DeviceSyncManager;->access$200(Lcom/samsung/android/mcfds/lib/DeviceSyncManager;I)V

    .line 73
    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_3
    iget-object p0, p0, Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager$2;->this$0:Lcom/samsung/android/mcfds/lib/DeviceSyncManager;

    .line 77
    .line 78
    iget p1, p0, Lcom/samsung/android/mcfds/lib/DeviceSyncManager;->mServiceState:I

    .line 79
    .line 80
    const/4 p3, 0x4

    .line 81
    if-eq p1, p2, :cond_4

    .line 82
    .line 83
    iput p3, p0, Lcom/samsung/android/mcfds/lib/DeviceSyncManager;->mServiceState:I

    .line 84
    .line 85
    goto :goto_1

    .line 86
    :cond_4
    iput p3, p0, Lcom/samsung/android/mcfds/lib/DeviceSyncManager;->mServiceState:I

    .line 87
    .line 88
    invoke-static {p0, p3}, Lcom/samsung/android/mcfds/lib/DeviceSyncManager;->access$200(Lcom/samsung/android/mcfds/lib/DeviceSyncManager;I)V

    .line 89
    .line 90
    .line 91
    :cond_5
    :goto_1
    return v1

    .line 92
    :cond_6
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    return v1
.end method
