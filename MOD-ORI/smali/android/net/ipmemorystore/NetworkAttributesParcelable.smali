.class public Landroid/net/ipmemorystore/NetworkAttributesParcelable;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field public assignedV4Address:[B

.field public assignedV4AddressExpiry:J

.field public cluster:Ljava/lang/String;

.field public dnsAddresses:[Landroid/net/ipmemorystore/Blob;

.field public ipv6ProvisioningLossQuirk:Landroid/net/networkstack/aidl/quirks/IPv6ProvisioningLossQuirkParcelable;

.field public mtu:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroid/net/ipmemorystore/NetworkAttributesParcelable$1;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroid/net/ipmemorystore/NetworkAttributesParcelable;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-wide/16 v0, 0x0

    .line 5
    .line 6
    iput-wide v0, p0, Landroid/net/ipmemorystore/NetworkAttributesParcelable;->assignedV4AddressExpiry:J

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput v0, p0, Landroid/net/ipmemorystore/NetworkAttributesParcelable;->mtu:I

    .line 10
    .line 11
    return-void
.end method

.method private describeContents(Ljava/lang/Object;)I
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 3
    :cond_0
    instance-of v1, p1, [Ljava/lang/Object;

    if-eqz v1, :cond_2

    .line 4
    check-cast p1, [Ljava/lang/Object;

    array-length v1, p1

    move v2, v0

    :goto_0
    if-ge v0, v1, :cond_1

    aget-object v3, p1, v0

    .line 5
    invoke-direct {p0, v3}, Landroid/net/ipmemorystore/NetworkAttributesParcelable;->describeContents(Ljava/lang/Object;)I

    move-result v3

    or-int/2addr v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v2

    .line 6
    :cond_2
    instance-of p0, p1, Landroid/os/Parcelable;

    if-eqz p0, :cond_3

    .line 7
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
    iget-object v0, p0, Landroid/net/ipmemorystore/NetworkAttributesParcelable;->dnsAddresses:[Landroid/net/ipmemorystore/Blob;

    invoke-direct {p0, v0}, Landroid/net/ipmemorystore/NetworkAttributesParcelable;->describeContents(Ljava/lang/Object;)I

    move-result v0

    .line 2
    iget-object v1, p0, Landroid/net/ipmemorystore/NetworkAttributesParcelable;->ipv6ProvisioningLossQuirk:Landroid/net/networkstack/aidl/quirks/IPv6ProvisioningLossQuirkParcelable;

    invoke-direct {p0, v1}, Landroid/net/ipmemorystore/NetworkAttributesParcelable;->describeContents(Ljava/lang/Object;)I

    move-result p0

    or-int/2addr p0, v0

    return p0
.end method

.method public final readFromParcel(Landroid/os/Parcel;)V
    .locals 7

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
    if-lt v1, v2, :cond_d

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
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    iput-object v2, p0, Landroid/net/ipmemorystore/NetworkAttributesParcelable;->assignedV4Address:[B

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
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    .line 62
    .line 63
    .line 64
    move-result-wide v5

    .line 65
    iput-wide v5, p0, Landroid/net/ipmemorystore/NetworkAttributesParcelable;->assignedV4AddressExpiry:J

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
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v2

    .line 88
    iput-object v2, p0, Landroid/net/ipmemorystore/NetworkAttributesParcelable;->cluster:Ljava/lang/String;

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
    sget-object v2, Landroid/net/ipmemorystore/Blob;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 108
    .line 109
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object v2

    .line 113
    check-cast v2, [Landroid/net/ipmemorystore/Blob;

    .line 114
    .line 115
    iput-object v2, p0, Landroid/net/ipmemorystore/NetworkAttributesParcelable;->dnsAddresses:[Landroid/net/ipmemorystore/Blob;

    .line 116
    .line 117
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 118
    .line 119
    .line 120
    move-result v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 121
    sub-int/2addr v2, v0

    .line 122
    if-lt v2, v1, :cond_9

    .line 123
    .line 124
    sub-int/2addr v4, v1

    .line 125
    if-gt v0, v4, :cond_8

    .line 126
    .line 127
    goto :goto_0

    .line 128
    :cond_8
    new-instance p0, Landroid/os/BadParcelableException;

    .line 129
    .line 130
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    throw p0

    .line 134
    :cond_9
    :try_start_5
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 135
    .line 136
    .line 137
    move-result v2

    .line 138
    iput v2, p0, Landroid/net/ipmemorystore/NetworkAttributesParcelable;->mtu:I

    .line 139
    .line 140
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 141
    .line 142
    .line 143
    move-result v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 144
    sub-int/2addr v2, v0

    .line 145
    if-lt v2, v1, :cond_b

    .line 146
    .line 147
    sub-int/2addr v4, v1

    .line 148
    if-gt v0, v4, :cond_a

    .line 149
    .line 150
    goto :goto_0

    .line 151
    :cond_a
    new-instance p0, Landroid/os/BadParcelableException;

    .line 152
    .line 153
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    throw p0

    .line 157
    :cond_b
    :try_start_6
    sget-object v2, Landroid/net/networkstack/aidl/quirks/IPv6ProvisioningLossQuirkParcelable;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 158
    .line 159
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 160
    .line 161
    .line 162
    move-result-object v2

    .line 163
    check-cast v2, Landroid/net/networkstack/aidl/quirks/IPv6ProvisioningLossQuirkParcelable;

    .line 164
    .line 165
    iput-object v2, p0, Landroid/net/ipmemorystore/NetworkAttributesParcelable;->ipv6ProvisioningLossQuirk:Landroid/net/networkstack/aidl/quirks/IPv6ProvisioningLossQuirkParcelable;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 166
    .line 167
    sub-int/2addr v4, v1

    .line 168
    if-gt v0, v4, :cond_c

    .line 169
    .line 170
    add-int/2addr v0, v1

    .line 171
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 172
    .line 173
    .line 174
    return-void

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
    :catchall_0
    move-exception p0

    .line 182
    goto :goto_1

    .line 183
    :cond_d
    :try_start_7
    new-instance p0, Landroid/os/BadParcelableException;

    .line 184
    .line 185
    const-string v2, "Parcelable too small"

    .line 186
    .line 187
    invoke-direct {p0, v2}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    throw p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 191
    :goto_1
    sub-int/2addr v4, v1

    .line 192
    if-le v0, v4, :cond_e

    .line 193
    .line 194
    new-instance p0, Landroid/os/BadParcelableException;

    .line 195
    .line 196
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 197
    .line 198
    .line 199
    throw p0

    .line 200
    :cond_e
    add-int/2addr v0, v1

    .line 201
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 202
    .line 203
    .line 204
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
    const-string v2, "assignedV4Address: "

    .line 17
    .line 18
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget-object v2, p0, Landroid/net/ipmemorystore/NetworkAttributesParcelable;->assignedV4Address:[B

    .line 22
    .line 23
    invoke-static {v2}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 35
    .line 36
    .line 37
    new-instance v1, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    const-string v2, "assignedV4AddressExpiry: "

    .line 40
    .line 41
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    iget-wide v2, p0, Landroid/net/ipmemorystore/NetworkAttributesParcelable;->assignedV4AddressExpiry:J

    .line 45
    .line 46
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 54
    .line 55
    .line 56
    new-instance v1, Ljava/lang/StringBuilder;

    .line 57
    .line 58
    const-string/jumbo v2, "cluster: "

    .line 59
    .line 60
    .line 61
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    iget-object v2, p0, Landroid/net/ipmemorystore/NetworkAttributesParcelable;->cluster:Ljava/lang/String;

    .line 65
    .line 66
    const-string/jumbo v3, "dnsAddresses: "

    .line 67
    .line 68
    .line 69
    invoke-static {v2, v3, v1, v0}, Landroid/hardware/broadcastradio/DabTableEntry$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/util/StringJoiner;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    iget-object v2, p0, Landroid/net/ipmemorystore/NetworkAttributesParcelable;->dnsAddresses:[Landroid/net/ipmemorystore/Blob;

    .line 74
    .line 75
    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    const-string/jumbo v3, "mtu: "

    .line 80
    .line 81
    .line 82
    invoke-static {v2, v3, v1, v0}, Landroid/hardware/broadcastradio/AmFmRegionConfig$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/util/StringJoiner;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    iget v2, p0, Landroid/net/ipmemorystore/NetworkAttributesParcelable;->mtu:I

    .line 87
    .line 88
    const-string/jumbo v3, "ipv6ProvisioningLossQuirk: "

    .line 89
    .line 90
    .line 91
    invoke-static {v1, v2, v0, v3}, Landroid/hardware/broadcastradio/AmFmBandRange$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/util/StringJoiner;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    iget-object p0, p0, Landroid/net/ipmemorystore/NetworkAttributesParcelable;->ipv6ProvisioningLossQuirk:Landroid/net/networkstack/aidl/quirks/IPv6ProvisioningLossQuirkParcelable;

    .line 96
    .line 97
    invoke-static {p0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object p0

    .line 101
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object p0

    .line 108
    invoke-virtual {v0, p0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 109
    .line 110
    .line 111
    new-instance p0, Ljava/lang/StringBuilder;

    .line 112
    .line 113
    const-string v1, "NetworkAttributesParcelable"

    .line 114
    .line 115
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    invoke-static {v0, p0}, Landroid/hardware/broadcastradio/AmFmBandRange$$ExternalSyntheticOutline0;->m(Ljava/util/StringJoiner;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object p0

    .line 122
    return-object p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

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
    iget-object v1, p0, Landroid/net/ipmemorystore/NetworkAttributesParcelable;->assignedV4Address:[B

    .line 10
    .line 11
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 12
    .line 13
    .line 14
    iget-wide v1, p0, Landroid/net/ipmemorystore/NetworkAttributesParcelable;->assignedV4AddressExpiry:J

    .line 15
    .line 16
    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 17
    .line 18
    .line 19
    iget-object v1, p0, Landroid/net/ipmemorystore/NetworkAttributesParcelable;->cluster:Ljava/lang/String;

    .line 20
    .line 21
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    iget-object v1, p0, Landroid/net/ipmemorystore/NetworkAttributesParcelable;->dnsAddresses:[Landroid/net/ipmemorystore/Blob;

    .line 25
    .line 26
    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 27
    .line 28
    .line 29
    iget v1, p0, Landroid/net/ipmemorystore/NetworkAttributesParcelable;->mtu:I

    .line 30
    .line 31
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 32
    .line 33
    .line 34
    iget-object p0, p0, Landroid/net/ipmemorystore/NetworkAttributesParcelable;->ipv6ProvisioningLossQuirk:Landroid/net/networkstack/aidl/quirks/IPv6ProvisioningLossQuirkParcelable;

    .line 35
    .line 36
    invoke-virtual {p1, p0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 40
    .line 41
    .line 42
    move-result p0

    .line 43
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 44
    .line 45
    .line 46
    invoke-static {p0, v0, p1, p0}, Landroid/companion/virtualcamera/SupportedStreamConfiguration$$ExternalSyntheticOutline0;->m(IILandroid/os/Parcel;I)V

    .line 47
    .line 48
    .line 49
    return-void
.end method
