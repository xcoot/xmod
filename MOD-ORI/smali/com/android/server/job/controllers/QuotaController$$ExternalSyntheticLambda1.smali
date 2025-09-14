.class public final synthetic Lcom/android/server/job/controllers/QuotaController$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:J


# direct methods
.method public synthetic constructor <init>(J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-wide p1, p0, Lcom/android/server/job/controllers/QuotaController$$ExternalSyntheticLambda1;->f$0:J

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$$ExternalSyntheticLambda1;->f$0:J

    .line 2
    .line 3
    check-cast p1, [Lcom/android/server/job/controllers/QuotaController$ExecutionStats;

    .line 4
    .line 5
    if-eqz p1, :cond_1

    .line 6
    .line 7
    const/4 p0, 0x0

    .line 8
    :goto_0
    array-length v2, p1

    .line 9
    if-ge p0, v2, :cond_1

    .line 10
    .line 11
    aget-object v2, p1, p0

    .line 12
    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    iput-wide v0, v2, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->expirationTimeElapsed:J

    .line 16
    .line 17
    :cond_0
    add-int/lit8 p0, p0, 0x1

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_1
    return-void
.end method
