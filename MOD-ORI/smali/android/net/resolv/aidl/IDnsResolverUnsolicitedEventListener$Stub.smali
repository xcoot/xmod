.class public abstract Landroid/net/resolv/aidl/IDnsResolverUnsolicitedEventListener$Stub;
.super Landroid/os/Binder;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/net/resolv/aidl/IDnsResolverUnsolicitedEventListener;


# static fields
.field static final TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final TRANSACTION_onDnsHealthEvent:I = 0x1

.field static final TRANSACTION_onNat64PrefixEvent:I = 0x2

.field static final TRANSACTION_onPrivateDnsValidationEvent:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Landroid/net/resolv/aidl/IDnsResolverUnsolicitedEventListener;->DESCRIPTOR:Ljava/lang/String;

    .line 5
    .line 6
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/net/resolv/aidl/IDnsResolverUnsolicitedEventListener;
    .locals 2

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    sget-object v0, Landroid/net/resolv/aidl/IDnsResolverUnsolicitedEventListener;->DESCRIPTOR:Ljava/lang/String;

    .line 6
    .line 7
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    instance-of v1, v0, Landroid/net/resolv/aidl/IDnsResolverUnsolicitedEventListener;

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    check-cast v0, Landroid/net/resolv/aidl/IDnsResolverUnsolicitedEventListener;

    .line 18
    .line 19
    return-object v0

    .line 20
    :cond_1
    new-instance v0, Landroid/net/resolv/aidl/IDnsResolverUnsolicitedEventListener$Stub$Proxy;

    .line 21
    .line 22
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 23
    .line 24
    .line 25
    const/4 v1, -0x1

    .line 26
    iput v1, v0, Landroid/net/resolv/aidl/IDnsResolverUnsolicitedEventListener$Stub$Proxy;->mCachedVersion:I

    .line 27
    .line 28
    const-string v1, "-1"

    .line 29
    .line 30
    iput-object v1, v0, Landroid/net/resolv/aidl/IDnsResolverUnsolicitedEventListener$Stub$Proxy;->mCachedHash:Ljava/lang/String;

    .line 31
    .line 32
    iput-object p0, v0, Landroid/net/resolv/aidl/IDnsResolverUnsolicitedEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 33
    .line 34
    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 1
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    sget-object v0, Landroid/net/resolv/aidl/IDnsResolverUnsolicitedEventListener;->DESCRIPTOR:Ljava/lang/String;

    .line 2
    .line 3
    const v1, 0xffffff

    .line 4
    .line 5
    .line 6
    const/4 v2, 0x1

    .line 7
    if-lt p1, v2, :cond_0

    .line 8
    .line 9
    if-gt p1, v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    const v3, 0x5f4e5446

    .line 15
    .line 16
    .line 17
    if-ne p1, v3, :cond_1

    .line 18
    .line 19
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    return v2

    .line 23
    :cond_1
    if-ne p1, v1, :cond_2

    .line 24
    .line 25
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 26
    .line 27
    .line 28
    invoke-interface {p0}, Landroid/net/resolv/aidl/IDnsResolverUnsolicitedEventListener;->getInterfaceVersion()I

    .line 29
    .line 30
    .line 31
    move-result p0

    .line 32
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 33
    .line 34
    .line 35
    return v2

    .line 36
    :cond_2
    const v0, 0xfffffe

    .line 37
    .line 38
    .line 39
    if-ne p1, v0, :cond_3

    .line 40
    .line 41
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 42
    .line 43
    .line 44
    invoke-interface {p0}, Landroid/net/resolv/aidl/IDnsResolverUnsolicitedEventListener;->getInterfaceHash()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    return v2

    .line 52
    :cond_3
    if-eq p1, v2, :cond_6

    .line 53
    .line 54
    const/4 v0, 0x2

    .line 55
    if-eq p1, v0, :cond_5

    .line 56
    .line 57
    const/4 v0, 0x3

    .line 58
    if-eq p1, v0, :cond_4

    .line 59
    .line 60
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 61
    .line 62
    .line 63
    move-result p0

    .line 64
    return p0

    .line 65
    :cond_4
    sget-object p1, Landroid/net/resolv/aidl/PrivateDnsValidationEventParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 66
    .line 67
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    check-cast p1, Landroid/net/resolv/aidl/PrivateDnsValidationEventParcel;

    .line 72
    .line 73
    invoke-interface {p0, p1}, Landroid/net/resolv/aidl/IDnsResolverUnsolicitedEventListener;->onPrivateDnsValidationEvent(Landroid/net/resolv/aidl/PrivateDnsValidationEventParcel;)V

    .line 74
    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_5
    sget-object p1, Landroid/net/resolv/aidl/Nat64PrefixEventParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 78
    .line 79
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    check-cast p1, Landroid/net/resolv/aidl/Nat64PrefixEventParcel;

    .line 84
    .line 85
    invoke-interface {p0, p1}, Landroid/net/resolv/aidl/IDnsResolverUnsolicitedEventListener;->onNat64PrefixEvent(Landroid/net/resolv/aidl/Nat64PrefixEventParcel;)V

    .line 86
    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_6
    sget-object p1, Landroid/net/resolv/aidl/DnsHealthEventParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 90
    .line 91
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    check-cast p1, Landroid/net/resolv/aidl/DnsHealthEventParcel;

    .line 96
    .line 97
    invoke-interface {p0, p1}, Landroid/net/resolv/aidl/IDnsResolverUnsolicitedEventListener;->onDnsHealthEvent(Landroid/net/resolv/aidl/DnsHealthEventParcel;)V

    .line 98
    .line 99
    .line 100
    :goto_0
    return v2
.end method
