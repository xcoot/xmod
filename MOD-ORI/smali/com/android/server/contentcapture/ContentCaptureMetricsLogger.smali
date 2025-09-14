.class public abstract Lcom/android/server/contentcapture/ContentCaptureMetricsLogger;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# direct methods
.method public static writeServiceEvent(ILandroid/content/ComponentName;)V
    .locals 6

    .line 1
    invoke-static {p1}, Landroid/content/ComponentName;->flattenToShortString(Landroid/content/ComponentName;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v2

    .line 5
    const/4 v4, 0x0

    .line 6
    const/4 v5, 0x0

    .line 7
    const/16 v0, 0xcf

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    move v1, p0

    .line 11
    invoke-static/range {v0 .. v5}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;Ljava/lang/String;II)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public static writeSessionEvent(IIILandroid/content/ComponentName;)V
    .locals 7

    .line 1
    invoke-static {p3}, Landroid/content/ComponentName;->flattenToShortString(Landroid/content/ComponentName;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v4

    .line 5
    const/4 v5, 0x0

    .line 6
    const/16 v0, 0xd0

    .line 7
    .line 8
    const/4 v6, 0x0

    .line 9
    move v1, p0

    .line 10
    move v2, p1

    .line 11
    move v3, p2

    .line 12
    invoke-static/range {v0 .. v6}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIILjava/lang/String;Ljava/lang/String;Z)V

    .line 13
    .line 14
    .line 15
    return-void
.end method
