.class public final synthetic Lcom/samsung/android/security/keystore/AttestationUtils$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic f$0:Landroid/system/keystore2/KeyDescriptor;

.field public final synthetic f$1:[Landroid/hardware/security/keymint/KeyParameter;


# direct methods
.method public synthetic constructor <init>(Landroid/system/keystore2/KeyDescriptor;[Landroid/hardware/security/keymint/KeyParameter;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/samsung/android/security/keystore/AttestationUtils$$ExternalSyntheticLambda0;->f$0:Landroid/system/keystore2/KeyDescriptor;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/samsung/android/security/keystore/AttestationUtils$$ExternalSyntheticLambda0;->f$1:[Landroid/hardware/security/keymint/KeyParameter;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final execute(Landroid/security/samsungattestation/ISamsungAttestation;)Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/security/keystore/AttestationUtils$$ExternalSyntheticLambda0;->f$0:Landroid/system/keystore2/KeyDescriptor;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/samsung/android/security/keystore/AttestationUtils$$ExternalSyntheticLambda0;->f$1:[Landroid/hardware/security/keymint/KeyParameter;

    .line 4
    .line 5
    check-cast p1, Landroid/security/samsungattestation/ISamsungAttestation$Stub$Proxy;

    .line 6
    .line 7
    iget-object v1, p1, Landroid/security/samsungattestation/ISamsungAttestation$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 8
    .line 9
    invoke-static {v1}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    :try_start_0
    const-string v3, "android.security.samsungattestation.ISamsungAttestation"

    .line 18
    .line 19
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    const/4 v3, 0x0

    .line 23
    invoke-virtual {v1, v0, v3}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1, p0, v3}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 27
    .line 28
    .line 29
    iget-object p0, p1, Landroid/security/samsungattestation/ISamsungAttestation$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 30
    .line 31
    const/4 p1, 0x1

    .line 32
    invoke-interface {p0, p1, v1, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 33
    .line 34
    .line 35
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 36
    .line 37
    .line 38
    sget-object p0, Landroid/hardware/security/keymint/Certificate;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 39
    .line 40
    invoke-virtual {v2, p0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    check-cast p0, [Landroid/hardware/security/keymint/Certificate;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    .line 46
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 50
    .line 51
    .line 52
    return-object p0

    .line 53
    :catchall_0
    move-exception p0

    .line 54
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 58
    .line 59
    .line 60
    throw p0
.end method
