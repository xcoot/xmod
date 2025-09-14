.class public abstract Lcom/android/internal/protolog/ProtoLogImpl_324116711;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final sCacheUpdater:Lcom/android/internal/protolog/ProtoLogImpl_324116711$$ExternalSyntheticLambda0;

.field public static final sLogGroups:Ljava/util/TreeMap;

.field public static sServiceInstance:Lcom/android/internal/protolog/common/IProtoLog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/internal/protolog/ProtoLogImpl_324116711$1;

    .line 3
    invoke-direct {v0}, Lcom/android/internal/protolog/ProtoLogImpl_324116711$1;-><init>()V

    .line 6
    sput-object v0, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->sLogGroups:Ljava/util/TreeMap;

    .line 8
    new-instance v0, Lcom/android/internal/protolog/ProtoLogImpl_324116711$$ExternalSyntheticLambda0;

    .line 10
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 13
    sput-object v0, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->sCacheUpdater:Lcom/android/internal/protolog/ProtoLogImpl_324116711$$ExternalSyntheticLambda0;

    .line 15
    return-void
.end method

.method public static varargs d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V
    .locals 8

    .line 1
    invoke-static {}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->getSingleInstance()Lcom/android/internal/protolog/common/IProtoLog;

    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lcom/android/internal/protolog/common/LogLevel;->DEBUG:Lcom/android/internal/protolog/common/LogLevel;

    .line 7
    move-object v2, p0

    .line 8
    move-wide v3, p1

    .line 9
    move v5, p3

    .line 10
    move-object v6, p4

    .line 11
    move-object v7, p5

    .line 12
    invoke-interface/range {v0 .. v7}, Lcom/android/internal/protolog/common/IProtoLog;->log(Lcom/android/internal/protolog/common/LogLevel;Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 15
    return-void
.end method

.method public static varargs e(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V
    .locals 8

    .line 1
    invoke-static {}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->getSingleInstance()Lcom/android/internal/protolog/common/IProtoLog;

    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lcom/android/internal/protolog/common/LogLevel;->ERROR:Lcom/android/internal/protolog/common/LogLevel;

    .line 7
    move-object v2, p0

    .line 8
    move-wide v3, p1

    .line 9
    move v5, p3

    .line 10
    move-object v6, p4

    .line 11
    move-object v7, p5

    .line 12
    invoke-interface/range {v0 .. v7}, Lcom/android/internal/protolog/common/IProtoLog;->log(Lcom/android/internal/protolog/common/LogLevel;Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 15
    return-void
.end method

.method public static declared-synchronized getSingleInstance()Lcom/android/internal/protolog/common/IProtoLog;
    .locals 6

    .line 1
    const-class v0, Lcom/android/internal/protolog/ProtoLogImpl_324116711;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->sServiceInstance:Lcom/android/internal/protolog/common/IProtoLog;

    .line 6
    if-nez v1, :cond_1

    .line 8
    invoke-static {}, Landroid/tracing/Flags;->perfettoProtologTracing()Z

    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_0

    .line 14
    new-instance v1, Lcom/android/internal/protolog/PerfettoProtoLogImpl;

    .line 16
    const-string v2, "/etc/core.protolog.pb"

    .line 18
    sget-object v3, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->sLogGroups:Ljava/util/TreeMap;

    .line 20
    sget-object v4, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->sCacheUpdater:Lcom/android/internal/protolog/ProtoLogImpl_324116711$$ExternalSyntheticLambda0;

    .line 22
    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/protolog/PerfettoProtoLogImpl;-><init>(Ljava/lang/String;Ljava/util/TreeMap;Ljava/lang/Runnable;)V

    .line 25
    sput-object v1, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->sServiceInstance:Lcom/android/internal/protolog/common/IProtoLog;

    .line 27
    goto :goto_0

    .line 28
    :catchall_0
    move-exception v1

    .line 29
    goto :goto_1

    .line 30
    :cond_0
    new-instance v1, Lcom/android/internal/protolog/LegacyProtoLogImpl;

    .line 32
    const-string v2, "/data/misc/wmtrace/wm_log.winscope"

    .line 34
    const-string v3, "/system/etc/protolog.conf.json.gz"

    .line 36
    sget-object v4, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->sLogGroups:Ljava/util/TreeMap;

    .line 38
    sget-object v5, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->sCacheUpdater:Lcom/android/internal/protolog/ProtoLogImpl_324116711$$ExternalSyntheticLambda0;

    .line 40
    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/internal/protolog/LegacyProtoLogImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/TreeMap;Ljava/lang/Runnable;)V

    .line 43
    sput-object v1, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->sServiceInstance:Lcom/android/internal/protolog/common/IProtoLog;

    .line 45
    :goto_0
    sget-object v1, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->sCacheUpdater:Lcom/android/internal/protolog/ProtoLogImpl_324116711$$ExternalSyntheticLambda0;

    .line 47
    invoke-virtual {v1}, Lcom/android/internal/protolog/ProtoLogImpl_324116711$$ExternalSyntheticLambda0;->run()V

    .line 50
    :cond_1
    sget-object v1, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->sServiceInstance:Lcom/android/internal/protolog/common/IProtoLog;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    monitor-exit v0

    .line 53
    return-object v1

    .line 54
    :goto_1
    monitor-exit v0

    .line 55
    throw v1
.end method

.method public static varargs i(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V
    .locals 8

    .line 1
    invoke-static {}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->getSingleInstance()Lcom/android/internal/protolog/common/IProtoLog;

    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lcom/android/internal/protolog/common/LogLevel;->INFO:Lcom/android/internal/protolog/common/LogLevel;

    .line 7
    move-object v2, p0

    .line 8
    move-wide v3, p1

    .line 9
    move v5, p3

    .line 10
    move-object v6, p4

    .line 11
    move-object v7, p5

    .line 12
    invoke-interface/range {v0 .. v7}, Lcom/android/internal/protolog/common/IProtoLog;->log(Lcom/android/internal/protolog/common/LogLevel;Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 15
    return-void
.end method

.method public static isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->getSingleInstance()Lcom/android/internal/protolog/common/IProtoLog;

    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0, p0, p1}, Lcom/android/internal/protolog/common/IProtoLog;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public static declared-synchronized setSingleInstance(Lcom/android/internal/protolog/common/IProtoLog;)V
    .locals 1

    .line 1
    const-class v0, Lcom/android/internal/protolog/ProtoLogImpl_324116711;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sput-object p0, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->sServiceInstance:Lcom/android/internal/protolog/common/IProtoLog;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    monitor-exit v0

    .line 7
    return-void

    .line 8
    :catchall_0
    move-exception p0

    .line 9
    monitor-exit v0

    .line 10
    throw p0
.end method

.method public static varargs v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V
    .locals 8

    .line 1
    invoke-static {}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->getSingleInstance()Lcom/android/internal/protolog/common/IProtoLog;

    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lcom/android/internal/protolog/common/LogLevel;->VERBOSE:Lcom/android/internal/protolog/common/LogLevel;

    .line 7
    move-object v2, p0

    .line 8
    move-wide v3, p1

    .line 9
    move v5, p3

    .line 10
    move-object v6, p4

    .line 11
    move-object v7, p5

    .line 12
    invoke-interface/range {v0 .. v7}, Lcom/android/internal/protolog/common/IProtoLog;->log(Lcom/android/internal/protolog/common/LogLevel;Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 15
    return-void
.end method

.method public static varargs w(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V
    .locals 8

    .line 1
    invoke-static {}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->getSingleInstance()Lcom/android/internal/protolog/common/IProtoLog;

    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lcom/android/internal/protolog/common/LogLevel;->WARN:Lcom/android/internal/protolog/common/LogLevel;

    .line 7
    move-object v2, p0

    .line 8
    move-wide v3, p1

    .line 9
    move v5, p3

    .line 10
    move-object v6, p4

    .line 11
    move-object v7, p5

    .line 12
    invoke-interface/range {v0 .. v7}, Lcom/android/internal/protolog/common/IProtoLog;->log(Lcom/android/internal/protolog/common/LogLevel;Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 15
    return-void
.end method
