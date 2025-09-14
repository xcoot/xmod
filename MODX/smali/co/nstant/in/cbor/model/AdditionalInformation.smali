.class public final enum Lco/nstant/in/cbor/model/AdditionalInformation;
.super Ljava/lang/Enum;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final synthetic $VALUES:[Lco/nstant/in/cbor/model/AdditionalInformation;

.field public static final enum DIRECT:Lco/nstant/in/cbor/model/AdditionalInformation;

.field public static final enum EIGHT_BYTES:Lco/nstant/in/cbor/model/AdditionalInformation;

.field public static final enum FOUR_BYTES:Lco/nstant/in/cbor/model/AdditionalInformation;

.field public static final enum INDEFINITE:Lco/nstant/in/cbor/model/AdditionalInformation;

.field public static final enum ONE_BYTE:Lco/nstant/in/cbor/model/AdditionalInformation;

.field public static final enum RESERVED:Lco/nstant/in/cbor/model/AdditionalInformation;

.field public static final enum TWO_BYTES:Lco/nstant/in/cbor/model/AdditionalInformation;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 1
    new-instance v0, Lco/nstant/in/cbor/model/AdditionalInformation;

    .line 3
    const-string v1, "DIRECT"

    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v2, v2, v1}, Lco/nstant/in/cbor/model/AdditionalInformation;-><init>(IILjava/lang/String;)V

    .line 9
    sput-object v0, Lco/nstant/in/cbor/model/AdditionalInformation;->DIRECT:Lco/nstant/in/cbor/model/AdditionalInformation;

    .line 11
    new-instance v1, Lco/nstant/in/cbor/model/AdditionalInformation;

    .line 13
    const/4 v2, 0x1

    .line 14
    const/16 v3, 0x18

    .line 16
    const-string v4, "ONE_BYTE"

    .line 18
    invoke-direct {v1, v2, v3, v4}, Lco/nstant/in/cbor/model/AdditionalInformation;-><init>(IILjava/lang/String;)V

    .line 21
    sput-object v1, Lco/nstant/in/cbor/model/AdditionalInformation;->ONE_BYTE:Lco/nstant/in/cbor/model/AdditionalInformation;

    .line 23
    new-instance v2, Lco/nstant/in/cbor/model/AdditionalInformation;

    .line 25
    const/4 v3, 0x2

    .line 26
    const/16 v4, 0x19

    .line 28
    const-string v5, "TWO_BYTES"

    .line 30
    invoke-direct {v2, v3, v4, v5}, Lco/nstant/in/cbor/model/AdditionalInformation;-><init>(IILjava/lang/String;)V

    .line 33
    sput-object v2, Lco/nstant/in/cbor/model/AdditionalInformation;->TWO_BYTES:Lco/nstant/in/cbor/model/AdditionalInformation;

    .line 35
    new-instance v3, Lco/nstant/in/cbor/model/AdditionalInformation;

    .line 37
    const/4 v4, 0x3

    .line 38
    const/16 v5, 0x1a

    .line 40
    const-string v6, "FOUR_BYTES"

    .line 42
    invoke-direct {v3, v4, v5, v6}, Lco/nstant/in/cbor/model/AdditionalInformation;-><init>(IILjava/lang/String;)V

    .line 45
    sput-object v3, Lco/nstant/in/cbor/model/AdditionalInformation;->FOUR_BYTES:Lco/nstant/in/cbor/model/AdditionalInformation;

    .line 47
    new-instance v4, Lco/nstant/in/cbor/model/AdditionalInformation;

    .line 49
    const/4 v5, 0x4

    .line 50
    const/16 v6, 0x1b

    .line 52
    const-string v7, "EIGHT_BYTES"

    .line 54
    invoke-direct {v4, v5, v6, v7}, Lco/nstant/in/cbor/model/AdditionalInformation;-><init>(IILjava/lang/String;)V

    .line 57
    sput-object v4, Lco/nstant/in/cbor/model/AdditionalInformation;->EIGHT_BYTES:Lco/nstant/in/cbor/model/AdditionalInformation;

    .line 59
    new-instance v5, Lco/nstant/in/cbor/model/AdditionalInformation;

    .line 61
    const/4 v6, 0x5

    .line 62
    const/16 v7, 0x1c

    .line 64
    const-string v8, "RESERVED"

    .line 66
    invoke-direct {v5, v6, v7, v8}, Lco/nstant/in/cbor/model/AdditionalInformation;-><init>(IILjava/lang/String;)V

    .line 69
    sput-object v5, Lco/nstant/in/cbor/model/AdditionalInformation;->RESERVED:Lco/nstant/in/cbor/model/AdditionalInformation;

    .line 71
    new-instance v6, Lco/nstant/in/cbor/model/AdditionalInformation;

    .line 73
    const/4 v7, 0x6

    .line 74
    const/16 v8, 0x1f

    .line 76
    const-string v9, "INDEFINITE"

    .line 78
    invoke-direct {v6, v7, v8, v9}, Lco/nstant/in/cbor/model/AdditionalInformation;-><init>(IILjava/lang/String;)V

    .line 81
    sput-object v6, Lco/nstant/in/cbor/model/AdditionalInformation;->INDEFINITE:Lco/nstant/in/cbor/model/AdditionalInformation;

    .line 83
    filled-new-array/range {v0 .. v6}, [Lco/nstant/in/cbor/model/AdditionalInformation;

    .line 86
    move-result-object v0

    .line 87
    sput-object v0, Lco/nstant/in/cbor/model/AdditionalInformation;->$VALUES:[Lco/nstant/in/cbor/model/AdditionalInformation;

    .line 89
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p3, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 4
    iput p2, p0, Lco/nstant/in/cbor/model/AdditionalInformation;->value:I

    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lco/nstant/in/cbor/model/AdditionalInformation;
    .locals 1

    .line 1
    const-class v0, Lco/nstant/in/cbor/model/AdditionalInformation;

    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lco/nstant/in/cbor/model/AdditionalInformation;

    .line 9
    return-object p0
.end method

.method public static values()[Lco/nstant/in/cbor/model/AdditionalInformation;
    .locals 1

    .line 1
    sget-object v0, Lco/nstant/in/cbor/model/AdditionalInformation;->$VALUES:[Lco/nstant/in/cbor/model/AdditionalInformation;

    .line 3
    invoke-virtual {v0}, [Lco/nstant/in/cbor/model/AdditionalInformation;->clone()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lco/nstant/in/cbor/model/AdditionalInformation;

    .line 9
    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 0

    .line 1
    iget p0, p0, Lco/nstant/in/cbor/model/AdditionalInformation;->value:I

    .line 3
    return p0
.end method
