.class public final Lco/nstant/in/cbor/model/UnicodeString;
.super Lco/nstant/in/cbor/model/ChunkableDataItem;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final string:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Lco/nstant/in/cbor/model/MajorType;->UNICODE_STRING:Lco/nstant/in/cbor/model/MajorType;

    .line 3
    invoke-direct {p0, v0}, Lco/nstant/in/cbor/model/ChunkableDataItem;-><init>(Lco/nstant/in/cbor/model/MajorType;)V

    .line 6
    iput-object p1, p0, Lco/nstant/in/cbor/model/UnicodeString;->string:Ljava/lang/String;

    .line 8
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    instance-of v0, p1, Lco/nstant/in/cbor/model/UnicodeString;

    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_2

    .line 6
    invoke-super {p0, p1}, Lco/nstant/in/cbor/model/ChunkableDataItem;->equals(Ljava/lang/Object;)Z

    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_2

    .line 12
    check-cast p1, Lco/nstant/in/cbor/model/UnicodeString;

    .line 14
    iget-object p0, p0, Lco/nstant/in/cbor/model/UnicodeString;->string:Ljava/lang/String;

    .line 16
    if-nez p0, :cond_1

    .line 18
    iget-object p0, p1, Lco/nstant/in/cbor/model/UnicodeString;->string:Ljava/lang/String;

    .line 20
    if-nez p0, :cond_0

    .line 22
    const/4 v1, 0x1

    .line 23
    :cond_0
    return v1

    .line 24
    :cond_1
    iget-object p1, p1, Lco/nstant/in/cbor/model/UnicodeString;->string:Ljava/lang/String;

    .line 26
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 29
    move-result p0

    .line 30
    return p0

    .line 31
    :cond_2
    return v1
.end method

.method public final hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lco/nstant/in/cbor/model/UnicodeString;->string:Ljava/lang/String;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    invoke-super {p0}, Lco/nstant/in/cbor/model/ChunkableDataItem;->hashCode()I

    .line 8
    move-result p0

    .line 9
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 12
    move-result v0

    .line 13
    add-int/2addr v0, p0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    :goto_0
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lco/nstant/in/cbor/model/UnicodeString;->string:Ljava/lang/String;

    .line 3
    if-nez p0, :cond_0

    .line 5
    const-string/jumbo p0, "null"

    .line 8
    :cond_0
    return-object p0
.end method
