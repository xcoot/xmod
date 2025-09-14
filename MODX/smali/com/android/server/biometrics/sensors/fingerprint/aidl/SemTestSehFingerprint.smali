.class public final Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTestSehFingerprint;
.super Landroid/os/Binder;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lvendor/samsung/hardware/biometrics/fingerprint/ISehFingerprint;


# instance fields
.field public final mRequestActionTable:Landroid/util/SparseIntArray;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 4
    invoke-virtual {p0}, Landroid/os/Binder;->markVintfStability()V

    .line 7
    sget-object v0, Lvendor/samsung/hardware/biometrics/fingerprint/ISehFingerprint;->DESCRIPTOR:Ljava/lang/String;

    .line 9
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 12
    new-instance v0, Landroid/util/SparseIntArray;

    .line 14
    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 17
    iput-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTestSehFingerprint;->mRequestActionTable:Landroid/util/SparseIntArray;

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lvendor/samsung/hardware/biometrics/fingerprint/ISehFingerprint;
    .locals 2

    .line 1
    if-nez p0, :cond_0

    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    sget-object v0, Lvendor/samsung/hardware/biometrics/fingerprint/ISehFingerprint;->DESCRIPTOR:Ljava/lang/String;

    .line 7
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_1

    .line 13
    instance-of v1, v0, Lvendor/samsung/hardware/biometrics/fingerprint/ISehFingerprint;

    .line 15
    if-eqz v1, :cond_1

    .line 17
    check-cast v0, Lvendor/samsung/hardware/biometrics/fingerprint/ISehFingerprint;

    .line 19
    return-object v0

    .line 20
    :cond_1
    new-instance v0, Lvendor/samsung/hardware/biometrics/fingerprint/ISehFingerprint$Stub$Proxy;

    .line 22
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p0, v0, Lvendor/samsung/hardware/biometrics/fingerprint/ISehFingerprint$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 27
    return-object v0
.end method


# virtual methods
.method public final asBinder()Landroid/os/IBinder;
    .locals 0

    .line 1
    return-object p0
.end method

.method public final getMaxTransactionId()I
    .locals 0

    .line 1
    const p0, 0xfffffe

    .line 4
    return p0
.end method

.method public final getTransactionName(I)Ljava/lang/String;
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    if-eq p1, p0, :cond_0

    .line 4
    packed-switch p1, :pswitch_data_0

    .line 7
    const/4 p0, 0x0

    .line 8
    goto :goto_0

    .line 9
    :pswitch_0
    const-string/jumbo p0, "getInterfaceVersion"

    .line 12
    goto :goto_0

    .line 13
    :pswitch_1
    const-string/jumbo p0, "getInterfaceHash"

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const-string/jumbo p0, "sehRequest"

    .line 20
    :goto_0
    return-object p0

    .line 21
    :pswitch_data_0
    .packed-switch 0xfffffe
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4

    .line 1
    sget-object v0, Lvendor/samsung/hardware/biometrics/fingerprint/ISehFingerprint;->DESCRIPTOR:Ljava/lang/String;

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
    const/4 p0, 0x0

    .line 29
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 32
    return v2

    .line 33
    :cond_2
    const v0, 0xfffffe

    .line 36
    if-ne p1, v0, :cond_3

    .line 38
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 41
    const-string p0, ""

    .line 43
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 46
    return v2

    .line 47
    :cond_3
    if-eq p1, v2, :cond_4

    .line 49
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 52
    move-result p0

    .line 53
    return p0

    .line 54
    :cond_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 57
    move-result p1

    .line 58
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 61
    move-result p4

    .line 62
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 65
    move-result v0

    .line 66
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    .line 69
    move-result-object v1

    .line 70
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 73
    invoke-virtual {p0, p1, p4, v0, v1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTestSehFingerprint;->sehRequest(III[B)Lvendor/samsung/hardware/biometrics/fingerprint/SehResult;

    .line 76
    move-result-object p0

    .line 77
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 80
    invoke-virtual {p3, p0, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 83
    return v2
.end method

.method public final sehRequest(III[B)Lvendor/samsung/hardware/biometrics/fingerprint/SehResult;
    .locals 0

    .line 1
    new-instance p1, Lvendor/samsung/hardware/biometrics/fingerprint/SehResult;

    .line 3
    invoke-direct {p1}, Lvendor/samsung/hardware/biometrics/fingerprint/SehResult;-><init>()V

    .line 6
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTestSehFingerprint;->mRequestActionTable:Landroid/util/SparseIntArray;

    .line 8
    const/4 p3, 0x0

    .line 9
    invoke-virtual {p0, p2, p3}, Landroid/util/SparseIntArray;->get(II)I

    .line 12
    move-result p0

    .line 13
    iput p0, p1, Lvendor/samsung/hardware/biometrics/fingerprint/SehResult;->retValue:I

    .line 15
    return-object p1
.end method
