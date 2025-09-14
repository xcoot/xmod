.class public final Landroid/hardware/broadcastradio/Announcement;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field public selector:Landroid/hardware/broadcastradio/ProgramSelector;

.field public type:B

.field public vendorInfo:[Landroid/hardware/broadcastradio/VendorKeyValue;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroid/hardware/broadcastradio/Announcement$1;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroid/hardware/broadcastradio/Announcement;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 7
    .line 8
    return-void
.end method

.method public static describeContents(Ljava/lang/Object;)I
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 3
    :cond_0
    instance-of v1, p0, [Ljava/lang/Object;

    if-eqz v1, :cond_2

    .line 4
    check-cast p0, [Ljava/lang/Object;

    array-length v1, p0

    move v2, v0

    :goto_0
    if-ge v0, v1, :cond_1

    aget-object v3, p0, v0

    .line 5
    invoke-static {v3}, Landroid/hardware/broadcastradio/Announcement;->describeContents(Ljava/lang/Object;)I

    move-result v3

    or-int/2addr v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v2

    .line 6
    :cond_2
    instance-of v1, p0, Landroid/os/Parcelable;

    if-eqz v1, :cond_3

    .line 7
    check-cast p0, Landroid/os/Parcelable;

    invoke-interface {p0}, Landroid/os/Parcelable;->describeContents()I

    move-result p0

    return p0

    :cond_3
    return v0
.end method


# virtual methods
.method public final describeContents()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/hardware/broadcastradio/Announcement;->selector:Landroid/hardware/broadcastradio/ProgramSelector;

    invoke-static {v0}, Landroid/hardware/broadcastradio/Announcement;->describeContents(Ljava/lang/Object;)I

    move-result v0

    .line 2
    iget-object p0, p0, Landroid/hardware/broadcastradio/Announcement;->vendorInfo:[Landroid/hardware/broadcastradio/VendorKeyValue;

    invoke-static {p0}, Landroid/hardware/broadcastradio/Announcement;->describeContents(Ljava/lang/Object;)I

    move-result p0

    or-int/2addr p0, v0

    return p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    const/4 v1, 0x0

    .line 6
    if-nez p1, :cond_1

    .line 7
    .line 8
    return v1

    .line 9
    :cond_1
    instance-of v2, p1, Landroid/hardware/broadcastradio/Announcement;

    .line 10
    .line 11
    if-nez v2, :cond_2

    .line 12
    .line 13
    return v1

    .line 14
    :cond_2
    check-cast p1, Landroid/hardware/broadcastradio/Announcement;

    .line 15
    .line 16
    iget-object v2, p0, Landroid/hardware/broadcastradio/Announcement;->selector:Landroid/hardware/broadcastradio/ProgramSelector;

    .line 17
    .line 18
    iget-object v3, p1, Landroid/hardware/broadcastradio/Announcement;->selector:Landroid/hardware/broadcastradio/ProgramSelector;

    .line 19
    .line 20
    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-nez v2, :cond_3

    .line 25
    .line 26
    return v1

    .line 27
    :cond_3
    iget-byte v2, p0, Landroid/hardware/broadcastradio/Announcement;->type:B

    .line 28
    .line 29
    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    iget-byte v3, p1, Landroid/hardware/broadcastradio/Announcement;->type:B

    .line 34
    .line 35
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    if-nez v2, :cond_4

    .line 44
    .line 45
    return v1

    .line 46
    :cond_4
    iget-object p0, p0, Landroid/hardware/broadcastradio/Announcement;->vendorInfo:[Landroid/hardware/broadcastradio/VendorKeyValue;

    .line 47
    .line 48
    iget-object p1, p1, Landroid/hardware/broadcastradio/Announcement;->vendorInfo:[Landroid/hardware/broadcastradio/VendorKeyValue;

    .line 49
    .line 50
    invoke-static {p0, p1}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result p0

    .line 54
    if-nez p0, :cond_5

    .line 55
    .line 56
    return v1

    .line 57
    :cond_5
    return v0
.end method

.method public final getStability()I
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method

.method public final hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/hardware/broadcastradio/Announcement;->selector:Landroid/hardware/broadcastradio/ProgramSelector;

    .line 2
    .line 3
    iget-byte v1, p0, Landroid/hardware/broadcastradio/Announcement;->type:B

    .line 4
    .line 5
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    iget-object p0, p0, Landroid/hardware/broadcastradio/Announcement;->vendorInfo:[Landroid/hardware/broadcastradio/VendorKeyValue;

    .line 10
    .line 11
    filled-new-array {v0, v1, p0}, [Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    invoke-interface {p0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-static {p0}, Ljava/util/Arrays;->deepHashCode([Ljava/lang/Object;)I

    .line 24
    .line 25
    .line 26
    move-result p0

    .line 27
    return p0
.end method

.method public final toString()Ljava/lang/String;
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
    const-string/jumbo v2, "selector: "

    .line 17
    .line 18
    .line 19
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iget-object v2, p0, Landroid/hardware/broadcastradio/Announcement;->selector:Landroid/hardware/broadcastradio/ProgramSelector;

    .line 23
    .line 24
    invoke-static {v2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 36
    .line 37
    .line 38
    new-instance v1, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    const-string/jumbo v2, "type: "

    .line 41
    .line 42
    .line 43
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    iget-byte v2, p0, Landroid/hardware/broadcastradio/Announcement;->type:B

    .line 47
    .line 48
    if-nez v2, :cond_0

    .line 49
    .line 50
    const-string v2, "INVALID"

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_0
    const/4 v3, 0x1

    .line 54
    if-ne v2, v3, :cond_1

    .line 55
    .line 56
    const-string v2, "EMERGENCY"

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_1
    const/4 v3, 0x2

    .line 60
    if-ne v2, v3, :cond_2

    .line 61
    .line 62
    const-string v2, "WARNING"

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_2
    const/4 v3, 0x3

    .line 66
    if-ne v2, v3, :cond_3

    .line 67
    .line 68
    const-string v2, "TRAFFIC"

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_3
    const/4 v3, 0x4

    .line 72
    if-ne v2, v3, :cond_4

    .line 73
    .line 74
    const-string v2, "WEATHER"

    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_4
    const/4 v3, 0x5

    .line 78
    if-ne v2, v3, :cond_5

    .line 79
    .line 80
    const-string v2, "NEWS"

    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_5
    const/4 v3, 0x6

    .line 84
    if-ne v2, v3, :cond_6

    .line 85
    .line 86
    const-string v2, "EVENT"

    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_6
    const/4 v3, 0x7

    .line 90
    if-ne v2, v3, :cond_7

    .line 91
    .line 92
    const-string v2, "SPORT"

    .line 93
    .line 94
    goto :goto_0

    .line 95
    :cond_7
    const/16 v3, 0x8

    .line 96
    .line 97
    if-ne v2, v3, :cond_8

    .line 98
    .line 99
    const-string v2, "MISC"

    .line 100
    .line 101
    goto :goto_0

    .line 102
    :cond_8
    invoke-static {v2}, Ljava/lang/Byte;->toString(B)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v2

    .line 106
    :goto_0
    const-string/jumbo v3, "vendorInfo: "

    .line 107
    .line 108
    .line 109
    invoke-static {v2, v3, v1, v0}, Landroid/hardware/broadcastradio/AmFmRegionConfig$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/util/StringJoiner;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    move-result-object v1

    .line 113
    iget-object p0, p0, Landroid/hardware/broadcastradio/Announcement;->vendorInfo:[Landroid/hardware/broadcastradio/VendorKeyValue;

    .line 114
    .line 115
    invoke-static {p0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object p0

    .line 119
    const-string v2, "Announcement"

    .line 120
    .line 121
    invoke-static {p0, v2, v1, v0}, Landroid/hardware/broadcastradio/AmFmRegionConfig$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/util/StringJoiner;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    move-result-object p0

    .line 125
    invoke-static {v0, p0}, Landroid/hardware/broadcastradio/AmFmBandRange$$ExternalSyntheticOutline0;->m(Ljava/util/StringJoiner;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object p0

    .line 129
    return-object p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

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
    iget-object v1, p0, Landroid/hardware/broadcastradio/Announcement;->selector:Landroid/hardware/broadcastradio/ProgramSelector;

    .line 10
    .line 11
    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 12
    .line 13
    .line 14
    iget-byte v1, p0, Landroid/hardware/broadcastradio/Announcement;->type:B

    .line 15
    .line 16
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 17
    .line 18
    .line 19
    iget-object p0, p0, Landroid/hardware/broadcastradio/Announcement;->vendorInfo:[Landroid/hardware/broadcastradio/VendorKeyValue;

    .line 20
    .line 21
    invoke-virtual {p1, p0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 25
    .line 26
    .line 27
    move-result p0

    .line 28
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 29
    .line 30
    .line 31
    sub-int p2, p0, v0

    .line 32
    .line 33
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1, p0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 37
    .line 38
    .line 39
    return-void
.end method
