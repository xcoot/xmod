.class public abstract Landroid/net/INetworkStackConnector$Stub;
.super Landroid/os/Binder;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/net/INetworkStackConnector;


# static fields
.field static final TRANSACTION_allowTestUid:I = 0x5

.field static final TRANSACTION_fetchIpMemoryStore:I = 0x4

.field static final TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final TRANSACTION_makeDhcpServer:I = 0x1

.field static final TRANSACTION_makeIpClient:I = 0x3

.field static final TRANSACTION_makeNetworkMonitor:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 4
    sget-object v0, Landroid/net/INetworkStackConnector;->DESCRIPTOR:Ljava/lang/String;

    .line 6
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 9
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/net/INetworkStackConnector;
    .locals 2

    .line 1
    if-nez p0, :cond_0

    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    sget-object v0, Landroid/net/INetworkStackConnector;->DESCRIPTOR:Ljava/lang/String;

    .line 7
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_1

    .line 13
    instance-of v1, v0, Landroid/net/INetworkStackConnector;

    .line 15
    if-eqz v1, :cond_1

    .line 17
    check-cast v0, Landroid/net/INetworkStackConnector;

    .line 19
    return-object v0

    .line 20
    :cond_1
    new-instance v0, Landroid/net/INetworkStackConnector$Stub$Proxy;

    .line 22
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v1, -0x1

    .line 26
    iput v1, v0, Landroid/net/INetworkStackConnector$Stub$Proxy;->mCachedVersion:I

    .line 28
    const-string v1, "-1"

    .line 30
    iput-object v1, v0, Landroid/net/INetworkStackConnector$Stub$Proxy;->mCachedHash:Ljava/lang/String;

    .line 32
    iput-object p0, v0, Landroid/net/INetworkStackConnector$Stub$Proxy;->mRemote:Landroid/os/IBinder;

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
    sget-object v0, Landroid/net/INetworkStackConnector;->DESCRIPTOR:Ljava/lang/String;

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
    invoke-interface {p0}, Landroid/net/INetworkStackConnector;->getInterfaceVersion()I

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
    invoke-interface {p0}, Landroid/net/INetworkStackConnector;->getInterfaceHash()Ljava/lang/String;

    .line 47
    move-result-object p0

    .line 48
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 51
    return v2

    .line 52
    :cond_3
    if-eq p1, v2, :cond_8

    .line 54
    const/4 v0, 0x2

    .line 55
    if-eq p1, v0, :cond_7

    .line 57
    const/4 v0, 0x3

    .line 58
    if-eq p1, v0, :cond_6

    .line 60
    const/4 v0, 0x4

    .line 61
    if-eq p1, v0, :cond_5

    .line 63
    const/4 v0, 0x5

    .line 64
    if-eq p1, v0, :cond_4

    .line 66
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 69
    move-result p0

    .line 70
    return p0

    .line 71
    :cond_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 74
    move-result p1

    .line 75
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 78
    move-result-object p2

    .line 79
    invoke-static {p2}, Landroid/net/INetworkStackStatusCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkStackStatusCallback;

    .line 82
    move-result-object p2

    .line 83
    invoke-interface {p0, p1, p2}, Landroid/net/INetworkStackConnector;->allowTestUid(ILandroid/net/INetworkStackStatusCallback;)V

    .line 86
    goto :goto_0

    .line 87
    :cond_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 90
    move-result-object p1

    .line 91
    invoke-static {p1}, Landroid/net/IIpMemoryStoreCallbacks$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IIpMemoryStoreCallbacks;

    .line 94
    move-result-object p1

    .line 95
    invoke-interface {p0, p1}, Landroid/net/INetworkStackConnector;->fetchIpMemoryStore(Landroid/net/IIpMemoryStoreCallbacks;)V

    .line 98
    goto :goto_0

    .line 99
    :cond_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 102
    move-result-object p1

    .line 103
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 106
    move-result-object p2

    .line 107
    invoke-static {p2}, Landroid/net/ip/IIpClientCallbacks$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/ip/IIpClientCallbacks;

    .line 110
    move-result-object p2

    .line 111
    invoke-interface {p0, p1, p2}, Landroid/net/INetworkStackConnector;->makeIpClient(Ljava/lang/String;Landroid/net/ip/IIpClientCallbacks;)V

    .line 114
    goto :goto_0

    .line 115
    :cond_7
    sget-object p1, Landroid/net/Network;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 117
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 120
    move-result-object p1

    .line 121
    check-cast p1, Landroid/net/Network;

    .line 123
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 126
    move-result-object p3

    .line 127
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 130
    move-result-object p2

    .line 131
    invoke-static {p2}, Landroid/net/INetworkMonitorCallbacks$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkMonitorCallbacks;

    .line 134
    move-result-object p2

    .line 135
    invoke-interface {p0, p1, p3, p2}, Landroid/net/INetworkStackConnector;->makeNetworkMonitor(Landroid/net/Network;Ljava/lang/String;Landroid/net/INetworkMonitorCallbacks;)V

    .line 138
    goto :goto_0

    .line 139
    :cond_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 142
    move-result-object p1

    .line 143
    sget-object p3, Landroid/net/dhcp/DhcpServingParamsParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 145
    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 148
    move-result-object p3

    .line 149
    check-cast p3, Landroid/net/dhcp/DhcpServingParamsParcel;

    .line 151
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 154
    move-result-object p2

    .line 155
    invoke-static {p2}, Landroid/net/dhcp/IDhcpServerCallbacks$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/dhcp/IDhcpServerCallbacks;

    .line 158
    move-result-object p2

    .line 159
    invoke-interface {p0, p1, p3, p2}, Landroid/net/INetworkStackConnector;->makeDhcpServer(Ljava/lang/String;Landroid/net/dhcp/DhcpServingParamsParcel;Landroid/net/dhcp/IDhcpServerCallbacks;)V

    .line 162
    :goto_0
    return v2
.end method
