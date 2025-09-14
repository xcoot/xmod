.class public abstract Lco/nstant/in/cbor/model/DataItem;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final majorType:Lco/nstant/in/cbor/model/MajorType;

.field public tag:Lco/nstant/in/cbor/model/Tag;


# direct methods
.method public constructor <init>(Lco/nstant/in/cbor/model/MajorType;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lco/nstant/in/cbor/model/DataItem;->majorType:Lco/nstant/in/cbor/model/MajorType;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    instance-of v0, p1, Lco/nstant/in/cbor/model/DataItem;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_2

    .line 5
    .line 6
    check-cast p1, Lco/nstant/in/cbor/model/DataItem;

    .line 7
    .line 8
    iget-object v0, p0, Lco/nstant/in/cbor/model/DataItem;->tag:Lco/nstant/in/cbor/model/Tag;

    .line 9
    .line 10
    const/4 v2, 0x1

    .line 11
    iget-object p0, p0, Lco/nstant/in/cbor/model/DataItem;->majorType:Lco/nstant/in/cbor/model/MajorType;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    iget-object v3, p1, Lco/nstant/in/cbor/model/DataItem;->tag:Lco/nstant/in/cbor/model/Tag;

    .line 16
    .line 17
    invoke-virtual {v0, v3}, Lco/nstant/in/cbor/model/Tag;->equals(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    iget-object p1, p1, Lco/nstant/in/cbor/model/DataItem;->majorType:Lco/nstant/in/cbor/model/MajorType;

    .line 24
    .line 25
    if-ne p0, p1, :cond_0

    .line 26
    .line 27
    move v1, v2

    .line 28
    :cond_0
    return v1

    .line 29
    :cond_1
    iget-object v0, p1, Lco/nstant/in/cbor/model/DataItem;->tag:Lco/nstant/in/cbor/model/Tag;

    .line 30
    .line 31
    if-nez v0, :cond_2

    .line 32
    .line 33
    iget-object p1, p1, Lco/nstant/in/cbor/model/DataItem;->majorType:Lco/nstant/in/cbor/model/MajorType;

    .line 34
    .line 35
    if-ne p0, p1, :cond_2

    .line 36
    .line 37
    move v1, v2

    .line 38
    :cond_2
    return v1
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lco/nstant/in/cbor/model/DataItem;->majorType:Lco/nstant/in/cbor/model/MajorType;

    .line 2
    .line 3
    iget-object p0, p0, Lco/nstant/in/cbor/model/DataItem;->tag:Lco/nstant/in/cbor/model/Tag;

    .line 4
    .line 5
    filled-new-array {v0, p0}, [Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0
.end method
