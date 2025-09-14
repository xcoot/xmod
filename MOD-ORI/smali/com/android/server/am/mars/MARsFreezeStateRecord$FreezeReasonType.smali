.class public final enum Lcom/android/server/am/mars/MARsFreezeStateRecord$FreezeReasonType;
.super Ljava/lang/Enum;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final synthetic $VALUES:[Lcom/android/server/am/mars/MARsFreezeStateRecord$FreezeReasonType;

.field public static final enum FREEZE_TOTAL:Lcom/android/server/am/mars/MARsFreezeStateRecord$FreezeReasonType;


# instance fields
.field private final freezeType:Ljava/lang/String;

.field private final typeNum:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 1
    new-instance v0, Lcom/android/server/am/mars/MARsFreezeStateRecord$FreezeReasonType;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 5
    .line 6
    .line 7
    move-result-object v2

    .line 8
    const-string v3, "Total"

    .line 9
    .line 10
    const-string v4, "FREEZE_TOTAL"

    .line 11
    .line 12
    invoke-direct {v0, v1, v2, v4, v3}, Lcom/android/server/am/mars/MARsFreezeStateRecord$FreezeReasonType;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    sput-object v0, Lcom/android/server/am/mars/MARsFreezeStateRecord$FreezeReasonType;->FREEZE_TOTAL:Lcom/android/server/am/mars/MARsFreezeStateRecord$FreezeReasonType;

    .line 16
    .line 17
    new-instance v1, Lcom/android/server/am/mars/MARsFreezeStateRecord$FreezeReasonType;

    .line 18
    .line 19
    const/4 v2, 0x1

    .line 20
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    const-string v4, "Bg"

    .line 25
    .line 26
    const-string v5, "FREEZE_REASON_LCDON"

    .line 27
    .line 28
    invoke-direct {v1, v2, v3, v5, v4}, Lcom/android/server/am/mars/MARsFreezeStateRecord$FreezeReasonType;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    new-instance v2, Lcom/android/server/am/mars/MARsFreezeStateRecord$FreezeReasonType;

    .line 32
    .line 33
    const/4 v3, 0x2

    .line 34
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    const-string v5, "LEV"

    .line 39
    .line 40
    const-string v6, "FREEZE_REASON_LCDOFF"

    .line 41
    .line 42
    invoke-direct {v2, v3, v4, v6, v5}, Lcom/android/server/am/mars/MARsFreezeStateRecord$FreezeReasonType;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    new-instance v3, Lcom/android/server/am/mars/MARsFreezeStateRecord$FreezeReasonType;

    .line 46
    .line 47
    const/4 v4, 0x3

    .line 48
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 49
    .line 50
    .line 51
    move-result-object v5

    .line 52
    const-string v6, "OLAF"

    .line 53
    .line 54
    const-string v7, "FREEZE_REASON_OLAF"

    .line 55
    .line 56
    invoke-direct {v3, v4, v5, v7, v6}, Lcom/android/server/am/mars/MARsFreezeStateRecord$FreezeReasonType;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    filled-new-array {v0, v1, v2, v3}, [Lcom/android/server/am/mars/MARsFreezeStateRecord$FreezeReasonType;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    sput-object v0, Lcom/android/server/am/mars/MARsFreezeStateRecord$FreezeReasonType;->$VALUES:[Lcom/android/server/am/mars/MARsFreezeStateRecord$FreezeReasonType;

    .line 64
    .line 65
    return-void
.end method

.method public constructor <init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p3, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    iput p1, p0, Lcom/android/server/am/mars/MARsFreezeStateRecord$FreezeReasonType;->typeNum:I

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/server/am/mars/MARsFreezeStateRecord$FreezeReasonType;->freezeType:Ljava/lang/String;

    .line 11
    .line 12
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/am/mars/MARsFreezeStateRecord$FreezeReasonType;
    .locals 1

    .line 1
    const-class v0, Lcom/android/server/am/mars/MARsFreezeStateRecord$FreezeReasonType;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/server/am/mars/MARsFreezeStateRecord$FreezeReasonType;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/android/server/am/mars/MARsFreezeStateRecord$FreezeReasonType;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/server/am/mars/MARsFreezeStateRecord$FreezeReasonType;->$VALUES:[Lcom/android/server/am/mars/MARsFreezeStateRecord$FreezeReasonType;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/android/server/am/mars/MARsFreezeStateRecord$FreezeReasonType;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/android/server/am/mars/MARsFreezeStateRecord$FreezeReasonType;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final getTypeNum()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/am/mars/MARsFreezeStateRecord$FreezeReasonType;->typeNum:I

    .line 2
    .line 3
    return p0
.end method
