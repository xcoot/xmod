.class public Lco/nstant/in/cbor/model/Special;
.super Lco/nstant/in/cbor/model/DataItem;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final BREAK:Lco/nstant/in/cbor/model/Special;


# instance fields
.field public final specialType:Lco/nstant/in/cbor/model/SpecialType;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lco/nstant/in/cbor/model/Special;

    .line 2
    .line 3
    sget-object v1, Lco/nstant/in/cbor/model/SpecialType;->BREAK:Lco/nstant/in/cbor/model/SpecialType;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lco/nstant/in/cbor/model/Special;-><init>(Lco/nstant/in/cbor/model/SpecialType;)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lco/nstant/in/cbor/model/Special;->BREAK:Lco/nstant/in/cbor/model/Special;

    .line 9
    .line 10
    return-void
.end method

.method public constructor <init>(Lco/nstant/in/cbor/model/SpecialType;)V
    .locals 1

    .line 1
    sget-object v0, Lco/nstant/in/cbor/model/MajorType;->SPECIAL:Lco/nstant/in/cbor/model/MajorType;

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lco/nstant/in/cbor/model/DataItem;-><init>(Lco/nstant/in/cbor/model/MajorType;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lco/nstant/in/cbor/model/Special;->specialType:Lco/nstant/in/cbor/model/SpecialType;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    instance-of v0, p1, Lco/nstant/in/cbor/model/Special;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    move-object v0, p1

    .line 7
    check-cast v0, Lco/nstant/in/cbor/model/Special;

    .line 8
    .line 9
    invoke-super {p0, p1}, Lco/nstant/in/cbor/model/DataItem;->equals(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    iget-object p0, p0, Lco/nstant/in/cbor/model/Special;->specialType:Lco/nstant/in/cbor/model/SpecialType;

    .line 16
    .line 17
    iget-object p1, v0, Lco/nstant/in/cbor/model/Special;->specialType:Lco/nstant/in/cbor/model/SpecialType;

    .line 18
    .line 19
    if-ne p0, p1, :cond_0

    .line 20
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

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object p0, p0, Lco/nstant/in/cbor/model/Special;->specialType:Lco/nstant/in/cbor/model/SpecialType;

    .line 6
    .line 7
    invoke-static {p0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    xor-int/2addr p0, v0

    .line 12
    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lco/nstant/in/cbor/model/Special;->specialType:Lco/nstant/in/cbor/model/SpecialType;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method
