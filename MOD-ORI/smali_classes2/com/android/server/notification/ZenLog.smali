.class public abstract Lcom/android/server/notification/ZenLog;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final INTERCEPTION_EVENTS:Landroid/util/LocalLog;

.field public static final STATE_CHANGES:Landroid/util/LocalLog;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/16 v0, 0xc8

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/16 v0, 0x64

    .line 9
    .line 10
    :goto_0
    new-instance v1, Landroid/util/LocalLog;

    .line 11
    .line 12
    invoke-direct {v1, v0}, Landroid/util/LocalLog;-><init>(I)V

    .line 13
    .line 14
    .line 15
    sput-object v1, Lcom/android/server/notification/ZenLog;->STATE_CHANGES:Landroid/util/LocalLog;

    .line 16
    .line 17
    new-instance v1, Landroid/util/LocalLog;

    .line 18
    .line 19
    invoke-direct {v1, v0}, Landroid/util/LocalLog;-><init>(I)V

    .line 20
    .line 21
    .line 22
    sput-object v1, Lcom/android/server/notification/ZenLog;->INTERCEPTION_EVENTS:Landroid/util/LocalLog;

    .line 23
    .line 24
    return-void
.end method

.method public static append(ILjava/lang/String;)V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eq p0, v0, :cond_1

    .line 3
    .line 4
    const/16 v0, 0xc

    .line 5
    .line 6
    if-eq p0, v0, :cond_1

    .line 7
    .line 8
    const/16 v0, 0x14

    .line 9
    .line 10
    if-eq p0, v0, :cond_1

    .line 11
    .line 12
    const/16 v0, 0x13

    .line 13
    .line 14
    if-eq p0, v0, :cond_1

    .line 15
    .line 16
    const/16 v0, 0x12

    .line 17
    .line 18
    if-eq p0, v0, :cond_1

    .line 19
    .line 20
    const/16 v0, 0x15

    .line 21
    .line 22
    if-ne p0, v0, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    sget-object v0, Lcom/android/server/notification/ZenLog;->STATE_CHANGES:Landroid/util/LocalLog;

    .line 26
    .line 27
    monitor-enter v0

    .line 28
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 31
    .line 32
    .line 33
    invoke-static {p0}, Lcom/android/server/notification/ZenLog;->typeToString(I)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const-string p0, ": "

    .line 41
    .line 42
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    invoke-virtual {v0, p0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    monitor-exit v0

    .line 56
    goto :goto_1

    .line 57
    :catchall_0
    move-exception p0

    .line 58
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    throw p0

    .line 60
    :cond_1
    :goto_0
    sget-object v0, Lcom/android/server/notification/ZenLog;->INTERCEPTION_EVENTS:Landroid/util/LocalLog;

    .line 61
    .line 62
    monitor-enter v0

    .line 63
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 64
    .line 65
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 66
    .line 67
    .line 68
    invoke-static {p0}, Lcom/android/server/notification/ZenLog;->typeToString(I)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    const-string p0, ": "

    .line 76
    .line 77
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p0

    .line 87
    invoke-virtual {v0, p0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    monitor-exit v0

    .line 91
    :goto_1
    return-void

    .line 92
    :catchall_1
    move-exception p0

    .line 93
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 94
    throw p0
.end method

.method public static componentListToString(Ljava/util/List;)Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    if-ge v1, v2, :cond_2

    .line 12
    .line 13
    if-lez v1, :cond_0

    .line 14
    .line 15
    const-string v2, ", "

    .line 16
    .line 17
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    :cond_0
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    check-cast v2, Landroid/content/ComponentName;

    .line 25
    .line 26
    if-eqz v2, :cond_1

    .line 27
    .line 28
    invoke-virtual {v2}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    goto :goto_1

    .line 33
    :cond_1
    const/4 v2, 0x0

    .line 34
    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    add-int/lit8 v1, v1, 0x1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    return-object p0
.end method

.method public static dump(Ljava/io/PrintWriter;)V
    .locals 5

    .line 1
    const-string v0, "    "

    .line 2
    .line 3
    sget-object v1, Lcom/android/server/notification/ZenLog;->INTERCEPTION_EVENTS:Landroid/util/LocalLog;

    .line 4
    .line 5
    monitor-enter v1

    .line 6
    :try_start_0
    const-string v2, "    Interception Events:\n"

    .line 7
    .line 8
    const/4 v3, 0x0

    .line 9
    new-array v4, v3, [Ljava/lang/Object;

    .line 10
    .line 11
    invoke-virtual {p0, v2, v4}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, v0, p0}, Landroid/util/LocalLog;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 15
    .line 16
    .line 17
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 18
    sget-object v2, Lcom/android/server/notification/ZenLog;->STATE_CHANGES:Landroid/util/LocalLog;

    .line 19
    .line 20
    monitor-enter v2

    .line 21
    :try_start_1
    const-string v1, "    State Changes:\n"

    .line 22
    .line 23
    new-array v3, v3, [Ljava/lang/Object;

    .line 24
    .line 25
    invoke-virtual {p0, v1, v3}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v2, v0, p0}, Landroid/util/LocalLog;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 29
    .line 30
    .line 31
    monitor-exit v2

    .line 32
    return-void

    .line 33
    :catchall_0
    move-exception p0

    .line 34
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 35
    throw p0

    .line 36
    :catchall_1
    move-exception p0

    .line 37
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 38
    throw p0
.end method

.method public static ringerModeToString(I)Ljava/lang/String;
    .locals 1

    .line 1
    if-eqz p0, :cond_2

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p0, v0, :cond_1

    .line 5
    .line 6
    const/4 v0, 0x2

    .line 7
    if-eq p0, v0, :cond_0

    .line 8
    .line 9
    const-string/jumbo p0, "unknown"

    .line 10
    .line 11
    .line 12
    return-object p0

    .line 13
    :cond_0
    const-string/jumbo p0, "normal"

    .line 14
    .line 15
    .line 16
    return-object p0

    .line 17
    :cond_1
    const-string/jumbo p0, "vibrate"

    .line 18
    .line 19
    .line 20
    return-object p0

    .line 21
    :cond_2
    const-string/jumbo p0, "silent"

    .line 22
    .line 23
    .line 24
    return-object p0
.end method

.method public static traceConfig(Ljava/lang/String;Landroid/content/ComponentName;Landroid/service/notification/ZenModeConfig;Landroid/service/notification/ZenModeConfig;I)V
    .locals 2

    .line 1
    new-instance v0, Landroid/service/notification/ZenModeDiff$ConfigDiff;

    .line 2
    .line 3
    invoke-direct {v0, p2, p3}, Landroid/service/notification/ZenModeDiff$ConfigDiff;-><init>(Landroid/service/notification/ZenModeConfig;Landroid/service/notification/ZenModeConfig;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Landroid/service/notification/ZenModeDiff$ConfigDiff;->hasDiff()Z

    .line 7
    .line 8
    .line 9
    move-result p2

    .line 10
    const/16 v1, 0xb

    .line 11
    .line 12
    if-nez p2, :cond_0

    .line 13
    .line 14
    new-instance p1, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string p0, " no changes"

    .line 23
    .line 24
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    invoke-static {v1, p0}, Lcom/android/server/notification/ZenLog;->append(ILjava/lang/String;)V

    .line 32
    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string p0, " - "

    .line 44
    .line 45
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    const-string p0, " : "

    .line 52
    .line 53
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    const-string p0, ",\n"

    .line 60
    .line 61
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    if-eqz p3, :cond_1

    .line 65
    .line 66
    invoke-virtual {p3}, Landroid/service/notification/ZenModeConfig;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    goto :goto_0

    .line 71
    :cond_1
    const/4 p1, 0x0

    .line 72
    :goto_0
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object p0

    .line 85
    invoke-static {v1, p0}, Lcom/android/server/notification/ZenLog;->append(ILjava/lang/String;)V

    .line 86
    .line 87
    .line 88
    :goto_1
    return-void
.end method

.method public static traceMatchesCallFilter(ILjava/lang/String;Z)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string/jumbo v1, "result="

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    const-string p2, ", reason="

    .line 13
    .line 14
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string p1, ", calling uid="

    .line 21
    .line 22
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    const/16 p1, 0x12

    .line 33
    .line 34
    invoke-static {p1, p0}, Lcom/android/server/notification/ZenLog;->append(ILjava/lang/String;)V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method public static traceNotIntercepted(Lcom/android/server/notification/NotificationRecord;Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string p0, ","

    .line 16
    .line 17
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    const/16 p1, 0xc

    .line 28
    .line 29
    invoke-static {p1, p0}, Lcom/android/server/notification/ZenLog;->append(ILjava/lang/String;)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public static traceSetNotificationPolicy(Ljava/lang/String;ILandroid/app/NotificationManager$Policy;)V
    .locals 3

    .line 1
    const-string/jumbo v0, "pkg="

    .line 2
    .line 3
    .line 4
    const-string v1, " targetSdk="

    .line 5
    .line 6
    const-string v2, " NotificationPolicy="

    .line 7
    .line 8
    invoke-static {p1, v0, p0, v1, v2}, Lcom/android/server/StorageManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    invoke-virtual {p2}, Landroid/app/NotificationManager$Policy;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    const/16 p1, 0x10

    .line 24
    .line 25
    invoke-static {p1, p0}, Lcom/android/server/notification/ZenLog;->append(ILjava/lang/String;)V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public static traceSetZenMode(ILjava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    if-eqz p0, :cond_3

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    if-eq p0, v1, :cond_2

    .line 10
    .line 11
    const/4 v1, 0x2

    .line 12
    if-eq p0, v1, :cond_1

    .line 13
    .line 14
    const/4 v1, 0x3

    .line 15
    if-eq p0, v1, :cond_0

    .line 16
    .line 17
    const-string/jumbo p0, "unknown"

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const-string p0, "alarms"

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    const-string/jumbo p0, "no_interruptions"

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_2
    const-string p0, "important_interruptions"

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_3
    const-string/jumbo p0, "off"

    .line 32
    .line 33
    .line 34
    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string p0, ","

    .line 38
    .line 39
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    const/4 p1, 0x6

    .line 50
    invoke-static {p1, p0}, Lcom/android/server/notification/ZenLog;->append(ILjava/lang/String;)V

    .line 51
    .line 52
    .line 53
    return-void
.end method

.method public static typeToString(I)Ljava/lang/String;
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eq p0, v0, :cond_3

    .line 3
    .line 4
    const/4 v0, 0x6

    .line 5
    if-eq p0, v0, :cond_2

    .line 6
    .line 7
    const/4 v0, 0x3

    .line 8
    if-eq p0, v0, :cond_1

    .line 9
    .line 10
    const/4 v0, 0x4

    .line 11
    if-eq p0, v0, :cond_0

    .line 12
    .line 13
    packed-switch p0, :pswitch_data_0

    .line 14
    .line 15
    .line 16
    const-string/jumbo p0, "unknown"

    .line 17
    .line 18
    .line 19
    return-object p0

    .line 20
    :pswitch_0
    const-string/jumbo p0, "matches_contact"

    .line 21
    .line 22
    .line 23
    return-object p0

    .line 24
    :pswitch_1
    const-string p0, "alert_on_updated_intercept"

    .line 25
    .line 26
    return-object p0

    .line 27
    :pswitch_2
    const-string p0, "check_repeat_caller"

    .line 28
    .line 29
    return-object p0

    .line 30
    :pswitch_3
    const-string/jumbo p0, "record_caller"

    .line 31
    .line 32
    .line 33
    return-object p0

    .line 34
    :pswitch_4
    const-string/jumbo p0, "matches_call_filter"

    .line 35
    .line 36
    .line 37
    return-object p0

    .line 38
    :pswitch_5
    const-string/jumbo p0, "set_consolidated_policy"

    .line 39
    .line 40
    .line 41
    return-object p0

    .line 42
    :pswitch_6
    const-string/jumbo p0, "set_notification_policy"

    .line 43
    .line 44
    .line 45
    return-object p0

    .line 46
    :pswitch_7
    const-string p0, "listener_hints_changed"

    .line 47
    .line 48
    return-object p0

    .line 49
    :pswitch_8
    const-string/jumbo p0, "suppressor_changed"

    .line 50
    .line 51
    .line 52
    return-object p0

    .line 53
    :pswitch_9
    const-string p0, "disable_effects"

    .line 54
    .line 55
    return-object p0

    .line 56
    :pswitch_a
    const-string/jumbo p0, "not_intercepted"

    .line 57
    .line 58
    .line 59
    return-object p0

    .line 60
    :pswitch_b
    const-string p0, "config"

    .line 61
    .line 62
    return-object p0

    .line 63
    :pswitch_c
    const-string/jumbo p0, "unsubscribe"

    .line 64
    .line 65
    .line 66
    return-object p0

    .line 67
    :pswitch_d
    const-string/jumbo p0, "subscribe"

    .line 68
    .line 69
    .line 70
    return-object p0

    .line 71
    :cond_0
    const-string/jumbo p0, "set_ringer_mode_internal"

    .line 72
    .line 73
    .line 74
    return-object p0

    .line 75
    :cond_1
    const-string/jumbo p0, "set_ringer_mode_external"

    .line 76
    .line 77
    .line 78
    return-object p0

    .line 79
    :cond_2
    const-string/jumbo p0, "set_zen_mode"

    .line 80
    .line 81
    .line 82
    return-object p0

    .line 83
    :cond_3
    const-string p0, "intercepted"

    .line 84
    .line 85
    return-object p0

    .line 86
    nop

    .line 87
    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
