.class public Landroid/net/DhcpResultsParcelable;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field public baseConfiguration:Landroid/net/StaticIpConfiguration;

.field public captivePortalApiUrl:Ljava/lang/String;

.field public leaseDuration:I

.field public mtu:I

.field public serverAddress:Ljava/lang/String;

.field public serverHostName:Ljava/lang/String;

.field public vendorInfo:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroid/net/DhcpResultsParcelable$1;

    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 6
    sput-object v0, Landroid/net/DhcpResultsParcelable;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Landroid/net/DhcpResultsParcelable;->leaseDuration:I

    .line 7
    iput v0, p0, Landroid/net/DhcpResultsParcelable;->mtu:I

    .line 9
    return-void
.end method

.method private describeContents(Ljava/lang/Object;)I
    .locals 1

    const/4 p0, 0x0

    if-nez p1, :cond_0

    return p0

    .line 2
    :cond_0
    instance-of v0, p1, Landroid/os/Parcelable;

    if-eqz v0, :cond_1

    .line 3
    check-cast p1, Landroid/os/Parcelable;

    invoke-interface {p1}, Landroid/os/Parcelable;->describeContents()I

    move-result p0

    :cond_1
    return p0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/net/DhcpResultsParcelable;->baseConfiguration:Landroid/net/StaticIpConfiguration;

    invoke-direct {p0, v0}, Landroid/net/DhcpResultsParcelable;->describeContents(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final readFromParcel(Landroid/os/Parcel;)V
    .locals 5

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
    if-lt v1, v2, :cond_f

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
    sget-object v2, Landroid/net/StaticIpConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 40
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 43
    move-result-object v2

    .line 44
    check-cast v2, Landroid/net/StaticIpConfiguration;

    .line 46
    iput-object v2, p0, Landroid/net/DhcpResultsParcelable;->baseConfiguration:Landroid/net/StaticIpConfiguration;

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 51
    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 52
    sub-int/2addr v2, v0

    .line 53
    if-lt v2, v1, :cond_3

    .line 55
    sub-int/2addr v4, v1

    .line 56
    if-gt v0, v4, :cond_2

    .line 58
    goto :goto_0

    .line 59
    :cond_2
    new-instance p0, Landroid/os/BadParcelableException;

    .line 61
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 64
    throw p0

    .line 65
    :cond_3
    :try_start_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 68
    move-result v2

    .line 69
    iput v2, p0, Landroid/net/DhcpResultsParcelable;->leaseDuration:I

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 74
    move-result v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 75
    sub-int/2addr v2, v0

    .line 76
    if-lt v2, v1, :cond_5

    .line 78
    sub-int/2addr v4, v1

    .line 79
    if-gt v0, v4, :cond_4

    .line 81
    goto :goto_0

    .line 82
    :cond_4
    new-instance p0, Landroid/os/BadParcelableException;

    .line 84
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 87
    throw p0

    .line 88
    :cond_5
    :try_start_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 91
    move-result v2

    .line 92
    iput v2, p0, Landroid/net/DhcpResultsParcelable;->mtu:I

    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 97
    move-result v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 98
    sub-int/2addr v2, v0

    .line 99
    if-lt v2, v1, :cond_7

    .line 101
    sub-int/2addr v4, v1

    .line 102
    if-gt v0, v4, :cond_6

    .line 104
    goto :goto_0

    .line 105
    :cond_6
    new-instance p0, Landroid/os/BadParcelableException;

    .line 107
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 110
    throw p0

    .line 111
    :cond_7
    :try_start_4
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 114
    move-result-object v2

    .line 115
    iput-object v2, p0, Landroid/net/DhcpResultsParcelable;->serverAddress:Ljava/lang/String;

    .line 117
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 120
    move-result v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 121
    sub-int/2addr v2, v0

    .line 122
    if-lt v2, v1, :cond_9

    .line 124
    sub-int/2addr v4, v1

    .line 125
    if-gt v0, v4, :cond_8

    .line 127
    goto :goto_0

    .line 128
    :cond_8
    new-instance p0, Landroid/os/BadParcelableException;

    .line 130
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 133
    throw p0

    .line 134
    :cond_9
    :try_start_5
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 137
    move-result-object v2

    .line 138
    iput-object v2, p0, Landroid/net/DhcpResultsParcelable;->vendorInfo:Ljava/lang/String;

    .line 140
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 143
    move-result v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 144
    sub-int/2addr v2, v0

    .line 145
    if-lt v2, v1, :cond_b

    .line 147
    sub-int/2addr v4, v1

    .line 148
    if-gt v0, v4, :cond_a

    .line 150
    goto :goto_0

    .line 151
    :cond_a
    new-instance p0, Landroid/os/BadParcelableException;

    .line 153
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 156
    throw p0

    .line 157
    :cond_b
    :try_start_6
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 160
    move-result-object v2

    .line 161
    iput-object v2, p0, Landroid/net/DhcpResultsParcelable;->serverHostName:Ljava/lang/String;

    .line 163
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 166
    move-result v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 167
    sub-int/2addr v2, v0

    .line 168
    if-lt v2, v1, :cond_d

    .line 170
    sub-int/2addr v4, v1

    .line 171
    if-gt v0, v4, :cond_c

    .line 173
    goto/16 :goto_0

    .line 175
    :cond_c
    new-instance p0, Landroid/os/BadParcelableException;

    .line 177
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 180
    throw p0

    .line 181
    :cond_d
    :try_start_7
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 184
    move-result-object v2

    .line 185
    iput-object v2, p0, Landroid/net/DhcpResultsParcelable;->captivePortalApiUrl:Ljava/lang/String;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 187
    sub-int/2addr v4, v1

    .line 188
    if-gt v0, v4, :cond_e

    .line 190
    add-int/2addr v0, v1

    .line 191
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 194
    return-void

    .line 195
    :cond_e
    new-instance p0, Landroid/os/BadParcelableException;

    .line 197
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 200
    throw p0

    .line 201
    :catchall_0
    move-exception p0

    .line 202
    goto :goto_1

    .line 203
    :cond_f
    :try_start_8
    new-instance p0, Landroid/os/BadParcelableException;

    .line 205
    const-string v2, "Parcelable too small"

    .line 207
    invoke-direct {p0, v2}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 210
    throw p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 211
    :goto_1
    sub-int/2addr v4, v1

    .line 212
    if-le v0, v4, :cond_10

    .line 214
    new-instance p0, Landroid/os/BadParcelableException;

    .line 216
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 219
    throw p0

    .line 220
    :cond_10
    add-int/2addr v0, v1

    .line 221
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 224
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
    const-string v2, "baseConfiguration: "

    .line 18
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    iget-object v2, p0, Landroid/net/DhcpResultsParcelable;->baseConfiguration:Landroid/net/StaticIpConfiguration;

    .line 23
    invoke-static {v2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 26
    move-result-object v2

    .line 27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    move-result-object v1

    .line 34
    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 37
    new-instance v1, Ljava/lang/StringBuilder;

    .line 39
    const-string/jumbo v2, "leaseDuration: "

    .line 42
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 45
    iget v2, p0, Landroid/net/DhcpResultsParcelable;->leaseDuration:I

    .line 47
    const-string/jumbo v3, "mtu: "

    .line 50
    invoke-static {v1, v2, v0, v3}, Landroid/hardware/broadcastradio/AmFmBandRange$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/util/StringJoiner;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    move-result-object v1

    .line 54
    iget v2, p0, Landroid/net/DhcpResultsParcelable;->mtu:I

    .line 56
    const-string/jumbo v3, "serverAddress: "

    .line 59
    invoke-static {v1, v2, v0, v3}, Landroid/hardware/broadcastradio/AmFmBandRange$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/util/StringJoiner;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    move-result-object v1

    .line 63
    iget-object v2, p0, Landroid/net/DhcpResultsParcelable;->serverAddress:Ljava/lang/String;

    .line 65
    const-string/jumbo v3, "vendorInfo: "

    .line 68
    invoke-static {v2, v3, v1, v0}, Landroid/hardware/broadcastradio/DabTableEntry$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/util/StringJoiner;)Ljava/lang/StringBuilder;

    .line 71
    move-result-object v1

    .line 72
    iget-object v2, p0, Landroid/net/DhcpResultsParcelable;->vendorInfo:Ljava/lang/String;

    .line 74
    const-string/jumbo v3, "serverHostName: "

    .line 77
    invoke-static {v2, v3, v1, v0}, Landroid/hardware/broadcastradio/DabTableEntry$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/util/StringJoiner;)Ljava/lang/StringBuilder;

    .line 80
    move-result-object v1

    .line 81
    iget-object v2, p0, Landroid/net/DhcpResultsParcelable;->serverHostName:Ljava/lang/String;

    .line 83
    const-string/jumbo v3, "captivePortalApiUrl: "

    .line 86
    invoke-static {v2, v3, v1, v0}, Landroid/hardware/broadcastradio/DabTableEntry$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/util/StringJoiner;)Ljava/lang/StringBuilder;

    .line 89
    move-result-object v1

    .line 90
    iget-object p0, p0, Landroid/net/DhcpResultsParcelable;->captivePortalApiUrl:Ljava/lang/String;

    .line 92
    const-string v2, "DhcpResultsParcelable"

    .line 94
    invoke-static {p0, v2, v1, v0}, Landroid/hardware/broadcastradio/DabTableEntry$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/util/StringJoiner;)Ljava/lang/StringBuilder;

    .line 97
    move-result-object p0

    .line 98
    invoke-static {v0, p0}, Landroid/hardware/broadcastradio/AmFmBandRange$$ExternalSyntheticOutline0;->m(Ljava/util/StringJoiner;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 101
    move-result-object p0

    .line 102
    return-object p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 9
    iget-object v1, p0, Landroid/net/DhcpResultsParcelable;->baseConfiguration:Landroid/net/StaticIpConfiguration;

    .line 11
    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 14
    iget p2, p0, Landroid/net/DhcpResultsParcelable;->leaseDuration:I

    .line 16
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 19
    iget p2, p0, Landroid/net/DhcpResultsParcelable;->mtu:I

    .line 21
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 24
    iget-object p2, p0, Landroid/net/DhcpResultsParcelable;->serverAddress:Ljava/lang/String;

    .line 26
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 29
    iget-object p2, p0, Landroid/net/DhcpResultsParcelable;->vendorInfo:Ljava/lang/String;

    .line 31
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 34
    iget-object p2, p0, Landroid/net/DhcpResultsParcelable;->serverHostName:Ljava/lang/String;

    .line 36
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 39
    iget-object p0, p0, Landroid/net/DhcpResultsParcelable;->captivePortalApiUrl:Ljava/lang/String;

    .line 41
    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 47
    move-result p0

    .line 48
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 51
    invoke-static {p0, v0, p1, p0}, Landroid/companion/virtualcamera/SupportedStreamConfiguration$$ExternalSyntheticOutline0;->m(IILandroid/os/Parcel;I)V

    .line 54
    return-void
.end method
