.class public final synthetic Lcom/android/server/am/AppProfiler$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/am/AppProfiler;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Z

.field public final synthetic f$3:J


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/AppProfiler;ZJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/am/AppProfiler$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/am/AppProfiler;

    .line 6
    iput-boolean p2, p0, Lcom/android/server/am/AppProfiler$$ExternalSyntheticLambda2;->f$1:Z

    .line 8
    const/4 p1, 0x1

    .line 9
    iput-boolean p1, p0, Lcom/android/server/am/AppProfiler$$ExternalSyntheticLambda2;->f$2:Z

    .line 11
    iput-wide p3, p0, Lcom/android/server/am/AppProfiler$$ExternalSyntheticLambda2;->f$3:J

    .line 13
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 11

    .line 1
    iget-object v6, p0, Lcom/android/server/am/AppProfiler$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/am/AppProfiler;

    .line 3
    iget-boolean v0, p0, Lcom/android/server/am/AppProfiler$$ExternalSyntheticLambda2;->f$1:Z

    .line 5
    iget-boolean v1, p0, Lcom/android/server/am/AppProfiler$$ExternalSyntheticLambda2;->f$2:Z

    .line 7
    iget-wide v3, p0, Lcom/android/server/am/AppProfiler$$ExternalSyntheticLambda2;->f$3:J

    .line 9
    check-cast p1, Lcom/android/server/am/ProcessRecord;

    .line 11
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    iget-object p0, p1, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    .line 16
    iget-object p1, p0, Lcom/android/server/am/ProcessProfileRecord;->mThread:Landroid/app/IApplicationThread;

    .line 18
    if-eqz p1, :cond_4

    .line 20
    iget p1, p0, Lcom/android/server/am/ProcessProfileRecord;->mSetProcState:I

    .line 22
    const/16 v2, 0x14

    .line 24
    if-ne p1, v2, :cond_0

    .line 26
    goto :goto_1

    .line 27
    :cond_0
    iget-wide v7, p0, Lcom/android/server/am/ProcessProfileRecord;->mLastStateTime:J

    .line 29
    if-nez v0, :cond_2

    .line 31
    if-eqz v1, :cond_1

    .line 33
    const-wide/16 v9, 0x3e8

    .line 35
    add-long/2addr v9, v7

    .line 36
    cmp-long v0, v3, v9

    .line 38
    if-gtz v0, :cond_2

    .line 40
    :cond_1
    const-wide/32 v9, 0x124f80

    .line 43
    add-long/2addr v7, v9

    .line 44
    cmp-long v0, v3, v7

    .line 46
    if-lez v0, :cond_4

    .line 48
    :cond_2
    iput p1, p0, Lcom/android/server/am/ProcessProfileRecord;->mPssProcState:I

    .line 50
    if-eqz v1, :cond_3

    .line 52
    const/4 v0, 0x2

    .line 53
    goto :goto_0

    .line 54
    :cond_3
    const/4 v0, 0x1

    .line 55
    :goto_0
    iput v0, p0, Lcom/android/server/am/ProcessProfileRecord;->mPssStatType:I

    .line 57
    const/4 v5, 0x1

    .line 58
    move-object v0, v6

    .line 59
    move v1, p1

    .line 60
    move-object v2, p0

    .line 61
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/AppProfiler;->updateNextPssTimeLPf(ILcom/android/server/am/ProcessProfileRecord;JZ)V

    .line 64
    iget-object p1, v6, Lcom/android/server/am/AppProfiler;->mPendingPssOrRssProfiles:Ljava/util/ArrayList;

    .line 66
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    :cond_4
    :goto_1
    return-void
.end method
