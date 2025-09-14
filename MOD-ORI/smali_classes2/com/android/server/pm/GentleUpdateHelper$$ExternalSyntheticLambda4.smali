.class public final synthetic Lcom/android/server/pm/GentleUpdateHelper$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/GentleUpdateHelper;

.field public final synthetic f$1:Lcom/android/server/pm/GentleUpdateHelper$PendingInstallConstraintsCheck;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/GentleUpdateHelper;Lcom/android/server/pm/GentleUpdateHelper$PendingInstallConstraintsCheck;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/pm/GentleUpdateHelper$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/pm/GentleUpdateHelper;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/pm/GentleUpdateHelper$$ExternalSyntheticLambda4;->f$1:Lcom/android/server/pm/GentleUpdateHelper$PendingInstallConstraintsCheck;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/GentleUpdateHelper$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/pm/GentleUpdateHelper;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/pm/GentleUpdateHelper$$ExternalSyntheticLambda4;->f$1:Lcom/android/server/pm/GentleUpdateHelper$PendingInstallConstraintsCheck;

    .line 4
    .line 5
    check-cast p1, Ljava/lang/Boolean;

    .line 6
    .line 7
    iget-object v1, v0, Lcom/android/server/pm/GentleUpdateHelper;->mHandler:Landroid/os/Handler;

    .line 8
    .line 9
    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-virtual {v2}, Landroid/os/Looper;->isCurrentThread()Z

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    invoke-static {v2}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    invoke-virtual {v0, p0, p1}, Lcom/android/server/pm/GentleUpdateHelper;->processPendingCheck(Lcom/android/server/pm/GentleUpdateHelper$PendingInstallConstraintsCheck;Z)Z

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    if-nez p1, :cond_0

    .line 29
    .line 30
    iget-object p1, v0, Lcom/android/server/pm/GentleUpdateHelper;->mPendingChecks:Ljava/util/ArrayDeque;

    .line 31
    .line 32
    invoke-virtual {p1, p0}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Lcom/android/server/pm/GentleUpdateHelper;->scheduleIdleJob()V

    .line 36
    .line 37
    .line 38
    new-instance p1, Lcom/android/server/pm/GentleUpdateHelper$$ExternalSyntheticLambda3;

    .line 39
    .line 40
    invoke-direct {p1, v0, p0}, Lcom/android/server/pm/GentleUpdateHelper$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/pm/GentleUpdateHelper;Lcom/android/server/pm/GentleUpdateHelper$PendingInstallConstraintsCheck;)V

    .line 41
    .line 42
    .line 43
    iget-wide v2, p0, Lcom/android/server/pm/GentleUpdateHelper$PendingInstallConstraintsCheck;->mFinishTime:J

    .line 44
    .line 45
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 46
    .line 47
    .line 48
    move-result-wide v4

    .line 49
    sub-long/2addr v2, v4

    .line 50
    const-wide/16 v4, 0x0

    .line 51
    .line 52
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    .line 53
    .line 54
    .line 55
    move-result-wide v2

    .line 56
    invoke-virtual {v1, p1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 57
    .line 58
    .line 59
    :cond_0
    return-void
.end method
