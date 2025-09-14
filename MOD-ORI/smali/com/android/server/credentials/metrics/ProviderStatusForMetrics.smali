.class public final enum Lcom/android/server/credentials/metrics/ProviderStatusForMetrics;
.super Ljava/lang/Enum;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final synthetic $VALUES:[Lcom/android/server/credentials/metrics/ProviderStatusForMetrics;

.field public static final enum FINAL_FAILURE:Lcom/android/server/credentials/metrics/ProviderStatusForMetrics;

.field public static final enum FINAL_SUCCESS:Lcom/android/server/credentials/metrics/ProviderStatusForMetrics;

.field public static final enum QUERY_FAILURE:Lcom/android/server/credentials/metrics/ProviderStatusForMetrics;

.field public static final enum QUERY_SUCCESS:Lcom/android/server/credentials/metrics/ProviderStatusForMetrics;


# instance fields
.field private final mInnerMetricCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Lcom/android/server/credentials/metrics/ProviderStatusForMetrics;

    .line 2
    .line 3
    const-string v1, "UNKNOWN"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v2, v2, v1}, Lcom/android/server/credentials/metrics/ProviderStatusForMetrics;-><init>(IILjava/lang/String;)V

    .line 7
    .line 8
    .line 9
    new-instance v1, Lcom/android/server/credentials/metrics/ProviderStatusForMetrics;

    .line 10
    .line 11
    const-string v2, "FINAL_FAILURE"

    .line 12
    .line 13
    const/4 v3, 0x1

    .line 14
    const/4 v4, 0x4

    .line 15
    invoke-direct {v1, v3, v4, v2}, Lcom/android/server/credentials/metrics/ProviderStatusForMetrics;-><init>(IILjava/lang/String;)V

    .line 16
    .line 17
    .line 18
    sput-object v1, Lcom/android/server/credentials/metrics/ProviderStatusForMetrics;->FINAL_FAILURE:Lcom/android/server/credentials/metrics/ProviderStatusForMetrics;

    .line 19
    .line 20
    new-instance v2, Lcom/android/server/credentials/metrics/ProviderStatusForMetrics;

    .line 21
    .line 22
    const-string v5, "QUERY_FAILURE"

    .line 23
    .line 24
    const/4 v6, 0x2

    .line 25
    const/4 v7, 0x3

    .line 26
    invoke-direct {v2, v6, v7, v5}, Lcom/android/server/credentials/metrics/ProviderStatusForMetrics;-><init>(IILjava/lang/String;)V

    .line 27
    .line 28
    .line 29
    sput-object v2, Lcom/android/server/credentials/metrics/ProviderStatusForMetrics;->QUERY_FAILURE:Lcom/android/server/credentials/metrics/ProviderStatusForMetrics;

    .line 30
    .line 31
    new-instance v5, Lcom/android/server/credentials/metrics/ProviderStatusForMetrics;

    .line 32
    .line 33
    const-string v8, "FINAL_SUCCESS"

    .line 34
    .line 35
    invoke-direct {v5, v7, v6, v8}, Lcom/android/server/credentials/metrics/ProviderStatusForMetrics;-><init>(IILjava/lang/String;)V

    .line 36
    .line 37
    .line 38
    sput-object v5, Lcom/android/server/credentials/metrics/ProviderStatusForMetrics;->FINAL_SUCCESS:Lcom/android/server/credentials/metrics/ProviderStatusForMetrics;

    .line 39
    .line 40
    new-instance v6, Lcom/android/server/credentials/metrics/ProviderStatusForMetrics;

    .line 41
    .line 42
    const-string v7, "QUERY_SUCCESS"

    .line 43
    .line 44
    invoke-direct {v6, v4, v3, v7}, Lcom/android/server/credentials/metrics/ProviderStatusForMetrics;-><init>(IILjava/lang/String;)V

    .line 45
    .line 46
    .line 47
    sput-object v6, Lcom/android/server/credentials/metrics/ProviderStatusForMetrics;->QUERY_SUCCESS:Lcom/android/server/credentials/metrics/ProviderStatusForMetrics;

    .line 48
    .line 49
    filled-new-array {v0, v1, v2, v5, v6}, [Lcom/android/server/credentials/metrics/ProviderStatusForMetrics;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    sput-object v0, Lcom/android/server/credentials/metrics/ProviderStatusForMetrics;->$VALUES:[Lcom/android/server/credentials/metrics/ProviderStatusForMetrics;

    .line 54
    .line 55
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p3, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Lcom/android/server/credentials/metrics/ProviderStatusForMetrics;->mInnerMetricCode:I

    .line 5
    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/credentials/metrics/ProviderStatusForMetrics;
    .locals 1

    .line 1
    const-class v0, Lcom/android/server/credentials/metrics/ProviderStatusForMetrics;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/server/credentials/metrics/ProviderStatusForMetrics;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/android/server/credentials/metrics/ProviderStatusForMetrics;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/server/credentials/metrics/ProviderStatusForMetrics;->$VALUES:[Lcom/android/server/credentials/metrics/ProviderStatusForMetrics;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/android/server/credentials/metrics/ProviderStatusForMetrics;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/android/server/credentials/metrics/ProviderStatusForMetrics;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final getMetricCode()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/credentials/metrics/ProviderStatusForMetrics;->mInnerMetricCode:I

    .line 2
    .line 3
    return p0
.end method
