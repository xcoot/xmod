.class public final Landroid/hardware/broadcastradio/ProgramInfo;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field public infoFlags:I

.field public logicallyTunedTo:Landroid/hardware/broadcastradio/ProgramIdentifier;

.field public metadata:[Landroid/hardware/broadcastradio/Metadata;

.field public physicallyTunedTo:Landroid/hardware/broadcastradio/ProgramIdentifier;

.field public relatedContent:[Landroid/hardware/broadcastradio/ProgramIdentifier;

.field public selector:Landroid/hardware/broadcastradio/ProgramSelector;

.field public signalQuality:I

.field public vendorInfo:[Landroid/hardware/broadcastradio/VendorKeyValue;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroid/hardware/broadcastradio/ProgramInfo$1;

    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 6
    sput-object v0, Landroid/hardware/broadcastradio/ProgramInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 8
    return-void
.end method

.method public static describeContents(Ljava/lang/Object;)I
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 7
    :cond_0
    instance-of v1, p0, [Ljava/lang/Object;

    if-eqz v1, :cond_2

    .line 8
    check-cast p0, [Ljava/lang/Object;

    array-length v1, p0

    move v2, v0

    :goto_0
    if-ge v0, v1, :cond_1

    aget-object v3, p0, v0

    .line 9
    invoke-static {v3}, Landroid/hardware/broadcastradio/ProgramInfo;->describeContents(Ljava/lang/Object;)I

    move-result v3

    or-int/2addr v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v2

    .line 10
    :cond_2
    instance-of v1, p0, Landroid/os/Parcelable;

    if-eqz v1, :cond_3

    .line 11
    check-cast p0, Landroid/os/Parcelable;

    invoke-interface {p0}, Landroid/os/Parcelable;->describeContents()I

    move-result p0

    return p0

    :cond_3
    return v0
.end method


# virtual methods
.method public final describeContents()I
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/hardware/broadcastradio/ProgramInfo;->selector:Landroid/hardware/broadcastradio/ProgramSelector;

    invoke-static {v0}, Landroid/hardware/broadcastradio/ProgramInfo;->describeContents(Ljava/lang/Object;)I

    move-result v0

    .line 2
    iget-object v1, p0, Landroid/hardware/broadcastradio/ProgramInfo;->logicallyTunedTo:Landroid/hardware/broadcastradio/ProgramIdentifier;

    invoke-static {v1}, Landroid/hardware/broadcastradio/ProgramInfo;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 3
    iget-object v1, p0, Landroid/hardware/broadcastradio/ProgramInfo;->physicallyTunedTo:Landroid/hardware/broadcastradio/ProgramIdentifier;

    invoke-static {v1}, Landroid/hardware/broadcastradio/ProgramInfo;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 4
    iget-object v1, p0, Landroid/hardware/broadcastradio/ProgramInfo;->relatedContent:[Landroid/hardware/broadcastradio/ProgramIdentifier;

    invoke-static {v1}, Landroid/hardware/broadcastradio/ProgramInfo;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 5
    iget-object v1, p0, Landroid/hardware/broadcastradio/ProgramInfo;->metadata:[Landroid/hardware/broadcastradio/Metadata;

    invoke-static {v1}, Landroid/hardware/broadcastradio/ProgramInfo;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 6
    iget-object p0, p0, Landroid/hardware/broadcastradio/ProgramInfo;->vendorInfo:[Landroid/hardware/broadcastradio/VendorKeyValue;

    invoke-static {p0}, Landroid/hardware/broadcastradio/ProgramInfo;->describeContents(Ljava/lang/Object;)I

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
    instance-of v2, p1, Landroid/hardware/broadcastradio/ProgramInfo;

    .line 11
    if-nez v2, :cond_2

    .line 13
    return v1

    .line 14
    :cond_2
    check-cast p1, Landroid/hardware/broadcastradio/ProgramInfo;

    .line 16
    iget-object v2, p0, Landroid/hardware/broadcastradio/ProgramInfo;->selector:Landroid/hardware/broadcastradio/ProgramSelector;

    .line 18
    iget-object v3, p1, Landroid/hardware/broadcastradio/ProgramInfo;->selector:Landroid/hardware/broadcastradio/ProgramSelector;

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
    iget-object v2, p0, Landroid/hardware/broadcastradio/ProgramInfo;->logicallyTunedTo:Landroid/hardware/broadcastradio/ProgramIdentifier;

    .line 29
    iget-object v3, p1, Landroid/hardware/broadcastradio/ProgramInfo;->logicallyTunedTo:Landroid/hardware/broadcastradio/ProgramIdentifier;

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
    iget-object v2, p0, Landroid/hardware/broadcastradio/ProgramInfo;->physicallyTunedTo:Landroid/hardware/broadcastradio/ProgramIdentifier;

    .line 40
    iget-object v3, p1, Landroid/hardware/broadcastradio/ProgramInfo;->physicallyTunedTo:Landroid/hardware/broadcastradio/ProgramIdentifier;

    .line 42
    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 45
    move-result v2

    .line 46
    if-nez v2, :cond_5

    .line 48
    return v1

    .line 49
    :cond_5
    iget-object v2, p0, Landroid/hardware/broadcastradio/ProgramInfo;->relatedContent:[Landroid/hardware/broadcastradio/ProgramIdentifier;

    .line 51
    iget-object v3, p1, Landroid/hardware/broadcastradio/ProgramInfo;->relatedContent:[Landroid/hardware/broadcastradio/ProgramIdentifier;

    .line 53
    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 56
    move-result v2

    .line 57
    if-nez v2, :cond_6

    .line 59
    return v1

    .line 60
    :cond_6
    iget v2, p0, Landroid/hardware/broadcastradio/ProgramInfo;->infoFlags:I

    .line 62
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 65
    move-result-object v2

    .line 66
    iget v3, p1, Landroid/hardware/broadcastradio/ProgramInfo;->infoFlags:I

    .line 68
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 71
    move-result-object v3

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
    iget v2, p0, Landroid/hardware/broadcastradio/ProgramInfo;->signalQuality:I

    .line 81
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 84
    move-result-object v2

    .line 85
    iget v3, p1, Landroid/hardware/broadcastradio/ProgramInfo;->signalQuality:I

    .line 87
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 90
    move-result-object v3

    .line 91
    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 94
    move-result v2

    .line 95
    if-nez v2, :cond_8

    .line 97
    return v1

    .line 98
    :cond_8
    iget-object v2, p0, Landroid/hardware/broadcastradio/ProgramInfo;->metadata:[Landroid/hardware/broadcastradio/Metadata;

    .line 100
    iget-object v3, p1, Landroid/hardware/broadcastradio/ProgramInfo;->metadata:[Landroid/hardware/broadcastradio/Metadata;

    .line 102
    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 105
    move-result v2

    .line 106
    if-nez v2, :cond_9

    .line 108
    return v1

    .line 109
    :cond_9
    iget-object p0, p0, Landroid/hardware/broadcastradio/ProgramInfo;->vendorInfo:[Landroid/hardware/broadcastradio/VendorKeyValue;

    .line 111
    iget-object p1, p1, Landroid/hardware/broadcastradio/ProgramInfo;->vendorInfo:[Landroid/hardware/broadcastradio/VendorKeyValue;

    .line 113
    invoke-static {p0, p1}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 116
    move-result p0

    .line 117
    if-nez p0, :cond_a

    .line 119
    return v1

    .line 120
    :cond_a
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
    .locals 8

    .line 1
    iget-object v0, p0, Landroid/hardware/broadcastradio/ProgramInfo;->selector:Landroid/hardware/broadcastradio/ProgramSelector;

    .line 3
    iget-object v1, p0, Landroid/hardware/broadcastradio/ProgramInfo;->logicallyTunedTo:Landroid/hardware/broadcastradio/ProgramIdentifier;

    .line 5
    iget-object v2, p0, Landroid/hardware/broadcastradio/ProgramInfo;->physicallyTunedTo:Landroid/hardware/broadcastradio/ProgramIdentifier;

    .line 7
    iget-object v3, p0, Landroid/hardware/broadcastradio/ProgramInfo;->relatedContent:[Landroid/hardware/broadcastradio/ProgramIdentifier;

    .line 9
    iget v4, p0, Landroid/hardware/broadcastradio/ProgramInfo;->infoFlags:I

    .line 11
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    move-result-object v4

    .line 15
    iget v5, p0, Landroid/hardware/broadcastradio/ProgramInfo;->signalQuality:I

    .line 17
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 20
    move-result-object v5

    .line 21
    iget-object v6, p0, Landroid/hardware/broadcastradio/ProgramInfo;->metadata:[Landroid/hardware/broadcastradio/Metadata;

    .line 23
    iget-object v7, p0, Landroid/hardware/broadcastradio/ProgramInfo;->vendorInfo:[Landroid/hardware/broadcastradio/VendorKeyValue;

    .line 25
    filled-new-array/range {v0 .. v7}, [Ljava/lang/Object;

    .line 28
    move-result-object p0

    .line 29
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 32
    move-result-object p0

    .line 33
    invoke-interface {p0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    .line 36
    move-result-object p0

    .line 37
    invoke-static {p0}, Ljava/util/Arrays;->deepHashCode([Ljava/lang/Object;)I

    .line 40
    move-result p0

    .line 41
    return p0
.end method

.method public final toString()Ljava/lang/String;
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
    const-string/jumbo v2, "selector: "

    .line 19
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    iget-object v2, p0, Landroid/hardware/broadcastradio/ProgramInfo;->selector:Landroid/hardware/broadcastradio/ProgramSelector;

    .line 24
    invoke-static {v2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 27
    move-result-object v2

    .line 28
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 38
    new-instance v1, Ljava/lang/StringBuilder;

    .line 40
    const-string/jumbo v2, "logicallyTunedTo: "

    .line 43
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 46
    iget-object v2, p0, Landroid/hardware/broadcastradio/ProgramInfo;->logicallyTunedTo:Landroid/hardware/broadcastradio/ProgramIdentifier;

    .line 48
    invoke-static {v2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 51
    move-result-object v2

    .line 52
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    move-result-object v1

    .line 59
    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 62
    new-instance v1, Ljava/lang/StringBuilder;

    .line 64
    const-string/jumbo v2, "physicallyTunedTo: "

    .line 67
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 70
    iget-object v2, p0, Landroid/hardware/broadcastradio/ProgramInfo;->physicallyTunedTo:Landroid/hardware/broadcastradio/ProgramIdentifier;

    .line 72
    invoke-static {v2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 75
    move-result-object v2

    .line 76
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    move-result-object v1

    .line 83
    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 86
    new-instance v1, Ljava/lang/StringBuilder;

    .line 88
    const-string/jumbo v2, "relatedContent: "

    .line 91
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 94
    iget-object v2, p0, Landroid/hardware/broadcastradio/ProgramInfo;->relatedContent:[Landroid/hardware/broadcastradio/ProgramIdentifier;

    .line 96
    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 99
    move-result-object v2

    .line 100
    const-string/jumbo v3, "infoFlags: "

    .line 103
    invoke-static {v2, v3, v1, v0}, Landroid/hardware/broadcastradio/AmFmRegionConfig$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/util/StringJoiner;)Ljava/lang/StringBuilder;

    .line 106
    move-result-object v1

    .line 107
    iget v2, p0, Landroid/hardware/broadcastradio/ProgramInfo;->infoFlags:I

    .line 109
    const-string/jumbo v3, "signalQuality: "

    .line 112
    invoke-static {v1, v2, v0, v3}, Landroid/hardware/broadcastradio/AmFmBandRange$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/util/StringJoiner;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    move-result-object v1

    .line 116
    iget v2, p0, Landroid/hardware/broadcastradio/ProgramInfo;->signalQuality:I

    .line 118
    const-string/jumbo v3, "metadata: "

    .line 121
    invoke-static {v1, v2, v0, v3}, Landroid/hardware/broadcastradio/AmFmBandRange$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/util/StringJoiner;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    move-result-object v1

    .line 125
    iget-object v2, p0, Landroid/hardware/broadcastradio/ProgramInfo;->metadata:[Landroid/hardware/broadcastradio/Metadata;

    .line 127
    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 130
    move-result-object v2

    .line 131
    const-string/jumbo v3, "vendorInfo: "

    .line 134
    invoke-static {v2, v3, v1, v0}, Landroid/hardware/broadcastradio/AmFmRegionConfig$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/util/StringJoiner;)Ljava/lang/StringBuilder;

    .line 137
    move-result-object v1

    .line 138
    iget-object p0, p0, Landroid/hardware/broadcastradio/ProgramInfo;->vendorInfo:[Landroid/hardware/broadcastradio/VendorKeyValue;

    .line 140
    invoke-static {p0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 143
    move-result-object p0

    .line 144
    const-string v2, "ProgramInfo"

    .line 146
    invoke-static {p0, v2, v1, v0}, Landroid/hardware/broadcastradio/AmFmRegionConfig$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/util/StringJoiner;)Ljava/lang/StringBuilder;

    .line 149
    move-result-object p0

    .line 150
    invoke-static {v0, p0}, Landroid/hardware/broadcastradio/AmFmBandRange$$ExternalSyntheticOutline0;->m(Ljava/util/StringJoiner;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 153
    move-result-object p0

    .line 154
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
    iget-object v1, p0, Landroid/hardware/broadcastradio/ProgramInfo;->selector:Landroid/hardware/broadcastradio/ProgramSelector;

    .line 11
    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 14
    iget-object v1, p0, Landroid/hardware/broadcastradio/ProgramInfo;->logicallyTunedTo:Landroid/hardware/broadcastradio/ProgramIdentifier;

    .line 16
    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 19
    iget-object v1, p0, Landroid/hardware/broadcastradio/ProgramInfo;->physicallyTunedTo:Landroid/hardware/broadcastradio/ProgramIdentifier;

    .line 21
    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 24
    iget-object v1, p0, Landroid/hardware/broadcastradio/ProgramInfo;->relatedContent:[Landroid/hardware/broadcastradio/ProgramIdentifier;

    .line 26
    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 29
    iget v1, p0, Landroid/hardware/broadcastradio/ProgramInfo;->infoFlags:I

    .line 31
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 34
    iget v1, p0, Landroid/hardware/broadcastradio/ProgramInfo;->signalQuality:I

    .line 36
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 39
    iget-object v1, p0, Landroid/hardware/broadcastradio/ProgramInfo;->metadata:[Landroid/hardware/broadcastradio/Metadata;

    .line 41
    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 44
    iget-object p0, p0, Landroid/hardware/broadcastradio/ProgramInfo;->vendorInfo:[Landroid/hardware/broadcastradio/VendorKeyValue;

    .line 46
    invoke-virtual {p1, p0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 52
    move-result p0

    .line 53
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 56
    sub-int p2, p0, v0

    .line 58
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 61
    invoke-virtual {p1, p0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 64
    return-void
.end method
