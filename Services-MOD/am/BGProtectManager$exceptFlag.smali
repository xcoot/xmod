.class final enum Lcom/android/server/am/BGProtectManager$exceptFlag;
.super Ljava/lang/Enum;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final synthetic $VALUES:[Lcom/android/server/am/BGProtectManager$exceptFlag;

.field public static final enum BROWSERMAIN:Lcom/android/server/am/BGProtectManager$exceptFlag;

.field public static final enum CAMERAGUARD:Lcom/android/server/am/BGProtectManager$exceptFlag;

.field public static final enum CAMERAMEDIA:Lcom/android/server/am/BGProtectManager$exceptFlag;

.field public static final enum HOMEHUB:Lcom/android/server/am/BGProtectManager$exceptFlag;

.field public static final enum KNOXONLY:Lcom/android/server/am/BGProtectManager$exceptFlag;

.field public static final enum NORMALANDKNOX:Lcom/android/server/am/BGProtectManager$exceptFlag;

.field public static final enum NORMALANDKNOXPWHL:Lcom/android/server/am/BGProtectManager$exceptFlag;

.field public static final enum NORMALONLY:Lcom/android/server/am/BGProtectManager$exceptFlag;

.field public static final enum SANDBOX:Lcom/android/server/am/BGProtectManager$exceptFlag;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 1
    new-instance v0, Lcom/android/server/am/BGProtectManager$exceptFlag;

    .line 3
    const-string v1, "NORMALANDKNOXPWHL"

    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v2, v2, v1}, Lcom/android/server/am/BGProtectManager$exceptFlag;-><init>(IILjava/lang/String;)V

    .line 9
    sput-object v0, Lcom/android/server/am/BGProtectManager$exceptFlag;->NORMALANDKNOXPWHL:Lcom/android/server/am/BGProtectManager$exceptFlag;

    .line 11
    new-instance v1, Lcom/android/server/am/BGProtectManager$exceptFlag;

    .line 13
    const-string v2, "NORMALONLY"

    .line 15
    const/4 v3, 0x1

    .line 16
    invoke-direct {v1, v3, v3, v2}, Lcom/android/server/am/BGProtectManager$exceptFlag;-><init>(IILjava/lang/String;)V

    .line 19
    sput-object v1, Lcom/android/server/am/BGProtectManager$exceptFlag;->NORMALONLY:Lcom/android/server/am/BGProtectManager$exceptFlag;

    .line 21
    new-instance v2, Lcom/android/server/am/BGProtectManager$exceptFlag;

    .line 23
    const-string v3, "NORMALANDKNOX"

    .line 25
    const/4 v4, 0x2

    .line 26
    invoke-direct {v2, v4, v4, v3}, Lcom/android/server/am/BGProtectManager$exceptFlag;-><init>(IILjava/lang/String;)V

    .line 29
    sput-object v2, Lcom/android/server/am/BGProtectManager$exceptFlag;->NORMALANDKNOX:Lcom/android/server/am/BGProtectManager$exceptFlag;

    .line 31
    new-instance v3, Lcom/android/server/am/BGProtectManager$exceptFlag;

    .line 33
    const-string v4, "KNOXONLY"

    .line 35
    const/4 v5, 0x3

    .line 36
    invoke-direct {v3, v5, v5, v4}, Lcom/android/server/am/BGProtectManager$exceptFlag;-><init>(IILjava/lang/String;)V

    .line 39
    sput-object v3, Lcom/android/server/am/BGProtectManager$exceptFlag;->KNOXONLY:Lcom/android/server/am/BGProtectManager$exceptFlag;

    .line 41
    new-instance v4, Lcom/android/server/am/BGProtectManager$exceptFlag;

    .line 43
    const-string v5, "SANDBOX"

    .line 45
    const/4 v6, 0x4

    .line 46
    invoke-direct {v4, v6, v6, v5}, Lcom/android/server/am/BGProtectManager$exceptFlag;-><init>(IILjava/lang/String;)V

    .line 49
    sput-object v4, Lcom/android/server/am/BGProtectManager$exceptFlag;->SANDBOX:Lcom/android/server/am/BGProtectManager$exceptFlag;

    .line 51
    new-instance v5, Lcom/android/server/am/BGProtectManager$exceptFlag;

    .line 53
    const-string v6, "CAMERAGUARD"

    .line 55
    const/4 v7, 0x5

    .line 56
    invoke-direct {v5, v7, v7, v6}, Lcom/android/server/am/BGProtectManager$exceptFlag;-><init>(IILjava/lang/String;)V

    .line 59
    sput-object v5, Lcom/android/server/am/BGProtectManager$exceptFlag;->CAMERAGUARD:Lcom/android/server/am/BGProtectManager$exceptFlag;

    .line 61
    new-instance v6, Lcom/android/server/am/BGProtectManager$exceptFlag;

    .line 63
    const-string v7, "BROWSERMAIN"

    .line 65
    const/4 v8, 0x6

    .line 66
    invoke-direct {v6, v8, v8, v7}, Lcom/android/server/am/BGProtectManager$exceptFlag;-><init>(IILjava/lang/String;)V

    .line 69
    sput-object v6, Lcom/android/server/am/BGProtectManager$exceptFlag;->BROWSERMAIN:Lcom/android/server/am/BGProtectManager$exceptFlag;

    .line 71
    new-instance v7, Lcom/android/server/am/BGProtectManager$exceptFlag;

    .line 73
    const-string v8, "HOMEHUB"

    .line 75
    const/4 v9, 0x7

    .line 76
    invoke-direct {v7, v9, v9, v8}, Lcom/android/server/am/BGProtectManager$exceptFlag;-><init>(IILjava/lang/String;)V

    .line 79
    sput-object v7, Lcom/android/server/am/BGProtectManager$exceptFlag;->HOMEHUB:Lcom/android/server/am/BGProtectManager$exceptFlag;

    .line 81
    new-instance v8, Lcom/android/server/am/BGProtectManager$exceptFlag;

    .line 83
    const-string v9, "CAMERAMEDIA"

    .line 85
    const/16 v10, 0x8

    .line 87
    invoke-direct {v8, v10, v10, v9}, Lcom/android/server/am/BGProtectManager$exceptFlag;-><init>(IILjava/lang/String;)V

    .line 90
    sput-object v8, Lcom/android/server/am/BGProtectManager$exceptFlag;->CAMERAMEDIA:Lcom/android/server/am/BGProtectManager$exceptFlag;

    .line 92
    filled-new-array/range {v0 .. v8}, [Lcom/android/server/am/BGProtectManager$exceptFlag;

    .line 95
    move-result-object v0

    .line 96
    sput-object v0, Lcom/android/server/am/BGProtectManager$exceptFlag;->$VALUES:[Lcom/android/server/am/BGProtectManager$exceptFlag;

    .line 98
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p3, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 4
    iput p2, p0, Lcom/android/server/am/BGProtectManager$exceptFlag;->value:I

    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/am/BGProtectManager$exceptFlag;
    .locals 1

    .line 1
    const-class v0, Lcom/android/server/am/BGProtectManager$exceptFlag;

    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/server/am/BGProtectManager$exceptFlag;

    .line 9
    return-object p0
.end method

.method public static values()[Lcom/android/server/am/BGProtectManager$exceptFlag;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/server/am/BGProtectManager$exceptFlag;->$VALUES:[Lcom/android/server/am/BGProtectManager$exceptFlag;

    .line 3
    invoke-virtual {v0}, [Lcom/android/server/am/BGProtectManager$exceptFlag;->clone()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/android/server/am/BGProtectManager$exceptFlag;

    .line 9
    return-object v0
.end method


# virtual methods
.method public final getString()Ljava/lang/String;
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/am/BGProtectManager$exceptFlag;->value:I

    .line 3
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final getValue()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/am/BGProtectManager$exceptFlag;->value:I

    .line 3
    return p0
.end method
