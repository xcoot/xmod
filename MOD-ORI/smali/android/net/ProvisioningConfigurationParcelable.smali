.class public Landroid/net/ProvisioningConfigurationParcelable;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field public apfCapabilities:Landroid/net/apf/ApfCapabilities;

.field public creatorUid:I

.field public displayName:Ljava/lang/String;

.field public enableIPv4:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public enableIPv6:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public enablePreconnection:Z

.field public hostnameSetting:I

.field public initialConfig:Landroid/net/InitialConfigurationParcelable;

.field public ipv4ProvisioningMode:I

.field public ipv6AddrGenMode:I

.field public ipv6ProvisioningMode:I

.field public layer2Info:Landroid/net/Layer2InformationParcelable;

.field public network:Landroid/net/Network;

.field public options:Ljava/util/List;

.field public provisioningTimeoutMs:I

.field public requestedPreDhcpActionMs:I

.field public scanResultInfo:Landroid/net/ScanResultInfoParcelable;

.field public staticIpConfig:Landroid/net/StaticIpConfiguration;

.field public uniqueEui64AddressesOnly:Z

.field public usingIpReachabilityMonitor:Z

.field public usingMultinetworkPolicyTracker:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroid/net/ProvisioningConfigurationParcelable$1;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroid/net/ProvisioningConfigurationParcelable;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Landroid/net/ProvisioningConfigurationParcelable;->enableIPv4:Z

    .line 6
    .line 7
    iput-boolean v0, p0, Landroid/net/ProvisioningConfigurationParcelable;->enableIPv6:Z

    .line 8
    .line 9
    iput-boolean v0, p0, Landroid/net/ProvisioningConfigurationParcelable;->usingMultinetworkPolicyTracker:Z

    .line 10
    .line 11
    iput-boolean v0, p0, Landroid/net/ProvisioningConfigurationParcelable;->usingIpReachabilityMonitor:Z

    .line 12
    .line 13
    iput v0, p0, Landroid/net/ProvisioningConfigurationParcelable;->requestedPreDhcpActionMs:I

    .line 14
    .line 15
    iput v0, p0, Landroid/net/ProvisioningConfigurationParcelable;->provisioningTimeoutMs:I

    .line 16
    .line 17
    iput v0, p0, Landroid/net/ProvisioningConfigurationParcelable;->ipv6AddrGenMode:I

    .line 18
    .line 19
    iput-boolean v0, p0, Landroid/net/ProvisioningConfigurationParcelable;->enablePreconnection:Z

    .line 20
    .line 21
    iput v0, p0, Landroid/net/ProvisioningConfigurationParcelable;->ipv4ProvisioningMode:I

    .line 22
    .line 23
    iput v0, p0, Landroid/net/ProvisioningConfigurationParcelable;->ipv6ProvisioningMode:I

    .line 24
    .line 25
    iput-boolean v0, p0, Landroid/net/ProvisioningConfigurationParcelable;->uniqueEui64AddressesOnly:Z

    .line 26
    .line 27
    iput v0, p0, Landroid/net/ProvisioningConfigurationParcelable;->creatorUid:I

    .line 28
    .line 29
    iput v0, p0, Landroid/net/ProvisioningConfigurationParcelable;->hostnameSetting:I

    .line 30
    .line 31
    return-void
.end method

.method private describeContents(Ljava/lang/Object;)I
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 8
    :cond_0
    instance-of v1, p1, Ljava/util/Collection;

    if-eqz v1, :cond_2

    .line 9
    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 10
    invoke-direct {p0, v1}, Landroid/net/ProvisioningConfigurationParcelable;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    goto :goto_0

    :cond_1
    return v0

    .line 11
    :cond_2
    instance-of p0, p1, Landroid/os/Parcelable;

    if-eqz p0, :cond_3

    .line 12
    check-cast p1, Landroid/os/Parcelable;

    invoke-interface {p1}, Landroid/os/Parcelable;->describeContents()I

    move-result p0

    return p0

    :cond_3
    return v0
.end method


# virtual methods
.method public describeContents()I
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/net/ProvisioningConfigurationParcelable;->initialConfig:Landroid/net/InitialConfigurationParcelable;

    invoke-direct {p0, v0}, Landroid/net/ProvisioningConfigurationParcelable;->describeContents(Ljava/lang/Object;)I

    move-result v0

    .line 2
    iget-object v1, p0, Landroid/net/ProvisioningConfigurationParcelable;->staticIpConfig:Landroid/net/StaticIpConfiguration;

    invoke-direct {p0, v1}, Landroid/net/ProvisioningConfigurationParcelable;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 3
    iget-object v1, p0, Landroid/net/ProvisioningConfigurationParcelable;->apfCapabilities:Landroid/net/apf/ApfCapabilities;

    invoke-direct {p0, v1}, Landroid/net/ProvisioningConfigurationParcelable;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 4
    iget-object v1, p0, Landroid/net/ProvisioningConfigurationParcelable;->network:Landroid/net/Network;

    invoke-direct {p0, v1}, Landroid/net/ProvisioningConfigurationParcelable;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 5
    iget-object v1, p0, Landroid/net/ProvisioningConfigurationParcelable;->scanResultInfo:Landroid/net/ScanResultInfoParcelable;

    invoke-direct {p0, v1}, Landroid/net/ProvisioningConfigurationParcelable;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 6
    iget-object v1, p0, Landroid/net/ProvisioningConfigurationParcelable;->layer2Info:Landroid/net/Layer2InformationParcelable;

    invoke-direct {p0, v1}, Landroid/net/ProvisioningConfigurationParcelable;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 7
    iget-object v1, p0, Landroid/net/ProvisioningConfigurationParcelable;->options:Ljava/util/List;

    invoke-direct {p0, v1}, Landroid/net/ProvisioningConfigurationParcelable;->describeContents(Ljava/lang/Object;)I

    move-result p0

    or-int/2addr p0, v0

    return p0
