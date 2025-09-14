.class public final Lcom/android/server/power/ShutdownCheckPoints;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final DATE_FORMAT:Ljava/text/SimpleDateFormat;

.field public static final EMPTY_FILE_ARRAY:[Ljava/io/File;

.field public static final INSTANCE:Lcom/android/server/power/ShutdownCheckPoints;


# instance fields
.field public final mCheckPoints:Ljava/util/ArrayList;

.field public final mInjector:Lcom/android/server/power/ShutdownCheckPoints$Injector;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/server/power/ShutdownCheckPoints;

    .line 2
    .line 3
    new-instance v1, Lcom/android/server/power/ShutdownCheckPoints$1;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1}, Lcom/android/server/power/ShutdownCheckPoints;-><init>(Lcom/android/server/power/ShutdownCheckPoints$Injector;)V

    .line 9
    .line 10
    .line 11
    sput-object v0, Lcom/android/server/power/ShutdownCheckPoints;->INSTANCE:Lcom/android/server/power/ShutdownCheckPoints;

    .line 12
    .line 13
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 14
    .line 15
    const-string/jumbo v1, "yyyy-MM-dd HH:mm:ss.SSS z"

    .line 16
    .line 17
    .line 18
    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    sput-object v0, Lcom/android/server/power/ShutdownCheckPoints;->DATE_FORMAT:Ljava/text/SimpleDateFormat;

    .line 22
    .line 23
    const/4 v0, 0x0

    .line 24
    new-array v0, v0, [Ljava/io/File;

    .line 25
    .line 26
    sput-object v0, Lcom/android/server/power/ShutdownCheckPoints;->EMPTY_FILE_ARRAY:[Ljava/io/File;

    .line 27
    .line 28
    return-void
.end method

.method public constructor <init>(Lcom/android/server/power/ShutdownCheckPoints$Injector;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/power/ShutdownCheckPoints;->mCheckPoints:Ljava/util/ArrayList;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/android/server/power/ShutdownCheckPoints;->mInjector:Lcom/android/server/power/ShutdownCheckPoints$Injector;

    .line 12
    .line 13
    return-void
.end method

.method public static recordCheckPoint(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    sget-object v1, Lcom/android/server/power/ShutdownCheckPoints;->INSTANCE:Lcom/android/server/power/ShutdownCheckPoints;

    .line 3
    .line 4
    invoke-virtual {v1, p0, p1, v0}, Lcom/android/server/power/ShutdownCheckPoints;->recordCheckPointInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public dumpInternal(Ljava/io/PrintWriter;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/power/ShutdownCheckPoints;->mCheckPoints:Ljava/util/ArrayList;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    .line 5
    .line 6
    iget-object v2, p0, Lcom/android/server/power/ShutdownCheckPoints;->mCheckPoints:Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 9
    .line 10
    .line 11
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    check-cast v1, Lcom/android/server/power/ShutdownCheckPoints$CheckPoint;

    .line 27
    .line 28
    iget-object v2, p0, Lcom/android/server/power/ShutdownCheckPoints;->mInjector:Lcom/android/server/power/ShutdownCheckPoints$Injector;

    .line 29
    .line 30
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    .line 32
    .line 33
    const-string v3, "Shutdown request from "

    .line 34
    .line 35
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1}, Lcom/android/server/power/ShutdownCheckPoints$CheckPoint;->getOrigin()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    iget-object v3, v1, Lcom/android/server/power/ShutdownCheckPoints$CheckPoint;->mReason:Ljava/lang/String;

    .line 46
    .line 47
    if-eqz v3, :cond_0

    .line 48
    .line 49
    const-string v4, " for reason "

    .line 50
    .line 51
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    :cond_0
    const-string v3, " at "

    .line 58
    .line 59
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    sget-object v3, Lcom/android/server/power/ShutdownCheckPoints;->DATE_FORMAT:Ljava/text/SimpleDateFormat;

    .line 63
    .line 64
    new-instance v4, Ljava/util/Date;

    .line 65
    .line 66
    iget-wide v5, v1, Lcom/android/server/power/ShutdownCheckPoints$CheckPoint;->mTimestamp:J

    .line 67
    .line 68
    invoke-direct {v4, v5, v6}, Ljava/util/Date;-><init>(J)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    new-instance v3, Ljava/lang/StringBuilder;

    .line 79
    .line 80
    const-string v4, " (epoch="

    .line 81
    .line 82
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    const-string v4, ")"

    .line 89
    .line 90
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v3

    .line 97
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v1, v2, p1}, Lcom/android/server/power/ShutdownCheckPoints$CheckPoint;->dumpDetails(Lcom/android/server/power/ShutdownCheckPoints$Injector;Ljava/io/PrintWriter;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 104
    .line 105
    .line 106
    goto :goto_0

    .line 107
    :cond_1
    return-void

    .line 108
    :catchall_0
    move-exception p0

    .line 109
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 110
    throw p0
.end method

.method public newDumpThreadInternal(Ljava/io/File;)Ljava/lang/Thread;
    .locals 2

    .line 1
    new-instance v0, Lcom/android/server/power/ShutdownCheckPoints$FileDumperThread;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/power/ShutdownCheckPoints;->mInjector:Lcom/android/server/power/ShutdownCheckPoints$Injector;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    const/16 v1, 0x14

    .line 9
    .line 10
    invoke-direct {v0, p0, p1, v1}, Lcom/android/server/power/ShutdownCheckPoints$FileDumperThread;-><init>(Lcom/android/server/power/ShutdownCheckPoints;Ljava/io/File;I)V

    .line 11
    .line 12
    .line 13
    return-object v0
.end method

.method public recordCheckPointInternal(ILjava/lang/String;)V
    .locals 3

    .line 3
    iget-object v0, p0, Lcom/android/server/power/ShutdownCheckPoints;->mInjector:Lcom/android/server/power/ShutdownCheckPoints$Injector;

    invoke-interface {v0}, Lcom/android/server/power/ShutdownCheckPoints$Injector;->currentTimeMillis()J

    move-result-wide v0

    .line 4
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    if-ne p1, v2, :cond_0

    .line 5
    new-instance v2, Lcom/android/server/power/ShutdownCheckPoints$SystemServerCheckPoint;

    invoke-direct {v2, v0, v1, p2}, Lcom/android/server/power/ShutdownCheckPoints$SystemServerCheckPoint;-><init>(JLjava/lang/String;)V

    goto :goto_0

    .line 6
    :cond_0
    new-instance v2, Lcom/android/server/power/ShutdownCheckPoints$BinderCheckPoint;

    invoke-direct {v2, p1, p2, v0, v1}, Lcom/android/server/power/ShutdownCheckPoints$BinderCheckPoint;-><init>(ILjava/lang/String;J)V

    .line 7
    :goto_0
    invoke-virtual {p0, v2}, Lcom/android/server/power/ShutdownCheckPoints;->recordCheckPointInternal(Lcom/android/server/power/ShutdownCheckPoints$CheckPoint;)V

    .line 8
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "Binder shutdown checkpoint recorded with pid="

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ShutdownCheckPoints"

    invoke-static {p1, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final recordCheckPointInternal(Lcom/android/server/power/ShutdownCheckPoints$CheckPoint;)V
    .locals 2

    .line 15
    iget-object v0, p0, Lcom/android/server/power/ShutdownCheckPoints;->mCheckPoints:Ljava/util/ArrayList;

    monitor-enter v0

    .line 16
    :try_start_0
    iget-object v1, p0, Lcom/android/server/power/ShutdownCheckPoints;->mCheckPoints:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 17
    iget-object p1, p0, Lcom/android/server/power/ShutdownCheckPoints;->mCheckPoints:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    iget-object v1, p0, Lcom/android/server/power/ShutdownCheckPoints;->mInjector:Lcom/android/server/power/ShutdownCheckPoints$Injector;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v1, 0x64

    if-le p1, v1, :cond_0

    iget-object p0, p0, Lcom/android/server/power/ShutdownCheckPoints;->mCheckPoints:Ljava/util/ArrayList;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 18
    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public recordCheckPointInternal(Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/android/server/power/ShutdownCheckPoints$SystemServerCheckPoint;

    iget-object v1, p0, Lcom/android/server/power/ShutdownCheckPoints;->mInjector:Lcom/android/server/power/ShutdownCheckPoints$Injector;

    invoke-interface {v1}, Lcom/android/server/power/ShutdownCheckPoints$Injector;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2, p1}, Lcom/android/server/power/ShutdownCheckPoints$SystemServerCheckPoint;-><init>(JLjava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/server/power/ShutdownCheckPoints;->recordCheckPointInternal(Lcom/android/server/power/ShutdownCheckPoints$CheckPoint;)V

    .line 2
    const-string p0, "ShutdownCheckPoints"

    const-string p1, "System server shutdown checkpoint recorded"

    invoke-static {p0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public recordCheckPointInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 9
    iget-object v0, p0, Lcom/android/server/power/ShutdownCheckPoints;->mInjector:Lcom/android/server/power/ShutdownCheckPoints$Injector;

    invoke-interface {v0}, Lcom/android/server/power/ShutdownCheckPoints$Injector;->currentTimeMillis()J

    move-result-wide v3

    .line 10
    const-string v0, "android"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 11
    new-instance v0, Lcom/android/server/power/ShutdownCheckPoints$SystemServerCheckPoint;

    invoke-direct {v0, v3, v4, p3}, Lcom/android/server/power/ShutdownCheckPoints$SystemServerCheckPoint;-><init>(JLjava/lang/String;)V

    goto :goto_0

    .line 12
    :cond_0
    new-instance v0, Lcom/android/server/power/ShutdownCheckPoints$IntentCheckPoint;

    move-object v1, v0

    move-object v2, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/server/power/ShutdownCheckPoints$IntentCheckPoint;-><init>(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    .line 13
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/server/power/ShutdownCheckPoints;->recordCheckPointInternal(Lcom/android/server/power/ShutdownCheckPoints$CheckPoint;)V

    .line 14
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p3, "Shutdown intent checkpoint recorded intent="

    invoke-direct {p0, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " from package="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ShutdownCheckPoints"

    invoke-static {p1, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
