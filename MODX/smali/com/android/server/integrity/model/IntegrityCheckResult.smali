.class public final Lcom/android/server/integrity/model/IntegrityCheckResult;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mEffect:Lcom/android/server/integrity/model/IntegrityCheckResult$Effect;

.field public final mRuleList:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/android/server/integrity/model/IntegrityCheckResult$Effect;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/integrity/model/IntegrityCheckResult;->mEffect:Lcom/android/server/integrity/model/IntegrityCheckResult$Effect;

    .line 6
    iput-object p2, p0, Lcom/android/server/integrity/model/IntegrityCheckResult;->mRuleList:Ljava/util/List;

    .line 8
    return-void
.end method


# virtual methods
.method public final getLoggingResponse()I
    .locals 3

    .line 1
    sget-object v0, Lcom/android/server/integrity/model/IntegrityCheckResult$Effect;->DENY:Lcom/android/server/integrity/model/IntegrityCheckResult$Effect;

    .line 3
    iget-object v1, p0, Lcom/android/server/integrity/model/IntegrityCheckResult;->mEffect:Lcom/android/server/integrity/model/IntegrityCheckResult$Effect;

    .line 5
    if-ne v1, v0, :cond_0

    .line 7
    const/4 p0, 0x2

    .line 8
    return p0

    .line 9
    :cond_0
    sget-object v0, Lcom/android/server/integrity/model/IntegrityCheckResult$Effect;->ALLOW:Lcom/android/server/integrity/model/IntegrityCheckResult$Effect;

    .line 11
    if-ne v1, v0, :cond_1

    .line 13
    iget-object v2, p0, Lcom/android/server/integrity/model/IntegrityCheckResult;->mRuleList:Ljava/util/List;

    .line 15
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 18
    move-result v2

    .line 19
    if-eqz v2, :cond_1

    .line 21
    const/4 p0, 0x1

    .line 22
    return p0

    .line 23
    :cond_1
    if-ne v1, v0, :cond_2

    .line 25
    iget-object p0, p0, Lcom/android/server/integrity/model/IntegrityCheckResult;->mRuleList:Ljava/util/List;

    .line 27
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    .line 30
    move-result p0

    .line 31
    if-nez p0, :cond_2

    .line 33
    const/4 p0, 0x3

    .line 34
    return p0

    .line 35
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 37
    const-string v0, "IntegrityCheckResult is not valid."

    .line 39
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 42
    throw p0
.end method
