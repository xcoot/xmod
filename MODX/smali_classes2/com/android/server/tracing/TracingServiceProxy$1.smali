.class public final Lcom/android/server/tracing/TracingServiceProxy$1;
.super Landroid/tracing/ITracingServiceProxy$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/tracing/TracingServiceProxy;


# direct methods
.method public constructor <init>(Lcom/android/server/tracing/TracingServiceProxy;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/tracing/TracingServiceProxy$1;->this$0:Lcom/android/server/tracing/TracingServiceProxy;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/tracing/ITracingServiceProxy$Stub;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final notifyTraceSessionEnded(Z)V
    .locals 5

    .line 1
    iget-object p0, p0, Lcom/android/server/tracing/TracingServiceProxy$1;->this$0:Lcom/android/server/tracing/TracingServiceProxy;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    const-string v0, "TracingServiceProxy"

    .line 7
    .line 8
    new-instance v1, Landroid/content/Intent;

    .line 9
    .line 10
    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 11
    .line 12
    .line 13
    :try_start_0
    iget-object v2, p0, Lcom/android/server/tracing/TracingServiceProxy;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 14
    .line 15
    const-string v3, "com.android.traceur"

    .line 16
    .line 17
    const/high16 v4, 0x100000

    .line 18
    .line 19
    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 24
    .line 25
    const-string v3, "com.android.traceur.StopTraceService"

    .line 26
    .line 27
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 28
    .line 29
    .line 30
    if-eqz p1, :cond_0

    .line 31
    .line 32
    const-string p1, "com.android.traceur.NOTIFY_SESSION_STOLEN"

    .line 33
    .line 34
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :catch_0
    move-exception p0

    .line 39
    goto :goto_3

    .line 40
    :cond_0
    const-string p1, "com.android.traceur.NOTIFY_SESSION_STOPPED"

    .line 41
    .line 42
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 43
    .line 44
    .line 45
    :goto_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 46
    .line 47
    .line 48
    move-result-wide v2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    :try_start_1
    iget-object p0, p0, Lcom/android/server/tracing/TracingServiceProxy;->mContext:Landroid/content/Context;

    .line 50
    .line 51
    sget-object p1, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    .line 52
    .line 53
    invoke-virtual {p0, v1, p1}, Landroid/content/Context;->startForegroundServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 54
    .line 55
    .line 56
    :goto_1
    :try_start_2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    .line 57
    .line 58
    .line 59
    goto :goto_4

    .line 60
    :catchall_0
    move-exception p0

    .line 61
    goto :goto_2

    .line 62
    :catch_1
    move-exception p0

    .line 63
    :try_start_3
    const-string p1, "Failed to notifyTraceSessionEnded"

    .line 64
    .line 65
    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 66
    .line 67
    .line 68
    goto :goto_1

    .line 69
    :goto_2
    :try_start_4
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 70
    .line 71
    .line 72
    throw p0
    :try_end_4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_4} :catch_0

    .line 73
    :goto_3
    const-string p1, "Failed to locate Traceur"

    .line 74
    .line 75
    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 76
    .line 77
    .line 78
    :goto_4
    return-void
.end method

