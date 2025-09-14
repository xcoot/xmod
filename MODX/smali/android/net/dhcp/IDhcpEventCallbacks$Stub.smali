.class public abstract Landroid/net/dhcp/IDhcpEventCallbacks$Stub;
.super Landroid/os/Binder;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/net/dhcp/IDhcpEventCallbacks;


# static fields
.field static final TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final TRANSACTION_onLeasesChanged:I = 0x1

.field static final TRANSACTION_onNewPrefixRequest:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 4
    sget-object v0, Landroid/net/dhcp/IDhcpEventCallbacks;->DESCRIPTOR:Ljava/lang/String;

    .line 6
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 9
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/net/dhcp/IDhcpEventCallbacks;
    .locals 2

    .line 1
    if-nez p0, :cond_0

    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    sget-object v0, Landroid/net/dhcp/IDhcpEventCallbacks;->DESCRIPTOR:Ljava/lang/String;

    .line 7
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_1

    .line 13
    instance-of v1, v0, Landroid/net/dhcp/IDhcpEventCallbacks;

    .line 15
    if-eqz v1, :cond_1

    .line 17
    check-cast v0, Landroid/net/dhcp/IDhcpEventCallbacks;

    .line 19
    return-object v0

    .line 20
    :cond_1
    new-instance v0, Landroid/net/dhcp/IDhcpEventCallbacks$Stub$Proxy;

    .line 22
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v1, -0x1

    .line 26
    iput v1, v0, Landroid/net/dhcp/IDhcpEventCallbacks$Stub$Proxy;->mCachedVersion:I

    .line 28
    const-string v1, "-1"

    .line 30
    iput-object v1, v0, Landroid/net/dhcp/IDhcpEventCallbacks$Stub$Proxy;->mCachedHash:Ljava/lang/String;

    .line 32
    iput-object p0, v0, Landroid/net/dhcp/IDhcpEventCallbacks$Stub$Proxy;->mRemote:Landroid/os/IBinder;

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
    sget-object v0, Landroid/net/dhcp/IDhcpEventCallbacks;->DESCRIPTOR:Ljava/lang/String;

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
    invoke-interface {p0}, Landroid/net/dhcp/IDhcpEventCallbacks;->getInterfaceVersion()I

    .line 31
    move-result p0

    .line 32
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 35
    return v2

    .line 36
    :cond_2
    const v0, 0xfffffe

    .line 39
    if-ne p1, v0, :cond_3

    .line 41
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 44
    invoke-interface {p0}, Landroid/net/dhcp/IDhcpEventCallbacks;->getInterfaceHash()Ljava/lang/String;

    .line 47
    move-result-object p0

    .line 48
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 51
    return v2

    .line 52
    :cond_3
    if-eq p1, v2, :cond_5

    .line 54
    const/4 v0, 0x2

    .line 55
    if-eq p1, v0, :cond_4

    .line 57
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 60
    move-result p0

    .line 61
    return p0

    .line 62
    :cond_4
    sget-object p1, Landroid/net/IpPrefix;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 64
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 67
    move-result-object p1

    .line 68
    check-cast p1, Landroid/net/IpPrefix;

    .line 70
    invoke-interface {p0, p1}, Landroid/net/dhcp/IDhcpEventCallbacks;->onNewPrefixRequest(Landroid/net/IpPrefix;)V

    .line 73
    goto :goto_0

    .line 74
    :cond_5
    sget-object p1, Landroid/net/dhcp/DhcpLeaseParcelable;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 76
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    .line 79
    move-result-object p1

    .line 80
    invoke-interface {p0, p1}, Landroid/net/dhcp/IDhcpEventCallbacks;->onLeasesChanged(Ljava/util/List;)V

    .line 83
    :goto_0
    return v2
.end method
