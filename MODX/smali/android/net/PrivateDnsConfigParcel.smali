.class public Landroid/net/PrivateDnsConfigParcel;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field public dohIps:[Ljava/lang/String;

.field public dohName:Ljava/lang/String;

.field public dohPath:Ljava/lang/String;

.field public dohPort:I

.field public hostname:Ljava/lang/String;

.field public ips:[Ljava/lang/String;

.field public privateDnsMode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroid/net/PrivateDnsConfigParcel$1;

    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 6
    sput-object v0, Landroid/net/PrivateDnsConfigParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Landroid/net/PrivateDnsConfigParcel;->privateDnsMode:I

    .line 7
    const-string v1, ""

    .line 9
    iput-object v1, p0, Landroid/net/PrivateDnsConfigParcel;->dohName:Ljava/lang/String;

    .line 11
    const/4 v2, 0x0

    .line 12
    new-array v2, v2, [Ljava/lang/String;

    .line 14
    iput-object v2, p0, Landroid/net/PrivateDnsConfigParcel;->dohIps:[Ljava/lang/String;

    .line 16
    iput-object v1, p0, Landroid/net/PrivateDnsConfigParcel;->dohPath:Ljava/lang/String;

    .line 18
    iput v0, p0, Landroid/net/PrivateDnsConfigParcel;->dohPort:I

    .line 20
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

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 4
    return v0

    .line 5
    :cond_0
    const/4 v1, 0x0

    .line 6
    if-nez p1, :cond_1

    .line 8
    return v1

    .line 9
    :cond_1
    instance-of v2, p1, Landroid/net/PrivateDnsConfigParcel;

    .line 11
    if-nez v2, :cond_2

    .line 13
    return v1

    .line 14
    :cond_2
    check-cast p1, Landroid/net/PrivateDnsConfigParcel;

    .line 16
    iget-object v2, p0, Landroid/net/PrivateDnsConfigParcel;->hostname:Ljava/lang/String;

    .line 18
    iget-object v3, p1, Landroid/net/PrivateDnsConfigParcel;->hostname:Ljava/lang/String;

    .line 20
    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 23
    move-result v2

    .line 24
    if-nez v2, :cond_3

    .line 26
    return v1

    .line 27
    :cond_3
    iget-object v2, p0, Landroid/net/PrivateDnsConfigParcel;->ips:[Ljava/lang/String;

    .line 29
    iget-object v3, p1, Landroid/net/PrivateDnsConfigParcel;->ips:[Ljava/lang/String;

    .line 31
    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 34
    move-result v2

    .line 35
    if-nez v2, :cond_4

    .line 37
    return v1

    .line 38
    :cond_4
    iget v2, p0, Landroid/net/PrivateDnsConfigParcel;->privateDnsMode:I

    .line 40
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 43
    move-result-object v2

    .line 44
    iget v3, p1, Landroid/net/PrivateDnsConfigParcel;->privateDnsMode:I

    .line 46
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 49
    move-result-object v3

    .line 50
    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 53
    move-result v2

    .line 54
    if-nez v2, :cond_5

    .line 56
    return v1

    .line 57
    :cond_5
    iget-object v2, p0, Landroid/net/PrivateDnsConfigParcel;->dohName:Ljava/lang/String;

    .line 59
    iget-object v3, p1, Landroid/net/PrivateDnsConfigParcel;->dohName:Ljava/lang/String;

    .line 61
    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 64
    move-result v2

    .line 65
    if-nez v2, :cond_6

    .line 67
    return v1

    .line 68
    :cond_6
    iget-object v2, p0, Landroid/net/PrivateDnsConfigParcel;->dohIps:[Ljava/lang/String;

    .line 70
    iget-object v3, p1, Landroid/net/PrivateDnsConfigParcel;->dohIps:[Ljava/lang/String;

    .line 72
    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 75
    move-result v2

    .line 76
    if-nez v2, :cond_7

    .line 78
    return v1

    .line 79
    :cond_7
    iget-object v2, p0, Landroid/net/PrivateDnsConfigParcel;->dohPath:Ljava/lang/String;

    .line 81
    iget-object v3, p1, Landroid/net/PrivateDnsConfigParcel;->dohPath:Ljava/lang/String;

    .line 83
    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 86
    move-result v2

    .line 87
    if-nez v2, :cond_8

    .line 89
    return v1

    .line 90
    :cond_8
    iget p0, p0, Landroid/net/PrivateDnsConfigParcel;->dohPort:I

    .line 92
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 95
    move-result-object p0

    .line 96
    iget p1, p1, Landroid/net/PrivateDnsConfigParcel;->dohPort:I

    .line 98
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 101
    move-result-object p1

    .line 102
    invoke-static {p0, p1}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 105
    move-result p0

    .line 106
    if-nez p0, :cond_9

    .line 108
    return v1

    .line 109
    :cond_9
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    const/4 v0, 0x7

    .line 2
    new-array v0, v0, [Ljava/io/Serializable;

    .line 4
    const/4 v1, 0x0

    .line 5
    iget-object v2, p0, Landroid/net/PrivateDnsConfigParcel;->hostname:Ljava/lang/String;

    .line 7
    aput-object v2, v0, v1

    .line 9
    const/4 v1, 0x1

    .line 10
    iget-object v2, p0, Landroid/net/PrivateDnsConfigParcel;->ips:[Ljava/lang/String;

    .line 12
    aput-object v2, v0, v1

    .line 14
    iget v1, p0, Landroid/net/PrivateDnsConfigParcel;->privateDnsMode:I

    .line 16
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 19
    move-result-object v1

    .line 20
    const/4 v2, 0x2

    .line 21
    aput-object v1, v0, v2

    .line 23
    const/4 v1, 0x3

    .line 24
    iget-object v2, p0, Landroid/net/PrivateDnsConfigParcel;->dohName:Ljava/lang/String;

    .line 26
    aput-object v2, v0, v1

    .line 28
    const/4 v1, 0x4

    .line 29
    iget-object v2, p0, Landroid/net/PrivateDnsConfigParcel;->dohIps:[Ljava/lang/String;

    .line 31
    aput-object v2, v0, v1

    .line 33
    const/4 v1, 0x5

    .line 34
    iget-object v2, p0, Landroid/net/PrivateDnsConfigParcel;->dohPath:Ljava/lang/String;

    .line 36
    aput-object v2, v0, v1

    .line 38
    iget p0, p0, Landroid/net/PrivateDnsConfigParcel;->dohPort:I

    .line 40
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 43
    move-result-object p0

    .line 44
    const/4 v1, 0x6

    .line 45
    aput-object p0, v0, v1

    .line 47
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 50
    move-result-object p0

    .line 51
    invoke-interface {p0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    .line 54
    move-result-object p0

    .line 55
    invoke-static {p0}, Ljava/util/Arrays;->deepHashCode([Ljava/lang/Object;)I

    .line 58
    move-result p0

    .line 59
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
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 41
    move-result-object v2

    .line 42
    iput-object v2, p0, Landroid/net/PrivateDnsConfigParcel;->hostname:Ljava/lang/String;

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
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    .line 64
    move-result-object v2

    .line 65
    iput-object v2, p0, Landroid/net/PrivateDnsConfigParcel;->ips:[Ljava/lang/String;

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
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 87
    move-result v2

    .line 88
    iput v2, p0, Landroid/net/PrivateDnsConfigParcel;->privateDnsMode:I

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
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 110
    move-result-object v2

    .line 111
    iput-object v2, p0, Landroid/net/PrivateDnsConfigParcel;->dohName:Ljava/lang/String;

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
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    .line 133
    move-result-object v2

    .line 134
    iput-object v2, p0, Landroid/net/PrivateDnsConfigParcel;->dohIps:[Ljava/lang/String;

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
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 156
    move-result-object v2

    .line 157
    iput-object v2, p0, Landroid/net/PrivateDnsConfigParcel;->dohPath:Ljava/lang/String;

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
    iput v2, p0, Landroid/net/PrivateDnsConfigParcel;->dohPort:I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 183
    sub-int/2addr v4, v1

    .line 184
    if-gt v0, v4, :cond_e

    .line 186
    add-int/2addr v0, v1

    .line 187
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 190
    return-void

    .line 191
    :cond_e
    new-instance p0, Landroid/os/BadParcelableException;

    .line 193
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 196
    throw p0

    .line 197
    :catchall_0
    move-exception p0

    .line 198
    goto :goto_1

    .line 199
    :cond_f
    :try_start_8
    new-instance p0, Landroid/os/BadParcelableException;

    .line 201
    const-string v2, "Parcelable too small"

    .line 203
    invoke-direct {p0, v2}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 206
    throw p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 207
    :goto_1
    sub-int/2addr v4, v1

    .line 208
    if-le v0, v4, :cond_10

    .line 210
    new-instance p0, Landroid/os/BadParcelableException;

    .line 212
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 215
    throw p0

    .line 216
    :cond_10
    add-int/2addr v0, v1

    .line 217
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 220
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
    const-string/jumbo v2, "hostname: "

    .line 19
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    iget-object v2, p0, Landroid/net/PrivateDnsConfigParcel;->hostname:Ljava/lang/String;

    .line 24
    const-string/jumbo v3, "ips: "

    .line 27
    invoke-static {v2, v3, v1, v0}, Landroid/hardware/broadcastradio/DabTableEntry$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/util/StringJoiner;)Ljava/lang/StringBuilder;

    .line 30
    move-result-object v1

    .line 31
    iget-object v2, p0, Landroid/net/PrivateDnsConfigParcel;->ips:[Ljava/lang/String;

    .line 33
    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 36
    move-result-object v2

    .line 37
    const-string/jumbo v3, "privateDnsMode: "

    .line 40
    invoke-static {v2, v3, v1, v0}, Landroid/hardware/broadcastradio/AmFmRegionConfig$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/util/StringJoiner;)Ljava/lang/StringBuilder;

    .line 43
    move-result-object v1

    .line 44
    iget v2, p0, Landroid/net/PrivateDnsConfigParcel;->privateDnsMode:I

    .line 46
    const-string/jumbo v3, "dohName: "

    .line 49
    invoke-static {v1, v2, v0, v3}, Landroid/hardware/broadcastradio/AmFmBandRange$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/util/StringJoiner;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    move-result-object v1

    .line 53
    iget-object v2, p0, Landroid/net/PrivateDnsConfigParcel;->dohName:Ljava/lang/String;

    .line 55
    const-string/jumbo v3, "dohIps: "

    .line 58
    invoke-static {v2, v3, v1, v0}, Landroid/hardware/broadcastradio/DabTableEntry$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/util/StringJoiner;)Ljava/lang/StringBuilder;

    .line 61
    move-result-object v1

    .line 62
    iget-object v2, p0, Landroid/net/PrivateDnsConfigParcel;->dohIps:[Ljava/lang/String;

    .line 64
    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 67
    move-result-object v2

    .line 68
    const-string/jumbo v3, "dohPath: "

    .line 71
    invoke-static {v2, v3, v1, v0}, Landroid/hardware/broadcastradio/AmFmRegionConfig$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/util/StringJoiner;)Ljava/lang/StringBuilder;

    .line 74
    move-result-object v1

    .line 75
    iget-object v2, p0, Landroid/net/PrivateDnsConfigParcel;->dohPath:Ljava/lang/String;

    .line 77
    const-string/jumbo v3, "dohPort: "

    .line 80
    invoke-static {v2, v3, v1, v0}, Landroid/hardware/broadcastradio/DabTableEntry$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/util/StringJoiner;)Ljava/lang/StringBuilder;

    .line 83
    move-result-object v1

    .line 84
    iget p0, p0, Landroid/net/PrivateDnsConfigParcel;->dohPort:I

    .line 86
    const-string v2, "PrivateDnsConfigParcel"

    .line 88
    invoke-static {v1, p0, v0, v2}, Landroid/hardware/broadcastradio/AmFmBandRange$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/util/StringJoiner;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    move-result-object p0

    .line 92
    invoke-static {v0, p0}, Landroid/hardware/broadcastradio/AmFmBandRange$$ExternalSyntheticOutline0;->m(Ljava/util/StringJoiner;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 95
    move-result-object p0

    .line 96
    return-object p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 4
    move-result p2

    .line 5
    const/4 v0, 0x0

    .line 6
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 9
    iget-object v0, p0, Landroid/net/PrivateDnsConfigParcel;->hostname:Ljava/lang/String;

    .line 11
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 14
    iget-object v0, p0, Landroid/net/PrivateDnsConfigParcel;->ips:[Ljava/lang/String;

    .line 16
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 19
    iget v0, p0, Landroid/net/PrivateDnsConfigParcel;->privateDnsMode:I

    .line 21
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 24
    iget-object v0, p0, Landroid/net/PrivateDnsConfigParcel;->dohName:Ljava/lang/String;

    .line 26
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 29
    iget-object v0, p0, Landroid/net/PrivateDnsConfigParcel;->dohIps:[Ljava/lang/String;

    .line 31
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 34
    iget-object v0, p0, Landroid/net/PrivateDnsConfigParcel;->dohPath:Ljava/lang/String;

    .line 36
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 39
    iget p0, p0, Landroid/net/PrivateDnsConfigParcel;->dohPort:I

    .line 41
    invoke-static {p1, p0, p2}, Landroid/companion/virtualcamera/SupportedStreamConfiguration$$ExternalSyntheticOutline0;->m(Landroid/os/Parcel;II)I

    .line 44
    move-result p0

    .line 45
    invoke-static {p0, p2, p1, p0}, Landroid/companion/virtualcamera/SupportedStreamConfiguration$$ExternalSyntheticOutline0;->m(IILandroid/os/Parcel;I)V

    .line 48
    return-void
.end method
