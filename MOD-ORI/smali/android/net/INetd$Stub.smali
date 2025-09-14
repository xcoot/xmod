.class public abstract Landroid/net/INetd$Stub;
.super Landroid/os/Binder;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/net/INetd;


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String;

.field static final TRANSACTION_bandwidthAddNaughtyApp:I = 0x32

.field static final TRANSACTION_bandwidthAddNiceApp:I = 0x34

.field static final TRANSACTION_bandwidthEnableDataSaver:I = 0x3

.field static final TRANSACTION_bandwidthRemoveInterfaceAlert:I = 0x30

.field static final TRANSACTION_bandwidthRemoveInterfaceQuota:I = 0x2e

.field static final TRANSACTION_bandwidthRemoveNaughtyApp:I = 0x33

.field static final TRANSACTION_bandwidthRemoveNiceApp:I = 0x35

.field static final TRANSACTION_bandwidthSetGlobalAlert:I = 0x31

.field static final TRANSACTION_bandwidthSetInterfaceAlert:I = 0x2f

.field static final TRANSACTION_bandwidthSetInterfaceQuota:I = 0x2d

.field static final TRANSACTION_clatdStart:I = 0x25

.field static final TRANSACTION_clatdStop:I = 0x26

.field static final TRANSACTION_firewallAddUidInterfaceRules:I = 0x5b

.field static final TRANSACTION_firewallEnableChildChain:I = 0x4f

.field static final TRANSACTION_firewallRemoveUidInterfaceRules:I = 0x5c

.field static final TRANSACTION_firewallReplaceUidChain:I = 0x2

.field static final TRANSACTION_firewallSetFirewallType:I = 0x4c

.field static final TRANSACTION_firewallSetInterfaceRule:I = 0x4d

.field static final TRANSACTION_firewallSetUidRule:I = 0x4e

.field static final TRANSACTION_getFwmarkForNetwork:I = 0x60

.field static final TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final TRANSACTION_getOemNetd:I = 0x5e

.field static final TRANSACTION_getProcSysNet:I = 0x11

.field static final TRANSACTION_idletimerAddInterface:I = 0x22

.field static final TRANSACTION_idletimerRemoveInterface:I = 0x23

.field static final TRANSACTION_interfaceAddAddress:I = 0xf

.field static final TRANSACTION_interfaceClearAddrs:I = 0x54

.field static final TRANSACTION_interfaceDelAddress:I = 0x10

.field static final TRANSACTION_interfaceGetCfg:I = 0x51

.field static final TRANSACTION_interfaceGetList:I = 0x50

.field static final TRANSACTION_interfaceSetCfg:I = 0x52

.field static final TRANSACTION_interfaceSetEnableIPv6:I = 0x55

.field static final TRANSACTION_interfaceSetIPv6PrivacyExtensions:I = 0x53

.field static final TRANSACTION_interfaceSetMtu:I = 0x56

.field static final TRANSACTION_ipSecAddSecurityAssociation:I = 0x15

.field static final TRANSACTION_ipSecAddSecurityPolicy:I = 0x19

.field static final TRANSACTION_ipSecAddTunnelInterface:I = 0x1c

.field static final TRANSACTION_ipSecAllocateSpi:I = 0x14

.field static final TRANSACTION_ipSecApplyTransportModeTransform:I = 0x17

.field static final TRANSACTION_ipSecDeleteSecurityAssociation:I = 0x16

.field static final TRANSACTION_ipSecDeleteSecurityPolicy:I = 0x1b

.field static final TRANSACTION_ipSecMigrate:I = 0x6c

.field static final TRANSACTION_ipSecRemoveTransportModeTransform:I = 0x18

.field static final TRANSACTION_ipSecRemoveTunnelInterface:I = 0x1e

.field static final TRANSACTION_ipSecSetEncapSocketOwner:I = 0x13

.field static final TRANSACTION_ipSecUpdateSecurityPolicy:I = 0x1a

.field static final TRANSACTION_ipSecUpdateTunnelInterface:I = 0x1d

.field static final TRANSACTION_ipfwdAddInterfaceForward:I = 0x2b

.field static final TRANSACTION_ipfwdDisableForwarding:I = 0x2a

.field static final TRANSACTION_ipfwdEnableForwarding:I = 0x29

.field static final TRANSACTION_ipfwdEnabled:I = 0x27

.field static final TRANSACTION_ipfwdGetRequesterList:I = 0x28

.field static final TRANSACTION_ipfwdRemoveInterfaceForward:I = 0x2c

.field static final TRANSACTION_isAlive:I = 0x1

.field static final TRANSACTION_networkAddInterface:I = 0x7

.field static final TRANSACTION_networkAddLegacyRoute:I = 0x40

.field static final TRANSACTION_networkAddRoute:I = 0x3e

.field static final TRANSACTION_networkAddRouteParcel:I = 0x61

.field static final TRANSACTION_networkAddUidRanges:I = 0x9

.field static final TRANSACTION_networkAddUidRangesParcel:I = 0x6a

.field static final TRANSACTION_networkAllowBypassVpnOnNetwork:I = 0x6e

.field static final TRANSACTION_networkCanProtect:I = 0x4b

.field static final TRANSACTION_networkClearDefault:I = 0x44

.field static final TRANSACTION_networkClearPermissionForUser:I = 0x47

.field static final TRANSACTION_networkCreate:I = 0x69

.field static final TRANSACTION_networkCreatePhysical:I = 0x4

.field static final TRANSACTION_networkCreateVpn:I = 0x5

.field static final TRANSACTION_networkDestroy:I = 0x6

.field static final TRANSACTION_networkGetDefault:I = 0x42

.field static final TRANSACTION_networkRejectNonSecureVpn:I = 0xb

.field static final TRANSACTION_networkRemoveInterface:I = 0x8

.field static final TRANSACTION_networkRemoveLegacyRoute:I = 0x41

.field static final TRANSACTION_networkRemoveRoute:I = 0x3f

.field static final TRANSACTION_networkRemoveRouteParcel:I = 0x63

.field static final TRANSACTION_networkRemoveUidRanges:I = 0xa

.field static final TRANSACTION_networkRemoveUidRangesParcel:I = 0x6b

.field static final TRANSACTION_networkSetDefault:I = 0x43

.field static final TRANSACTION_networkSetPermissionForNetwork:I = 0x45

.field static final TRANSACTION_networkSetPermissionForUser:I = 0x46

.field static final TRANSACTION_networkSetProtectAllow:I = 0x49

.field static final TRANSACTION_networkSetProtectDeny:I = 0x4a

.field static final TRANSACTION_networkUpdateRouteParcel:I = 0x62

.field static final TRANSACTION_registerUnsolicitedEventListener:I = 0x5a

.field static final TRANSACTION_setIPv6AddrGenMode:I = 0x21

.field static final TRANSACTION_setNetworkAllowlist:I = 0x6d

.field static final TRANSACTION_setProcSysNet:I = 0x12

.field static final TRANSACTION_setTcpRWmemorySize:I = 0x59

.field static final TRANSACTION_socketDestroy:I = 0xc

.field static final TRANSACTION_strictUidCleartextPenalty:I = 0x24

.field static final TRANSACTION_tetherAddForward:I = 0x57

.field static final TRANSACTION_tetherApplyDnsInterfaces:I = 0xd

.field static final TRANSACTION_tetherDnsList:I = 0x3d

.field static final TRANSACTION_tetherDnsSet:I = 0x3c

.field static final TRANSACTION_tetherGetStats:I = 0xe

.field static final TRANSACTION_tetherInterfaceAdd:I = 0x39

.field static final TRANSACTION_tetherInterfaceList:I = 0x3b

.field static final TRANSACTION_tetherInterfaceRemove:I = 0x3a

.field static final TRANSACTION_tetherIsEnabled:I = 0x38

.field static final TRANSACTION_tetherOffloadGetAndClearStats:I = 0x68

.field static final TRANSACTION_tetherOffloadGetStats:I = 0x66

.field static final TRANSACTION_tetherOffloadRuleAdd:I = 0x64

.field static final TRANSACTION_tetherOffloadRuleRemove:I = 0x65

.field static final TRANSACTION_tetherOffloadSetInterfaceQuota:I = 0x67

.field static final TRANSACTION_tetherRemoveForward:I = 0x58

.field static final TRANSACTION_tetherStart:I = 0x36

.field static final TRANSACTION_tetherStartWithConfiguration:I = 0x5f

.field static final TRANSACTION_tetherStop:I = 0x37

.field static final TRANSACTION_trafficSetNetPermForUids:I = 0x48

.field static final TRANSACTION_trafficSwapActiveStatsMap:I = 0x5d

.field static final TRANSACTION_wakeupAddInterface:I = 0x1f

