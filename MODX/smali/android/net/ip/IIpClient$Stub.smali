.class public abstract Landroid/net/ip/IIpClient$Stub;
.super Landroid/os/Binder;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/net/ip/IIpClient;


# static fields
.field static final TRANSACTION_addKeepalivePacketFilter:I = 0xa

.field static final TRANSACTION_addNattKeepalivePacketFilter:I = 0xd

.field static final TRANSACTION_completedPreDhcpAction:I = 0x1

.field static final TRANSACTION_confirmConfiguration:I = 0x2

.field static final TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final TRANSACTION_notifyPreconnectionComplete:I = 0xe

.field static final TRANSACTION_readPacketFilterComplete:I = 0x3

.field static final TRANSACTION_removeKeepalivePacketFilter:I = 0xb

.field static final TRANSACTION_setHttpProxy:I = 0x8

.field static final TRANSACTION_setL2KeyAndGroupHint:I = 0xc

.field static final TRANSACTION_setMulticastFilter:I = 0x9

.field static final TRANSACTION_setTcpBufferSizes:I = 0x7

.field static final TRANSACTION_shutdown:I = 0x4

.field static final TRANSACTION_startProvisioning:I = 0x5

.field static final TRANSACTION_stop:I = 0x6

.field static final TRANSACTION_updateApfCapabilities:I = 0x10

