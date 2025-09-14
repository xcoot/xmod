.class public final Lcom/android/server/alarm/DummyAppSync;
.super Lcom/android/server/alarm/AppSyncWrapper;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# virtual methods
.method public final dump(Ljava/io/PrintWriter;)V
    .locals 0

    .line 1
    const-string p0, "<AppSync Disabled>"

    .line 3
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6
    return-void
.end method

.method public final getWindowLength()J
    .locals 2

    .line 1
    const-wide/16 v0, -0x1

    .line 3
    return-wide v0
.end method

.method public final isAdjustableAlarm(IIJJJLjava/lang/String;)Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method
