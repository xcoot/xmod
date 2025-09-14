.class public final Lco/nstant/in/cbor/model/DoublePrecisionFloat;
.super Lco/nstant/in/cbor/model/Special;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final value:D


# direct methods
.method public constructor <init>(D)V
    .locals 1

    .line 1
    sget-object v0, Lco/nstant/in/cbor/model/SpecialType;->IEEE_754_DOUBLE_PRECISION_FLOAT:Lco/nstant/in/cbor/model/SpecialType;

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lco/nstant/in/cbor/model/Special;-><init>(Lco/nstant/in/cbor/model/SpecialType;)V

    .line 4
    .line 5
    .line 6
    iput-wide p1, p0, Lco/nstant/in/cbor/model/DoublePrecisionFloat;->value:D

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    instance-of v0, p1, Lco/nstant/in/cbor/model/DoublePrecisionFloat;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    move-object v0, p1

    .line 7
    check-cast v0, Lco/nstant/in/cbor/model/DoublePrecisionFloat;

    .line 8
    .line 9
    invoke-super {p0, p1}, Lco/nstant/in/cbor/model/Special;->equals(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    iget-wide p0, p0, Lco/nstant/in/cbor/model/DoublePrecisionFloat;->value:D

    .line 16
    .line 17
    iget-wide v2, v0, Lco/nstant/in/cbor/model/DoublePrecisionFloat;->value:D

    .line 18
    .line 19
    cmpl-double p0, p0, v2

    .line 20
    .line 21
    if-nez p0, :cond_0

    .line 22
    .line 23
    const/4 v1, 0x1

    .line 24
    :cond_0
    return v1
.end method

.method public final hashCode()I
    .locals 3

    .line 1
    invoke-super {p0}, Lco/nstant/in/cbor/model/Special;->hashCode()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-wide v1, p0, Lco/nstant/in/cbor/model/DoublePrecisionFloat;->value:D

    .line 6
    .line 7
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    xor-int/2addr p0, v0

    .line 16
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    iget-wide v0, p0, Lco/nstant/in/cbor/model/DoublePrecisionFloat;->value:D

    .line 2
    .line 3
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method
