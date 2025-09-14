.class public final enum Lco/nstant/in/cbor/model/SpecialType;
.super Ljava/lang/Enum;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final synthetic $VALUES:[Lco/nstant/in/cbor/model/SpecialType;

.field public static final enum BREAK:Lco/nstant/in/cbor/model/SpecialType;

.field public static final enum IEEE_754_DOUBLE_PRECISION_FLOAT:Lco/nstant/in/cbor/model/SpecialType;

.field public static final enum IEEE_754_HALF_PRECISION_FLOAT:Lco/nstant/in/cbor/model/SpecialType;

.field public static final enum IEEE_754_SINGLE_PRECISION_FLOAT:Lco/nstant/in/cbor/model/SpecialType;

.field public static final enum SIMPLE_VALUE:Lco/nstant/in/cbor/model/SpecialType;

.field public static final enum SIMPLE_VALUE_NEXT_BYTE:Lco/nstant/in/cbor/model/SpecialType;

.field public static final enum UNALLOCATED:Lco/nstant/in/cbor/model/SpecialType;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Lco/nstant/in/cbor/model/SpecialType;

    .line 2
    .line 3
    const-string v1, "SIMPLE_VALUE"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lco/nstant/in/cbor/model/SpecialType;->SIMPLE_VALUE:Lco/nstant/in/cbor/model/SpecialType;

    .line 10
    .line 11
    new-instance v1, Lco/nstant/in/cbor/model/SpecialType;

    .line 12
    .line 13
    const-string v2, "SIMPLE_VALUE_NEXT_BYTE"

    .line 14
    .line 15
    const/4 v3, 0x1

    .line 16
    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    sput-object v1, Lco/nstant/in/cbor/model/SpecialType;->SIMPLE_VALUE_NEXT_BYTE:Lco/nstant/in/cbor/model/SpecialType;

    .line 20
    .line 21
    new-instance v2, Lco/nstant/in/cbor/model/SpecialType;

    .line 22
    .line 23
    const-string v3, "IEEE_754_HALF_PRECISION_FLOAT"

    .line 24
    .line 25
    const/4 v4, 0x2

    .line 26
    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 27
    .line 28
    .line 29
    sput-object v2, Lco/nstant/in/cbor/model/SpecialType;->IEEE_754_HALF_PRECISION_FLOAT:Lco/nstant/in/cbor/model/SpecialType;

    .line 30
    .line 31
    new-instance v3, Lco/nstant/in/cbor/model/SpecialType;

    .line 32
    .line 33
    const-string v4, "IEEE_754_SINGLE_PRECISION_FLOAT"

    .line 34
    .line 35
    const/4 v5, 0x3

    .line 36
    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 37
    .line 38
    .line 39
    sput-object v3, Lco/nstant/in/cbor/model/SpecialType;->IEEE_754_SINGLE_PRECISION_FLOAT:Lco/nstant/in/cbor/model/SpecialType;

    .line 40
    .line 41
    new-instance v4, Lco/nstant/in/cbor/model/SpecialType;

    .line 42
    .line 43
    const-string v5, "IEEE_754_DOUBLE_PRECISION_FLOAT"

    .line 44
    .line 45
    const/4 v6, 0x4

    .line 46
    invoke-direct {v4, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 47
    .line 48
    .line 49
    sput-object v4, Lco/nstant/in/cbor/model/SpecialType;->IEEE_754_DOUBLE_PRECISION_FLOAT:Lco/nstant/in/cbor/model/SpecialType;

    .line 50
    .line 51
    new-instance v5, Lco/nstant/in/cbor/model/SpecialType;

    .line 52
    .line 53
    const-string v6, "UNALLOCATED"

    .line 54
    .line 55
    const/4 v7, 0x5

    .line 56
    invoke-direct {v5, v6, v7}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 57
    .line 58
    .line 59
    sput-object v5, Lco/nstant/in/cbor/model/SpecialType;->UNALLOCATED:Lco/nstant/in/cbor/model/SpecialType;

    .line 60
    .line 61
    new-instance v6, Lco/nstant/in/cbor/model/SpecialType;

    .line 62
    .line 63
    const-string v7, "BREAK"

    .line 64
    .line 65
    const/4 v8, 0x6

    .line 66
    invoke-direct {v6, v7, v8}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 67
    .line 68
    .line 69
    sput-object v6, Lco/nstant/in/cbor/model/SpecialType;->BREAK:Lco/nstant/in/cbor/model/SpecialType;

    .line 70
    .line 71
    filled-new-array/range {v0 .. v6}, [Lco/nstant/in/cbor/model/SpecialType;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    sput-object v0, Lco/nstant/in/cbor/model/SpecialType;->$VALUES:[Lco/nstant/in/cbor/model/SpecialType;

    .line 76
    .line 77
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lco/nstant/in/cbor/model/SpecialType;
    .locals 1

    .line 1
    const-class v0, Lco/nstant/in/cbor/model/SpecialType;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lco/nstant/in/cbor/model/SpecialType;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lco/nstant/in/cbor/model/SpecialType;
    .locals 1

    .line 1
    sget-object v0, Lco/nstant/in/cbor/model/SpecialType;->$VALUES:[Lco/nstant/in/cbor/model/SpecialType;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lco/nstant/in/cbor/model/SpecialType;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lco/nstant/in/cbor/model/SpecialType;

    .line 8
    .line 9
    return-object v0
.end method