.end method

.method public final readFromParcel(Landroid/os/Parcel;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x4

    .line 10
    const-string v3, "Overflow in the size of parcelable"

    .line 11
    .line 12
    const v4, 0x7fffffff

    .line 13
    .line 14
    .line 15
    if-lt v1, v2, :cond_2b

    .line 16
    .line 17
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 18
    .line 19
    .line 20
    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    sub-int/2addr v2, v0

    .line 22
    if-lt v2, v1, :cond_1

    .line 23
    .line 24
    sub-int/2addr v4, v1

    .line 25
    if-gt v0, v4, :cond_0

    .line 26
    .line 27
    :goto_0
    add-int/2addr v0, v1

    .line 28
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :cond_0
    new-instance p0, Landroid/os/BadParcelableException;

    .line 33
    .line 34
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    throw p0

    .line 38
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    iput-boolean v2, p0, Landroid/net/ProvisioningConfigurationParcelable;->enableIPv4:Z

    .line 43
    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 45
    .line 46
    .line 47
    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 48
    sub-int/2addr v2, v0

    .line 49
    if-lt v2, v1, :cond_3

    .line 50
    .line 51
    sub-int/2addr v4, v1

    .line 52
    if-gt v0, v4, :cond_2

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_2
    new-instance p0, Landroid/os/BadParcelableException;

    .line 56
    .line 57
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    throw p0

    .line 61
    :cond_3
    :try_start_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    .line 62
    .line 63
    .line 64
    move-result v2

    .line 65
    iput-boolean v2, p0, Landroid/net/ProvisioningConfigurationParcelable;->enableIPv6:Z

    .line 66
    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 68
    .line 69
    .line 70
    move-result v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 71
    sub-int/2addr v2, v0

    .line 72
    if-lt v2, v1, :cond_5

    .line 73
    .line 74
    sub-int/2addr v4, v1

    .line 75
    if-gt v0, v4, :cond_4

    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_4
    new-instance p0, Landroid/os/BadParcelableException;

    .line 79
    .line 80
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    throw p0

    .line 84
    :cond_5
    :try_start_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    .line 85
    .line 86
    .line 87
    move-result v2

    .line 88
    iput-boolean v2, p0, Landroid/net/ProvisioningConfigurationParcelable;->usingMultinetworkPolicyTracker:Z

    .line 89
    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 91
    .line 92
    .line 93
    move-result v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 94
    sub-int/2addr v2, v0

    .line 95
    if-lt v2, v1, :cond_7

    .line 96
    .line 97
    sub-int/2addr v4, v1

    .line 98
    if-gt v0, v4, :cond_6

    .line 99
    .line 100
    goto :goto_0

    .line 101
    :cond_6
    new-instance p0, Landroid/os/BadParcelableException;

    .line 102
    .line 103
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    throw p0

    .line 107
    :cond_7
    :try_start_4
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    .line 108
    .line 109
    .line 110
    move-result v2

    .line 111
    iput-boolean v2, p0, Landroid/net/ProvisioningConfigurationParcelable;->usingIpReachabilityMonitor:Z

    .line 112
    .line 113
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 114
    .line 115
    .line 116
    move-result v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 117
    sub-int/2addr v2, v0

    .line 118
    if-lt v2, v1, :cond_9

    .line 119
    .line 120
    sub-int/2addr v4, v1

    .line 121
    if-gt v0, v4, :cond_8

    .line 122
    .line 123
    goto :goto_0

    .line 124
    :cond_8
    new-instance p0, Landroid/os/BadParcelableException;

    .line 125
    .line 126
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    throw p0

    .line 130
    :cond_9
    :try_start_5
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 131
    .line 132
    .line 133
    move-result v2

    .line 134
    iput v2, p0, Landroid/net/ProvisioningConfigurationParcelable;->requestedPreDhcpActionMs:I

    .line 135
    .line 136
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 137
    .line 138
    .line 139
    move-result v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 140
    sub-int/2addr v2, v0

    .line 141
    if-lt v2, v1, :cond_b

    .line 142
    .line 143
    sub-int/2addr v4, v1

    .line 144
    if-gt v0, v4, :cond_a

    .line 145
    .line 146
    goto :goto_0

    .line 147
    :cond_a
    new-instance p0, Landroid/os/BadParcelableException;

    .line 148
    .line 149
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    throw p0

    .line 153
    :cond_b
    :try_start_6
    sget-object v2, Landroid/net/InitialConfigurationParcelable;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 154
    .line 155
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 156
    .line 157
    .line 158
    move-result-object v2

    .line 159
    check-cast v2, Landroid/net/InitialConfigurationParcelable;

    .line 160
    .line 161
    iput-object v2, p0, Landroid/net/ProvisioningConfigurationParcelable;->initialConfig:Landroid/net/InitialConfigurationParcelable;

    .line 162
    .line 163
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 164
    .line 165
    .line 166
    move-result v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 167
    sub-int/2addr v2, v0

    .line 168
    if-lt v2, v1, :cond_d

    .line 169
    .line 170
    sub-int/2addr v4, v1

    .line 171
    if-gt v0, v4, :cond_c

    .line 172
    .line 173
    goto/16 :goto_0

    .line 174
    .line 175
    :cond_c
    new-instance p0, Landroid/os/BadParcelableException;

    .line 176
    .line 177
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 178
    .line 179
    .line 180
    throw p0

    .line 181
    :cond_d
    :try_start_7
    sget-object v2, Landroid/net/StaticIpConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 182
    .line 183
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 184
    .line 185
    .line 186
    move-result-object v2

    .line 187
    check-cast v2, Landroid/net/StaticIpConfiguration;

    .line 188
    .line 189
    iput-object v2, p0, Landroid/net/ProvisioningConfigurationParcelable;->staticIpConfig:Landroid/net/StaticIpConfiguration;

    .line 190
    .line 191
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 192
    .line 193
    .line 194
    move-result v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 195
    sub-int/2addr v2, v0

    .line 196
    if-lt v2, v1, :cond_f

    .line 197
    .line 198
    sub-int/2addr v4, v1

    .line 199
    if-gt v0, v4, :cond_e

    .line 200
    .line 201
    goto/16 :goto_0

    .line 202
    .line 203
    :cond_e
    new-instance p0, Landroid/os/BadParcelableException;

    .line 204
    .line 205
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 206
    .line 207
    .line 208
    throw p0

    .line 209
    :cond_f
    :try_start_8
    sget-object v2, Landroid/net/apf/ApfCapabilities;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 210
    .line 211
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 212
    .line 213
    .line 214
    move-result-object v2

    .line 215
    check-cast v2, Landroid/net/apf/ApfCapabilities;

    .line 216
    .line 217
    iput-object v2, p0, Landroid/net/ProvisioningConfigurationParcelable;->apfCapabilities:Landroid/net/apf/ApfCapabilities;

    .line 218
    .line 219
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 220
    .line 221
    .line 222
    move-result v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 223
    sub-int/2addr v2, v0

    .line 224
    if-lt v2, v1, :cond_11

    .line 225
    .line 226
    sub-int/2addr v4, v1

    .line 227
    if-gt v0, v4, :cond_10

    .line 228
    .line 229
    goto/16 :goto_0

    .line 230
    .line 231
    :cond_10
    new-instance p0, Landroid/os/BadParcelableException;

    .line 232
    .line 233
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 234
    .line 235
    .line 236
    throw p0

    .line 237
    :cond_11
    :try_start_9
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 238
    .line 239
    .line 240
    move-result v2

    .line 241
    iput v2, p0, Landroid/net/ProvisioningConfigurationParcelable;->provisioningTimeoutMs:I

    .line 242
    .line 243
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 244
    .line 245
    .line 246
    move-result v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 247
    sub-int/2addr v2, v0

    .line 248
    if-lt v2, v1, :cond_13

    .line 249
    .line 250
    sub-int/2addr v4, v1

    .line 251
    if-gt v0, v4, :cond_12

    .line 252
    .line 253
    goto/16 :goto_0

    .line 254
    .line 255
    :cond_12
    new-instance p0, Landroid/os/BadParcelableException;

    .line 256
    .line 257
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 258
    .line 259
    .line 260
    throw p0

    .line 261
    :cond_13
    :try_start_a
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 262
    .line 263
    .line 264
    move-result v2

    .line 265
    iput v2, p0, Landroid/net/ProvisioningConfigurationParcelable;->ipv6AddrGenMode:I

    .line 266
    .line 267
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 268
    .line 269
    .line 270
    move-result v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 271
    sub-int/2addr v2, v0

    .line 272
    if-lt v2, v1, :cond_15

    .line 273
    .line 274
    sub-int/2addr v4, v1

    .line 275
    if-gt v0, v4, :cond_14

    .line 276
    .line 277
    goto/16 :goto_0

    .line 278
    .line 279
    :cond_14
    new-instance p0, Landroid/os/BadParcelableException;

    .line 280
    .line 281
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 282
    .line 283
    .line 284
    throw p0

    .line 285
    :cond_15
    :try_start_b
    sget-object v2, Landroid/net/Network;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 286
    .line 287
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 288
    .line 289
    .line 290
    move-result-object v2

    .line 291
    check-cast v2, Landroid/net/Network;

    .line 292
    .line 293
    iput-object v2, p0, Landroid/net/ProvisioningConfigurationParcelable;->network:Landroid/net/Network;

    .line 294
    .line 295
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 296
    .line 297
    .line 298
    move-result v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 299
    sub-int/2addr v2, v0

    .line 300
    if-lt v2, v1, :cond_17

    .line 301
    .line 302
    sub-int/2addr v4, v1

    .line 303
    if-gt v0, v4, :cond_16

    .line 304
    .line 305
    goto/16 :goto_0

    .line 306
    .line 307
    :cond_16
    new-instance p0, Landroid/os/BadParcelableException;

    .line 308
    .line 309
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 310
    .line 311
    .line 312
    throw p0

    .line 313
    :cond_17
    :try_start_c
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 314
    .line 315
    .line 316
    move-result-object v2

    .line 317
    iput-object v2, p0, Landroid/net/ProvisioningConfigurationParcelable;->displayName:Ljava/lang/String;

    .line 318
    .line 319
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 320
    .line 321
    .line 322
    move-result v2
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 323
    sub-int/2addr v2, v0

    .line 324
    if-lt v2, v1, :cond_19

    .line 325
    .line 326
    sub-int/2addr v4, v1

    .line 327
    if-gt v0, v4, :cond_18

    .line 328
    .line 329
    goto/16 :goto_0

    .line 330
    .line 331
    :cond_18
    new-instance p0, Landroid/os/BadParcelableException;

    .line 332
    .line 333
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 334
    .line 335
    .line 336
    throw p0

    .line 337
    :cond_19
    :try_start_d
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    .line 338
    .line 339
    .line 340
    move-result v2

    .line 341
    iput-boolean v2, p0, Landroid/net/ProvisioningConfigurationParcelable;->enablePreconnection:Z

    .line 342
    .line 343
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 344
    .line 345
    .line 346
    move-result v2
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 347
    sub-int/2addr v2, v0

    .line 348
    if-lt v2, v1, :cond_1b

    .line 349
    .line 350
    sub-int/2addr v4, v1

    .line 351
    if-gt v0, v4, :cond_1a

    .line 352
    .line 353
    goto/16 :goto_0

    .line 354
    .line 355
    :cond_1a
    new-instance p0, Landroid/os/BadParcelableException;

    .line 356
    .line 357
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 358
    .line 359
    .line 360
    throw p0

    .line 361
    :cond_1b
    :try_start_e
    sget-object v2, Landroid/net/ScanResultInfoParcelable;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 362
    .line 363
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 364
    .line 365
    .line 366
    move-result-object v2

    .line 367
    check-cast v2, Landroid/net/ScanResultInfoParcelable;

    .line 368
    .line 369
    iput-object v2, p0, Landroid/net/ProvisioningConfigurationParcelable;->scanResultInfo:Landroid/net/ScanResultInfoParcelable;

    .line 370
    .line 371
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 372
    .line 373
    .line 374
    move-result v2
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 375
    sub-int/2addr v2, v0

    .line 376
    if-lt v2, v1, :cond_1d

    .line 377
    .line 378
    sub-int/2addr v4, v1

    .line 379
    if-gt v0, v4, :cond_1c

    .line 380
    .line 381
    goto/16 :goto_0

    .line 382
    .line 383
    :cond_1c
    new-instance p0, Landroid/os/BadParcelableException;

    .line 384
    .line 385
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 386
    .line 387
    .line 388
    throw p0

    .line 389
    :cond_1d
    :try_start_f
    sget-object v2, Landroid/net/Layer2InformationParcelable;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 390
    .line 391
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 392
    .line 393
    .line 394
    move-result-object v2

    .line 395
    check-cast v2, Landroid/net/Layer2InformationParcelable;

    .line 396
    .line 397
    iput-object v2, p0, Landroid/net/ProvisioningConfigurationParcelable;->layer2Info:Landroid/net/Layer2InformationParcelable;

    .line 398
    .line 399
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 400
    .line 401
    .line 402
    move-result v2
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 403
    sub-int/2addr v2, v0

    .line 404
    if-lt v2, v1, :cond_1f

    .line 405
    .line 406
    sub-int/2addr v4, v1

    .line 407
    if-gt v0, v4, :cond_1e

    .line 408
    .line 409
    goto/16 :goto_0

    .line 410
    .line 411
    :cond_1e
    new-instance p0, Landroid/os/BadParcelableException;

    .line 412
    .line 413
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 414
    .line 415
    .line 416
    throw p0

    .line 417
    :cond_1f
    :try_start_10
    sget-object v2, Landroid/net/networkstack/aidl/dhcp/DhcpOption;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 418
    .line 419
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    .line 420
    .line 421
    .line 422
    move-result-object v2

    .line 423
    iput-object v2, p0, Landroid/net/ProvisioningConfigurationParcelable;->options:Ljava/util/List;

    .line 424
    .line 425
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 426
    .line 427
    .line 428
    move-result v2
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 429
    sub-int/2addr v2, v0

    .line 430
    if-lt v2, v1, :cond_21

    .line 431
    .line 432
    sub-int/2addr v4, v1

    .line 433
    if-gt v0, v4, :cond_20

    .line 434
    .line 435
    goto/16 :goto_0

    .line 436
    .line 437
    :cond_20
    new-instance p0, Landroid/os/BadParcelableException;

    .line 438
    .line 439
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 440
    .line 441
    .line 442
    throw p0

    .line 443
    :cond_21
    :try_start_11
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 444
    .line 445
    .line 446
    move-result v2

    .line 447
    iput v2, p0, Landroid/net/ProvisioningConfigurationParcelable;->ipv4ProvisioningMode:I

    .line 448
    .line 449
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 450
    .line 451
    .line 452
    move-result v2
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    .line 453
    sub-int/2addr v2, v0

    .line 454
    if-lt v2, v1, :cond_23

    .line 455
    .line 456
    sub-int/2addr v4, v1

    .line 457
    if-gt v0, v4, :cond_22

    .line 458
    .line 459
    goto/16 :goto_0

    .line 460
    .line 461
    :cond_22
    new-instance p0, Landroid/os/BadParcelableException;

    .line 462
    .line 463
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 464
    .line 465
    .line 466
    throw p0

    .line 467
    :cond_23
    :try_start_12
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 468
    .line 469
    .line 470
    move-result v2

    .line 471
    iput v2, p0, Landroid/net/ProvisioningConfigurationParcelable;->ipv6ProvisioningMode:I

    .line 472
    .line 473
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 474
    .line 475
    .line 476
    move-result v2
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    .line 477
    sub-int/2addr v2, v0

    .line 478
    if-lt v2, v1, :cond_25

    .line 479
    .line 480
    sub-int/2addr v4, v1

    .line 481
    if-gt v0, v4, :cond_24

    .line 482
    .line 483
    goto/16 :goto_0

    .line 484
    .line 485
    :cond_24
    new-instance p0, Landroid/os/BadParcelableException;

    .line 486
    .line 487
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 488
    .line 489
    .line 490
    throw p0

    .line 491
    :cond_25
    :try_start_13
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    .line 492
    .line 493
    .line 494
    move-result v2

    .line 495
    iput-boolean v2, p0, Landroid/net/ProvisioningConfigurationParcelable;->uniqueEui64AddressesOnly:Z

    .line 496
    .line 497
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 498
    .line 499
    .line 500
    move-result v2
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    .line 501
    sub-int/2addr v2, v0

    .line 502
    if-lt v2, v1, :cond_27

    .line 503
    .line 504
    sub-int/2addr v4, v1

    .line 505
    if-gt v0, v4, :cond_26

    .line 506
    .line 507
    goto/16 :goto_0

    .line 508
    .line 509
    :cond_26
    new-instance p0, Landroid/os/BadParcelableException;

    .line 510
    .line 511
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 512
    .line 513
    .line 514
    throw p0

    .line 515
    :cond_27
    :try_start_14
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 516
    .line 517
    .line 518
    move-result v2

    .line 519
    iput v2, p0, Landroid/net/ProvisioningConfigurationParcelable;->creatorUid:I

    .line 520
    .line 521
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 522
    .line 523
    .line 524
    move-result v2
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    .line 525
    sub-int/2addr v2, v0

    .line 526
    if-lt v2, v1, :cond_29

    .line 527
    .line 528
    sub-int/2addr v4, v1

    .line 529
    if-gt v0, v4, :cond_28

    .line 530
    .line 531
    goto/16 :goto_0

    .line 532
    .line 533
    :cond_28
    new-instance p0, Landroid/os/BadParcelableException;

    .line 534
    .line 535
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 536
    .line 537
    .line 538
    throw p0

    .line 539
    :cond_29
    :try_start_15
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 540
    .line 541
    .line 542
    move-result v2

    .line 543
    iput v2, p0, Landroid/net/ProvisioningConfigurationParcelable;->hostnameSetting:I
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    .line 544
    .line 545
    sub-int/2addr v4, v1

    .line 546
    if-gt v0, v4, :cond_2a

    .line 547
    .line 548
    add-int/2addr v0, v1

    .line 549
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 550
    .line 551
    .line 552
    return-void

    .line 553
    :cond_2a
    new-instance p0, Landroid/os/BadParcelableException;

    .line 554
    .line 555
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 556
    .line 557
    .line 558
    throw p0

    .line 559
    :catchall_0
    move-exception p0

    .line 560
    goto :goto_1

    .line 561
    :cond_2b
    :try_start_16
    new-instance p0, Landroid/os/BadParcelableException;

    .line 562
    .line 563
    const-string v2, "Parcelable too small"

    .line 564
    .line 565
    invoke-direct {p0, v2}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 566
    .line 567
    .line 568
    throw p0
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    .line 569
    :goto_1
    sub-int/2addr v4, v1

    .line 570
    if-le v0, v4, :cond_2c

    .line 571
    .line 572
    new-instance p0, Landroid/os/BadParcelableException;

    .line 573
    .line 574
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 575
    .line 576
    .line 577
    throw p0

    .line 578
    :cond_2c
    add-int/2addr v0, v1

    .line 579
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 580
    .line 581
    .line 582
    throw p0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/util/StringJoiner;

    .line 2
    .line 3
    const-string/jumbo v1, "{"

    .line 4
    .line 5
    .line 6
    const-string/jumbo v2, "}"

    .line 7
    .line 8
    .line 9
    const-string v3, ", "

    .line 10
    .line 11
    invoke-direct {v0, v3, v1, v2}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 12
    .line 13
    .line 14
    new-instance v1, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    const-string/jumbo v2, "enableIPv4: "

    .line 17
    .line 18
    .line 19
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iget-boolean v2, p0, Landroid/net/ProvisioningConfigurationParcelable;->enableIPv4:Z

    .line 23
    .line 24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 32
    .line 33
    .line 34
    new-instance v1, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    const-string/jumbo v2, "enableIPv6: "

    .line 37
    .line 38
    .line 39
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    iget-boolean v2, p0, Landroid/net/ProvisioningConfigurationParcelable;->enableIPv6:Z

    .line 43
    .line 44
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 52
    .line 53
    .line 54
    new-instance v1, Ljava/lang/StringBuilder;

    .line 55
    .line 56
    const-string/jumbo v2, "usingMultinetworkPolicyTracker: "

    .line 57
    .line 58
    .line 59
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    iget-boolean v2, p0, Landroid/net/ProvisioningConfigurationParcelable;->usingMultinetworkPolicyTracker:Z

    .line 63
    .line 64
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 72
    .line 73
    .line 74
    new-instance v1, Ljava/lang/StringBuilder;

    .line 75
    .line 76
    const-string/jumbo v2, "usingIpReachabilityMonitor: "

    .line 77
    .line 78
    .line 79
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    iget-boolean v2, p0, Landroid/net/ProvisioningConfigurationParcelable;->usingIpReachabilityMonitor:Z

    .line 83
    .line 84
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 92
    .line 93
    .line 94
    new-instance v1, Ljava/lang/StringBuilder;

    .line 95
    .line 96
    const-string/jumbo v2, "requestedPreDhcpActionMs: "

    .line 97
    .line 98
    .line 99
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    iget v2, p0, Landroid/net/ProvisioningConfigurationParcelable;->requestedPreDhcpActionMs:I

    .line 103
    .line 104
    const-string/jumbo v3, "initialConfig: "

    .line 105
    .line 106
    .line 107
    invoke-static {v1, v2, v0, v3}, Landroid/hardware/broadcastradio/AmFmBandRange$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/util/StringJoiner;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    iget-object v2, p0, Landroid/net/ProvisioningConfigurationParcelable;->initialConfig:Landroid/net/InitialConfigurationParcelable;

    .line 112
    .line 113
    invoke-static {v2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v2

    .line 117
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v1

    .line 124
    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 125
    .line 126
    .line 127
    new-instance v1, Ljava/lang/StringBuilder;

    .line 128
    .line 129
    const-string/jumbo v2, "staticIpConfig: "

    .line 130
    .line 131
    .line 132
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    iget-object v2, p0, Landroid/net/ProvisioningConfigurationParcelable;->staticIpConfig:Landroid/net/StaticIpConfiguration;

    .line 136
    .line 137
    invoke-static {v2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v2

    .line 141
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v1

    .line 148
    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 149
    .line 150
    .line 151
    new-instance v1, Ljava/lang/StringBuilder;

    .line 152
    .line 153
    const-string v2, "apfCapabilities: "

    .line 154
    .line 155
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    iget-object v2, p0, Landroid/net/ProvisioningConfigurationParcelable;->apfCapabilities:Landroid/net/apf/ApfCapabilities;

    .line 159
    .line 160
    invoke-static {v2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v2

    .line 164
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v1

    .line 171
    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 172
    .line 173
    .line 174
    new-instance v1, Ljava/lang/StringBuilder;

    .line 175
    .line 176
    const-string/jumbo v2, "provisioningTimeoutMs: "

    .line 177
    .line 178
    .line 179
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    iget v2, p0, Landroid/net/ProvisioningConfigurationParcelable;->provisioningTimeoutMs:I

    .line 183
    .line 184
    const-string/jumbo v3, "ipv6AddrGenMode: "

    .line 185
    .line 186
    .line 187
    invoke-static {v1, v2, v0, v3}, Landroid/hardware/broadcastradio/AmFmBandRange$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/util/StringJoiner;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    .line 189
    .line 190
    move-result-object v1

    .line 191
    iget v2, p0, Landroid/net/ProvisioningConfigurationParcelable;->ipv6AddrGenMode:I

    .line 192
    .line 193
    const-string/jumbo v3, "network: "

    .line 194
    .line 195
    .line 196
    invoke-static {v1, v2, v0, v3}, Landroid/hardware/broadcastradio/AmFmBandRange$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/util/StringJoiner;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    move-result-object v1

    .line 200
    iget-object v2, p0, Landroid/net/ProvisioningConfigurationParcelable;->network:Landroid/net/Network;

    .line 201
    .line 202
    invoke-static {v2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v2

    .line 206
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    .line 208
    .line 209
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object v1

    .line 213
    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 214
    .line 215
    .line 216
    new-instance v1, Ljava/lang/StringBuilder;

    .line 217
    .line 218
    const-string/jumbo v2, "displayName: "

    .line 219
    .line 220
    .line 221
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 222
    .line 223
    .line 224
    iget-object v2, p0, Landroid/net/ProvisioningConfigurationParcelable;->displayName:Ljava/lang/String;

    .line 225
    .line 226
    const-string/jumbo v3, "enablePreconnection: "

    .line 227
    .line 228
    .line 229
    invoke-static {v2, v3, v1, v0}, Landroid/hardware/broadcastradio/DabTableEntry$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/util/StringJoiner;)Ljava/lang/StringBuilder;

    .line 230
    .line 231
    .line 232
    move-result-object v1

    .line 233
    iget-boolean v2, p0, Landroid/net/ProvisioningConfigurationParcelable;->enablePreconnection:Z

    .line 234
    .line 235
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 236
    .line 237
    .line 238
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 239
    .line 240
    .line 241
    move-result-object v1

    .line 242
    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 243
    .line 244
    .line 245
    new-instance v1, Ljava/lang/StringBuilder;

    .line 246
    .line 247
    const-string/jumbo v2, "scanResultInfo: "

    .line 248
    .line 249
    .line 250
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 251
    .line 252
    .line 253
    iget-object v2, p0, Landroid/net/ProvisioningConfigurationParcelable;->scanResultInfo:Landroid/net/ScanResultInfoParcelable;

    .line 254
    .line 255
    invoke-static {v2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 256
    .line 257
    .line 258
    move-result-object v2

    .line 259
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    .line 261
    .line 262
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 263
    .line 264
    .line 265
    move-result-object v1

    .line 266
    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 267
    .line 268
    .line 269
    new-instance v1, Ljava/lang/StringBuilder;

    .line 270
    .line 271
    const-string/jumbo v2, "layer2Info: "

    .line 272
    .line 273
    .line 274
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 275
    .line 276
    .line 277
    iget-object v2, p0, Landroid/net/ProvisioningConfigurationParcelable;->layer2Info:Landroid/net/Layer2InformationParcelable;

    .line 278
    .line 279
    invoke-static {v2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 280
    .line 281
    .line 282
    move-result-object v2

    .line 283
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    .line 285
    .line 286
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 287
    .line 288
    .line 289
    move-result-object v1

    .line 290
    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 291
    .line 292
    .line 293
    new-instance v1, Ljava/lang/StringBuilder;

    .line 294
    .line 295
    const-string/jumbo v2, "options: "

    .line 296
    .line 297
    .line 298
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 299
    .line 300
    .line 301
    iget-object v2, p0, Landroid/net/ProvisioningConfigurationParcelable;->options:Ljava/util/List;

    .line 302
    .line 303
    invoke-static {v2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 304
    .line 305
    .line 306
    move-result-object v2

    .line 307
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 308
    .line 309
    .line 310
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 311
    .line 312
    .line 313
    move-result-object v1

    .line 314
    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 315
    .line 316
    .line 317
    new-instance v1, Ljava/lang/StringBuilder;

    .line 318
    .line 319
    const-string/jumbo v2, "ipv4ProvisioningMode: "

    .line 320
    .line 321
    .line 322
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 323
    .line 324
    .line 325
    iget v2, p0, Landroid/net/ProvisioningConfigurationParcelable;->ipv4ProvisioningMode:I

    .line 326
    .line 327
    const-string/jumbo v3, "ipv6ProvisioningMode: "

    .line 328
    .line 329
    .line 330
    invoke-static {v1, v2, v0, v3}, Landroid/hardware/broadcastradio/AmFmBandRange$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/util/StringJoiner;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 331
    .line 332
    .line 333
    move-result-object v1

    .line 334
    iget v2, p0, Landroid/net/ProvisioningConfigurationParcelable;->ipv6ProvisioningMode:I

    .line 335
    .line 336
    const-string/jumbo v3, "uniqueEui64AddressesOnly: "

    .line 337
    .line 338
    .line 339
    invoke-static {v1, v2, v0, v3}, Landroid/hardware/broadcastradio/AmFmBandRange$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/util/StringJoiner;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 340
    .line 341
    .line 342
    move-result-object v1

    .line 343
    iget-boolean v2, p0, Landroid/net/ProvisioningConfigurationParcelable;->uniqueEui64AddressesOnly:Z

    .line 344
    .line 345
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 346
    .line 347
    .line 348
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 349
    .line 350
    .line 351
    move-result-object v1

    .line 352
    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 353
    .line 354
    .line 355
    new-instance v1, Ljava/lang/StringBuilder;

    .line 356
    .line 357
    const-string/jumbo v2, "creatorUid: "

    .line 358
    .line 359
    .line 360
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 361
    .line 362
    .line 363
    iget v2, p0, Landroid/net/ProvisioningConfigurationParcelable;->creatorUid:I

    .line 364
    .line 365
    const-string/jumbo v3, "hostnameSetting: "

    .line 366
    .line 367
    .line 368
    invoke-static {v1, v2, v0, v3}, Landroid/hardware/broadcastradio/AmFmBandRange$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/util/StringJoiner;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 369
    .line 370
    .line 371
    move-result-object v1

    .line 372
    iget p0, p0, Landroid/net/ProvisioningConfigurationParcelable;->hostnameSetting:I

    .line 373
    .line 374
    const-string v2, "ProvisioningConfigurationParcelable"

    .line 375
    .line 376
    invoke-static {v1, p0, v0, v2}, Landroid/hardware/broadcastradio/AmFmBandRange$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/util/StringJoiner;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 377
    .line 378
    .line 379
    move-result-object p0

    .line 380
    invoke-static {v0, p0}, Landroid/hardware/broadcastradio/AmFmBandRange$$ExternalSyntheticOutline0;->m(Ljava/util/StringJoiner;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 381
    .line 382
    .line 383
    move-result-object p0

    .line 384
    return-object p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 7
    .line 8
    .line 9
    iget-boolean v2, p0, Landroid/net/ProvisioningConfigurationParcelable;->enableIPv4:Z

    .line 10
    .line 11
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 12
    .line 13
    .line 14
    iget-boolean v2, p0, Landroid/net/ProvisioningConfigurationParcelable;->enableIPv6:Z

    .line 15
    .line 16
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 17
    .line 18
    .line 19
    iget-boolean v2, p0, Landroid/net/ProvisioningConfigurationParcelable;->usingMultinetworkPolicyTracker:Z

    .line 20
    .line 21
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 22
    .line 23
    .line 24
    iget-boolean v2, p0, Landroid/net/ProvisioningConfigurationParcelable;->usingIpReachabilityMonitor:Z

    .line 25
    .line 26
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 27
    .line 28
    .line 29
    iget v2, p0, Landroid/net/ProvisioningConfigurationParcelable;->requestedPreDhcpActionMs:I

    .line 30
    .line 31
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 32
    .line 33
    .line 34
    iget-object v2, p0, Landroid/net/ProvisioningConfigurationParcelable;->initialConfig:Landroid/net/InitialConfigurationParcelable;

    .line 35
    .line 36
    invoke-virtual {p1, v2, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 37
    .line 38
    .line 39
    iget-object v2, p0, Landroid/net/ProvisioningConfigurationParcelable;->staticIpConfig:Landroid/net/StaticIpConfiguration;

    .line 40
    .line 41
    invoke-virtual {p1, v2, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 42
    .line 43
    .line 44
    iget-object v2, p0, Landroid/net/ProvisioningConfigurationParcelable;->apfCapabilities:Landroid/net/apf/ApfCapabilities;

    .line 45
    .line 46
    invoke-virtual {p1, v2, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 47
    .line 48
    .line 49
    iget v2, p0, Landroid/net/ProvisioningConfigurationParcelable;->provisioningTimeoutMs:I

    .line 50
    .line 51
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 52
    .line 53
    .line 54
    iget v2, p0, Landroid/net/ProvisioningConfigurationParcelable;->ipv6AddrGenMode:I

    .line 55
    .line 56
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 57
    .line 58
    .line 59
    iget-object v2, p0, Landroid/net/ProvisioningConfigurationParcelable;->network:Landroid/net/Network;

    .line 60
    .line 61
    invoke-virtual {p1, v2, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 62
    .line 63
    .line 64
    iget-object v2, p0, Landroid/net/ProvisioningConfigurationParcelable;->displayName:Ljava/lang/String;

    .line 65
    .line 66
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    iget-boolean v2, p0, Landroid/net/ProvisioningConfigurationParcelable;->enablePreconnection:Z

    .line 70
    .line 71
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 72
    .line 73
    .line 74
    iget-object v2, p0, Landroid/net/ProvisioningConfigurationParcelable;->scanResultInfo:Landroid/net/ScanResultInfoParcelable;

    .line 75
    .line 76
    invoke-virtual {p1, v2, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 77
    .line 78
    .line 79
    iget-object v2, p0, Landroid/net/ProvisioningConfigurationParcelable;->layer2Info:Landroid/net/Layer2InformationParcelable;

    .line 80
    .line 81
    invoke-virtual {p1, v2, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 82
    .line 83
    .line 84
    iget-object v2, p0, Landroid/net/ProvisioningConfigurationParcelable;->options:Ljava/util/List;

    .line 85
    .line 86
    if-nez v2, :cond_0

    .line 87
    .line 88
    const/4 p2, -0x1

    .line 89
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 90
    .line 91
    .line 92
    goto :goto_1

    .line 93
    :cond_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 94
    .line 95
    .line 96
    move-result v3

    .line 97
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 98
    .line 99
    .line 100
    :goto_0
    if-ge v1, v3, :cond_1

    .line 101
    .line 102
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v4

    .line 106
    check-cast v4, Landroid/os/Parcelable;

    .line 107
    .line 108
    invoke-virtual {p1, v4, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 109
    .line 110
    .line 111
    add-int/lit8 v1, v1, 0x1

    .line 112
    .line 113
    goto :goto_0

    .line 114
    :cond_1
    :goto_1
    iget p2, p0, Landroid/net/ProvisioningConfigurationParcelable;->ipv4ProvisioningMode:I

    .line 115
    .line 116
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 117
    .line 118
    .line 119
    iget p2, p0, Landroid/net/ProvisioningConfigurationParcelable;->ipv6ProvisioningMode:I

    .line 120
    .line 121
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 122
    .line 123
    .line 124
    iget-boolean p2, p0, Landroid/net/ProvisioningConfigurationParcelable;->uniqueEui64AddressesOnly:Z

    .line 125
    .line 126
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 127
    .line 128
    .line 129
    iget p2, p0, Landroid/net/ProvisioningConfigurationParcelable;->creatorUid:I

    .line 130
    .line 131
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 132
    .line 133
    .line 134
    iget p0, p0, Landroid/net/ProvisioningConfigurationParcelable;->hostnameSetting:I

    .line 135
    .line 136
    invoke-static {p1, p0, v0}, Landroid/companion/virtualcamera/SupportedStreamConfiguration$$ExternalSyntheticOutline0;->m(Landroid/os/Parcel;II)I

    .line 137
    .line 138
    .line 139
    move-result p0

    .line 140
    invoke-static {p0, v0, p1, p0}, Landroid/companion/virtualcamera/SupportedStreamConfiguration$$ExternalSyntheticOutline0;->m(IILandroid/os/Parcel;I)V

    .line 141
    .line 142
    .line 143
    return-void
.end method
