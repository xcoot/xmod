.class public final Lcom/android/server/health/HealthRegCallbackAidl$HalInfoCallback;
.super Landroid/os/Binder;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lvendor/samsung/hardware/health/ISehHealthInfoCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/server/health/HealthRegCallbackAidl;


# direct methods
.method public constructor <init>(Lcom/android/server/health/HealthRegCallbackAidl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/health/HealthRegCallbackAidl$HalInfoCallback;->this$0:Lcom/android/server/health/HealthRegCallbackAidl;

    .line 3
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 6
    invoke-virtual {p0}, Landroid/os/Binder;->markVintfStability()V

    .line 9
    sget-object p1, Lvendor/samsung/hardware/health/ISehHealthInfoCallback;->DESCRIPTOR:Ljava/lang/String;

    .line 11
    invoke-virtual {p0, p0, p1}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 14
    return-void
.end method


# virtual methods
.method public final asBinder()Landroid/os/IBinder;
    .locals 0

    .line 1
    return-object p0
.end method

.method public final onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4

    .line 1
    sget-object v0, Lvendor/samsung/hardware/health/ISehHealthInfoCallback;->DESCRIPTOR:Ljava/lang/String;

    .line 3
    const v1, 0xffffff

    .line 6
    const/4 v2, 0x1

    .line 7
    if-lt p1, v2, :cond_0

    .line 9
    if-gt p1, v1, :cond_0

    .line 11
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 14
    :cond_0
    const v3, 0x5f4e5446

    .line 17
    if-ne p1, v3, :cond_1

    .line 19
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 22
    return v2

    .line 23
    :cond_1
    if-ne p1, v1, :cond_2

    .line 25
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 28
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 31
    return v2

    .line 32
    :cond_2
    const v0, 0xfffffe

    .line 35
    if-ne p1, v0, :cond_3

    .line 37
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 40
    const-string p0, "632113d2738773fc3ee67a40cf37aa99a91f8bac"

    .line 42
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 45
    return v2

    .line 46
    :cond_3
    if-eq p1, v2, :cond_4

    .line 48
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 51
    move-result p0

    .line 52
    return p0

    .line 53
    :cond_4
    sget-object p1, Lvendor/samsung/hardware/health/SehHealthInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 55
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 58
    move-result-object p1

    .line 59
    check-cast p1, Lvendor/samsung/hardware/health/SehHealthInfo;

    .line 61
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 64
    iget-object p0, p0, Lcom/android/server/health/HealthRegCallbackAidl$HalInfoCallback;->this$0:Lcom/android/server/health/HealthRegCallbackAidl;

    .line 66
    iget-object p0, p0, Lcom/android/server/health/HealthRegCallbackAidl;->mServiceInfoCallback:Lcom/android/server/BatteryService$$ExternalSyntheticLambda11;

    .line 68
    invoke-virtual {p0, p1}, Lcom/android/server/BatteryService$$ExternalSyntheticLambda11;->update(Lvendor/samsung/hardware/health/SehHealthInfo;)V

    .line 71
    return v2
.end method
