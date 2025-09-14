.class public final enum Lcom/android/server/credentials/metrics/OemUiUsageStatus;
.super Ljava/lang/Enum;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final synthetic $VALUES:[Lcom/android/server/credentials/metrics/OemUiUsageStatus;

.field public static final enum FAILURE_NOT_SPECIFIED:Lcom/android/server/credentials/metrics/OemUiUsageStatus;

.field public static final enum FAILURE_SPECIFIED_BUT_NOT_ENABLED:Lcom/android/server/credentials/metrics/OemUiUsageStatus;

.field public static final enum FAILURE_SPECIFIED_BUT_NOT_FOUND:Lcom/android/server/credentials/metrics/OemUiUsageStatus;

.field public static final enum SUCCESS:Lcom/android/server/credentials/metrics/OemUiUsageStatus;

.field public static final enum UNKNOWN:Lcom/android/server/credentials/metrics/OemUiUsageStatus;


# instance fields
.field private final mLoggingInt:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lcom/android/server/credentials/metrics/OemUiUsageStatus;

    .line 3
    const-string v1, "UNKNOWN"

    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v2, v2, v1}, Lcom/android/server/credentials/metrics/OemUiUsageStatus;-><init>(IILjava/lang/String;)V

    .line 9
    sput-object v0, Lcom/android/server/credentials/metrics/OemUiUsageStatus;->UNKNOWN:Lcom/android/server/credentials/metrics/OemUiUsageStatus;

    .line 11
    new-instance v1, Lcom/android/server/credentials/metrics/OemUiUsageStatus;

    .line 13
    const-string v2, "SUCCESS"

    .line 15
    const/4 v3, 0x1

    .line 16
    invoke-direct {v1, v3, v3, v2}, Lcom/android/server/credentials/metrics/OemUiUsageStatus;-><init>(IILjava/lang/String;)V

    .line 19
    sput-object v1, Lcom/android/server/credentials/metrics/OemUiUsageStatus;->SUCCESS:Lcom/android/server/credentials/metrics/OemUiUsageStatus;

    .line 21
    new-instance v2, Lcom/android/server/credentials/metrics/OemUiUsageStatus;

    .line 23
    const-string v3, "FAILURE_NOT_SPECIFIED"

    .line 25
    const/4 v4, 0x2

    .line 26
    invoke-direct {v2, v4, v4, v3}, Lcom/android/server/credentials/metrics/OemUiUsageStatus;-><init>(IILjava/lang/String;)V

    .line 29
    sput-object v2, Lcom/android/server/credentials/metrics/OemUiUsageStatus;->FAILURE_NOT_SPECIFIED:Lcom/android/server/credentials/metrics/OemUiUsageStatus;

    .line 31
    new-instance v3, Lcom/android/server/credentials/metrics/OemUiUsageStatus;

    .line 33
    const-string v4, "FAILURE_SPECIFIED_BUT_NOT_FOUND"

    .line 35
    const/4 v5, 0x3

    .line 36
    invoke-direct {v3, v5, v5, v4}, Lcom/android/server/credentials/metrics/OemUiUsageStatus;-><init>(IILjava/lang/String;)V

    .line 39
    sput-object v3, Lcom/android/server/credentials/metrics/OemUiUsageStatus;->FAILURE_SPECIFIED_BUT_NOT_FOUND:Lcom/android/server/credentials/metrics/OemUiUsageStatus;

    .line 41
    new-instance v4, Lcom/android/server/credentials/metrics/OemUiUsageStatus;

    .line 43
    const-string v5, "FAILURE_SPECIFIED_BUT_NOT_ENABLED"

    .line 45
    const/4 v6, 0x4

    .line 46
    invoke-direct {v4, v6, v6, v5}, Lcom/android/server/credentials/metrics/OemUiUsageStatus;-><init>(IILjava/lang/String;)V

    .line 49
    sput-object v4, Lcom/android/server/credentials/metrics/OemUiUsageStatus;->FAILURE_SPECIFIED_BUT_NOT_ENABLED:Lcom/android/server/credentials/metrics/OemUiUsageStatus;

    .line 51
    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/android/server/credentials/metrics/OemUiUsageStatus;

    .line 54
    move-result-object v0

    .line 55
    sput-object v0, Lcom/android/server/credentials/metrics/OemUiUsageStatus;->$VALUES:[Lcom/android/server/credentials/metrics/OemUiUsageStatus;

    .line 57
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p3, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 4
    iput p2, p0, Lcom/android/server/credentials/metrics/OemUiUsageStatus;->mLoggingInt:I

    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/credentials/metrics/OemUiUsageStatus;
    .locals 1

    .line 1
    const-class v0, Lcom/android/server/credentials/metrics/OemUiUsageStatus;

    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/server/credentials/metrics/OemUiUsageStatus;

    .line 9
    return-object p0
.end method

.method public static values()[Lcom/android/server/credentials/metrics/OemUiUsageStatus;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/server/credentials/metrics/OemUiUsageStatus;->$VALUES:[Lcom/android/server/credentials/metrics/OemUiUsageStatus;

    .line 3
    invoke-virtual {v0}, [Lcom/android/server/credentials/metrics/OemUiUsageStatus;->clone()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/android/server/credentials/metrics/OemUiUsageStatus;

    .line 9
    return-object v0
.end method


# virtual methods
.method public final getLoggingInt()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/credentials/metrics/OemUiUsageStatus;->mLoggingInt:I

    .line 3
    return p0
.end method