.field static final TRANSACTION_wakeupDelInterface:I = 0x20


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const/16 v0, 0x24

    .line 2
    .line 3
    const/16 v1, 0x2e

    .line 4
    .line 5
    const-string v2, "android$net$INetd"

    .line 6
    .line 7
    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sput-object v0, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    .line 12
    .line 13
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    .line 5
    .line 6
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/net/INetd;
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
    sget-object v0, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

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
    instance-of v1, v0, Landroid/net/INetd;

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    check-cast v0, Landroid/net/INetd;

    .line 18
    .line 19
    return-object v0

    .line 20
    :cond_1
    new-instance v0, Landroid/net/INetd$Stub$Proxy;

    .line 21
    .line 22
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 23
    .line 24
    .line 25
    const/4 v1, -0x1

    .line 26
    iput v1, v0, Landroid/net/INetd$Stub$Proxy;->mCachedVersion:I

    .line 27
    .line 28
    const-string v1, "-1"

    .line 29
    .line 30
    iput-object v1, v0, Landroid/net/INetd$Stub$Proxy;->mCachedHash:Ljava/lang/String;

    .line 31
    .line 32
    iput-object p0, v0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

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
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v15, p2

    .line 6
    .line 7
    move-object/from16 v14, p3

    .line 8
    .line 9
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    .line 10
    .line 11
    const v3, 0xffffff

    .line 12
    .line 13
    .line 14
    const/4 v13, 0x1

    .line 15
    if-lt v1, v13, :cond_0

    .line 16
    .line 17
    if-gt v1, v3, :cond_0

    .line 18
    .line 19
    invoke-virtual {v15, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    const v4, 0x5f4e5446

    .line 23
    .line 24
    .line 25
    if-ne v1, v4, :cond_1

    .line 26
    .line 27
    invoke-virtual {v14, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    return v13

    .line 31
    :cond_1
    if-ne v1, v3, :cond_2

    .line 32
    .line 33
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 34
    .line 35
    .line 36
    invoke-interface/range {p0 .. p0}, Landroid/net/INetd;->getInterfaceVersion()I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 41
    .line 42
    .line 43
    return v13

    .line 44
    :cond_2
    const v2, 0xfffffe

    .line 45
    .line 46
    .line 47
    if-ne v1, v2, :cond_3

    .line 48
    .line 49
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 50
    .line 51
    .line 52
    invoke-interface/range {p0 .. p0}, Landroid/net/INetd;->getInterfaceHash()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    return v13

    .line 60
    :cond_3
    packed-switch v1, :pswitch_data_0

    .line 61
    .line 62
    .line 63
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    return v0

    .line 68
    :pswitch_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 73
    .line 74
    .line 75
    move-result v2

    .line 76
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 77
    .line 78
    .line 79
    move-result v3

    .line 80
    invoke-interface {v0, v1, v2, v3}, Landroid/net/INetd;->networkAllowBypassVpnOnNetwork(ZII)V

    .line 81
    .line 82
    .line 83
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 84
    .line 85
    .line 86
    :goto_0
    move v1, v13

    .line 87
    goto/16 :goto_2

    .line 88
    .line 89
    :pswitch_1
    sget-object v1, Landroid/net/netd/aidl/NativeUidRangeConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 90
    .line 91
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    check-cast v1, [Landroid/net/netd/aidl/NativeUidRangeConfig;

    .line 96
    .line 97
    invoke-interface {v0, v1}, Landroid/net/INetd;->setNetworkAllowlist([Landroid/net/netd/aidl/NativeUidRangeConfig;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 101
    .line 102
    .line 103
    goto :goto_0

    .line 104
    :pswitch_2
    sget-object v1, Landroid/net/IpSecMigrateInfoParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 105
    .line 106
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    check-cast v1, Landroid/net/IpSecMigrateInfoParcel;

    .line 111
    .line 112
    invoke-interface {v0, v1}, Landroid/net/INetd;->ipSecMigrate(Landroid/net/IpSecMigrateInfoParcel;)V

    .line 113
    .line 114
    .line 115
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 116
    .line 117
    .line 118
    goto :goto_0

    .line 119
    :pswitch_3
    sget-object v1, Landroid/net/netd/aidl/NativeUidRangeConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 120
    .line 121
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object v1

    .line 125
    check-cast v1, Landroid/net/netd/aidl/NativeUidRangeConfig;

    .line 126
    .line 127
    invoke-interface {v0, v1}, Landroid/net/INetd;->networkRemoveUidRangesParcel(Landroid/net/netd/aidl/NativeUidRangeConfig;)V

    .line 128
    .line 129
    .line 130
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 131
    .line 132
    .line 133
    goto :goto_0

    .line 134
    :pswitch_4
    sget-object v1, Landroid/net/netd/aidl/NativeUidRangeConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 135
    .line 136
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    move-result-object v1

    .line 140
    check-cast v1, Landroid/net/netd/aidl/NativeUidRangeConfig;

    .line 141
    .line 142
    invoke-interface {v0, v1}, Landroid/net/INetd;->networkAddUidRangesParcel(Landroid/net/netd/aidl/NativeUidRangeConfig;)V

    .line 143
    .line 144
    .line 145
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 146
    .line 147
    .line 148
    goto :goto_0

    .line 149
    :pswitch_5
    sget-object v1, Landroid/net/NativeNetworkConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 150
    .line 151
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    move-result-object v1

    .line 155
    check-cast v1, Landroid/net/NativeNetworkConfig;

    .line 156
    .line 157
    invoke-interface {v0, v1}, Landroid/net/INetd;->networkCreate(Landroid/net/NativeNetworkConfig;)V

    .line 158
    .line 159
    .line 160
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 161
    .line 162
    .line 163
    goto :goto_0

    .line 164
    :pswitch_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 165
    .line 166
    .line 167
    move-result v1

    .line 168
    invoke-interface {v0, v1}, Landroid/net/INetd;->tetherOffloadGetAndClearStats(I)Landroid/net/TetherStatsParcel;

    .line 169
    .line 170
    .line 171
    move-result-object v0

    .line 172
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 173
    .line 174
    .line 175
    invoke-virtual {v14, v0, v13}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 176
    .line 177
    .line 178
    goto :goto_0

    .line 179
    :pswitch_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 180
    .line 181
    .line 182
    move-result v1

    .line 183
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    .line 184
    .line 185
    .line 186
    move-result-wide v2

    .line 187
    invoke-interface {v0, v1, v2, v3}, Landroid/net/INetd;->tetherOffloadSetInterfaceQuota(IJ)V

    .line 188
    .line 189
    .line 190
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 191
    .line 192
    .line 193
    goto :goto_0

    .line 194
    :pswitch_8
    invoke-interface/range {p0 .. p0}, Landroid/net/INetd;->tetherOffloadGetStats()[Landroid/net/TetherStatsParcel;

    .line 195
    .line 196
    .line 197
    move-result-object v0

    .line 198
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 199
    .line 200
    .line 201
    invoke-virtual {v14, v0, v13}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 202
    .line 203
    .line 204
    goto :goto_0

    .line 205
    :pswitch_9
    sget-object v1, Landroid/net/TetherOffloadRuleParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 206
    .line 207
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 208
    .line 209
    .line 210
    move-result-object v1

    .line 211
    check-cast v1, Landroid/net/TetherOffloadRuleParcel;

    .line 212
    .line 213
    invoke-interface {v0, v1}, Landroid/net/INetd;->tetherOffloadRuleRemove(Landroid/net/TetherOffloadRuleParcel;)V

    .line 214
    .line 215
    .line 216
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 217
    .line 218
    .line 219
    goto/16 :goto_0

    .line 220
    .line 221
    :pswitch_a
    sget-object v1, Landroid/net/TetherOffloadRuleParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 222
    .line 223
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 224
    .line 225
    .line 226
    move-result-object v1

    .line 227
    check-cast v1, Landroid/net/TetherOffloadRuleParcel;

    .line 228
    .line 229
    invoke-interface {v0, v1}, Landroid/net/INetd;->tetherOffloadRuleAdd(Landroid/net/TetherOffloadRuleParcel;)V

    .line 230
    .line 231
    .line 232
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 233
    .line 234
    .line 235
    goto/16 :goto_0

    .line 236
    .line 237
    :pswitch_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 238
    .line 239
    .line 240
    move-result v1

    .line 241
    sget-object v2, Landroid/net/RouteInfoParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 242
    .line 243
    invoke-virtual {v15, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 244
    .line 245
    .line 246
    move-result-object v2

    .line 247
    check-cast v2, Landroid/net/RouteInfoParcel;

    .line 248
    .line 249
    invoke-interface {v0, v1, v2}, Landroid/net/INetd;->networkRemoveRouteParcel(ILandroid/net/RouteInfoParcel;)V

    .line 250
    .line 251
    .line 252
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 253
    .line 254
    .line 255
    goto/16 :goto_0

    .line 256
    .line 257
    :pswitch_c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 258
    .line 259
    .line 260
    move-result v1

    .line 261
    sget-object v2, Landroid/net/RouteInfoParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 262
    .line 263
    invoke-virtual {v15, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 264
    .line 265
    .line 266
    move-result-object v2

    .line 267
    check-cast v2, Landroid/net/RouteInfoParcel;

    .line 268
    .line 269
    invoke-interface {v0, v1, v2}, Landroid/net/INetd;->networkUpdateRouteParcel(ILandroid/net/RouteInfoParcel;)V

    .line 270
    .line 271
    .line 272
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 273
    .line 274
    .line 275
    goto/16 :goto_0

    .line 276
    .line 277
    :pswitch_d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 278
    .line 279
    .line 280
    move-result v1

    .line 281
    sget-object v2, Landroid/net/RouteInfoParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 282
    .line 283
    invoke-virtual {v15, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 284
    .line 285
    .line 286
    move-result-object v2

    .line 287
    check-cast v2, Landroid/net/RouteInfoParcel;

    .line 288
    .line 289
    invoke-interface {v0, v1, v2}, Landroid/net/INetd;->networkAddRouteParcel(ILandroid/net/RouteInfoParcel;)V

    .line 290
    .line 291
    .line 292
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 293
    .line 294
    .line 295
    goto/16 :goto_0

    .line 296
    .line 297
    :pswitch_e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 298
    .line 299
    .line 300
    move-result v1

    .line 301
    invoke-interface {v0, v1}, Landroid/net/INetd;->getFwmarkForNetwork(I)Landroid/net/MarkMaskParcel;

    .line 302
    .line 303
    .line 304
    move-result-object v0

    .line 305
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 306
    .line 307
    .line 308
    invoke-virtual {v14, v0, v13}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 309
    .line 310
    .line 311
    goto/16 :goto_0

    .line 312
    .line 313
    :pswitch_f
    sget-object v1, Landroid/net/TetherConfigParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 314
    .line 315
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 316
    .line 317
    .line 318
    move-result-object v1

    .line 319
    check-cast v1, Landroid/net/TetherConfigParcel;

    .line 320
    .line 321
    invoke-interface {v0, v1}, Landroid/net/INetd;->tetherStartWithConfiguration(Landroid/net/TetherConfigParcel;)V

    .line 322
    .line 323
    .line 324
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 325
    .line 326
    .line 327
    goto/16 :goto_0

    .line 328
    .line 329
    :pswitch_10
    invoke-interface/range {p0 .. p0}, Landroid/net/INetd;->getOemNetd()Landroid/os/IBinder;

    .line 330
    .line 331
    .line 332
    move-result-object v0

    .line 333
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 334
    .line 335
    .line 336
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 337
    .line 338
    .line 339
    goto/16 :goto_0

    .line 340
    .line 341
    :pswitch_11
    invoke-interface/range {p0 .. p0}, Landroid/net/INetd;->trafficSwapActiveStatsMap()V

    .line 342
    .line 343
    .line 344
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 345
    .line 346
    .line 347
    goto/16 :goto_0

    .line 348
    .line 349
    :pswitch_12
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    .line 350
    .line 351
    .line 352
    move-result-object v1

    .line 353
    invoke-interface {v0, v1}, Landroid/net/INetd;->firewallRemoveUidInterfaceRules([I)V

    .line 354
    .line 355
    .line 356
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 357
    .line 358
    .line 359
    goto/16 :goto_0

    .line 360
    .line 361
    :pswitch_13
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 362
    .line 363
    .line 364
    move-result-object v1

    .line 365
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    .line 366
    .line 367
    .line 368
    move-result-object v2

    .line 369
    invoke-interface {v0, v1, v2}, Landroid/net/INetd;->firewallAddUidInterfaceRules(Ljava/lang/String;[I)V

    .line 370
    .line 371
    .line 372
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 373
    .line 374
    .line 375
    goto/16 :goto_0

    .line 376
    .line 377
    :pswitch_14
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 378
    .line 379
    .line 380
    move-result-object v1

    .line 381
    invoke-static {v1}, Landroid/net/INetdUnsolicitedEventListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetdUnsolicitedEventListener;

    .line 382
    .line 383
    .line 384
    move-result-object v1

    .line 385
    invoke-interface {v0, v1}, Landroid/net/INetd;->registerUnsolicitedEventListener(Landroid/net/INetdUnsolicitedEventListener;)V

    .line 386
    .line 387
    .line 388
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 389
    .line 390
    .line 391
    goto/16 :goto_0

    .line 392
    .line 393
    :pswitch_15
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 394
    .line 395
    .line 396
    move-result-object v1

    .line 397
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 398
    .line 399
    .line 400
    move-result-object v2

    .line 401
    invoke-interface {v0, v1, v2}, Landroid/net/INetd;->setTcpRWmemorySize(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    .line 403
    .line 404
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 405
    .line 406
    .line 407
    goto/16 :goto_0

    .line 408
    .line 409
    :pswitch_16
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 410
    .line 411
    .line 412
    move-result-object v1

    .line 413
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 414
    .line 415
    .line 416
    move-result-object v2

    .line 417
    invoke-interface {v0, v1, v2}, Landroid/net/INetd;->tetherRemoveForward(Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    .line 419
    .line 420
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 421
    .line 422
    .line 423
    goto/16 :goto_0

    .line 424
    .line 425
    :pswitch_17
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 426
    .line 427
    .line 428
    move-result-object v1

    .line 429
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 430
    .line 431
    .line 432
    move-result-object v2

    .line 433
    invoke-interface {v0, v1, v2}, Landroid/net/INetd;->tetherAddForward(Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    .line 435
    .line 436
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 437
    .line 438
    .line 439
    goto/16 :goto_0

    .line 440
    .line 441
    :pswitch_18
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 442
    .line 443
    .line 444
    move-result-object v1

    .line 445
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 446
    .line 447
    .line 448
    move-result v2

    .line 449
    invoke-interface {v0, v1, v2}, Landroid/net/INetd;->interfaceSetMtu(Ljava/lang/String;I)V

    .line 450
    .line 451
    .line 452
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 453
    .line 454
    .line 455
    goto/16 :goto_0

    .line 456
    .line 457
    :pswitch_19
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 458
    .line 459
    .line 460
    move-result-object v1

    .line 461
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 462
    .line 463
    .line 464
    move-result v2

    .line 465
    invoke-interface {v0, v1, v2}, Landroid/net/INetd;->interfaceSetEnableIPv6(Ljava/lang/String;Z)V

    .line 466
    .line 467
    .line 468
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 469
    .line 470
    .line 471
    goto/16 :goto_0

    .line 472
    .line 473
    :pswitch_1a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 474
    .line 475
    .line 476
    move-result-object v1

    .line 477
    invoke-interface {v0, v1}, Landroid/net/INetd;->interfaceClearAddrs(Ljava/lang/String;)V

    .line 478
    .line 479
    .line 480
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 481
    .line 482
    .line 483
    goto/16 :goto_0

    .line 484
    .line 485
    :pswitch_1b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 486
    .line 487
    .line 488
    move-result-object v1

    .line 489
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 490
    .line 491
    .line 492
    move-result v2

    .line 493
    invoke-interface {v0, v1, v2}, Landroid/net/INetd;->interfaceSetIPv6PrivacyExtensions(Ljava/lang/String;Z)V

    .line 494
    .line 495
    .line 496
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 497
    .line 498
    .line 499
    goto/16 :goto_0

    .line 500
    .line 501
    :pswitch_1c
    sget-object v1, Landroid/net/InterfaceConfigurationParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 502
    .line 503
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 504
    .line 505
    .line 506
    move-result-object v1

    .line 507
    check-cast v1, Landroid/net/InterfaceConfigurationParcel;

    .line 508
    .line 509
    invoke-interface {v0, v1}, Landroid/net/INetd;->interfaceSetCfg(Landroid/net/InterfaceConfigurationParcel;)V

    .line 510
    .line 511
    .line 512
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 513
    .line 514
    .line 515
    goto/16 :goto_0

    .line 516
    .line 517
    :pswitch_1d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 518
    .line 519
    .line 520
    move-result-object v1

    .line 521
    invoke-interface {v0, v1}, Landroid/net/INetd;->interfaceGetCfg(Ljava/lang/String;)Landroid/net/InterfaceConfigurationParcel;

    .line 522
    .line 523
    .line 524
    move-result-object v0

    .line 525
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 526
    .line 527
    .line 528
    invoke-virtual {v14, v0, v13}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 529
    .line 530
    .line 531
    goto/16 :goto_0

    .line 532
    .line 533
    :pswitch_1e
    invoke-interface/range {p0 .. p0}, Landroid/net/INetd;->interfaceGetList()[Ljava/lang/String;

    .line 534
    .line 535
    .line 536
    move-result-object v0

    .line 537
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 538
    .line 539
    .line 540
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 541
    .line 542
    .line 543
    goto/16 :goto_0

    .line 544
    .line 545
    :pswitch_1f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 546
    .line 547
    .line 548
    move-result v1

    .line 549
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 550
    .line 551
    .line 552
    move-result v2

    .line 553
    invoke-interface {v0, v1, v2}, Landroid/net/INetd;->firewallEnableChildChain(IZ)V

    .line 554
    .line 555
    .line 556
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 557
    .line 558
    .line 559
    goto/16 :goto_0

    .line 560
    .line 561
    :pswitch_20
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 562
    .line 563
    .line 564
    move-result v1

    .line 565
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 566
    .line 567
    .line 568
    move-result v2

    .line 569
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 570
    .line 571
    .line 572
    move-result v3

    .line 573
    invoke-interface {v0, v1, v2, v3}, Landroid/net/INetd;->firewallSetUidRule(III)V

    .line 574
    .line 575
    .line 576
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 577
    .line 578
    .line 579
    goto/16 :goto_0

    .line 580
    .line 581
    :pswitch_21
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 582
    .line 583
    .line 584
    move-result-object v1

    .line 585
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 586
    .line 587
    .line 588
    move-result v2

    .line 589
    invoke-interface {v0, v1, v2}, Landroid/net/INetd;->firewallSetInterfaceRule(Ljava/lang/String;I)V

    .line 590
    .line 591
    .line 592
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 593
    .line 594
    .line 595
    goto/16 :goto_0

    .line 596
    .line 597
    :pswitch_22
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 598
    .line 599
    .line 600
    move-result v1

    .line 601
    invoke-interface {v0, v1}, Landroid/net/INetd;->firewallSetFirewallType(I)V

    .line 602
    .line 603
    .line 604
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 605
    .line 606
    .line 607
    goto/16 :goto_0

    .line 608
    .line 609
    :pswitch_23
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 610
    .line 611
    .line 612
    move-result v1

    .line 613
    invoke-interface {v0, v1}, Landroid/net/INetd;->networkCanProtect(I)Z

    .line 614
    .line 615
    .line 616
    move-result v0

    .line 617
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 618
    .line 619
    .line 620
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 621
    .line 622
    .line 623
    goto/16 :goto_0

    .line 624
    .line 625
    :pswitch_24
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 626
    .line 627
    .line 628
    move-result v1

    .line 629
    invoke-interface {v0, v1}, Landroid/net/INetd;->networkSetProtectDeny(I)V

    .line 630
    .line 631
    .line 632
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 633
    .line 634
    .line 635
    goto/16 :goto_0

    .line 636
    .line 637
    :pswitch_25
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 638
    .line 639
    .line 640
    move-result v1

    .line 641
    invoke-interface {v0, v1}, Landroid/net/INetd;->networkSetProtectAllow(I)V

    .line 642
    .line 643
    .line 644
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 645
    .line 646
    .line 647
    goto/16 :goto_0

    .line 648
    .line 649
    :pswitch_26
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 650
    .line 651
    .line 652
    move-result v1

    .line 653
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    .line 654
    .line 655
    .line 656
    move-result-object v2

    .line 657
    invoke-interface {v0, v1, v2}, Landroid/net/INetd;->trafficSetNetPermForUids(I[I)V

    .line 658
    .line 659
    .line 660
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 661
    .line 662
    .line 663
    goto/16 :goto_0

    .line 664
    .line 665
    :pswitch_27
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    .line 666
    .line 667
    .line 668
    move-result-object v1

    .line 669
    invoke-interface {v0, v1}, Landroid/net/INetd;->networkClearPermissionForUser([I)V

    .line 670
    .line 671
    .line 672
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 673
    .line 674
    .line 675
    goto/16 :goto_0

    .line 676
    .line 677
    :pswitch_28
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 678
    .line 679
    .line 680
    move-result v1

    .line 681
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    .line 682
    .line 683
    .line 684
    move-result-object v2

    .line 685
    invoke-interface {v0, v1, v2}, Landroid/net/INetd;->networkSetPermissionForUser(I[I)V

    .line 686
    .line 687
    .line 688
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 689
    .line 690
    .line 691
    goto/16 :goto_0

    .line 692
    .line 693
    :pswitch_29
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 694
    .line 695
    .line 696
    move-result v1

    .line 697
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 698
    .line 699
    .line 700
    move-result v2

    .line 701
    invoke-interface {v0, v1, v2}, Landroid/net/INetd;->networkSetPermissionForNetwork(II)V

    .line 702
    .line 703
    .line 704
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 705
    .line 706
    .line 707
    goto/16 :goto_0

    .line 708
    .line 709
    :pswitch_2a
    invoke-interface/range {p0 .. p0}, Landroid/net/INetd;->networkClearDefault()V

    .line 710
    .line 711
    .line 712
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 713
    .line 714
    .line 715
    goto/16 :goto_0

    .line 716
    .line 717
    :pswitch_2b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 718
    .line 719
    .line 720
    move-result v1

    .line 721
    invoke-interface {v0, v1}, Landroid/net/INetd;->networkSetDefault(I)V

    .line 722
    .line 723
    .line 724
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 725
    .line 726
    .line 727
    goto/16 :goto_0

    .line 728
    .line 729
    :pswitch_2c
    invoke-interface/range {p0 .. p0}, Landroid/net/INetd;->networkGetDefault()I

    .line 730
    .line 731
    .line 732
    move-result v0

    .line 733
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 734
    .line 735
    .line 736
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 737
    .line 738
    .line 739
    goto/16 :goto_0

    .line 740
    .line 741
    :pswitch_2d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 742
    .line 743
    .line 744
    move-result v1

    .line 745
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 746
    .line 747
    .line 748
    move-result-object v2

    .line 749
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 750
    .line 751
    .line 752
    move-result-object v3

    .line 753
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 754
    .line 755
    .line 756
    move-result-object v4

    .line 757
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 758
    .line 759
    .line 760
    move-result v5

    .line 761
    move-object/from16 v0, p0

    .line 762
    .line 763
    invoke-interface/range {v0 .. v5}, Landroid/net/INetd;->networkRemoveLegacyRoute(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 764
    .line 765
    .line 766
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 767
    .line 768
    .line 769
    goto/16 :goto_0

    .line 770
    .line 771
    :pswitch_2e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 772
    .line 773
    .line 774
    move-result v1

    .line 775
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 776
    .line 777
    .line 778
    move-result-object v2

    .line 779
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 780
    .line 781
    .line 782
    move-result-object v3

    .line 783
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 784
    .line 785
    .line 786
    move-result-object v4

    .line 787
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 788
    .line 789
    .line 790
    move-result v5

    .line 791
    move-object/from16 v0, p0

    .line 792
    .line 793
    invoke-interface/range {v0 .. v5}, Landroid/net/INetd;->networkAddLegacyRoute(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 794
    .line 795
    .line 796
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 797
    .line 798
    .line 799
    goto/16 :goto_0

    .line 800
    .line 801
    :pswitch_2f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 802
    .line 803
    .line 804
    move-result v1

    .line 805
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 806
    .line 807
    .line 808
    move-result-object v2

    .line 809
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 810
    .line 811
    .line 812
    move-result-object v3

    .line 813
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 814
    .line 815
    .line 816
    move-result-object v4

    .line 817
    invoke-interface {v0, v1, v2, v3, v4}, Landroid/net/INetd;->networkRemoveRoute(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 818
    .line 819
    .line 820
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 821
    .line 822
    .line 823
    goto/16 :goto_0

    .line 824
    .line 825
    :pswitch_30
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 826
    .line 827
    .line 828
    move-result v1

    .line 829
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 830
    .line 831
    .line 832
    move-result-object v2

    .line 833
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 834
    .line 835
    .line 836
    move-result-object v3

    .line 837
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 838
    .line 839
    .line 840
    move-result-object v4

    .line 841
    invoke-interface {v0, v1, v2, v3, v4}, Landroid/net/INetd;->networkAddRoute(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 842
    .line 843
    .line 844
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 845
    .line 846
    .line 847
    goto/16 :goto_0

    .line 848
    .line 849
    :pswitch_31
    invoke-interface/range {p0 .. p0}, Landroid/net/INetd;->tetherDnsList()[Ljava/lang/String;

    .line 850
    .line 851
    .line 852
    move-result-object v0

    .line 853
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 854
    .line 855
    .line 856
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 857
    .line 858
    .line 859
    goto/16 :goto_0

    .line 860
    .line 861
    :pswitch_32
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 862
    .line 863
    .line 864
    move-result v1

    .line 865
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    .line 866
    .line 867
    .line 868
    move-result-object v2

    .line 869
    invoke-interface {v0, v1, v2}, Landroid/net/INetd;->tetherDnsSet(I[Ljava/lang/String;)V

    .line 870
    .line 871
    .line 872
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 873
    .line 874
    .line 875
    goto/16 :goto_0

    .line 876
    .line 877
    :pswitch_33
    invoke-interface/range {p0 .. p0}, Landroid/net/INetd;->tetherInterfaceList()[Ljava/lang/String;

    .line 878
    .line 879
    .line 880
    move-result-object v0

    .line 881
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 882
    .line 883
    .line 884
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 885
    .line 886
    .line 887
    goto/16 :goto_0

    .line 888
    .line 889
    :pswitch_34
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 890
    .line 891
    .line 892
    move-result-object v1

    .line 893
    invoke-interface {v0, v1}, Landroid/net/INetd;->tetherInterfaceRemove(Ljava/lang/String;)V

    .line 894
    .line 895
    .line 896
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 897
    .line 898
    .line 899
    goto/16 :goto_0

    .line 900
    .line 901
    :pswitch_35
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 902
    .line 903
    .line 904
    move-result-object v1

    .line 905
    invoke-interface {v0, v1}, Landroid/net/INetd;->tetherInterfaceAdd(Ljava/lang/String;)V

    .line 906
    .line 907
    .line 908
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 909
    .line 910
    .line 911
    goto/16 :goto_0

    .line 912
    .line 913
    :pswitch_36
    invoke-interface/range {p0 .. p0}, Landroid/net/INetd;->tetherIsEnabled()Z

    .line 914
    .line 915
    .line 916
    move-result v0

    .line 917
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 918
    .line 919
    .line 920
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 921
    .line 922
    .line 923
    goto/16 :goto_0

    .line 924
    .line 925
    :pswitch_37
    invoke-interface/range {p0 .. p0}, Landroid/net/INetd;->tetherStop()V

    .line 926
    .line 927
    .line 928
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 929
    .line 930
    .line 931
    goto/16 :goto_0

    .line 932
    .line 933
    :pswitch_38
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    .line 934
    .line 935
    .line 936
    move-result-object v1

    .line 937
    invoke-interface {v0, v1}, Landroid/net/INetd;->tetherStart([Ljava/lang/String;)V

    .line 938
    .line 939
    .line 940
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 941
    .line 942
    .line 943
    goto/16 :goto_0

    .line 944
    .line 945
    :pswitch_39
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 946
    .line 947
    .line 948
    move-result v1

    .line 949
    invoke-interface {v0, v1}, Landroid/net/INetd;->bandwidthRemoveNiceApp(I)V

    .line 950
    .line 951
    .line 952
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 953
    .line 954
    .line 955
    goto/16 :goto_0

    .line 956
    .line 957
    :pswitch_3a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 958
    .line 959
    .line 960
    move-result v1

    .line 961
    invoke-interface {v0, v1}, Landroid/net/INetd;->bandwidthAddNiceApp(I)V

    .line 962
    .line 963
    .line 964
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 965
    .line 966
    .line 967
    goto/16 :goto_0

    .line 968
    .line 969
    :pswitch_3b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 970
    .line 971
    .line 972
    move-result v1

    .line 973
    invoke-interface {v0, v1}, Landroid/net/INetd;->bandwidthRemoveNaughtyApp(I)V

    .line 974
    .line 975
    .line 976
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 977
    .line 978
    .line 979
    goto/16 :goto_0

    .line 980
    .line 981
    :pswitch_3c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 982
    .line 983
    .line 984
    move-result v1

    .line 985
    invoke-interface {v0, v1}, Landroid/net/INetd;->bandwidthAddNaughtyApp(I)V

    .line 986
    .line 987
    .line 988
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 989
    .line 990
    .line 991
    goto/16 :goto_0

    .line 992
    .line 993
    :pswitch_3d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    .line 994
    .line 995
    .line 996
    move-result-wide v1

    .line 997
    invoke-interface {v0, v1, v2}, Landroid/net/INetd;->bandwidthSetGlobalAlert(J)V

    .line 998
    .line 999
    .line 1000
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1001
    .line 1002
    .line 1003
    goto/16 :goto_0

    .line 1004
    .line 1005
    :pswitch_3e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1006
    .line 1007
    .line 1008
    move-result-object v1

    .line 1009
    invoke-interface {v0, v1}, Landroid/net/INetd;->bandwidthRemoveInterfaceAlert(Ljava/lang/String;)V

    .line 1010
    .line 1011
    .line 1012
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1013
    .line 1014
    .line 1015
    goto/16 :goto_0

    .line 1016
    .line 1017
    :pswitch_3f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1018
    .line 1019
    .line 1020
    move-result-object v1

    .line 1021
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    .line 1022
    .line 1023
    .line 1024
    move-result-wide v2

    .line 1025
    invoke-interface {v0, v1, v2, v3}, Landroid/net/INetd;->bandwidthSetInterfaceAlert(Ljava/lang/String;J)V

    .line 1026
    .line 1027
    .line 1028
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1029
    .line 1030
    .line 1031
    goto/16 :goto_0

    .line 1032
    .line 1033
    :pswitch_40
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1034
    .line 1035
    .line 1036
    move-result-object v1

    .line 1037
    invoke-interface {v0, v1}, Landroid/net/INetd;->bandwidthRemoveInterfaceQuota(Ljava/lang/String;)V

    .line 1038
    .line 1039
    .line 1040
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1041
    .line 1042
    .line 1043
    goto/16 :goto_0

    .line 1044
    .line 1045
    :pswitch_41
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1046
    .line 1047
    .line 1048
    move-result-object v1

    .line 1049
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    .line 1050
    .line 1051
    .line 1052
    move-result-wide v2

    .line 1053
    invoke-interface {v0, v1, v2, v3}, Landroid/net/INetd;->bandwidthSetInterfaceQuota(Ljava/lang/String;J)V

    .line 1054
    .line 1055
    .line 1056
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1057
    .line 1058
    .line 1059
    goto/16 :goto_0

    .line 1060
    .line 1061
    :pswitch_42
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1062
    .line 1063
    .line 1064
    move-result-object v1

    .line 1065
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1066
    .line 1067
    .line 1068
    move-result-object v2

    .line 1069
    invoke-interface {v0, v1, v2}, Landroid/net/INetd;->ipfwdRemoveInterfaceForward(Ljava/lang/String;Ljava/lang/String;)V

    .line 1070
    .line 1071
    .line 1072
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1073
    .line 1074
    .line 1075
    goto/16 :goto_0

    .line 1076
    .line 1077
    :pswitch_43
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1078
    .line 1079
    .line 1080
    move-result-object v1

    .line 1081
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1082
    .line 1083
    .line 1084
    move-result-object v2

    .line 1085
    invoke-interface {v0, v1, v2}, Landroid/net/INetd;->ipfwdAddInterfaceForward(Ljava/lang/String;Ljava/lang/String;)V

    .line 1086
    .line 1087
    .line 1088
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1089
    .line 1090
    .line 1091
    goto/16 :goto_0

    .line 1092
    .line 1093
    :pswitch_44
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1094
    .line 1095
    .line 1096
    move-result-object v1

    .line 1097
    invoke-interface {v0, v1}, Landroid/net/INetd;->ipfwdDisableForwarding(Ljava/lang/String;)V

    .line 1098
    .line 1099
    .line 1100
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1101
    .line 1102
    .line 1103
    goto/16 :goto_0

    .line 1104
    .line 1105
    :pswitch_45
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1106
    .line 1107
    .line 1108
    move-result-object v1

    .line 1109
    invoke-interface {v0, v1}, Landroid/net/INetd;->ipfwdEnableForwarding(Ljava/lang/String;)V

    .line 1110
    .line 1111
    .line 1112
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1113
    .line 1114
    .line 1115
    goto/16 :goto_0

    .line 1116
    .line 1117
    :pswitch_46
    invoke-interface/range {p0 .. p0}, Landroid/net/INetd;->ipfwdGetRequesterList()[Ljava/lang/String;

    .line 1118
    .line 1119
    .line 1120
    move-result-object v0

    .line 1121
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1122
    .line 1123
    .line 1124
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 1125
    .line 1126
    .line 1127
    goto/16 :goto_0

    .line 1128
    .line 1129
    :pswitch_47
    invoke-interface/range {p0 .. p0}, Landroid/net/INetd;->ipfwdEnabled()Z

    .line 1130
    .line 1131
    .line 1132
    move-result v0

    .line 1133
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1134
    .line 1135
    .line 1136
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1137
    .line 1138
    .line 1139
    goto/16 :goto_0

    .line 1140
    .line 1141
    :pswitch_48
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1142
    .line 1143
    .line 1144
    move-result-object v1

    .line 1145
    invoke-interface {v0, v1}, Landroid/net/INetd;->clatdStop(Ljava/lang/String;)V

    .line 1146
    .line 1147
    .line 1148
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1149
    .line 1150
    .line 1151
    goto/16 :goto_0

    .line 1152
    .line 1153
    :pswitch_49
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1154
    .line 1155
    .line 1156
    move-result-object v1

    .line 1157
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1158
    .line 1159
    .line 1160
    move-result-object v2

    .line 1161
    invoke-interface {v0, v1, v2}, Landroid/net/INetd;->clatdStart(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1162
    .line 1163
    .line 1164
    move-result-object v0

    .line 1165
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1166
    .line 1167
    .line 1168
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1169
    .line 1170
    .line 1171
    goto/16 :goto_0

    .line 1172
    .line 1173
    :pswitch_4a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1174
    .line 1175
    .line 1176
    move-result v1

    .line 1177
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1178
    .line 1179
    .line 1180
    move-result v2

    .line 1181
    invoke-interface {v0, v1, v2}, Landroid/net/INetd;->strictUidCleartextPenalty(II)V

    .line 1182
    .line 1183
    .line 1184
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1185
    .line 1186
    .line 1187
    goto/16 :goto_0

    .line 1188
    .line 1189
    :pswitch_4b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1190
    .line 1191
    .line 1192
    move-result-object v1

    .line 1193
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1194
    .line 1195
    .line 1196
    move-result v2

    .line 1197
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1198
    .line 1199
    .line 1200
    move-result-object v3

    .line 1201
    invoke-interface {v0, v1, v2, v3}, Landroid/net/INetd;->idletimerRemoveInterface(Ljava/lang/String;ILjava/lang/String;)V

    .line 1202
    .line 1203
    .line 1204
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1205
    .line 1206
    .line 1207
    goto/16 :goto_0

    .line 1208
    .line 1209
    :pswitch_4c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1210
    .line 1211
    .line 1212
    move-result-object v1

    .line 1213
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1214
    .line 1215
    .line 1216
    move-result v2

    .line 1217
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1218
    .line 1219
    .line 1220
    move-result-object v3

    .line 1221
    invoke-interface {v0, v1, v2, v3}, Landroid/net/INetd;->idletimerAddInterface(Ljava/lang/String;ILjava/lang/String;)V

    .line 1222
    .line 1223
    .line 1224
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1225
    .line 1226
    .line 1227
    goto/16 :goto_0

    .line 1228
    .line 1229
    :pswitch_4d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1230
    .line 1231
    .line 1232
    move-result-object v1

    .line 1233
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1234
    .line 1235
    .line 1236
    move-result v2

    .line 1237
    invoke-interface {v0, v1, v2}, Landroid/net/INetd;->setIPv6AddrGenMode(Ljava/lang/String;I)V

    .line 1238
    .line 1239
    .line 1240
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1241
    .line 1242
    .line 1243
    goto/16 :goto_0

    .line 1244
    .line 1245
    :pswitch_4e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1246
    .line 1247
    .line 1248
    move-result-object v1

    .line 1249
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1250
    .line 1251
    .line 1252
    move-result-object v2

    .line 1253
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1254
    .line 1255
    .line 1256
    move-result v3

    .line 1257
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1258
    .line 1259
    .line 1260
    move-result v4

    .line 1261
    invoke-interface {v0, v1, v2, v3, v4}, Landroid/net/INetd;->wakeupDelInterface(Ljava/lang/String;Ljava/lang/String;II)V

    .line 1262
    .line 1263
    .line 1264
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1265
    .line 1266
    .line 1267
    goto/16 :goto_0

    .line 1268
    .line 1269
    :pswitch_4f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1270
    .line 1271
    .line 1272
    move-result-object v1

    .line 1273
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1274
    .line 1275
    .line 1276
    move-result-object v2

    .line 1277
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1278
    .line 1279
    .line 1280
    move-result v3

    .line 1281
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1282
    .line 1283
    .line 1284
    move-result v4

    .line 1285
    invoke-interface {v0, v1, v2, v3, v4}, Landroid/net/INetd;->wakeupAddInterface(Ljava/lang/String;Ljava/lang/String;II)V

    .line 1286
    .line 1287
    .line 1288
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1289
    .line 1290
    .line 1291
    goto/16 :goto_0

    .line 1292
    .line 1293
    :pswitch_50
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1294
    .line 1295
    .line 1296
    move-result-object v1

    .line 1297
    invoke-interface {v0, v1}, Landroid/net/INetd;->ipSecRemoveTunnelInterface(Ljava/lang/String;)V

    .line 1298
    .line 1299
    .line 1300
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1301
    .line 1302
    .line 1303
    goto/16 :goto_0

    .line 1304
    .line 1305
    :pswitch_51
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1306
    .line 1307
    .line 1308
    move-result-object v1

    .line 1309
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1310
    .line 1311
    .line 1312
    move-result-object v2

    .line 1313
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1314
    .line 1315
    .line 1316
    move-result-object v3

    .line 1317
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1318
    .line 1319
    .line 1320
    move-result v4

    .line 1321
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1322
    .line 1323
    .line 1324
    move-result v5

    .line 1325
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1326
    .line 1327
    .line 1328
    move-result v6

    .line 1329
    move-object/from16 v0, p0

    .line 1330
    .line 1331
    invoke-interface/range {v0 .. v6}, Landroid/net/INetd;->ipSecUpdateTunnelInterface(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V

    .line 1332
    .line 1333
    .line 1334
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1335
    .line 1336
    .line 1337
    goto/16 :goto_0

    .line 1338
    .line 1339
    :pswitch_52
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1340
    .line 1341
    .line 1342
    move-result-object v1

    .line 1343
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1344
    .line 1345
    .line 1346
    move-result-object v2

    .line 1347
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1348
    .line 1349
    .line 1350
    move-result-object v3

    .line 1351
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1352
    .line 1353
    .line 1354
    move-result v4

    .line 1355
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1356
    .line 1357
    .line 1358
    move-result v5

    .line 1359
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1360
    .line 1361
    .line 1362
    move-result v6

    .line 1363
    move-object/from16 v0, p0

    .line 1364
    .line 1365
    invoke-interface/range {v0 .. v6}, Landroid/net/INetd;->ipSecAddTunnelInterface(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V

    .line 1366
    .line 1367
    .line 1368
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1369
    .line 1370
    .line 1371
    goto/16 :goto_0

    .line 1372
    .line 1373
    :pswitch_53
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1374
    .line 1375
    .line 1376
    move-result v1

    .line 1377
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1378
    .line 1379
    .line 1380
    move-result v2

    .line 1381
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1382
    .line 1383
    .line 1384
    move-result v3

    .line 1385
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1386
    .line 1387
    .line 1388
    move-result v4

    .line 1389
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1390
    .line 1391
    .line 1392
    move-result v5

    .line 1393
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1394
    .line 1395
    .line 1396
    move-result v6

    .line 1397
    move-object/from16 v0, p0

    .line 1398
    .line 1399
    invoke-interface/range {v0 .. v6}, Landroid/net/INetd;->ipSecDeleteSecurityPolicy(IIIIII)V

    .line 1400
    .line 1401
    .line 1402
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1403
    .line 1404
    .line 1405
    goto/16 :goto_0

    .line 1406
    .line 1407
    :pswitch_54
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1408
    .line 1409
    .line 1410
    move-result v1

    .line 1411
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1412
    .line 1413
    .line 1414
    move-result v2

    .line 1415
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1416
    .line 1417
    .line 1418
    move-result v3

    .line 1419
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1420
    .line 1421
    .line 1422
    move-result-object v4

    .line 1423
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1424
    .line 1425
    .line 1426
    move-result-object v5

    .line 1427
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1428
    .line 1429
    .line 1430
    move-result v6

    .line 1431
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1432
    .line 1433
    .line 1434
    move-result v7

    .line 1435
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1436
    .line 1437
    .line 1438
    move-result v8

    .line 1439
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1440
    .line 1441
    .line 1442
    move-result v9

    .line 1443
    move-object/from16 v0, p0

    .line 1444
    .line 1445
    invoke-interface/range {v0 .. v9}, Landroid/net/INetd;->ipSecUpdateSecurityPolicy(IIILjava/lang/String;Ljava/lang/String;IIII)V

    .line 1446
    .line 1447
    .line 1448
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1449
    .line 1450
    .line 1451
    goto/16 :goto_0

    .line 1452
    .line 1453
    :pswitch_55
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1454
    .line 1455
    .line 1456
    move-result v1

    .line 1457
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1458
    .line 1459
    .line 1460
    move-result v2

    .line 1461
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1462
    .line 1463
    .line 1464
    move-result v3

    .line 1465
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1466
    .line 1467
    .line 1468
    move-result-object v4

    .line 1469
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1470
    .line 1471
    .line 1472
    move-result-object v5

    .line 1473
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1474
    .line 1475
    .line 1476
    move-result v6

    .line 1477
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1478
    .line 1479
    .line 1480
    move-result v7

    .line 1481
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1482
    .line 1483
    .line 1484
    move-result v8

    .line 1485
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1486
    .line 1487
    .line 1488
    move-result v9

    .line 1489
    move-object/from16 v0, p0

    .line 1490
    .line 1491
    invoke-interface/range {v0 .. v9}, Landroid/net/INetd;->ipSecAddSecurityPolicy(IIILjava/lang/String;Ljava/lang/String;IIII)V

    .line 1492
    .line 1493
    .line 1494
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1495
    .line 1496
    .line 1497
    goto/16 :goto_0

    .line 1498
    .line 1499
    :pswitch_56
    sget-object v1, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1500
    .line 1501
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1502
    .line 1503
    .line 1504
    move-result-object v1

    .line 1505
    check-cast v1, Landroid/os/ParcelFileDescriptor;

    .line 1506
    .line 1507
    invoke-interface {v0, v1}, Landroid/net/INetd;->ipSecRemoveTransportModeTransform(Landroid/os/ParcelFileDescriptor;)V

    .line 1508
    .line 1509
    .line 1510
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1511
    .line 1512
    .line 1513
    goto/16 :goto_0

    .line 1514
    .line 1515
    :pswitch_57
    sget-object v1, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1516
    .line 1517
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1518
    .line 1519
    .line 1520
    move-result-object v1

    .line 1521
    check-cast v1, Landroid/os/ParcelFileDescriptor;

    .line 1522
    .line 1523
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1524
    .line 1525
    .line 1526
    move-result v2

    .line 1527
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1528
    .line 1529
    .line 1530
    move-result v3

    .line 1531
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1532
    .line 1533
    .line 1534
    move-result-object v4

    .line 1535
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1536
    .line 1537
    .line 1538
    move-result-object v5

    .line 1539
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1540
    .line 1541
    .line 1542
    move-result v6

    .line 1543
    move-object/from16 v0, p0

    .line 1544
    .line 1545
    invoke-interface/range {v0 .. v6}, Landroid/net/INetd;->ipSecApplyTransportModeTransform(Landroid/os/ParcelFileDescriptor;IILjava/lang/String;Ljava/lang/String;I)V

    .line 1546
    .line 1547
    .line 1548
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1549
    .line 1550
    .line 1551
    goto/16 :goto_0

    .line 1552
    .line 1553
    :pswitch_58
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1554
    .line 1555
    .line 1556
    move-result v1

    .line 1557
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1558
    .line 1559
    .line 1560
    move-result-object v2

    .line 1561
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1562
    .line 1563
    .line 1564
    move-result-object v3

    .line 1565
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1566
    .line 1567
    .line 1568
    move-result v4

    .line 1569
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1570
    .line 1571
    .line 1572
    move-result v5

    .line 1573
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1574
    .line 1575
    .line 1576
    move-result v6

    .line 1577
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1578
    .line 1579
    .line 1580
    move-result v7

    .line 1581
    move-object/from16 v0, p0

    .line 1582
    .line 1583
    invoke-interface/range {v0 .. v7}, Landroid/net/INetd;->ipSecDeleteSecurityAssociation(ILjava/lang/String;Ljava/lang/String;IIII)V

    .line 1584
    .line 1585
    .line 1586
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1587
    .line 1588
    .line 1589
    goto/16 :goto_0

    .line 1590
    .line 1591
    :pswitch_59
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1592
    .line 1593
    .line 1594
    move-result v1

    .line 1595
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1596
    .line 1597
    .line 1598
    move-result v2

    .line 1599
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1600
    .line 1601
    .line 1602
    move-result-object v3

    .line 1603
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1604
    .line 1605
    .line 1606
    move-result-object v4

    .line 1607
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1608
    .line 1609
    .line 1610
    move-result v5

    .line 1611
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1612
    .line 1613
    .line 1614
    move-result v6

    .line 1615
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1616
    .line 1617
    .line 1618
    move-result v7

    .line 1619
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1620
    .line 1621
    .line 1622
    move-result v8

    .line 1623
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1624
    .line 1625
    .line 1626
    move-result-object v9

    .line 1627
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    .line 1628
    .line 1629
    .line 1630
    move-result-object v10

    .line 1631
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1632
    .line 1633
    .line 1634
    move-result v11

    .line 1635
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1636
    .line 1637
    .line 1638
    move-result-object v12

    .line 1639
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    .line 1640
    .line 1641
    .line 1642
    move-result-object v16

    .line 1643
    move-object/from16 v13, v16

    .line 1644
    .line 1645
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1646
    .line 1647
    .line 1648
    move-result v16

    .line 1649
    move/from16 v14, v16

    .line 1650
    .line 1651
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1652
    .line 1653
    .line 1654
    move-result-object v16

    .line 1655
    move-object/from16 v15, v16

    .line 1656
    .line 1657
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    .line 1658
    .line 1659
    .line 1660
    move-result-object v16

    .line 1661
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1662
    .line 1663
    .line 1664
    move-result v17

    .line 1665
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1666
    .line 1667
    .line 1668
    move-result v18

    .line 1669
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1670
    .line 1671
    .line 1672
    move-result v19

    .line 1673
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1674
    .line 1675
    .line 1676
    move-result v20

    .line 1677
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1678
    .line 1679
    .line 1680
    move-result v21

    .line 1681
    move-object/from16 v0, p0

    .line 1682
    .line 1683
    invoke-interface/range {v0 .. v21}, Landroid/net/INetd;->ipSecAddSecurityAssociation(IILjava/lang/String;Ljava/lang/String;IIIILjava/lang/String;[BILjava/lang/String;[BILjava/lang/String;[BIIIII)V

    .line 1684
    .line 1685
    .line 1686
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1687
    .line 1688
    .line 1689
    :goto_1
    const/4 v1, 0x1

    .line 1690
    goto/16 :goto_2

    .line 1691
    .line 1692
    :pswitch_5a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1693
    .line 1694
    .line 1695
    move-result v1

    .line 1696
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1697
    .line 1698
    .line 1699
    move-result-object v2

    .line 1700
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1701
    .line 1702
    .line 1703
    move-result-object v3

    .line 1704
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1705
    .line 1706
    .line 1707
    move-result v4

    .line 1708
    invoke-interface {v0, v1, v2, v3, v4}, Landroid/net/INetd;->ipSecAllocateSpi(ILjava/lang/String;Ljava/lang/String;I)I

    .line 1709
    .line 1710
    .line 1711
    move-result v0

    .line 1712
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1713
    .line 1714
    .line 1715
    move-object/from16 v6, p3

    .line 1716
    .line 1717
    invoke-virtual {v6, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1718
    .line 1719
    .line 1720
    goto :goto_1

    .line 1721
    :pswitch_5b
    move-object v6, v14

    .line 1722
    sget-object v1, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1723
    .line 1724
    move-object/from16 v2, p2

    .line 1725
    .line 1726
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1727
    .line 1728
    .line 1729
    move-result-object v1

    .line 1730
    check-cast v1, Landroid/os/ParcelFileDescriptor;

    .line 1731
    .line 1732
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1733
    .line 1734
    .line 1735
    move-result v2

    .line 1736
    invoke-interface {v0, v1, v2}, Landroid/net/INetd;->ipSecSetEncapSocketOwner(Landroid/os/ParcelFileDescriptor;I)V

    .line 1737
    .line 1738
    .line 1739
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1740
    .line 1741
    .line 1742
    goto :goto_1

    .line 1743
    :pswitch_5c
    move-object v6, v14

    .line 1744
    move-object v2, v15

    .line 1745
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1746
    .line 1747
    .line 1748
    move-result v1

    .line 1749
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1750
    .line 1751
    .line 1752
    move-result v3

    .line 1753
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1754
    .line 1755
    .line 1756
    move-result-object v4

    .line 1757
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1758
    .line 1759
    .line 1760
    move-result-object v5

    .line 1761
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1762
    .line 1763
    .line 1764
    move-result-object v7

    .line 1765
    move-object/from16 v0, p0

    .line 1766
    .line 1767
    move v2, v3

    .line 1768
    move-object v3, v4

    .line 1769
    move-object v4, v5

    .line 1770
    move-object v5, v7

    .line 1771
    invoke-interface/range {v0 .. v5}, Landroid/net/INetd;->setProcSysNet(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1772
    .line 1773
    .line 1774
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1775
    .line 1776
    .line 1777
    goto :goto_1

    .line 1778
    :pswitch_5d
    move-object v6, v14

    .line 1779
    move-object v2, v15

    .line 1780
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1781
    .line 1782
    .line 1783
    move-result v1

    .line 1784
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1785
    .line 1786
    .line 1787
    move-result v3

    .line 1788
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1789
    .line 1790
    .line 1791
    move-result-object v4

    .line 1792
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1793
    .line 1794
    .line 1795
    move-result-object v2

    .line 1796
    invoke-interface {v0, v1, v3, v4, v2}, Landroid/net/INetd;->getProcSysNet(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1797
    .line 1798
    .line 1799
    move-result-object v0

    .line 1800
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1801
    .line 1802
    .line 1803
    invoke-virtual {v6, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1804
    .line 1805
    .line 1806
    goto :goto_1

    .line 1807
    :pswitch_5e
    move-object v6, v14

    .line 1808
    move-object v2, v15

    .line 1809
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1810
    .line 1811
    .line 1812
    move-result-object v1

    .line 1813
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1814
    .line 1815
    .line 1816
    move-result-object v3

    .line 1817
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1818
    .line 1819
    .line 1820
    move-result v2

    .line 1821
    invoke-interface {v0, v1, v3, v2}, Landroid/net/INetd;->interfaceDelAddress(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1822
    .line 1823
    .line 1824
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1825
    .line 1826
    .line 1827
    goto/16 :goto_1

    .line 1828
    .line 1829
    :pswitch_5f
    move-object v6, v14

    .line 1830
    move-object v2, v15

    .line 1831
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1832
    .line 1833
    .line 1834
    move-result-object v1

    .line 1835
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1836
    .line 1837
    .line 1838
    move-result-object v3

    .line 1839
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1840
    .line 1841
    .line 1842
    move-result v2

    .line 1843
    invoke-interface {v0, v1, v3, v2}, Landroid/net/INetd;->interfaceAddAddress(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1844
    .line 1845
    .line 1846
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1847
    .line 1848
    .line 1849
    goto/16 :goto_1

    .line 1850
    .line 1851
    :pswitch_60
    move-object v6, v14

    .line 1852
    invoke-interface/range {p0 .. p0}, Landroid/net/INetd;->tetherGetStats()[Landroid/net/TetherStatsParcel;

    .line 1853
    .line 1854
    .line 1855
    move-result-object v0

    .line 1856
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1857
    .line 1858
    .line 1859
    const/4 v1, 0x1

    .line 1860
    invoke-virtual {v6, v0, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 1861
    .line 1862
    .line 1863
    goto/16 :goto_2

    .line 1864
    .line 1865
    :pswitch_61
    move v1, v13

    .line 1866
    move-object v6, v14

    .line 1867
    invoke-interface/range {p0 .. p0}, Landroid/net/INetd;->tetherApplyDnsInterfaces()Z

    .line 1868
    .line 1869
    .line 1870
    move-result v0

    .line 1871
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1872
    .line 1873
    .line 1874
    invoke-virtual {v6, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1875
    .line 1876
    .line 1877
    goto/16 :goto_2

    .line 1878
    .line 1879
    :pswitch_62
    move v1, v13

    .line 1880
    move-object v6, v14

    .line 1881
    move-object v2, v15

    .line 1882
    sget-object v3, Landroid/net/UidRangeParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1883
    .line 1884
    invoke-virtual {v2, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    .line 1885
    .line 1886
    .line 1887
    move-result-object v3

    .line 1888
    check-cast v3, [Landroid/net/UidRangeParcel;

    .line 1889
    .line 1890
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    .line 1891
    .line 1892
    .line 1893
    move-result-object v2

    .line 1894
    invoke-interface {v0, v3, v2}, Landroid/net/INetd;->socketDestroy([Landroid/net/UidRangeParcel;[I)V

    .line 1895
    .line 1896
    .line 1897
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1898
    .line 1899
    .line 1900
    goto/16 :goto_2

    .line 1901
    .line 1902
    :pswitch_63
    move v1, v13

    .line 1903
    move-object v6, v14

    .line 1904
    move-object v2, v15

    .line 1905
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 1906
    .line 1907
    .line 1908
    move-result v3

    .line 1909
    sget-object v4, Landroid/net/UidRangeParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1910
    .line 1911
    invoke-virtual {v2, v4}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    .line 1912
    .line 1913
    .line 1914
    move-result-object v2

    .line 1915
    check-cast v2, [Landroid/net/UidRangeParcel;

    .line 1916
    .line 1917
    invoke-interface {v0, v3, v2}, Landroid/net/INetd;->networkRejectNonSecureVpn(Z[Landroid/net/UidRangeParcel;)V

    .line 1918
    .line 1919
    .line 1920
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1921
    .line 1922
    .line 1923
    goto/16 :goto_2

    .line 1924
    .line 1925
    :pswitch_64
    move v1, v13

    .line 1926
    move-object v6, v14

    .line 1927
    move-object v2, v15

    .line 1928
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1929
    .line 1930
    .line 1931
    move-result v3

    .line 1932
    sget-object v4, Landroid/net/UidRangeParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1933
    .line 1934
    invoke-virtual {v2, v4}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    .line 1935
    .line 1936
    .line 1937
    move-result-object v2

    .line 1938
    check-cast v2, [Landroid/net/UidRangeParcel;

    .line 1939
    .line 1940
    invoke-interface {v0, v3, v2}, Landroid/net/INetd;->networkRemoveUidRanges(I[Landroid/net/UidRangeParcel;)V

    .line 1941
    .line 1942
    .line 1943
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1944
    .line 1945
    .line 1946
    goto/16 :goto_2

    .line 1947
    .line 1948
    :pswitch_65
    move v1, v13

    .line 1949
    move-object v6, v14

    .line 1950
    move-object v2, v15

    .line 1951
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1952
    .line 1953
    .line 1954
    move-result v3

    .line 1955
    sget-object v4, Landroid/net/UidRangeParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1956
    .line 1957
    invoke-virtual {v2, v4}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    .line 1958
    .line 1959
    .line 1960
    move-result-object v2

    .line 1961
    check-cast v2, [Landroid/net/UidRangeParcel;

    .line 1962
    .line 1963
    invoke-interface {v0, v3, v2}, Landroid/net/INetd;->networkAddUidRanges(I[Landroid/net/UidRangeParcel;)V

    .line 1964
    .line 1965
    .line 1966
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1967
    .line 1968
    .line 1969
    goto/16 :goto_2

    .line 1970
    .line 1971
    :pswitch_66
    move v1, v13

    .line 1972
    move-object v6, v14

    .line 1973
    move-object v2, v15

    .line 1974
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1975
    .line 1976
    .line 1977
    move-result v3

    .line 1978
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1979
    .line 1980
    .line 1981
    move-result-object v2

    .line 1982
    invoke-interface {v0, v3, v2}, Landroid/net/INetd;->networkRemoveInterface(ILjava/lang/String;)V

    .line 1983
    .line 1984
    .line 1985
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1986
    .line 1987
    .line 1988
    goto/16 :goto_2

    .line 1989
    .line 1990
    :pswitch_67
    move v1, v13

    .line 1991
    move-object v6, v14

    .line 1992
    move-object v2, v15

    .line 1993
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1994
    .line 1995
    .line 1996
    move-result v3

    .line 1997
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1998
    .line 1999
    .line 2000
    move-result-object v2

    .line 2001
    invoke-interface {v0, v3, v2}, Landroid/net/INetd;->networkAddInterface(ILjava/lang/String;)V

    .line 2002
    .line 2003
    .line 2004
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2005
    .line 2006
    .line 2007
    goto/16 :goto_2

    .line 2008
    .line 2009
    :pswitch_68
    move v1, v13

    .line 2010
    move-object v6, v14

    .line 2011
    move-object v2, v15

    .line 2012
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 2013
    .line 2014
    .line 2015
    move-result v2

    .line 2016
    invoke-interface {v0, v2}, Landroid/net/INetd;->networkDestroy(I)V

    .line 2017
    .line 2018
    .line 2019
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2020
    .line 2021
    .line 2022
    goto/16 :goto_2

    .line 2023
    .line 2024
    :pswitch_69
    move v1, v13

    .line 2025
    move-object v6, v14

    .line 2026
    move-object v2, v15

    .line 2027
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 2028
    .line 2029
    .line 2030
    move-result v3

    .line 2031
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 2032
    .line 2033
    .line 2034
    move-result v2

    .line 2035
    invoke-interface {v0, v3, v2}, Landroid/net/INetd;->networkCreateVpn(IZ)V

    .line 2036
    .line 2037
    .line 2038
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2039
    .line 2040
    .line 2041
    goto :goto_2

    .line 2042
    :pswitch_6a
    move v1, v13

    .line 2043
    move-object v6, v14

    .line 2044
    move-object v2, v15

    .line 2045
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 2046
    .line 2047
    .line 2048
    move-result v3

    .line 2049
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 2050
    .line 2051
    .line 2052
    move-result v2

    .line 2053
    invoke-interface {v0, v3, v2}, Landroid/net/INetd;->networkCreatePhysical(II)V

    .line 2054
    .line 2055
    .line 2056
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2057
    .line 2058
    .line 2059
    goto :goto_2

    .line 2060
    :pswitch_6b
    move v1, v13

    .line 2061
    move-object v6, v14

    .line 2062
    move-object v2, v15

    .line 2063
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 2064
    .line 2065
    .line 2066
    move-result v2

    .line 2067
    invoke-interface {v0, v2}, Landroid/net/INetd;->bandwidthEnableDataSaver(Z)Z

    .line 2068
    .line 2069
    .line 2070
    move-result v0

    .line 2071
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2072
    .line 2073
    .line 2074
    invoke-virtual {v6, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2075
    .line 2076
    .line 2077
    goto :goto_2

    .line 2078
    :pswitch_6c
    move v1, v13

    .line 2079
    move-object v6, v14

    .line 2080
    move-object v2, v15

    .line 2081
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 2082
    .line 2083
    .line 2084
    move-result-object v3

    .line 2085
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 2086
    .line 2087
    .line 2088
    move-result v4

    .line 2089
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    .line 2090
    .line 2091
    .line 2092
    move-result-object v2

    .line 2093
    invoke-interface {v0, v3, v4, v2}, Landroid/net/INetd;->firewallReplaceUidChain(Ljava/lang/String;Z[I)Z

    .line 2094
    .line 2095
    .line 2096
    move-result v0

    .line 2097
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2098
    .line 2099
    .line 2100
    invoke-virtual {v6, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2101
    .line 2102
    .line 2103
    goto :goto_2

    .line 2104
    :pswitch_6d
    move v1, v13

    .line 2105
    move-object v6, v14

    .line 2106
    invoke-interface/range {p0 .. p0}, Landroid/net/INetd;->isAlive()Z

    .line 2107
    .line 2108
    .line 2109
    move-result v0

    .line 2110
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2111
    .line 2112
    .line 2113
    invoke-virtual {v6, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2114
    .line 2115
    .line 2116
    :goto_2
    return v1

    .line 2117
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6d
        :pswitch_6c
        :pswitch_6b
        :pswitch_6a
        :pswitch_69
        :pswitch_68
        :pswitch_67
        :pswitch_66
        :pswitch_65
        :pswitch_64
        :pswitch_63
        :pswitch_62
        :pswitch_61
        :pswitch_60
        :pswitch_5f
        :pswitch_5e
        :pswitch_5d
        :pswitch_5c
        :pswitch_5b
        :pswitch_5a
        :pswitch_59
        :pswitch_58
        :pswitch_57
        :pswitch_56
        :pswitch_55
        :pswitch_54
        :pswitch_53
        :pswitch_52
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
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