.method public final reportTrace(Landroid/tracing/TraceReportParams;)V
    .locals 9

    .line 1
    iget-object p0, p0, Lcom/android/server/tracing/TracingServiceProxy$1;->this$0:Lcom/android/server/tracing/TracingServiceProxy;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-wide v2, p1, Landroid/tracing/TraceReportParams;->uuidLsb:J

    .line 7
    .line 8
    iget-wide v4, p1, Landroid/tracing/TraceReportParams;->uuidMsb:J

    .line 9
    .line 10
    const/16 v0, 0x1a8

    .line 11
    .line 12
    const/4 v1, 0x1

    .line 13
    invoke-static/range {v0 .. v5}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIJJ)V

    .line 14
    .line 15
    .line 16
    new-instance v0, Landroid/content/ComponentName;

    .line 17
    .line 18
    iget-object v1, p1, Landroid/tracing/TraceReportParams;->reporterPackageName:Ljava/lang/String;

    .line 19
    .line 20
    iget-object v2, p1, Landroid/tracing/TraceReportParams;->reporterClassName:Ljava/lang/String;

    .line 21
    .line 22
    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    const-string v1, "Trace reporting service "

    .line 26
    .line 27
    const-string v2, "TracingServiceProxy"

    .line 28
    .line 29
    :try_start_0
    iget-object v3, p0, Lcom/android/server/tracing/TracingServiceProxy;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 30
    .line 31
    const/4 v4, 0x0

    .line 32
    invoke-virtual {v3, v0, v4}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    .line 33
    .line 34
    .line 35
    move-result-object v3
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    iget-object v4, v3, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    .line 37
    .line 38
    const-string v5, "android.permission.BIND_TRACE_REPORT_SERVICE"

    .line 39
    .line 40
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result v4

    .line 44
    if-nez v4, :cond_0

    .line 45
    .line 46
    new-instance p0, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    const-string v0, " does not request android.permission.BIND_TRACE_REPORT_SERVICE permission; instead requests "

    .line 59
    .line 60
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    iget-object v0, v3, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    .line 64
    .line 65
    invoke-static {p0, v0, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m$1(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_0
    const-string v1, "android.permission.DUMP"

    .line 70
    .line 71
    invoke-virtual {p0, v0, v1}, Lcom/android/server/tracing/TracingServiceProxy;->hasPermission(Landroid/content/ComponentName;Ljava/lang/String;)Z

    .line 72
    .line 73
    .line 74
    move-result v1

    .line 75
    const-string v2, "android.permission.PACKAGE_USAGE_STATS"

    .line 76
    .line 77
    invoke-virtual {p0, v0, v2}, Lcom/android/server/tracing/TracingServiceProxy;->hasPermission(Landroid/content/ComponentName;Ljava/lang/String;)Z

    .line 78
    .line 79
    .line 80
    move-result v2

    .line 81
    if-eqz v1, :cond_2

    .line 82
    .line 83
    if-nez v2, :cond_1

    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 87
    .line 88
    .line 89
    move-result-wide v1

    .line 90
    :try_start_1
    invoke-virtual {p0, v0}, Lcom/android/server/tracing/TracingServiceProxy;->getOrCreateReporterService(Landroid/content/ComponentName;)Lcom/android/internal/infra/ServiceConnector;

    .line 91
    .line 92
    .line 93
    move-result-object p0

    .line 94
    new-instance v0, Lcom/android/server/tracing/TracingServiceProxy$$ExternalSyntheticLambda1;

    .line 95
    .line 96
    invoke-direct {v0, p1}, Lcom/android/server/tracing/TracingServiceProxy$$ExternalSyntheticLambda1;-><init>(Landroid/tracing/TraceReportParams;)V

    .line 97
    .line 98
    .line 99
    invoke-interface {p0, v0}, Lcom/android/internal/infra/ServiceConnector;->post(Lcom/android/internal/infra/ServiceConnector$VoidJob;)Lcom/android/internal/infra/AndroidFuture;

    .line 100
    .line 101
    .line 102
    move-result-object p0

    .line 103
    new-instance v0, Lcom/android/server/tracing/TracingServiceProxy$$ExternalSyntheticLambda2;

    .line 104
    .line 105
    invoke-direct {v0, p1}, Lcom/android/server/tracing/TracingServiceProxy$$ExternalSyntheticLambda2;-><init>(Landroid/tracing/TraceReportParams;)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {p0, v0}, Lcom/android/internal/infra/AndroidFuture;->whenComplete(Ljava/util/function/BiConsumer;)Lcom/android/internal/infra/AndroidFuture;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 109
    .line 110
    .line 111
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 112
    .line 113
    .line 114
    goto :goto_2

    .line 115
    :catchall_0
    move-exception p0

    .line 116
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 117
    .line 118
    .line 119
    throw p0

    .line 120
    :cond_2
    :goto_0
    iget-wide v5, p1, Landroid/tracing/TraceReportParams;->uuidLsb:J

    .line 121
    .line 122
    iget-wide v7, p1, Landroid/tracing/TraceReportParams;->uuidMsb:J

    .line 123
    .line 124
    const/16 v3, 0x1a8

    .line 125
    .line 126
    const/4 v4, 0x4

    .line 127
    invoke-static/range {v3 .. v8}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIJJ)V

    .line 128
    .line 129
    .line 130
    goto :goto_2

    .line 131
    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    .line 132
    .line 133
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {v0}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    const-string v0, " does not exist"

    .line 144
    .line 145
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object p0

    .line 152
    invoke-static {v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    .line 154
    .line 155
    :goto_1
    iget-wide v5, p1, Landroid/tracing/TraceReportParams;->uuidLsb:J

    .line 156
    .line 157
    iget-wide v7, p1, Landroid/tracing/TraceReportParams;->uuidMsb:J

    .line 158
    .line 159
    const/16 v3, 0x1a8

    .line 160
    .line 161
    const/4 v4, 0x3

    .line 162
    invoke-static/range {v3 .. v8}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIJJ)V

    .line 163
    .line 164
    .line 165
    :goto_2
    return-void
.end method
