.class public final synthetic Lcom/android/server/utils/quota/CountQuotaTracker$$ExternalSyntheticLambda3;
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
    iput-wide p1, p0, Lcom/android/server/utils/quota/CountQuotaTracker$$ExternalSyntheticLambda3;->f$0:J

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/android/server/utils/quota/CountQuotaTracker$$ExternalSyntheticLambda3;->f$0:J

    .line 2
    .line 3
    check-cast p1, Lcom/android/server/utils/quota/CountQuotaTracker$ExecutionStats;

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    iput-wide v0, p1, Lcom/android/server/utils/quota/CountQuotaTracker$ExecutionStats;->expirationTimeElapsed:J

    .line 8
    .line 9
    :cond_0
    return-void
.end method
