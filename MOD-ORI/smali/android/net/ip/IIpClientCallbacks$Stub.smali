.class public abstract Landroid/net/ip/IIpClientCallbacks$Stub;
.super Landroid/os/Binder;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/net/ip/IIpClientCallbacks;


# static fields
.field static final TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final TRANSACTION_installPacketFilter:I = 0xa

.field static final TRANSACTION_onIpClientCreated:I = 0x1

.field static final TRANSACTION_onLinkPropertiesChange:I = 0x7

.field static final TRANSACTION_onNewDhcpResults:I = 0x4

.field static final TRANSACTION_onPostDhcpAction:I = 0x3

.field static final TRANSACTION_onPreDhcpAction:I = 0x2

.field static final TRANSACTION_onPreconnectionStart:I = 0xe

.field static final TRANSACTION_onProvisioningFailure:I = 0x6

.field static final TRANSACTION_onProvisioningSuccess:I = 0x5

.field static final TRANSACTION_onQuit:I = 0x9

.field static final TRANSACTION_onReachabilityFailure:I = 0xf

.field static final TRANSACTION_onReachabilityLost:I = 0x8

.field static final TRANSACTION_setFallbackMulticastFilter:I = 0xc

.field static final TRANSACTION_setMaxDtimMultiplier:I = 0x10

.field static final TRANSACTION_setNeighborDiscoveryOffload:I = 0xd

