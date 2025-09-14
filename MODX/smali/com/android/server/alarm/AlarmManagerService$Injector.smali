.class Lcom/android/server/alarm/AlarmManagerService$Injector;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mContext:Landroid/content/Context;

.field public mNativeData:J


# direct methods
.method public static initializeTimeIfRequired()V
    .locals 6

    .line 1
    sget-object v0, Lcom/android/server/SystemClockTime;->sTimeDebugLog:Landroid/util/LocalLog;

    .line 3
    const-string/jumbo v0, "ro.build.date.utc"

    .line 6
    const-wide/16 v1, -0x1

    .line 8
    invoke-static {v0, v1, v2}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    .line 11
    move-result-wide v0

    .line 12
    const-wide/16 v2, 0x3e8

    .line 14
    mul-long/2addr v0, v2

    .line 15
    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    .line 18
    move-result-object v2

    .line 19
    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    .line 22
    move-result-wide v2

    .line 23
    sget-wide v4, Landroid/os/Build;->TIME:J

    .line 25
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Long;->max(JJ)J

    .line 28
    move-result-wide v2

    .line 29
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->max(JJ)J

    .line 32
    move-result-wide v0

    .line 33
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 36
    move-result-wide v2

    .line 37
    cmp-long v4, v2, v0

    .line 39
    if-gez v4, :cond_0

    .line 41
    const-string v4, "Current time only "

    .line 43
    const-string v5, ", advancing to build time "

    .line 45
    invoke-static {v4, v2, v3, v5}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    move-result-object v2

    .line 49
    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 52
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    move-result-object v2

    .line 56
    const-string v3, "SystemClockTime"

    .line 58
    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    const/4 v3, 0x0

    .line 62
    invoke-static {v3, v2, v0, v1}, Lcom/android/server/SystemClockTime;->setTimeAndConfidence(ILjava/lang/String;J)V

    .line 65
    :cond_0
    return-void
.end method