.field static final TRANSACTION_updateLayer2Information:I = 0xf


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 4
    sget-object v0, Landroid/net/ip/IIpClient;->DESCRIPTOR:Ljava/lang/String;

    .line 6
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 9
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/net/ip/IIpClient;
    .locals 2

    .line 1
    if-nez p0, :cond_0

    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    sget-object v0, Landroid/net/ip/IIpClient;->DESCRIPTOR:Ljava/lang/String;

    .line 7
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_1

    .line 13
    instance-of v1, v0, Landroid/net/ip/IIpClient;

    .line 15
    if-eqz v1, :cond_1

    .line 17
    check-cast v0, Landroid/net/ip/IIpClient;

    .line 19
    return-object v0

    .line 20
    :cond_1
    new-instance v0, Landroid/net/ip/IIpClient$Stub$Proxy;

    .line 22
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v1, -0x1

    .line 26
    iput v1, v0, Landroid/net/ip/IIpClient$Stub$Proxy;->mCachedVersion:I

    .line 28
    const-string v1, "-1"

    .line 30
    iput-object v1, v0, Landroid/net/ip/IIpClient$Stub$Proxy;->mCachedHash:Ljava/lang/String;

    .line 32
    iput-object p0, v0, Landroid/net/ip/IIpClient$Stub$Proxy;->mRemote:Landroid/os/IBinder;

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
    sget-object v0, Landroid/net/ip/IIpClient;->DESCRIPTOR:Ljava/lang/String;

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
    invoke-interface {p0}, Landroid/net/ip/IIpClient;->getInterfaceVersion()I

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
    invoke-interface {p0}, Landroid/net/ip/IIpClient;->getInterfaceHash()Ljava/lang/String;

    .line 47
    move-result-object p0

    .line 48
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 51
    return v2

    .line 52
    :cond_3
    packed-switch p1, :pswitch_data_0

    .line 55
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 58
    move-result p0

    .line 59
    return p0

    .line 60
    :pswitch_0
    sget-object p1, Landroid/net/apf/ApfCapabilities;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 62
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 65
    move-result-object p1

    .line 66
    check-cast p1, Landroid/net/apf/ApfCapabilities;

    .line 68
    invoke-interface {p0, p1}, Landroid/net/ip/IIpClient;->updateApfCapabilities(Landroid/net/apf/ApfCapabilities;)V

    .line 71
    goto/16 :goto_0

    .line 73
    :pswitch_1
    sget-object p1, Landroid/net/Layer2InformationParcelable;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 75
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 78
    move-result-object p1

    .line 79
    check-cast p1, Landroid/net/Layer2InformationParcelable;

    .line 81
    invoke-interface {p0, p1}, Landroid/net/ip/IIpClient;->updateLayer2Information(Landroid/net/Layer2InformationParcelable;)V

    .line 84
    goto/16 :goto_0

    .line 86
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 89
    move-result p1

    .line 90
    invoke-interface {p0, p1}, Landroid/net/ip/IIpClient;->notifyPreconnectionComplete(Z)V

    .line 93
    goto/16 :goto_0

    .line 95
    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 98
    move-result p1

    .line 99
    sget-object p3, Landroid/net/NattKeepalivePacketDataParcelable;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 101
    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 104
    move-result-object p2

    .line 105
    check-cast p2, Landroid/net/NattKeepalivePacketDataParcelable;

    .line 107
    invoke-interface {p0, p1, p2}, Landroid/net/ip/IIpClient;->addNattKeepalivePacketFilter(ILandroid/net/NattKeepalivePacketDataParcelable;)V

    .line 110
    goto :goto_0

    .line 111
    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 114
    move-result-object p1

    .line 115
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 118
    move-result-object p2

    .line 119
    invoke-interface {p0, p1, p2}, Landroid/net/ip/IIpClient;->setL2KeyAndGroupHint(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    goto :goto_0

    .line 123
    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 126
    move-result p1

    .line 127
    invoke-interface {p0, p1}, Landroid/net/ip/IIpClient;->removeKeepalivePacketFilter(I)V

    .line 130
    goto :goto_0

    .line 131
    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 134
    move-result p1

    .line 135
    sget-object p3, Landroid/net/TcpKeepalivePacketDataParcelable;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 137
    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 140
    move-result-object p2

    .line 141
    check-cast p2, Landroid/net/TcpKeepalivePacketDataParcelable;

    .line 143
    invoke-interface {p0, p1, p2}, Landroid/net/ip/IIpClient;->addKeepalivePacketFilter(ILandroid/net/TcpKeepalivePacketDataParcelable;)V

    .line 146
    goto :goto_0

    .line 147
    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 150
    move-result p1

    .line 151
    invoke-interface {p0, p1}, Landroid/net/ip/IIpClient;->setMulticastFilter(Z)V

    .line 154
    goto :goto_0

    .line 155
    :pswitch_8
    sget-object p1, Landroid/net/ProxyInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 157
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 160
    move-result-object p1

    .line 161
    check-cast p1, Landroid/net/ProxyInfo;

    .line 163
    invoke-interface {p0, p1}, Landroid/net/ip/IIpClient;->setHttpProxy(Landroid/net/ProxyInfo;)V

    .line 166
    goto :goto_0

    .line 167
    :pswitch_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 170
    move-result-object p1

    .line 171
    invoke-interface {p0, p1}, Landroid/net/ip/IIpClient;->setTcpBufferSizes(Ljava/lang/String;)V

    .line 174
    goto :goto_0

    .line 175
    :pswitch_a
    invoke-interface {p0}, Landroid/net/ip/IIpClient;->stop()V

    .line 178
    goto :goto_0

    .line 179
    :pswitch_b
    sget-object p1, Landroid/net/ProvisioningConfigurationParcelable;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 181
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 184
    move-result-object p1

    .line 185
    check-cast p1, Landroid/net/ProvisioningConfigurationParcelable;

    .line 187
    invoke-interface {p0, p1}, Landroid/net/ip/IIpClient;->startProvisioning(Landroid/net/ProvisioningConfigurationParcelable;)V

    .line 190
    goto :goto_0

    .line 191
    :pswitch_c
    invoke-interface {p0}, Landroid/net/ip/IIpClient;->shutdown()V

    .line 194
    goto :goto_0

    .line 195
    :pswitch_d
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    .line 198
    move-result-object p1

    .line 199
    invoke-interface {p0, p1}, Landroid/net/ip/IIpClient;->readPacketFilterComplete([B)V

    .line 202
    goto :goto_0

    .line 203
    :pswitch_e
    invoke-interface {p0}, Landroid/net/ip/IIpClient;->confirmConfiguration()V

    .line 206
    goto :goto_0

    .line 207
    :pswitch_f
    invoke-interface {p0}, Landroid/net/ip/IIpClient;->completedPreDhcpAction()V

    .line 210
    :goto_0
    return v2

    .line 211
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
