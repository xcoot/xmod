.class public final Landroid/hardware/broadcastradio/Properties;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field public maker:Ljava/lang/String;

.field public product:Ljava/lang/String;

.field public serial:Ljava/lang/String;

.field public supportedIdentifierTypes:[I

.field public vendorInfo:[Landroid/hardware/broadcastradio/VendorKeyValue;

.field public version:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroid/hardware/broadcastradio/Properties$1;

    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 6
    sput-object v0, Landroid/hardware/broadcastradio/Properties;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 8
    return-void
.end method

.method public static describeContents(Ljava/lang/Object;)I
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 2
    :cond_0
    instance-of v1, p0, [Ljava/lang/Object;

    if-eqz v1, :cond_2

    .line 3
    check-cast p0, [Ljava/lang/Object;

    array-length v1, p0

    move v2, v0

    :goto_0
    if-ge v0, v1, :cond_1

    aget-object v3, p0, v0

    .line 4
    invoke-static {v3}, Landroid/hardware/broadcastradio/Properties;->describeContents(Ljava/lang/Object;)I

    move-result v3

    or-int/2addr v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v2

    .line 5
    :cond_2
    instance-of v1, p0, Landroid/os/Parcelable;

    if-eqz v1, :cond_3

    .line 6
    check-cast p0, Landroid/os/Parcelable;

    invoke-interface {p0}, Landroid/os/Parcelable;->describeContents()I

    move-result p0

    return p0

    :cond_3
    return v0
.end method


# virtual methods
.method public final describeContents()I
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/hardware/broadcastradio/Properties;->vendorInfo:[Landroid/hardware/broadcastradio/VendorKeyValue;

    invoke-static {p0}, Landroid/hardware/broadcastradio/Properties;->describeContents(Ljava/lang/Object;)I

    move-result p0

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
    instance-of v2, p1, Landroid/hardware/broadcastradio/Properties;

    .line 11
    if-nez v2, :cond_2

    .line 13
    return v1

    .line 14
    :cond_2
    check-cast p1, Landroid/hardware/broadcastradio/Properties;

    .line 16
    iget-object v2, p0, Landroid/hardware/broadcastradio/Properties;->maker:Ljava/lang/String;

    .line 18
    iget-object v3, p1, Landroid/hardware/broadcastradio/Properties;->maker:Ljava/lang/String;

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
    iget-object v2, p0, Landroid/hardware/broadcastradio/Properties;->product:Ljava/lang/String;

    .line 29
    iget-object v3, p1, Landroid/hardware/broadcastradio/Properties;->product:Ljava/lang/String;

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
    iget-object v2, p0, Landroid/hardware/broadcastradio/Properties;->version:Ljava/lang/String;

    .line 40
    iget-object v3, p1, Landroid/hardware/broadcastradio/Properties;->version:Ljava/lang/String;

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
    iget-object v2, p0, Landroid/hardware/broadcastradio/Properties;->serial:Ljava/lang/String;

    .line 51
    iget-object v3, p1, Landroid/hardware/broadcastradio/Properties;->serial:Ljava/lang/String;

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
    iget-object v2, p0, Landroid/hardware/broadcastradio/Properties;->supportedIdentifierTypes:[I

    .line 62
    iget-object v3, p1, Landroid/hardware/broadcastradio/Properties;->supportedIdentifierTypes:[I

    .line 64
    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 67
    move-result v2

    .line 68
    if-nez v2, :cond_7

    .line 70
    return v1

    .line 71
    :cond_7
    iget-object p0, p0, Landroid/hardware/broadcastradio/Properties;->vendorInfo:[Landroid/hardware/broadcastradio/VendorKeyValue;

    .line 73
    iget-object p1, p1, Landroid/hardware/broadcastradio/Properties;->vendorInfo:[Landroid/hardware/broadcastradio/VendorKeyValue;

    .line 75
    invoke-static {p0, p1}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 78
    move-result p0

    .line 79
    if-nez p0, :cond_8

    .line 81
    return v1

    .line 82
    :cond_8
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
    .locals 3

    .line 1
    const/4 v0, 0x6

    .line 2
    new-array v0, v0, [Ljava/io/Serializable;

    .line 4
    const/4 v1, 0x0

    .line 5
    iget-object v2, p0, Landroid/hardware/broadcastradio/Properties;->maker:Ljava/lang/String;

    .line 7
    aput-object v2, v0, v1

    .line 9
    const/4 v1, 0x1

    .line 10
    iget-object v2, p0, Landroid/hardware/broadcastradio/Properties;->product:Ljava/lang/String;

    .line 12
    aput-object v2, v0, v1

    .line 14
    const/4 v1, 0x2

    .line 15
    iget-object v2, p0, Landroid/hardware/broadcastradio/Properties;->version:Ljava/lang/String;

    .line 17
    aput-object v2, v0, v1

    .line 19
    const/4 v1, 0x3

    .line 20
    iget-object v2, p0, Landroid/hardware/broadcastradio/Properties;->serial:Ljava/lang/String;

    .line 22
    aput-object v2, v0, v1

    .line 24
    const/4 v1, 0x4

    .line 25
    iget-object v2, p0, Landroid/hardware/broadcastradio/Properties;->supportedIdentifierTypes:[I

    .line 27
    aput-object v2, v0, v1

    .line 29
    const/4 v1, 0x5

    .line 30
    iget-object p0, p0, Landroid/hardware/broadcastradio/Properties;->vendorInfo:[Landroid/hardware/broadcastradio/VendorKeyValue;

    .line 32
    aput-object p0, v0, v1

    .line 34
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 37
    move-result-object p0

    .line 38
    invoke-interface {p0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    .line 41
    move-result-object p0

    .line 42
    invoke-static {p0}, Ljava/util/Arrays;->deepHashCode([Ljava/lang/Object;)I

    .line 45
    move-result p0

    .line 46
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
    const-string/jumbo v2, "maker: "

    .line 19
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    iget-object v2, p0, Landroid/hardware/broadcastradio/Properties;->maker:Ljava/lang/String;

    .line 24
    const-string/jumbo v3, "product: "

    .line 27
    invoke-static {v2, v3, v1, v0}, Landroid/hardware/broadcastradio/DabTableEntry$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/util/StringJoiner;)Ljava/lang/StringBuilder;

    .line 30
    move-result-object v1

    .line 31
    iget-object v2, p0, Landroid/hardware/broadcastradio/Properties;->product:Ljava/lang/String;

    .line 33
    const-string/jumbo v3, "version: "

    .line 36
    invoke-static {v2, v3, v1, v0}, Landroid/hardware/broadcastradio/DabTableEntry$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/util/StringJoiner;)Ljava/lang/StringBuilder;

    .line 39
    move-result-object v1

    .line 40
    iget-object v2, p0, Landroid/hardware/broadcastradio/Properties;->version:Ljava/lang/String;

    .line 42
    const-string/jumbo v3, "serial: "

    .line 45
    invoke-static {v2, v3, v1, v0}, Landroid/hardware/broadcastradio/DabTableEntry$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/util/StringJoiner;)Ljava/lang/StringBuilder;

    .line 48
    move-result-object v1

    .line 49
    iget-object v2, p0, Landroid/hardware/broadcastradio/Properties;->serial:Ljava/lang/String;

    .line 51
    const-string/jumbo v3, "supportedIdentifierTypes: "

    .line 54
    invoke-static {v2, v3, v1, v0}, Landroid/hardware/broadcastradio/DabTableEntry$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/util/StringJoiner;)Ljava/lang/StringBuilder;

    .line 57
    move-result-object v1

    .line 58
    iget-object v2, p0, Landroid/hardware/broadcastradio/Properties;->supportedIdentifierTypes:[I

    .line 60
    invoke-static {v2}, Landroid/hardware/broadcastradio/IdentifierType$$;->arrayToString(Ljava/lang/Object;)Ljava/lang/String;

    .line 63
    move-result-object v2

    .line 64
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    move-result-object v1

    .line 71
    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 74
    new-instance v1, Ljava/lang/StringBuilder;

    .line 76
    const-string/jumbo v2, "vendorInfo: "

    .line 79
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 82
    iget-object p0, p0, Landroid/hardware/broadcastradio/Properties;->vendorInfo:[Landroid/hardware/broadcastradio/VendorKeyValue;

    .line 84
    invoke-static {p0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 87
    move-result-object p0

    .line 88
    const-string v2, "Properties"

    .line 90
    invoke-static {p0, v2, v1, v0}, Landroid/hardware/broadcastradio/AmFmRegionConfig$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/util/StringJoiner;)Ljava/lang/StringBuilder;

    .line 93
    move-result-object p0

    .line 94
    invoke-static {v0, p0}, Landroid/hardware/broadcastradio/AmFmBandRange$$ExternalSyntheticOutline0;->m(Ljava/util/StringJoiner;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 97
    move-result-object p0

    .line 98
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
    iget-object v1, p0, Landroid/hardware/broadcastradio/Properties;->maker:Ljava/lang/String;

    .line 11
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 14
    iget-object v1, p0, Landroid/hardware/broadcastradio/Properties;->product:Ljava/lang/String;

    .line 16
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 19
    iget-object v1, p0, Landroid/hardware/broadcastradio/Properties;->version:Ljava/lang/String;

    .line 21
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 24
    iget-object v1, p0, Landroid/hardware/broadcastradio/Properties;->serial:Ljava/lang/String;

    .line 26
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 29
    iget-object v1, p0, Landroid/hardware/broadcastradio/Properties;->supportedIdentifierTypes:[I

    .line 31
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 34
    iget-object p0, p0, Landroid/hardware/broadcastradio/Properties;->vendorInfo:[Landroid/hardware/broadcastradio/VendorKeyValue;

    .line 36
    invoke-virtual {p1, p0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 39
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 42
    move-result p0

    .line 43
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 46
    sub-int p2, p0, v0

    .line 48
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 51
    invoke-virtual {p1, p0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 54
    return-void
.end method
