.class public abstract Lcom/android/server/voiceinteraction/HotwordMetricsLogger;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# direct methods
.method public static writeAudioEgressEvent(IIIIII)V
    .locals 8

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eq p0, v0, :cond_0

    .line 3
    .line 4
    const/4 v0, 0x2

    .line 5
    if-eq p0, v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    :cond_0
    move v2, v0

    .line 9
    const/16 v1, 0x242

    .line 10
    .line 11
    move v3, p1

    .line 12
    move v4, p2

    .line 13
    move v5, p3

    .line 14
    move v6, p4

    .line 15
    move v7, p5

    .line 16
    invoke-static/range {v1 .. v7}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIIIII)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public static writeDetectorEvent(III)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eq p0, v0, :cond_0

    .line 3
    .line 4
    const/4 v0, 0x2

    .line 5
    if-eq p0, v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    :cond_0
    const/16 p0, 0x1b2

    .line 9
    .line 10
    invoke-static {p0, v0, p1, p2}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIII)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public static writeKeyphraseTriggerEvent(III)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eq p0, v0, :cond_0

    .line 3
    .line 4
    const/4 v0, 0x2

    .line 5
    if-eq p0, v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    :cond_0
    const/16 p0, 0x1b1

    .line 9
    .line 10
    invoke-static {p0, v0, p1, p2}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIII)V

    .line 11
    .line 12
    .line 13
    return-void
.end method
