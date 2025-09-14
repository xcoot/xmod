.class public final enum Lcom/android/server/credentials/metrics/ApiStatus;
.super Ljava/lang/Enum;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final synthetic $VALUES:[Lcom/android/server/credentials/metrics/ApiStatus;

.field public static final enum CLIENT_CANCELED:Lcom/android/server/credentials/metrics/ApiStatus;

.field public static final enum FAILURE:Lcom/android/server/credentials/metrics/ApiStatus;

.field public static final enum SUCCESS:Lcom/android/server/credentials/metrics/ApiStatus;

.field public static final enum USER_CANCELED:Lcom/android/server/credentials/metrics/ApiStatus;


# instance fields
.field private final mInnerMetricCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lcom/android/server/credentials/metrics/ApiStatus;

    .line 3
    const-string v1, "SUCCESS"

    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x1

    .line 7
    invoke-direct {v0, v2, v3, v1}, Lcom/android/server/credentials/metrics/ApiStatus;-><init>(IILjava/lang/String;)V

    .line 10
    sput-object v0, Lcom/android/server/credentials/metrics/ApiStatus;->SUCCESS:Lcom/android/server/credentials/metrics/ApiStatus;

    .line 12
    new-instance v1, Lcom/android/server/credentials/metrics/ApiStatus;

    .line 14
    const-string v2, "FAILURE"

    .line 16
    const/4 v4, 0x2

    .line 17
    invoke-direct {v1, v3, v4, v2}, Lcom/android/server/credentials/metrics/ApiStatus;-><init>(IILjava/lang/String;)V

    .line 20
    sput-object v1, Lcom/android/server/credentials/metrics/ApiStatus;->FAILURE:Lcom/android/server/credentials/metrics/ApiStatus;

    .line 22
    new-instance v2, Lcom/android/server/credentials/metrics/ApiStatus;

    .line 24
    const-string v3, "CLIENT_CANCELED"

    .line 26
    const/4 v5, 0x4

    .line 27
    invoke-direct {v2, v4, v5, v3}, Lcom/android/server/credentials/metrics/ApiStatus;-><init>(IILjava/lang/String;)V

    .line 30
    sput-object v2, Lcom/android/server/credentials/metrics/ApiStatus;->CLIENT_CANCELED:Lcom/android/server/credentials/metrics/ApiStatus;

    .line 32
    new-instance v3, Lcom/android/server/credentials/metrics/ApiStatus;

    .line 34
    const-string v4, "USER_CANCELED"

    .line 36
    const/4 v5, 0x3

    .line 37
    invoke-direct {v3, v5, v5, v4}, Lcom/android/server/credentials/metrics/ApiStatus;-><init>(IILjava/lang/String;)V

    .line 40
    sput-object v3, Lcom/android/server/credentials/metrics/ApiStatus;->USER_CANCELED:Lcom/android/server/credentials/metrics/ApiStatus;

    .line 42
    filled-new-array {v0, v1, v2, v3}, [Lcom/android/server/credentials/metrics/ApiStatus;

    .line 45
    move-result-object v0

    .line 46
    sput-object v0, Lcom/android/server/credentials/metrics/ApiStatus;->$VALUES:[Lcom/android/server/credentials/metrics/ApiStatus;

    .line 48
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p3, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 4
    iput p2, p0, Lcom/android/server/credentials/metrics/ApiStatus;->mInnerMetricCode:I

    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/credentials/metrics/ApiStatus;
    .locals 1

    .line 1
    const-class v0, Lcom/android/server/credentials/metrics/ApiStatus;

    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/server/credentials/metrics/ApiStatus;

    .line 9
    return-object p0
.end method

.method public static values()[Lcom/android/server/credentials/metrics/ApiStatus;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/server/credentials/metrics/ApiStatus;->$VALUES:[Lcom/android/server/credentials/metrics/ApiStatus;

    .line 3
    invoke-virtual {v0}, [Lcom/android/server/credentials/metrics/ApiStatus;->clone()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/android/server/credentials/metrics/ApiStatus;

    .line 9
    return-object v0
.end method


# virtual methods
.method public final getMetricCode()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/credentials/metrics/ApiStatus;->mInnerMetricCode:I

    .line 3
    return p0
.end method
