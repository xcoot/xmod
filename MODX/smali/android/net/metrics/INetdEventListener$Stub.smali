.class public abstract Landroid/net/metrics/INetdEventListener$Stub;
.super Landroid/os/Binder;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/net/metrics/INetdEventListener;


# static fields
.field static final TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final TRANSACTION_onConnectEvent:I = 0x3

.field static final TRANSACTION_onDnsEvent:I = 0x1

.field static final TRANSACTION_onNat64PrefixEvent:I = 0x6

.field static final TRANSACTION_onPrivateDnsValidationEvent:I = 0x2

.field static final TRANSACTION_onTcpSocketStatsEvent:I = 0x5

.field static final TRANSACTION_onWakeupEvent:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 4
    sget-object v0, Landroid/net/metrics/INetdEventListener;->DESCRIPTOR:Ljava/lang/String;

    .line 6
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 9
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/net/metrics/INetdEventListener;
    .locals 2

    .line 1
    if-nez p0, :cond_0

    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    sget-object v0, Landroid/net/metrics/INetdEventListener;->DESCRIPTOR:Ljava/lang/String;

    .line 7
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_1

    .line 13
    instance-of v1, v0, Landroid/net/metrics/INetdEventListener;

    .line 15
    if-eqz v1, :cond_1

    .line 17
    check-cast v0, Landroid/net/metrics/INetdEventListener;

    .line 19
    return-object v0

    .line 20
    :cond_1
    new-instance v0, Landroid/net/metrics/INetdEventListener$Stub$Proxy;

    .line 22
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v1, -0x1

    .line 26
    iput v1, v0, Landroid/net/metrics/INetdEventListener$Stub$Proxy;->mCachedVersion:I

    .line 28
    const-string v1, "-1"

    .line 30
    iput-object v1, v0, Landroid/net/metrics/INetdEventListener$Stub$Proxy;->mCachedHash:Ljava/lang/String;

    .line 32
    iput-object p0, v0, Landroid/net/metrics/INetdEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

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
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    move-object v0, p0

    .line 2
    move/from16 v1, p1

    .line 4
    move-object/from16 v2, p3

    .line 6
    sget-object v3, Landroid/net/metrics/INetdEventListener;->DESCRIPTOR:Ljava/lang/String;

    .line 8
    const v4, 0xffffff

    .line 11
    const/4 v12, 0x1

    .line 12
    if-lt v1, v12, :cond_0

    .line 14
    if-gt v1, v4, :cond_0

    .line 16
    move-object/from16 v5, p2

    .line 18
    invoke-virtual {v5, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    move-object/from16 v5, p2

    .line 24
    :goto_0
    const v6, 0x5f4e5446

    .line 27
    if-ne v1, v6, :cond_1

    .line 29
    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 32
    return v12

    .line 33
    :cond_1
    if-ne v1, v4, :cond_2

    .line 35
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 38
    invoke-interface {p0}, Landroid/net/metrics/INetdEventListener;->getInterfaceVersion()I

    .line 41
    move-result v0

    .line 42
    invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 45
    return v12

    .line 46
    :cond_2
    const v3, 0xfffffe

    .line 49
    if-ne v1, v3, :cond_3

    .line 51
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 54
    invoke-interface {p0}, Landroid/net/metrics/INetdEventListener;->getInterfaceHash()Ljava/lang/String;

    .line 57
    move-result-object v0

    .line 58
    invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 61
    return v12

    .line 62
    :cond_3
    packed-switch v1, :pswitch_data_0

    .line 65
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 68
    move-result v0

    .line 69
    return v0

    .line 70
    :pswitch_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 73
    move-result v1

    .line 74
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 77
    move-result v2

    .line 78
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 81
    move-result-object v3

    .line 82
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 85
    move-result v4

    .line 86
    invoke-interface {p0, v1, v2, v3, v4}, Landroid/net/metrics/INetdEventListener;->onNat64PrefixEvent(IZLjava/lang/String;I)V

    .line 89
    goto/16 :goto_1

    .line 91
    :pswitch_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    .line 94
    move-result-object v1

    .line 95
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    .line 98
    move-result-object v2

    .line 99
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    .line 102
    move-result-object v3

    .line 103
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    .line 106
    move-result-object v4

    .line 107
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    .line 110
    move-result-object v5

    .line 111
    move-object v0, p0

    .line 112
    invoke-interface/range {v0 .. v5}, Landroid/net/metrics/INetdEventListener;->onTcpSocketStatsEvent([I[I[I[I[I)V

    .line 115
    goto/16 :goto_1

    .line 117
    :pswitch_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 120
    move-result-object v1

    .line 121
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 124
    move-result v2

    .line 125
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 128
    move-result v3

    .line 129
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 132
    move-result v4

    .line 133
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    .line 136
    move-result-object v6

    .line 137
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 140
    move-result-object v7

    .line 141
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 144
    move-result-object v8

    .line 145
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 148
    move-result v9

    .line 149
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 152
    move-result v10

    .line 153
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    .line 156
    move-result-wide v13

    .line 157
    move-object v0, p0

    .line 158
    move-object v5, v6

    .line 159
    move-object v6, v7

    .line 160
    move-object v7, v8

    .line 161
    move v8, v9

    .line 162
    move v9, v10

    .line 163
    move-wide v10, v13

    .line 164
    invoke-interface/range {v0 .. v11}, Landroid/net/metrics/INetdEventListener;->onWakeupEvent(Ljava/lang/String;III[BLjava/lang/String;Ljava/lang/String;IIJ)V

    .line 167
    goto :goto_1

    .line 168
    :pswitch_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 171
    move-result v1

    .line 172
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 175
    move-result v2

    .line 176
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 179
    move-result v3

    .line 180
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 183
    move-result-object v4

    .line 184
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 187
    move-result v6

    .line 188
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 191
    move-result v7

    .line 192
    move-object v0, p0

    .line 193
    move v5, v6

    .line 194
    move v6, v7

    .line 195
    invoke-interface/range {v0 .. v6}, Landroid/net/metrics/INetdEventListener;->onConnectEvent(IIILjava/lang/String;II)V

    .line 198
    goto :goto_1

    .line 199
    :pswitch_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 202
    move-result v1

    .line 203
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 206
    move-result-object v2

    .line 207
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 210
    move-result-object v3

    .line 211
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 214
    move-result v4

    .line 215
    invoke-interface {p0, v1, v2, v3, v4}, Landroid/net/metrics/INetdEventListener;->onPrivateDnsValidationEvent(ILjava/lang/String;Ljava/lang/String;Z)V

    .line 218
    goto :goto_1

    .line 219
    :pswitch_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 222
    move-result v1

    .line 223
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 226
    move-result v2

    .line 227
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 230
    move-result v3

    .line 231
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 234
    move-result v4

    .line 235
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 238
    move-result-object v6

    .line 239
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    .line 242
    move-result-object v7

    .line 243
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 246
    move-result v8

    .line 247
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 250
    move-result v9

    .line 251
    move-object v0, p0

    .line 252
    move-object v5, v6

    .line 253
    move-object v6, v7

    .line 254
    move v7, v8

    .line 255
    move v8, v9

    .line 256
    invoke-interface/range {v0 .. v8}, Landroid/net/metrics/INetdEventListener;->onDnsEvent(IIIILjava/lang/String;[Ljava/lang/String;II)V

    .line 259
    :goto_1
    return v12

    .line 260
    nop

    .line 261
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