.field static final TRANSACTION_startReadPacketFilter:I = 0xb


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Landroid/net/ip/IIpClientCallbacks;->DESCRIPTOR:Ljava/lang/String;

    .line 5
    .line 6
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/net/ip/IIpClientCallbacks;
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
    sget-object v0, Landroid/net/ip/IIpClientCallbacks;->DESCRIPTOR:Ljava/lang/String;

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
    instance-of v1, v0, Landroid/net/ip/IIpClientCallbacks;

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    check-cast v0, Landroid/net/ip/IIpClientCallbacks;

    .line 18
    .line 19
    return-object v0

    .line 20
    :cond_1
    new-instance v0, Landroid/net/ip/IIpClientCallbacks$Stub$Proxy;

    .line 21
    .line 22
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 23
    .line 24
    .line 25
    const/4 v1, -0x1

    .line 26
    iput v1, v0, Landroid/net/ip/IIpClientCallbacks$Stub$Proxy;->mCachedVersion:I

    .line 27
    .line 28
    const-string v1, "-1"

    .line 29
    .line 30
    iput-object v1, v0, Landroid/net/ip/IIpClientCallbacks$Stub$Proxy;->mCachedHash:Ljava/lang/String;

    .line 31
    .line 32
    iput-object p0, v0, Landroid/net/ip/IIpClientCallbacks$Stub$Proxy;->mRemote:Landroid/os/IBinder;

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
    sget-object v0, Landroid/net/ip/IIpClientCallbacks;->DESCRIPTOR:Ljava/lang/String;

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
    invoke-interface {p0}, Landroid/net/ip/IIpClientCallbacks;->getInterfaceVersion()I

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
    invoke-interface {p0}, Landroid/net/ip/IIpClientCallbacks;->getInterfaceHash()Ljava/lang/String;

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
    packed-switch p1, :pswitch_data_0

    .line 53
    .line 54
    .line 55
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 56
    .line 57
    .line 58
    move-result p0

    .line 59
    return p0

    .line 60
    :pswitch_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 61
    .line 62
    .line 63
    move-result p1

    .line 64
    invoke-interface {p0, p1}, Landroid/net/ip/IIpClientCallbacks;->setMaxDtimMultiplier(I)V

    .line 65
    .line 66
    .line 67
    goto/16 :goto_0

    .line 68
    .line 69
    :pswitch_1
    sget-object p1, Landroid/net/networkstack/aidl/ip/ReachabilityLossInfoParcelable;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 70
    .line 71
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    check-cast p1, Landroid/net/networkstack/aidl/ip/ReachabilityLossInfoParcelable;

    .line 76
    .line 77
    invoke-interface {p0, p1}, Landroid/net/ip/IIpClientCallbacks;->onReachabilityFailure(Landroid/net/networkstack/aidl/ip/ReachabilityLossInfoParcelable;)V

    .line 78
    .line 79
    .line 80
    goto/16 :goto_0

    .line 81
    .line 82
    :pswitch_2
    sget-object p1, Landroid/net/Layer2PacketParcelable;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 83
    .line 84
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    invoke-interface {p0, p1}, Landroid/net/ip/IIpClientCallbacks;->onPreconnectionStart(Ljava/util/List;)V

    .line 89
    .line 90
    .line 91
    goto/16 :goto_0

    .line 92
    .line 93
    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 94
    .line 95
    .line 96
    move-result p1

    .line 97
    invoke-interface {p0, p1}, Landroid/net/ip/IIpClientCallbacks;->setNeighborDiscoveryOffload(Z)V

    .line 98
    .line 99
    .line 100
    goto :goto_0

    .line 101
    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 102
    .line 103
    .line 104
    move-result p1

    .line 105
    invoke-interface {p0, p1}, Landroid/net/ip/IIpClientCallbacks;->setFallbackMulticastFilter(Z)V

    .line 106
    .line 107
    .line 108
    goto :goto_0

    .line 109
    :pswitch_5
    invoke-interface {p0}, Landroid/net/ip/IIpClientCallbacks;->startReadPacketFilter()V

    .line 110
    .line 111
    .line 112
    goto :goto_0

    .line 113
    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    invoke-interface {p0, p1}, Landroid/net/ip/IIpClientCallbacks;->installPacketFilter([B)V

    .line 118
    .line 119
    .line 120
    goto :goto_0

    .line 121
    :pswitch_7
    invoke-interface {p0}, Landroid/net/ip/IIpClientCallbacks;->onQuit()V

    .line 122
    .line 123
    .line 124
    goto :goto_0

    .line 125
    :pswitch_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    invoke-interface {p0, p1}, Landroid/net/ip/IIpClientCallbacks;->onReachabilityLost(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    goto :goto_0

    .line 133
    :pswitch_9
    sget-object p1, Landroid/net/LinkProperties;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 134
    .line 135
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    move-result-object p1

    .line 139
    check-cast p1, Landroid/net/LinkProperties;

    .line 140
    .line 141
    invoke-interface {p0, p1}, Landroid/net/ip/IIpClientCallbacks;->onLinkPropertiesChange(Landroid/net/LinkProperties;)V

    .line 142
    .line 143
    .line 144
    goto :goto_0

    .line 145
    :pswitch_a
    sget-object p1, Landroid/net/LinkProperties;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 146
    .line 147
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    move-result-object p1

    .line 151
    check-cast p1, Landroid/net/LinkProperties;

    .line 152
    .line 153
    invoke-interface {p0, p1}, Landroid/net/ip/IIpClientCallbacks;->onProvisioningFailure(Landroid/net/LinkProperties;)V

    .line 154
    .line 155
    .line 156
    goto :goto_0

    .line 157
    :pswitch_b
    sget-object p1, Landroid/net/LinkProperties;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 158
    .line 159
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 160
    .line 161
    .line 162
    move-result-object p1

    .line 163
    check-cast p1, Landroid/net/LinkProperties;

    .line 164
    .line 165
    invoke-interface {p0, p1}, Landroid/net/ip/IIpClientCallbacks;->onProvisioningSuccess(Landroid/net/LinkProperties;)V

    .line 166
    .line 167
    .line 168
    goto :goto_0

    .line 169
    :pswitch_c
    sget-object p1, Landroid/net/DhcpResultsParcelable;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 170
    .line 171
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 172
    .line 173
    .line 174
    move-result-object p1

    .line 175
    check-cast p1, Landroid/net/DhcpResultsParcelable;

    .line 176
    .line 177
    invoke-interface {p0, p1}, Landroid/net/ip/IIpClientCallbacks;->onNewDhcpResults(Landroid/net/DhcpResultsParcelable;)V

    .line 178
    .line 179
    .line 180
    goto :goto_0

    .line 181
    :pswitch_d
    invoke-interface {p0}, Landroid/net/ip/IIpClientCallbacks;->onPostDhcpAction()V

    .line 182
    .line 183
    .line 184
    goto :goto_0

    .line 185
    :pswitch_e
    invoke-interface {p0}, Landroid/net/ip/IIpClientCallbacks;->onPreDhcpAction()V

    .line 186
    .line 187
    .line 188
    goto :goto_0

    .line 189
    :pswitch_f
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 190
    .line 191
    .line 192
    move-result-object p1

    .line 193
    invoke-static {p1}, Landroid/net/ip/IIpClient$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/ip/IIpClient;

    .line 194
    .line 195
    .line 196
    move-result-object p1

    .line 197
    invoke-interface {p0, p1}, Landroid/net/ip/IIpClientCallbacks;->onIpClientCreated(Landroid/net/ip/IIpClient;)V

    .line 198
    .line 199
    .line 200
    :goto_0
    return v2

    .line 201
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
