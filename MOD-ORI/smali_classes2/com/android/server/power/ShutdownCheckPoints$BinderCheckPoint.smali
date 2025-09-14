.class public final Lcom/android/server/power/ShutdownCheckPoints$BinderCheckPoint;
.super Lcom/android/server/power/ShutdownCheckPoints$SystemServerCheckPoint;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mCallerProcessId:I


# direct methods
.method public constructor <init>(ILjava/lang/String;J)V
    .locals 0

    .line 1
    invoke-direct {p0, p3, p4, p2}, Lcom/android/server/power/ShutdownCheckPoints$SystemServerCheckPoint;-><init>(JLjava/lang/String;)V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/android/server/power/ShutdownCheckPoints$BinderCheckPoint;->mCallerProcessId:I

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final dumpDetails(Lcom/android/server/power/ShutdownCheckPoints$Injector;Ljava/io/PrintWriter;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/server/power/ShutdownCheckPoints$SystemServerCheckPoint;->findMethodName()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const-string v0, "Failed to get method name"

    .line 8
    .line 9
    :cond_0
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-interface {p1}, Lcom/android/server/power/ShutdownCheckPoints$Injector;->activityManager()Landroid/app/IActivityManager;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    const-string v0, "No ActivityManager to find name of process with pid="

    .line 17
    .line 18
    iget p0, p0, Lcom/android/server/power/ShutdownCheckPoints$BinderCheckPoint;->mCallerProcessId:I

    .line 19
    .line 20
    const-string v1, "ShutdownCheckPoints"

    .line 21
    .line 22
    const/4 v2, 0x0

    .line 23
    if-eqz p1, :cond_1

    .line 24
    .line 25
    :try_start_0
    invoke-interface {p1}, Landroid/app/IActivityManager;->getRunningAppProcesses()Ljava/util/List;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    goto :goto_0

    .line 30
    :catch_0
    move-exception p1

    .line 31
    goto :goto_1

    .line 32
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-static {v1, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    .line 46
    .line 47
    move-object p1, v2

    .line 48
    :goto_0
    if-eqz p1, :cond_3

    .line 49
    .line 50
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    if-eqz v0, :cond_3

    .line 59
    .line 60
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 65
    .line 66
    iget v3, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    .line 67
    .line 68
    if-ne v3, p0, :cond_2

    .line 69
    .line 70
    iget-object v2, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    .line 72
    goto :goto_2

    .line 73
    :goto_1
    const-string v0, "Failed to get running app processes from ActivityManager"

    .line 74
    .line 75
    invoke-static {v1, v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 76
    .line 77
    .line 78
    :cond_3
    :goto_2
    const-string p1, "From process "

    .line 79
    .line 80
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    if-nez v2, :cond_4

    .line 84
    .line 85
    const-string v2, "?"

    .line 86
    .line 87
    :cond_4
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    new-instance p1, Ljava/lang/StringBuilder;

    .line 91
    .line 92
    const-string v0, " (pid="

    .line 93
    .line 94
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    const-string p0, ")"

    .line 101
    .line 102
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object p0

    .line 109
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    return-void
.end method

.method public final getOrigin()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "BINDER"

    .line 2
    .line 3
    return-object p0
.end method
