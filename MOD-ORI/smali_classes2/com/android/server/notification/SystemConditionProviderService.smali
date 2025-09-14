.class public abstract Lcom/android/server/notification/SystemConditionProviderService;
.super Landroid/service/notification/ConditionProviderService;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# direct methods
.method public static dumpUpcomingTime(Ljava/io/PrintWriter;JJ)V
    .locals 2

    .line 1
    const-string v0, "      "

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string/jumbo v0, "mNextAlarmTime"

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const/16 v0, 0x3d

    .line 13
    .line 14
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 15
    .line 16
    .line 17
    const-wide/16 v0, 0x0

    .line 18
    .line 19
    cmp-long v0, p1, v0

    .line 20
    .line 21
    if-lez v0, :cond_0

    .line 22
    .line 23
    invoke-static {p1, p2}, Lcom/android/server/notification/SystemConditionProviderService;->ts(J)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    sub-long/2addr p1, p3

    .line 28
    new-instance v1, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 31
    .line 32
    .line 33
    invoke-static {p1, p2, v1}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-static {p3, p4}, Lcom/android/server/notification/SystemConditionProviderService;->ts(J)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p2

    .line 44
    filled-new-array {v0, p1, p2}, [Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    const-string p2, "%s, in %s, now=%s"

    .line 49
    .line 50
    invoke-virtual {p0, p2, p1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_0
    invoke-virtual {p0, p1, p2}, Ljava/io/PrintWriter;->print(J)V

    .line 55
    .line 56
    .line 57
    :goto_0
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 58
    .line 59
    .line 60
    return-void
.end method

.method public static ts(J)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Ljava/util/Date;

    .line 7
    .line 8
    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const-string v1, " ("

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const-string v1, ")"

    .line 20
    .line 21
    invoke-static {v0, p0, p1, v1}, Landroid/hardware/audio/common/V2_0/AudioConfig$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;JLjava/lang/String;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    return-object p0
.end method


# virtual methods
.method public abstract asInterface()Landroid/service/notification/IConditionProvider;
.end method

.method public abstract attachBase(Landroid/content/Context;)V
.end method

.method public abstract dump(Ljava/io/PrintWriter;)V
.end method

.method public abstract getComponent()Landroid/content/ComponentName;
.end method

.method public abstract isScheduleEnabled()Z
.end method

.method public abstract isValidConditionId(Landroid/net/Uri;)Z
.end method

.method public abstract onBootComplete()V
.end method

.method public abstract onScheduleEnabled(Z)V
.end method
