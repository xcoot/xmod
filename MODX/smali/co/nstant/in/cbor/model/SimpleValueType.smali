.class public final enum Lco/nstant/in/cbor/model/SimpleValueType;
.super Ljava/lang/Enum;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final synthetic $VALUES:[Lco/nstant/in/cbor/model/SimpleValueType;

.field public static final enum FALSE:Lco/nstant/in/cbor/model/SimpleValueType;

.field public static final enum NULL:Lco/nstant/in/cbor/model/SimpleValueType;

.field public static final enum RESERVED:Lco/nstant/in/cbor/model/SimpleValueType;

.field public static final enum TRUE:Lco/nstant/in/cbor/model/SimpleValueType;

.field public static final enum UNALLOCATED:Lco/nstant/in/cbor/model/SimpleValueType;

.field public static final enum UNDEFINED:Lco/nstant/in/cbor/model/SimpleValueType;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Lco/nstant/in/cbor/model/SimpleValueType;

    .line 3
    const/16 v1, 0x14

    .line 5
    const-string v2, "FALSE"

    .line 7
    const/4 v3, 0x0

    .line 8
    invoke-direct {v0, v3, v1, v2}, Lco/nstant/in/cbor/model/SimpleValueType;-><init>(IILjava/lang/String;)V

    .line 11
    sput-object v0, Lco/nstant/in/cbor/model/SimpleValueType;->FALSE:Lco/nstant/in/cbor/model/SimpleValueType;

    .line 13
    new-instance v1, Lco/nstant/in/cbor/model/SimpleValueType;

    .line 15
    const/4 v2, 0x1

    .line 16
    const/16 v4, 0x15

    .line 18
    const-string v5, "TRUE"

    .line 20
    invoke-direct {v1, v2, v4, v5}, Lco/nstant/in/cbor/model/SimpleValueType;-><init>(IILjava/lang/String;)V

    .line 23
    sput-object v1, Lco/nstant/in/cbor/model/SimpleValueType;->TRUE:Lco/nstant/in/cbor/model/SimpleValueType;

    .line 25
    new-instance v2, Lco/nstant/in/cbor/model/SimpleValueType;

    .line 27
    const/4 v4, 0x2

    .line 28
    const/16 v5, 0x16

    .line 30
    const-string v6, "NULL"

    .line 32
    invoke-direct {v2, v4, v5, v6}, Lco/nstant/in/cbor/model/SimpleValueType;-><init>(IILjava/lang/String;)V

    .line 35
    sput-object v2, Lco/nstant/in/cbor/model/SimpleValueType;->NULL:Lco/nstant/in/cbor/model/SimpleValueType;

    .line 37
    new-instance v4, Lco/nstant/in/cbor/model/SimpleValueType;

    .line 39
    const/4 v5, 0x3

    .line 40
    const/16 v6, 0x17

    .line 42
    const-string v7, "UNDEFINED"

    .line 44
    invoke-direct {v4, v5, v6, v7}, Lco/nstant/in/cbor/model/SimpleValueType;-><init>(IILjava/lang/String;)V

    .line 47
    sput-object v4, Lco/nstant/in/cbor/model/SimpleValueType;->UNDEFINED:Lco/nstant/in/cbor/model/SimpleValueType;

    .line 49
    new-instance v5, Lco/nstant/in/cbor/model/SimpleValueType;

    .line 51
    const-string v6, "RESERVED"

    .line 53
    const/4 v7, 0x4

    .line 54
    invoke-direct {v5, v7, v3, v6}, Lco/nstant/in/cbor/model/SimpleValueType;-><init>(IILjava/lang/String;)V

    .line 57
    sput-object v5, Lco/nstant/in/cbor/model/SimpleValueType;->RESERVED:Lco/nstant/in/cbor/model/SimpleValueType;

    .line 59
    new-instance v6, Lco/nstant/in/cbor/model/SimpleValueType;

    .line 61
    const-string v7, "UNALLOCATED"

    .line 63
    const/4 v8, 0x5

    .line 64
    invoke-direct {v6, v8, v3, v7}, Lco/nstant/in/cbor/model/SimpleValueType;-><init>(IILjava/lang/String;)V

    .line 67
    sput-object v6, Lco/nstant/in/cbor/model/SimpleValueType;->UNALLOCATED:Lco/nstant/in/cbor/model/SimpleValueType;

    .line 69
    move-object v3, v4

    .line 70
    move-object v4, v5

    .line 71
    move-object v5, v6

    .line 72
    filled-new-array/range {v0 .. v5}, [Lco/nstant/in/cbor/model/SimpleValueType;

    .line 75
    move-result-object v0

    .line 76
    sput-object v0, Lco/nstant/in/cbor/model/SimpleValueType;->$VALUES:[Lco/nstant/in/cbor/model/SimpleValueType;

    .line 78
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p3, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 4
    iput p2, p0, Lco/nstant/in/cbor/model/SimpleValueType;->value:I

    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lco/nstant/in/cbor/model/SimpleValueType;
    .locals 1

    .line 1
    const-class v0, Lco/nstant/in/cbor/model/SimpleValueType;

    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lco/nstant/in/cbor/model/SimpleValueType;

    .line 9
    return-object p0
.end method

.method public static values()[Lco/nstant/in/cbor/model/SimpleValueType;
    .locals 1

    .line 1
    sget-object v0, Lco/nstant/in/cbor/model/SimpleValueType;->$VALUES:[Lco/nstant/in/cbor/model/SimpleValueType;

    .line 3
    invoke-virtual {v0}, [Lco/nstant/in/cbor/model/SimpleValueType;->clone()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lco/nstant/in/cbor/model/SimpleValueType;

    .line 9
    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 0

    .line 1
    iget p0, p0, Lco/nstant/in/cbor/model/SimpleValueType;->value:I

    .line 3
    return p0
.end method
