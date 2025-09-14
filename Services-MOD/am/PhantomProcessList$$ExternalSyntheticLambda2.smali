.class public final synthetic Lcom/android/server/am/PhantomProcessList$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic f$0:Lcom/android/server/am/PhantomProcessList;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/PhantomProcessList;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/am/PhantomProcessList$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/am/PhantomProcessList;

    .line 6
    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 6

    .line 1
    iget-object p0, p0, Lcom/android/server/am/PhantomProcessList$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/am/PhantomProcessList;

    .line 3
    check-cast p1, Lcom/android/server/am/PhantomProcessRecord;

    .line 5
    check-cast p2, Lcom/android/server/am/PhantomProcessRecord;

    .line 7
    iget-object p0, p0, Lcom/android/server/am/PhantomProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 9
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    .line 11
    iget v1, p1, Lcom/android/server/am/PhantomProcessRecord;->mPpid:I

    .line 13
    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService$PidMap;->get(I)Lcom/android/server/am/ProcessRecord;

    .line 16
    move-result-object v0

    .line 17
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    .line 19
    iget v1, p2, Lcom/android/server/am/PhantomProcessRecord;->mPpid:I

    .line 21
    invoke-virtual {p0, v1}, Lcom/android/server/am/ActivityManagerService$PidMap;->get(I)Lcom/android/server/am/ProcessRecord;

    .line 24
    move-result-object p0

    .line 25
    const/4 v1, 0x0

    .line 26
    const/4 v2, -0x1

    .line 27
    const/4 v3, 0x1

    .line 28
    iget-wide v4, p1, Lcom/android/server/am/PhantomProcessRecord;->mKnownSince:J

    .line 30
    iget-wide p1, p2, Lcom/android/server/am/PhantomProcessRecord;->mKnownSince:J

    .line 32
    if-nez v0, :cond_0

    .line 34
    if-nez p0, :cond_0

    .line 36
    cmp-long p0, v4, p1

    .line 38
    if-eqz p0, :cond_5

    .line 40
    if-gez p0, :cond_2

    .line 42
    goto :goto_0

    .line 43
    :cond_0
    if-nez v0, :cond_1

    .line 45
    :goto_0
    move v1, v3

    .line 46
    goto :goto_1

    .line 47
    :cond_1
    if-nez p0, :cond_3

    .line 49
    :cond_2
    move v1, v2

    .line 50
    goto :goto_1

    .line 51
    :cond_3
    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 53
    iget v0, v0, Lcom/android/server/am/ProcessStateRecord;->mCurAdj:I

    .line 55
    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 57
    iget p0, p0, Lcom/android/server/am/ProcessStateRecord;->mCurAdj:I

    .line 59
    if-eq v0, p0, :cond_4

    .line 61
    sub-int v1, v0, p0

    .line 63
    goto :goto_1

    .line 64
    :cond_4
    cmp-long p0, v4, p1

    .line 66
    if-eqz p0, :cond_5

    .line 68
    if-gez p0, :cond_2

    .line 70
    goto :goto_0

    .line 71
    :cond_5
    :goto_1
    return v1
.end method
