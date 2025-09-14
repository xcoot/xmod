.class public final Lcom/android/server/ibs/sleepmode/SleepModeLogger;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mIsUsed:Z

.field public mSleepModeLog:Landroid/util/LocalLog;


# virtual methods
.method public final add(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/server/ibs/sleepmode/SleepModeLogger;->mIsUsed:Z

    .line 3
    if-nez v0, :cond_0

    .line 5
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcom/android/server/ibs/sleepmode/SleepModeLogger;->mIsUsed:Z

    .line 8
    :cond_0
    iget-object p0, p0, Lcom/android/server/ibs/sleepmode/SleepModeLogger;->mSleepModeLog:Landroid/util/LocalLog;

    .line 10
    invoke-virtual {p0, p1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 13
    return-void
.end method
