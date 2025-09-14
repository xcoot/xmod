.class public abstract Lco/nstant/in/cbor/model/ChunkableDataItem;
.super Lco/nstant/in/cbor/model/DataItem;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public chunked:Z


# direct methods
.method public constructor <init>(Lco/nstant/in/cbor/model/MajorType;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lco/nstant/in/cbor/model/DataItem;-><init>(Lco/nstant/in/cbor/model/MajorType;)V

    .line 4
    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Lco/nstant/in/cbor/model/ChunkableDataItem;->chunked:Z

    .line 7
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    instance-of v0, p1, Lco/nstant/in/cbor/model/ChunkableDataItem;

    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 6
    move-object v0, p1

    .line 7
    check-cast v0, Lco/nstant/in/cbor/model/ChunkableDataItem;

    .line 9
    invoke-super {p0, p1}, Lco/nstant/in/cbor/model/DataItem;->equals(Ljava/lang/Object;)Z

    .line 12
    move-result p1

    .line 13
    if-eqz p1, :cond_0

    .line 15
    iget-boolean p0, p0, Lco/nstant/in/cbor/model/ChunkableDataItem;->chunked:Z

    .line 17
    iget-boolean p1, v0, Lco/nstant/in/cbor/model/ChunkableDataItem;->chunked:Z

    .line 19
    if-ne p0, p1, :cond_0

    .line 21
    const/4 v1, 0x1

    .line 22
    :cond_0
    return v1
.end method

.method public hashCode()I
    .locals 1

    .line 1
    invoke-super {p0}, Lco/nstant/in/cbor/model/DataItem;->hashCode()I

    .line 4
    move-result v0

    .line 5
    iget-boolean p0, p0, Lco/nstant/in/cbor/model/ChunkableDataItem;->chunked:Z

    .line 7
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 10
    move-result-object p0

    .line 11
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 14
    move-result p0

    .line 15
    xor-int/2addr p0, v0

    .line 16
    return p0
.end method
