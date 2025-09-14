.class public final Lcom/android/server/power/SuspendBlockerMonitor$CallbackHistory;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mCmd:Ljava/lang/String;

.field public mDetail:Ljava/lang/String;

.field public mTimeStr:Ljava/lang/String;


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/power/SuspendBlockerMonitor$CallbackHistory;->mDetail:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/power/SuspendBlockerMonitor$CallbackHistory;->mCmd:Ljava/lang/String;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/power/SuspendBlockerMonitor$CallbackHistory;->mTimeStr:Ljava/lang/String;

    .line 6
    .line 7
    filled-new-array {p0, v0, v1}, [Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    const-string v0, "[%s] [%25s] [%s]"

    .line 12
    .line 13
    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method
