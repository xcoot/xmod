.class public abstract Lco/nstant/in/cbor/model/Number;
.super Lco/nstant/in/cbor/model/DataItem;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final value:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(Lco/nstant/in/cbor/model/MajorType;Ljava/math/BigInteger;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lco/nstant/in/cbor/model/DataItem;-><init>(Lco/nstant/in/cbor/model/MajorType;)V

    .line 4
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iput-object p2, p0, Lco/nstant/in/cbor/model/Number;->value:Ljava/math/BigInteger;

    .line 9
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    instance-of v0, p1, Lco/nstant/in/cbor/model/Number;

    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 6
    move-object v0, p1

    .line 7
    check-cast v0, Lco/nstant/in/cbor/model/Number;

    .line 9
    invoke-super {p0, p1}, Lco/nstant/in/cbor/model/DataItem;->equals(Ljava/lang/Object;)Z

    .line 12
    move-result p1

    .line 13
    if-eqz p1, :cond_0

    .line 15
    iget-object p0, p0, Lco/nstant/in/cbor/model/Number;->value:Ljava/math/BigInteger;

    .line 17
    iget-object p1, v0, Lco/nstant/in/cbor/model/Number;->value:Ljava/math/BigInteger;

    .line 19
    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    .line 22
    move-result p0

    .line 23
    if-eqz p0, :cond_0

    .line 25
    const/4 v1, 0x1

    .line 26
    :cond_0
    return v1
.end method

.method public final hashCode()I
    .locals 1

    .line 1
    invoke-super {p0}, Lco/nstant/in/cbor/model/DataItem;->hashCode()I

    .line 4
    move-result v0

    .line 5
    iget-object p0, p0, Lco/nstant/in/cbor/model/Number;->value:Ljava/math/BigInteger;

    .line 7
    invoke-virtual {p0}, Ljava/math/BigInteger;->hashCode()I

    .line 10
    move-result p0

    .line 11
    xor-int/2addr p0, v0

    .line 12
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lco/nstant/in/cbor/model/Number;->value:Ljava/math/BigInteger;

    .line 3
    invoke-virtual {p0}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method
