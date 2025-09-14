.class public Landroid/net/dhcp/DhcpServingParamsParcel;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field public changePrefixOnDecline:Z

.field public defaultRouters:[I

.field public dhcpLeaseTimeSecs:J

.field public dnsServers:[I

.field public excludedAddrs:[I

.field public leasesSubnetPrefixLength:I

.field public linkMtu:I

.field public metered:Z

.field public serverAddr:I

.field public serverAddrPrefixLength:I

.field public singleClientAddr:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroid/net/dhcp/DhcpServingParamsParcel$1;

    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 6
    sput-object v0, Landroid/net/dhcp/DhcpServingParamsParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Landroid/net/dhcp/DhcpServingParamsParcel;->serverAddr:I

    .line 7
    iput v0, p0, Landroid/net/dhcp/DhcpServingParamsParcel;->serverAddrPrefixLength:I

    .line 9
    const-wide/16 v1, 0x0

    .line 11
    iput-wide v1, p0, Landroid/net/dhcp/DhcpServingParamsParcel;->dhcpLeaseTimeSecs:J

    .line 13
    iput v0, p0, Landroid/net/dhcp/DhcpServingParamsParcel;->linkMtu:I

    .line 15
    iput-boolean v0, p0, Landroid/net/dhcp/DhcpServingParamsParcel;->metered:Z

    .line 17
    iput v0, p0, Landroid/net/dhcp/DhcpServingParamsParcel;->singleClientAddr:I

    .line 19
    iput-boolean v0, p0, Landroid/net/dhcp/DhcpServingParamsParcel;->changePrefixOnDecline:Z

    .line 21
    iput v0, p0, Landroid/net/dhcp/DhcpServingParamsParcel;->leasesSubnetPrefixLength:I

    .line 23
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final readFromParcel(Landroid/os/Parcel;)V
    .locals 7

    .line 1
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 4
    move-result v0

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x4

    .line 10
    const-string v3, "Overflow in the size of parcelable"

    .line 12
    const v4, 0x7fffffff

    .line 15
    if-lt v1, v2, :cond_17

    .line 17
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 20
    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    sub-int/2addr v2, v0

    .line 22
    if-lt v2, v1, :cond_1

    .line 24
    sub-int/2addr v4, v1

    .line 25
    if-gt v0, v4, :cond_0

    .line 27
    :goto_0
    add-int/2addr v0, v1

    .line 28
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 31
    return-void

    .line 32
    :cond_0
    new-instance p0, Landroid/os/BadParcelableException;

    .line 34
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 37
    throw p0

    .line 38
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 41
    move-result v2

    .line 42
    iput v2, p0, Landroid/net/dhcp/DhcpServingParamsParcel;->serverAddr:I

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 47
    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 48
    sub-int/2addr v2, v0

    .line 49
    if-lt v2, v1, :cond_3

    .line 51
    sub-int/2addr v4, v1

    .line 52
    if-gt v0, v4, :cond_2

    .line 54
    goto :goto_0

    .line 55
    :cond_2
    new-instance p0, Landroid/os/BadParcelableException;

    .line 57
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 60
    throw p0

    .line 61
    :cond_3
    :try_start_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 64
    move-result v2

    .line 65
    iput v2, p0, Landroid/net/dhcp/DhcpServingParamsParcel;->serverAddrPrefixLength:I

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 70
    move-result v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 71
    sub-int/2addr v2, v0

    .line 72
    if-lt v2, v1, :cond_5

    .line 74
    sub-int/2addr v4, v1

    .line 75
    if-gt v0, v4, :cond_4

    .line 77
    goto :goto_0

    .line 78
    :cond_4
    new-instance p0, Landroid/os/BadParcelableException;

    .line 80
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 83
    throw p0

    .line 84
    :cond_5
    :try_start_3
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    .line 87
    move-result-object v2

    .line 88
    iput-object v2, p0, Landroid/net/dhcp/DhcpServingParamsParcel;->defaultRouters:[I

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 93
    move-result v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 94
    sub-int/2addr v2, v0

    .line 95
    if-lt v2, v1, :cond_7

    .line 97
    sub-int/2addr v4, v1

    .line 98
    if-gt v0, v4, :cond_6

    .line 100
    goto :goto_0

    .line 101
    :cond_6
    new-instance p0, Landroid/os/BadParcelableException;

    .line 103
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 106
    throw p0

    .line 107
    :cond_7
    :try_start_4
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    .line 110
    move-result-object v2

    .line 111
    iput-object v2, p0, Landroid/net/dhcp/DhcpServingParamsParcel;->dnsServers:[I

    .line 113
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 116
    move-result v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 117
    sub-int/2addr v2, v0

    .line 118
    if-lt v2, v1, :cond_9

    .line 120
    sub-int/2addr v4, v1

    .line 121
    if-gt v0, v4, :cond_8

    .line 123
    goto :goto_0

    .line 124
    :cond_8
    new-instance p0, Landroid/os/BadParcelableException;

    .line 126
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 129
    throw p0

    .line 130
    :cond_9
    :try_start_5
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    .line 133
    move-result-object v2

    .line 134
    iput-object v2, p0, Landroid/net/dhcp/DhcpServingParamsParcel;->excludedAddrs:[I

    .line 136
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 139
    move-result v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 140
    sub-int/2addr v2, v0

    .line 141
    if-lt v2, v1, :cond_b

    .line 143
    sub-int/2addr v4, v1

    .line 144
    if-gt v0, v4, :cond_a

    .line 146
    goto :goto_0

    .line 147
    :cond_a
    new-instance p0, Landroid/os/BadParcelableException;

    .line 149
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 152
    throw p0

    .line 153
    :cond_b
    :try_start_6
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    .line 156
    move-result-wide v5

    .line 157
    iput-wide v5, p0, Landroid/net/dhcp/DhcpServingParamsParcel;->dhcpLeaseTimeSecs:J

    .line 159
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 162
    move-result v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 163
    sub-int/2addr v2, v0

    .line 164
    if-lt v2, v1, :cond_d

    .line 166
    sub-int/2addr v4, v1

    .line 167
    if-gt v0, v4, :cond_c

    .line 169
    goto/16 :goto_0

    .line 171
    :cond_c
    new-instance p0, Landroid/os/BadParcelableException;

    .line 173
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 176
    throw p0

    .line 177
    :cond_d
    :try_start_7
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 180
    move-result v2

    .line 181
    iput v2, p0, Landroid/net/dhcp/DhcpServingParamsParcel;->linkMtu:I

    .line 183
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 186
    move-result v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 187
    sub-int/2addr v2, v0

    .line 188
    if-lt v2, v1, :cond_f

    .line 190
    sub-int/2addr v4, v1

    .line 191
    if-gt v0, v4, :cond_e

    .line 193
    goto/16 :goto_0

    .line 195
    :cond_e
    new-instance p0, Landroid/os/BadParcelableException;

    .line 197
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 200
    throw p0

    .line 201
    :cond_f
    :try_start_8
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    .line 204
    move-result v2

    .line 205
    iput-boolean v2, p0, Landroid/net/dhcp/DhcpServingParamsParcel;->metered:Z

    .line 207
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 210
    move-result v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 211
    sub-int/2addr v2, v0

    .line 212
    if-lt v2, v1, :cond_11

    .line 214
    sub-int/2addr v4, v1

    .line 215
    if-gt v0, v4, :cond_10

    .line 217
    goto/16 :goto_0

    .line 219
    :cond_10
    new-instance p0, Landroid/os/BadParcelableException;

    .line 221
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 224
    throw p0

    .line 225
    :cond_11
    :try_start_9
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 228
    move-result v2

    .line 229
    iput v2, p0, Landroid/net/dhcp/DhcpServingParamsParcel;->singleClientAddr:I

    .line 231
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 234
    move-result v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 235
    sub-int/2addr v2, v0

    .line 236
    if-lt v2, v1, :cond_13

    .line 238
    sub-int/2addr v4, v1

    .line 239
    if-gt v0, v4, :cond_12

    .line 241
    goto/16 :goto_0

    .line 243
    :cond_12
    new-instance p0, Landroid/os/BadParcelableException;

    .line 245
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 248
    throw p0

    .line 249
    :cond_13
    :try_start_a
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    .line 252
    move-result v2

    .line 253
    iput-boolean v2, p0, Landroid/net/dhcp/DhcpServingParamsParcel;->changePrefixOnDecline:Z

    .line 255
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 258
    move-result v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 259
    sub-int/2addr v2, v0

    .line 260
    if-lt v2, v1, :cond_15

    .line 262
    sub-int/2addr v4, v1

    .line 263
    if-gt v0, v4, :cond_14

    .line 265
    goto/16 :goto_0

    .line 267
    :cond_14
    new-instance p0, Landroid/os/BadParcelableException;

    .line 269
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 272
    throw p0

    .line 273
    :cond_15
    :try_start_b
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 276
    move-result v2

    .line 277
    iput v2, p0, Landroid/net/dhcp/DhcpServingParamsParcel;->leasesSubnetPrefixLength:I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 279
    sub-int/2addr v4, v1

    .line 280
    if-gt v0, v4, :cond_16

    .line 282
    add-int/2addr v0, v1

    .line 283
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 286
    return-void

    .line 287
    :cond_16
    new-instance p0, Landroid/os/BadParcelableException;

    .line 289
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 292
    throw p0

    .line 293
    :catchall_0
    move-exception p0

    .line 294
    goto :goto_1

    .line 295
    :cond_17
    :try_start_c
    new-instance p0, Landroid/os/BadParcelableException;

    .line 297
    const-string v2, "Parcelable too small"

    .line 299
    invoke-direct {p0, v2}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 302
    throw p0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 303
    :goto_1
    sub-int/2addr v4, v1

    .line 304
    if-le v0, v4, :cond_18

    .line 306
    new-instance p0, Landroid/os/BadParcelableException;

    .line 308
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 311
    throw p0

    .line 312
    :cond_18
    add-int/2addr v0, v1

    .line 313
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 316
    throw p0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/util/StringJoiner;

    .line 3
    const-string/jumbo v1, "{"

    .line 6
    const-string/jumbo v2, "}"

    .line 9
    const-string v3, ", "

    .line 11
    invoke-direct {v0, v3, v1, v2}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 14
    new-instance v1, Ljava/lang/StringBuilder;

    .line 16
    const-string/jumbo v2, "serverAddr: "

    .line 19
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    iget v2, p0, Landroid/net/dhcp/DhcpServingParamsParcel;->serverAddr:I

    .line 24
    const-string/jumbo v3, "serverAddrPrefixLength: "

    .line 27
    invoke-static {v1, v2, v0, v3}, Landroid/hardware/broadcastradio/AmFmBandRange$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/util/StringJoiner;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    move-result-object v1

    .line 31
    iget v2, p0, Landroid/net/dhcp/DhcpServingParamsParcel;->serverAddrPrefixLength:I

    .line 33
    const-string/jumbo v3, "defaultRouters: "

    .line 36
    invoke-static {v1, v2, v0, v3}, Landroid/hardware/broadcastradio/AmFmBandRange$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/util/StringJoiner;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    move-result-object v1

    .line 40
    iget-object v2, p0, Landroid/net/dhcp/DhcpServingParamsParcel;->defaultRouters:[I

    .line 42
    invoke-static {v2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    .line 45
    move-result-object v2

    .line 46
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    move-result-object v1

    .line 53
    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 56
    new-instance v1, Ljava/lang/StringBuilder;

    .line 58
    const-string/jumbo v2, "dnsServers: "

    .line 61
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 64
    iget-object v2, p0, Landroid/net/dhcp/DhcpServingParamsParcel;->dnsServers:[I

    .line 66
    invoke-static {v2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    .line 69
    move-result-object v2

    .line 70
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    move-result-object v1

    .line 77
    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 80
    new-instance v1, Ljava/lang/StringBuilder;

    .line 82
    const-string/jumbo v2, "excludedAddrs: "

    .line 85
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 88
    iget-object v2, p0, Landroid/net/dhcp/DhcpServingParamsParcel;->excludedAddrs:[I

    .line 90
    invoke-static {v2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    .line 93
    move-result-object v2

    .line 94
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 100
    move-result-object v1

    .line 101
    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 104
    new-instance v1, Ljava/lang/StringBuilder;

    .line 106
    const-string/jumbo v2, "dhcpLeaseTimeSecs: "

    .line 109
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 112
    iget-wide v2, p0, Landroid/net/dhcp/DhcpServingParamsParcel;->dhcpLeaseTimeSecs:J

    .line 114
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 117
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 120
    move-result-object v1

    .line 121
    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 124
    new-instance v1, Ljava/lang/StringBuilder;

    .line 126
    const-string/jumbo v2, "linkMtu: "

    .line 129
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 132
    iget v2, p0, Landroid/net/dhcp/DhcpServingParamsParcel;->linkMtu:I

    .line 134
    const-string/jumbo v3, "metered: "

    .line 137
    invoke-static {v1, v2, v0, v3}, Landroid/hardware/broadcastradio/AmFmBandRange$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/util/StringJoiner;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    move-result-object v1

    .line 141
    iget-boolean v2, p0, Landroid/net/dhcp/DhcpServingParamsParcel;->metered:Z

    .line 143
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 146
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 149
    move-result-object v1

    .line 150
    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 153
    new-instance v1, Ljava/lang/StringBuilder;

    .line 155
    const-string/jumbo v2, "singleClientAddr: "

    .line 158
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 161
    iget v2, p0, Landroid/net/dhcp/DhcpServingParamsParcel;->singleClientAddr:I

    .line 163
    const-string/jumbo v3, "changePrefixOnDecline: "

    .line 166
    invoke-static {v1, v2, v0, v3}, Landroid/hardware/broadcastradio/AmFmBandRange$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/util/StringJoiner;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    move-result-object v1

    .line 170
    iget-boolean v2, p0, Landroid/net/dhcp/DhcpServingParamsParcel;->changePrefixOnDecline:Z

    .line 172
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 175
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 178
    move-result-object v1

    .line 179
    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 182
    new-instance v1, Ljava/lang/StringBuilder;

    .line 184
    const-string/jumbo v2, "leasesSubnetPrefixLength: "

    .line 187
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 190
    iget p0, p0, Landroid/net/dhcp/DhcpServingParamsParcel;->leasesSubnetPrefixLength:I

    .line 192
    const-string v2, "DhcpServingParamsParcel"

    .line 194
    invoke-static {v1, p0, v0, v2}, Landroid/hardware/broadcastradio/AmFmBandRange$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/util/StringJoiner;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    move-result-object p0

    .line 198
    invoke-static {v0, p0}, Landroid/hardware/broadcastradio/AmFmBandRange$$ExternalSyntheticOutline0;->m(Ljava/util/StringJoiner;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 201
    move-result-object p0

    .line 202
    return-object p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 4
    move-result p2

    .line 5
    const/4 v0, 0x0

    .line 6
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 9
    iget v0, p0, Landroid/net/dhcp/DhcpServingParamsParcel;->serverAddr:I

    .line 11
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 14
    iget v0, p0, Landroid/net/dhcp/DhcpServingParamsParcel;->serverAddrPrefixLength:I

    .line 16
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 19
    iget-object v0, p0, Landroid/net/dhcp/DhcpServingParamsParcel;->defaultRouters:[I

    .line 21
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 24
    iget-object v0, p0, Landroid/net/dhcp/DhcpServingParamsParcel;->dnsServers:[I

    .line 26
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 29
    iget-object v0, p0, Landroid/net/dhcp/DhcpServingParamsParcel;->excludedAddrs:[I

    .line 31
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 34
    iget-wide v0, p0, Landroid/net/dhcp/DhcpServingParamsParcel;->dhcpLeaseTimeSecs:J

    .line 36
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 39
    iget v0, p0, Landroid/net/dhcp/DhcpServingParamsParcel;->linkMtu:I

    .line 41
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 44
    iget-boolean v0, p0, Landroid/net/dhcp/DhcpServingParamsParcel;->metered:Z

    .line 46
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 49
    iget v0, p0, Landroid/net/dhcp/DhcpServingParamsParcel;->singleClientAddr:I

    .line 51
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 54
    iget-boolean v0, p0, Landroid/net/dhcp/DhcpServingParamsParcel;->changePrefixOnDecline:Z

    .line 56
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 59
    iget p0, p0, Landroid/net/dhcp/DhcpServingParamsParcel;->leasesSubnetPrefixLength:I

    .line 61
    invoke-static {p1, p0, p2}, Landroid/companion/virtualcamera/SupportedStreamConfiguration$$ExternalSyntheticOutline0;->m(Landroid/os/Parcel;II)I

    .line 64
    move-result p0

    .line 65
    invoke-static {p0, p2, p1, p0}, Landroid/companion/virtualcamera/SupportedStreamConfiguration$$ExternalSyntheticOutline0;->m(IILandroid/os/Parcel;I)V

    .line 68
    return-void
.end method
