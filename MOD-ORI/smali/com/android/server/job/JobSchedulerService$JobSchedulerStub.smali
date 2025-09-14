.class public final Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;
.super Landroid/app/job/IJobScheduler$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/job/JobSchedulerService;


# direct methods
.method public constructor <init>(Lcom/android/server/job/JobSchedulerService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;->this$0:Lcom/android/server/job/JobSchedulerService;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/app/job/IJobScheduler$Stub;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static validateNamespace(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {p0}, Landroid/app/job/JobScheduler;->sanitizeNamespace(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_2

    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    const/16 v1, 0x3e8

    .line 18
    .line 19
    if-gt v0, v1, :cond_0

    .line 20
    .line 21
    invoke-virtual {p0}, Ljava/lang/String;->intern()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 27
    .line 28
    const-string/jumbo v0, "namespace cannot be more than 1000 characters"

    .line 29
    .line 30
    .line 31
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    throw p0

    .line 35
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 36
    .line 37
    const-string/jumbo v0, "namespace cannot be empty"

    .line 38
    .line 39
    .line 40
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    throw p0

    .line 44
    :cond_2
    :goto_0
    return-object p0
.end method


# virtual methods
.method public final canRunUserInitiatedJobs(Ljava/lang/String;)Z
    .locals 5

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;->this$0:Lcom/android/server/job/JobSchedulerService;

    .line 10
    .line 11
    iget-object v2, v2, Lcom/android/server/job/JobSchedulerService;->mLocalPM:Landroid/content/pm/PackageManagerInternal;

    .line 12
    .line 13
    const-wide/16 v3, 0x0

    .line 14
    .line 15
    invoke-virtual {v2, p1, v3, v4, v1}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-ne v0, v1, :cond_1

    .line 20
    .line 21
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;->this$0:Lcom/android/server/job/JobSchedulerService;

    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    const-string v0, "android.permission.RUN_USER_INITIATED_JOBS"

    .line 28
    .line 29
    const/4 v2, -0x1

    .line 30
    invoke-static {p0, v0, v2, v1, p1}, Landroid/content/PermissionChecker;->checkPermissionForPreflight(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;)I

    .line 31
    .line 32
    .line 33
    move-result p0

    .line 34
    if-nez p0, :cond_0

    .line 35
    .line 36
    const/4 p0, 0x1

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    const/4 p0, 0x0

    .line 39
    :goto_0
    return p0

    .line 40
    :cond_1
    new-instance p0, Ljava/lang/SecurityException;

    .line 41
    .line 42
    const-string v1, "Uid "

    .line 43
    .line 44
    const-string v2, " cannot query canRunUserInitiatedJobs for package "

    .line 45
    .line 46
    invoke-static {v0, v1, v2, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    throw p0
.end method

.method public final cancel(Ljava/lang/String;I)V
    .locals 8

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v3

    .line 5
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 6
    .line 7
    .line 8
    move-result-wide v6

    .line 9
    :try_start_0
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;->this$0:Lcom/android/server/job/JobSchedulerService;

    .line 10
    .line 11
    invoke-static {p1}, Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;->validateNamespace(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v5

    .line 15
    const/4 v4, 0x1

    .line 16
    move v1, v3

    .line 17
    move v2, p2

    .line 18
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/job/JobSchedulerService;->cancelJob(IIIILjava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    .line 20
    .line 21
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :catchall_0
    move-exception p0

    .line 26
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 27
    .line 28
    .line 29
    throw p0
.end method

.method public final cancelAll()V
    .locals 11

    .line 1
    const-string/jumbo v0, "cancelAll() called by app, callingUid="

    .line 2
    .line 3
    .line 4
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 5
    .line 6
    .line 7
    move-result v2

    .line 8
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 9
    .line 10
    .line 11
    move-result-wide v9

    .line 12
    :try_start_0
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;->this$0:Lcom/android/server/job/JobSchedulerService;

    .line 13
    .line 14
    new-instance p0, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v8

    .line 26
    const/4 v6, 0x0

    .line 27
    const/4 v7, 0x0

    .line 28
    const/4 v5, 0x0

    .line 29
    const/4 v3, 0x1

    .line 30
    const/4 v4, 0x0

    .line 31
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/job/JobSchedulerService;->cancelJobsForUid(IIIZZLjava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    .line 33
    .line 34
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :catchall_0
    move-exception p0

    .line 39
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 40
    .line 41
    .line 42
    throw p0
.end method

.method public final cancelAllInNamespace(Ljava/lang/String;)V
    .locals 11

    .line 1
    const-string/jumbo v0, "cancelAllInNamespace() called by app, callingUid="

    .line 2
    .line 3
    .line 4
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 5
    .line 6
    .line 7
    move-result v2

    .line 8
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 9
    .line 10
    .line 11
    move-result-wide v9

    .line 12
    :try_start_0
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;->this$0:Lcom/android/server/job/JobSchedulerService;

    .line 13
    .line 14
    invoke-static {p1}, Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;->validateNamespace(Ljava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v7

    .line 18
    new-instance p0, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v8

    .line 30
    const/4 v3, 0x1

    .line 31
    const/4 v4, 0x0

    .line 32
    const/4 v5, 0x0

    .line 33
    const/4 v6, 0x1

    .line 34
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/job/JobSchedulerService;->cancelJobsForUid(IIIZZLjava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    .line 36
    .line 37
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :catchall_0
    move-exception p0

    .line 42
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 43
    .line 44
    .line 45
    throw p0
.end method

.method public final dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;->this$0:Lcom/android/server/job/JobSchedulerService;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "JobScheduler"

    .line 8
    .line 9
    invoke-static {v0, v1, p2}, Lcom/android/internal/util/jobs/DumpUtils;->checkDumpAndUsageStatsPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    invoke-static {p3}, Lcom/android/internal/util/jobs/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    const/4 v1, 0x0

    .line 21
    const/4 v2, -0x1

    .line 22
    if-nez v0, :cond_e

    .line 23
    .line 24
    move v0, v1

    .line 25
    move v3, v0

    .line 26
    :goto_0
    array-length v4, p3

    .line 27
    if-ge v0, v4, :cond_c

    .line 28
    .line 29
    aget-object v4, p3, v0

    .line 30
    .line 31
    const-string v5, "-h"

    .line 32
    .line 33
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v5

    .line 37
    if-eqz v5, :cond_1

    .line 38
    .line 39
    const-string p0, "Job Scheduler (jobscheduler) dump options:"

    .line 40
    .line 41
    const-string p1, "  [-h] [package] ..."

    .line 42
    .line 43
    const-string p3, "    -h: print this help"

    .line 44
    .line 45
    const-string v0, "  [package] is an optional package name to limit the output to."

    .line 46
    .line 47
    invoke-static {p2, p0, p1, p3, v0}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    return-void

    .line 51
    :cond_1
    const-string v5, "-a"

    .line 52
    .line 53
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result v5

    .line 57
    if-eqz v5, :cond_2

    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_2
    const-string v5, "--proto"

    .line 61
    .line 62
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result v5

    .line 66
    const/4 v6, 0x1

    .line 67
    if-eqz v5, :cond_3

    .line 68
    .line 69
    move v3, v6

    .line 70
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_3
    const-string v5, "--force-olaf-restrict"

    .line 74
    .line 75
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    move-result v5

    .line 79
    const-string v7, " for olafRest..."

    .line 80
    .line 81
    if-eqz v5, :cond_7

    .line 82
    .line 83
    add-int/2addr v0, v6

    .line 84
    array-length p1, p3

    .line 85
    if-lt v0, p1, :cond_4

    .line 86
    .line 87
    const-string p0, "Error: --force-olaf-restrict needs an argument [true|false]"

    .line 88
    .line 89
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    return-void

    .line 93
    :cond_4
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;->this$0:Lcom/android/server/job/JobSchedulerService;

    .line 94
    .line 95
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mJobRestrictions:Ljava/util/List;

    .line 96
    .line 97
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 98
    .line 99
    .line 100
    move-result-object p0

    .line 101
    :cond_5
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 102
    .line 103
    .line 104
    move-result p1

    .line 105
    if-eqz p1, :cond_6

    .line 106
    .line 107
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    check-cast p1, Lcom/android/server/job/restrictions/JobRestriction;

    .line 112
    .line 113
    instance-of v1, p1, Lcom/android/server/job/restrictions/OlafRestriction;

    .line 114
    .line 115
    if-eqz v1, :cond_5

    .line 116
    .line 117
    check-cast p1, Lcom/android/server/job/restrictions/OlafRestriction;

    .line 118
    .line 119
    new-instance v1, Ljava/lang/StringBuilder;

    .line 120
    .line 121
    const-string v2, "Setting force restrict as "

    .line 122
    .line 123
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    aget-object v2, p3, v0

    .line 127
    .line 128
    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 129
    .line 130
    .line 131
    move-result v2

    .line 132
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v1

    .line 142
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    aget-object v1, p3, v0

    .line 146
    .line 147
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 148
    .line 149
    .line 150
    move-result v1

    .line 151
    iget-boolean v2, p1, Lcom/android/server/job/restrictions/OlafRestriction;->mForceRestricted:Z

    .line 152
    .line 153
    if-eq v2, v1, :cond_5

    .line 154
    .line 155
    iput-boolean v1, p1, Lcom/android/server/job/restrictions/OlafRestriction;->mForceRestricted:Z

    .line 156
    .line 157
    iget-object v2, p1, Lcom/android/server/job/restrictions/JobRestriction;->mService:Lcom/android/server/job/JobSchedulerService;

    .line 158
    .line 159
    invoke-virtual {v2, p1, v1}, Lcom/android/server/job/JobSchedulerService;->onRestrictionStateChanged(Lcom/android/server/job/restrictions/JobRestriction;Z)V

    .line 160
    .line 161
    .line 162
    goto :goto_2

    .line 163
    :cond_6
    return-void

    .line 164
    :cond_7
    const-string v5, "--disable-olaf-restrict"

    .line 165
    .line 166
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 167
    .line 168
    .line 169
    move-result v5

    .line 170
    if-eqz v5, :cond_b

    .line 171
    .line 172
    add-int/2addr v0, v6

    .line 173
    array-length p1, p3

    .line 174
    if-lt v0, p1, :cond_8

    .line 175
    .line 176
    const-string p0, "Error: --disable-olaf-restrict needs an argument [true|false]"

    .line 177
    .line 178
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 179
    .line 180
    .line 181
    return-void

    .line 182
    :cond_8
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;->this$0:Lcom/android/server/job/JobSchedulerService;

    .line 183
    .line 184
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mJobRestrictions:Ljava/util/List;

    .line 185
    .line 186
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 187
    .line 188
    .line 189
    move-result-object p0

    .line 190
    :cond_9
    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 191
    .line 192
    .line 193
    move-result p1

    .line 194
    if-eqz p1, :cond_a

    .line 195
    .line 196
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 197
    .line 198
    .line 199
    move-result-object p1

    .line 200
    check-cast p1, Lcom/android/server/job/restrictions/JobRestriction;

    .line 201
    .line 202
    instance-of v1, p1, Lcom/android/server/job/restrictions/OlafRestriction;

    .line 203
    .line 204
    if-eqz v1, :cond_9

    .line 205
    .line 206
    check-cast p1, Lcom/android/server/job/restrictions/OlafRestriction;

    .line 207
    .line 208
    new-instance v1, Ljava/lang/StringBuilder;

    .line 209
    .line 210
    const-string v2, "Setting force disabled as "

    .line 211
    .line 212
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 213
    .line 214
    .line 215
    aget-object v2, p3, v0

    .line 216
    .line 217
    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 218
    .line 219
    .line 220
    move-result v2

    .line 221
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 222
    .line 223
    .line 224
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    .line 226
    .line 227
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object v1

    .line 231
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 232
    .line 233
    .line 234
    aget-object v1, p3, v0

    .line 235
    .line 236
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 237
    .line 238
    .line 239
    move-result v1

    .line 240
    iget-boolean v2, p1, Lcom/android/server/job/restrictions/OlafRestriction;->mForceDisabled:Z

    .line 241
    .line 242
    if-eq v2, v1, :cond_9

    .line 243
    .line 244
    iput-boolean v1, p1, Lcom/android/server/job/restrictions/OlafRestriction;->mForceDisabled:Z

    .line 245
    .line 246
    xor-int/lit8 v1, v1, 0x1

    .line 247
    .line 248
    iget-object v2, p1, Lcom/android/server/job/restrictions/JobRestriction;->mService:Lcom/android/server/job/JobSchedulerService;

    .line 249
    .line 250
    invoke-virtual {v2, p1, v1}, Lcom/android/server/job/JobSchedulerService;->onRestrictionStateChanged(Lcom/android/server/job/restrictions/JobRestriction;Z)V

    .line 251
    .line 252
    .line 253
    goto :goto_3

    .line 254
    :cond_a
    return-void

    .line 255
    :cond_b
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 256
    .line 257
    .line 258
    move-result v5

    .line 259
    if-lez v5, :cond_c

    .line 260
    .line 261
    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    .line 262
    .line 263
    .line 264
    move-result v1

    .line 265
    const/16 v5, 0x2d

    .line 266
    .line 267
    if-ne v1, v5, :cond_c

    .line 268
    .line 269
    const-string p0, "Unknown option: "

    .line 270
    .line 271
    invoke-virtual {p0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 272
    .line 273
    .line 274
    move-result-object p0

    .line 275
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 276
    .line 277
    .line 278
    return-void

    .line 279
    :cond_c
    array-length v1, p3

    .line 280
    if-ge v0, v1, :cond_d

    .line 281
    .line 282
    aget-object p3, p3, v0

    .line 283
    .line 284
    :try_start_0
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;->this$0:Lcom/android/server/job/JobSchedulerService;

    .line 285
    .line 286
    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 287
    .line 288
    .line 289
    move-result-object v0

    .line 290
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 291
    .line 292
    .line 293
    move-result-object v0

    .line 294
    const/high16 v1, 0x400000

    .line 295
    .line 296
    invoke-virtual {v0, p3, v1}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I

    .line 297
    .line 298
    .line 299
    move-result v2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 300
    :cond_d
    move v1, v3

    .line 301
    goto :goto_4

    .line 302
    :catch_0
    const-string p0, "Invalid package: "

    .line 303
    .line 304
    invoke-static {p2, p0, p3}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    .line 306
    .line 307
    return-void

    .line 308
    :cond_e
    :goto_4
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 309
    .line 310
    .line 311
    move-result-wide v3

    .line 312
    if-eqz v1, :cond_f

    .line 313
    .line 314
    :try_start_1
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;->this$0:Lcom/android/server/job/JobSchedulerService;

    .line 315
    .line 316
    invoke-virtual {p0, p1, v2}, Lcom/android/server/job/JobSchedulerService;->dumpInternalProto(Ljava/io/FileDescriptor;I)V

    .line 317
    .line 318
    .line 319
    goto :goto_5

    .line 320
    :catchall_0
    move-exception p0

    .line 321
    goto :goto_6

    .line 322
    :cond_f
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;->this$0:Lcom/android/server/job/JobSchedulerService;

    .line 323
    .line 324
    new-instance p1, Landroid/util/IndentingPrintWriter;

    .line 325
    .line 326
    const-string p3, "  "

    .line 327
    .line 328
    invoke-direct {p1, p2, p3}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 329
    .line 330
    .line 331
    invoke-virtual {p0, p1, v2}, Lcom/android/server/job/JobSchedulerService;->dumpInternal(Landroid/util/IndentingPrintWriter;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 332
    .line 333
    .line 334
    :goto_5
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 335
    .line 336
    .line 337
    return-void

    .line 338
    :goto_6
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 339
    .line 340
    .line 341
    throw p0
.end method

.method public final enforceBuilderApiPermissions(IILandroid/app/job/JobInfo;)Landroid/app/job/JobInfo;
    .locals 2

    .line 1
    invoke-virtual {p3}, Landroid/app/job/JobInfo;->getBias()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;->this$0:Lcom/android/server/job/JobSchedulerService;

    .line 8
    .line 9
    const-string v0, "android.permission.UPDATE_DEVICE_STATS"

    .line 10
    .line 11
    invoke-static {p1, p2, p0, v0}, Lcom/android/server/job/JobSchedulerService;->-$$Nest$mhasPermission(IILcom/android/server/job/JobSchedulerService;Ljava/lang/String;)Z

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    if-nez p0, :cond_1

    .line 16
    .line 17
    const-wide/32 v0, 0x11e8ebd1

    .line 18
    .line 19
    .line 20
    invoke-static {v0, v1, p1}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JI)Z

    .line 21
    .line 22
    .line 23
    move-result p0

    .line 24
    if-nez p0, :cond_0

    .line 25
    .line 26
    new-instance p0, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    const-string p2, "Uid "

    .line 29
    .line 30
    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string p1, " set bias on its job"

    .line 37
    .line 38
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    const-string p1, "JobScheduler"

    .line 46
    .line 47
    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    .line 49
    .line 50
    new-instance p0, Landroid/app/job/JobInfo$Builder;

    .line 51
    .line 52
    invoke-direct {p0, p3}, Landroid/app/job/JobInfo$Builder;-><init>(Landroid/app/job/JobInfo;)V

    .line 53
    .line 54
    .line 55
    const/4 p1, 0x0

    .line 56
    invoke-virtual {p0, p1}, Landroid/app/job/JobInfo$Builder;->setBias(I)Landroid/app/job/JobInfo$Builder;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    invoke-virtual {p0, p1, p1, p1, p1}, Landroid/app/job/JobInfo$Builder;->build(ZZZZ)Landroid/app/job/JobInfo;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    return-object p0

    .line 65
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    .line 66
    .line 67
    const-string p1, "Apps may not call setBias()"

    .line 68
    .line 69
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    throw p0

    .line 73
    :cond_1
    return-object p3
.end method

.method public final enforceValidJobRequest(IILandroid/app/job/JobInfo;)V
    .locals 6

    .line 1
    const-string v0, "Scheduled service "

    .line 2
    .line 3
    const-string/jumbo v1, "uid "

    .line 4
    .line 5
    .line 6
    const-string v2, "No such service "

    .line 7
    .line 8
    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;->this$0:Lcom/android/server/job/JobSchedulerService;

    .line 9
    .line 10
    invoke-virtual {v3}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    invoke-static {p1}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    .line 15
    .line 16
    .line 17
    move-result-object v4

    .line 18
    const/4 v5, 0x0

    .line 19
    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    invoke-virtual {p3}, Landroid/app/job/JobInfo;->getService()Landroid/content/ComponentName;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    const/high16 v5, 0xc0000

    .line 32
    .line 33
    :try_start_0
    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    if-eqz v3, :cond_6

    .line 38
    .line 39
    iget-object v2, v3, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 40
    .line 41
    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 42
    .line 43
    if-ne v2, p1, :cond_5

    .line 44
    .line 45
    const-string v1, "android.permission.BIND_JOB_SERVICE"

    .line 46
    .line 47
    iget-object v2, v3, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    .line 48
    .line 49
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    if-eqz v1, :cond_4

    .line 54
    .line 55
    invoke-virtual {p3}, Landroid/app/job/JobInfo;->isPersisted()Z

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    if-eqz v0, :cond_1

    .line 60
    .line 61
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;->this$0:Lcom/android/server/job/JobSchedulerService;

    .line 62
    .line 63
    const-string v1, "android.permission.RECEIVE_BOOT_COMPLETED"

    .line 64
    .line 65
    invoke-static {p1, p2, v0, v1}, Lcom/android/server/job/JobSchedulerService;->-$$Nest$mhasPermission(IILcom/android/server/job/JobSchedulerService;Ljava/lang/String;)Z

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    if-eqz v0, :cond_0

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 73
    .line 74
    const-string p1, "Requested job cannot be persisted without holding android.permission.RECEIVE_BOOT_COMPLETED permission"

    .line 75
    .line 76
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    throw p0

    .line 80
    :cond_1
    :goto_0
    invoke-virtual {p3}, Landroid/app/job/JobInfo;->getRequiredNetwork()Landroid/net/NetworkRequest;

    .line 81
    .line 82
    .line 83
    move-result-object p3

    .line 84
    if-eqz p3, :cond_3

    .line 85
    .line 86
    const-wide/32 v0, 0x10341a19

    .line 87
    .line 88
    .line 89
    invoke-static {v0, v1, p1}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JI)Z

    .line 90
    .line 91
    .line 92
    move-result p3

    .line 93
    if-eqz p3, :cond_3

    .line 94
    .line 95
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;->this$0:Lcom/android/server/job/JobSchedulerService;

    .line 96
    .line 97
    const-string p3, "android.permission.ACCESS_NETWORK_STATE"

    .line 98
    .line 99
    invoke-static {p1, p2, p0, p3}, Lcom/android/server/job/JobSchedulerService;->-$$Nest$mhasPermission(IILcom/android/server/job/JobSchedulerService;Ljava/lang/String;)Z

    .line 100
    .line 101
    .line 102
    move-result p0

    .line 103
    if-eqz p0, :cond_2

    .line 104
    .line 105
    goto :goto_1

    .line 106
    :cond_2
    new-instance p0, Ljava/lang/SecurityException;

    .line 107
    .line 108
    const-string p1, "android.permission.ACCESS_NETWORK_STATE required for jobs with a connectivity constraint"

    .line 109
    .line 110
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    throw p0

    .line 114
    :cond_3
    :goto_1
    return-void

    .line 115
    :cond_4
    :try_start_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 116
    .line 117
    new-instance p1, Ljava/lang/StringBuilder;

    .line 118
    .line 119
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    const-string p2, " does not require android.permission.BIND_JOB_SERVICE permission"

    .line 126
    .line 127
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    throw p0

    .line 138
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 139
    .line 140
    new-instance p2, Ljava/lang/StringBuilder;

    .line 141
    .line 142
    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    const-string p1, " cannot schedule job in "

    .line 149
    .line 150
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object p1

    .line 157
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object p1

    .line 164
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    throw p0

    .line 168
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 169
    .line 170
    new-instance p1, Ljava/lang/StringBuilder;

    .line 171
    .line 172
    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object p1

    .line 182
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 183
    .line 184
    .line 185
    throw p0
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 186
    :catch_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 187
    .line 188
    const-string p1, "Tried to schedule job for non-existent component: "

    .line 189
    .line 190
    invoke-static {v4, p1}, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService$$ExternalSyntheticOutline0;->m(Landroid/content/ComponentName;Ljava/lang/String;)Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object p1

    .line 194
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 195
    .line 196
    .line 197
    throw p0
.end method

.method public final enqueue(Ljava/lang/String;Landroid/app/job/JobInfo;Landroid/app/job/JobWorkItem;)I
    .locals 10

    .line 1
    sget-boolean v0, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string v1, "Enqueueing job: "

    .line 8
    .line 9
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p2}, Landroid/app/job/JobInfo;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const-string v1, " work: "

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    const-string v1, "JobScheduler"

    .line 32
    .line 33
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    .line 35
    .line 36
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    .line 45
    .line 46
    .line 47
    move-result v9

    .line 48
    invoke-virtual {p0, v0, v1, p2}, Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;->enforceValidJobRequest(IILandroid/app/job/JobInfo;)V

    .line 49
    .line 50
    .line 51
    if-eqz p3, :cond_2

    .line 52
    .line 53
    const/4 v6, -0x1

    .line 54
    const/4 v7, 0x0

    .line 55
    move-object v2, p0

    .line 56
    move-object v3, p2

    .line 57
    move v4, v0

    .line 58
    move v5, v1

    .line 59
    move-object v8, p3

    .line 60
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;->validateJob(Landroid/app/job/JobInfo;IIILjava/lang/String;Landroid/app/job/JobWorkItem;)I

    .line 61
    .line 62
    .line 63
    move-result v2

    .line 64
    const/4 v3, 0x1

    .line 65
    if-eq v2, v3, :cond_1

    .line 66
    .line 67
    return v2

    .line 68
    :cond_1
    invoke-static {p1}, Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;->validateNamespace(Ljava/lang/String;)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v8

    .line 72
    invoke-virtual {p0, v0, v1, p2}, Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;->enforceBuilderApiPermissions(IILandroid/app/job/JobInfo;)Landroid/app/job/JobInfo;

    .line 73
    .line 74
    .line 75
    move-result-object v3

    .line 76
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 77
    .line 78
    .line 79
    move-result-wide p1

    .line 80
    :try_start_0
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;->this$0:Lcom/android/server/job/JobSchedulerService;

    .line 81
    .line 82
    const/4 v6, 0x0

    .line 83
    const/4 p0, 0x0

    .line 84
    move-object v4, p3

    .line 85
    move v5, v0

    .line 86
    move v7, v9

    .line 87
    move-object v9, p0

    .line 88
    invoke-virtual/range {v2 .. v9}, Lcom/android/server/job/JobSchedulerService;->scheduleAsPackage(Landroid/app/job/JobInfo;Landroid/app/job/JobWorkItem;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)I

    .line 89
    .line 90
    .line 91
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    invoke-static {p1, p2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 93
    .line 94
    .line 95
    return p0

    .line 96
    :catchall_0
    move-exception p0

    .line 97
    invoke-static {p1, p2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 98
    .line 99
    .line 100
    throw p0

    .line 101
    :cond_2
    new-instance p0, Ljava/lang/NullPointerException;

    .line 102
    .line 103
    const-string/jumbo p1, "work is null"

    .line 104
    .line 105
    .line 106
    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    throw p0
.end method

.method public final getAllJobSnapshots()Landroid/content/pm/ParceledListSlice;
    .locals 4

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x3e8

    .line 6
    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;->this$0:Lcom/android/server/job/JobSchedulerService;

    .line 10
    .line 11
    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    .line 12
    .line 13
    monitor-enter v0

    .line 14
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    .line 15
    .line 16
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;->this$0:Lcom/android/server/job/JobSchedulerService;

    .line 17
    .line 18
    iget-object v2, v2, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    .line 19
    .line 20
    iget-object v2, v2, Lcom/android/server/job/JobStore;->mJobSet:Lcom/android/server/job/JobStore$JobSet;

    .line 21
    .line 22
    invoke-virtual {v2}, Lcom/android/server/job/JobStore$JobSet;->size()I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 27
    .line 28
    .line 29
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;->this$0:Lcom/android/server/job/JobSchedulerService;

    .line 30
    .line 31
    iget-object v2, v2, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    .line 32
    .line 33
    new-instance v3, Lcom/android/server/job/JobSchedulerService$JobSchedulerStub$$ExternalSyntheticLambda0;

    .line 34
    .line 35
    invoke-direct {v3, p0, v1}, Lcom/android/server/job/JobSchedulerService$JobSchedulerStub$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;Ljava/util/ArrayList;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v2, v3}, Lcom/android/server/job/JobStore;->forEachJob(Ljava/util/function/Consumer;)V

    .line 39
    .line 40
    .line 41
    new-instance p0, Landroid/content/pm/ParceledListSlice;

    .line 42
    .line 43
    invoke-direct {p0, v1}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    .line 44
    .line 45
    .line 46
    monitor-exit v0

    .line 47
    return-object p0

    .line 48
    :catchall_0
    move-exception p0

    .line 49
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    throw p0

    .line 51
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    .line 52
    .line 53
    const-string/jumbo v0, "getAllJobSnapshots() is system internal use only."

    .line 54
    .line 55
    .line 56
    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    throw p0
.end method

.method public final getAllPendingJobs()Ljava/util/Map;
    .locals 7

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 6
    .line 7
    .line 8
    move-result-wide v1

    .line 9
    :try_start_0
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;->this$0:Lcom/android/server/job/JobSchedulerService;

    .line 10
    .line 11
    invoke-static {p0, v0}, Lcom/android/server/job/JobSchedulerService;->-$$Nest$mgetPendingJobs(Lcom/android/server/job/JobSchedulerService;I)Landroid/util/ArrayMap;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    new-instance v0, Landroid/util/ArrayMap;

    .line 16
    .line 17
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 18
    .line 19
    .line 20
    const/4 v3, 0x0

    .line 21
    :goto_0
    invoke-virtual {p0}, Landroid/util/ArrayMap;->size()I

    .line 22
    .line 23
    .line 24
    move-result v4

    .line 25
    if-ge v3, v4, :cond_0

    .line 26
    .line 27
    invoke-virtual {p0, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    check-cast v4, Ljava/lang/String;

    .line 32
    .line 33
    new-instance v5, Landroid/content/pm/ParceledListSlice;

    .line 34
    .line 35
    invoke-virtual {p0, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v6

    .line 39
    check-cast v6, Ljava/util/List;

    .line 40
    .line 41
    invoke-direct {v5, v6}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    .line 46
    .line 47
    add-int/lit8 v3, v3, 0x1

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :catchall_0
    move-exception p0

    .line 51
    goto :goto_1

    .line 52
    :cond_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 53
    .line 54
    .line 55
    return-object v0

    .line 56
    :goto_1
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 57
    .line 58
    .line 59
    throw p0
.end method

.method public final getAllPendingJobsInNamespace(Ljava/lang/String;)Landroid/content/pm/ParceledListSlice;
    .locals 4

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 6
    .line 7
    .line 8
    move-result-wide v1

    .line 9
    :try_start_0
    new-instance v3, Landroid/content/pm/ParceledListSlice;

    .line 10
    .line 11
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;->this$0:Lcom/android/server/job/JobSchedulerService;

    .line 12
    .line 13
    invoke-static {p1}, Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;->validateNamespace(Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-static {p0, v0, p1}, Lcom/android/server/job/JobSchedulerService;->-$$Nest$mgetPendingJobsInNamespace(Lcom/android/server/job/JobSchedulerService;ILjava/lang/String;)Ljava/util/List;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    invoke-direct {v3, p0}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    .line 23
    .line 24
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 25
    .line 26
    .line 27
    return-object v3

    .line 28
    :catchall_0
    move-exception p0

    .line 29
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 30
    .line 31
    .line 32
    throw p0
.end method

.method public final getPendingJob(Ljava/lang/String;I)Landroid/app/job/JobInfo;
    .locals 3

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 6
    .line 7
    .line 8
    move-result-wide v1

    .line 9
    :try_start_0
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;->this$0:Lcom/android/server/job/JobSchedulerService;

    .line 10
    .line 11
    invoke-static {p1}, Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;->validateNamespace(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-static {v0, p2, p0, p1}, Lcom/android/server/job/JobSchedulerService;->-$$Nest$mgetPendingJob(IILcom/android/server/job/JobSchedulerService;Ljava/lang/String;)Landroid/app/job/JobInfo;

    .line 16
    .line 17
    .line 18
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 20
    .line 21
    .line 22
    return-object p0

    .line 23
    :catchall_0
    move-exception p0

    .line 24
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 25
    .line 26
    .line 27
    throw p0
.end method

.method public final getPendingJobReason(Ljava/lang/String;I)I
    .locals 3

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 6
    .line 7
    .line 8
    move-result-wide v1

    .line 9
    :try_start_0
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;->this$0:Lcom/android/server/job/JobSchedulerService;

    .line 10
    .line 11
    invoke-static {p1}, Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;->validateNamespace(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p0, v0, p2, p1}, Lcom/android/server/job/JobSchedulerService;->getPendingJobReason(IILjava/lang/String;)I

    .line 16
    .line 17
    .line 18
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 20
    .line 21
    .line 22
    return p0

    .line 23
    :catchall_0
    move-exception p0

    .line 24
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 25
    .line 26
    .line 27
    throw p0
.end method

.method public final getStartedJobs()Ljava/util/List;
    .locals 4

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x3e8

    .line 6
    .line 7
    if-ne v0, v1, :cond_2

    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;->this$0:Lcom/android/server/job/JobSchedulerService;

    .line 10
    .line 11
    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    .line 12
    .line 13
    monitor-enter v0

    .line 14
    :try_start_0
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;->this$0:Lcom/android/server/job/JobSchedulerService;

    .line 15
    .line 16
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mConcurrencyManager:Lcom/android/server/job/JobConcurrencyManager;

    .line 17
    .line 18
    iget-object p0, p0, Lcom/android/server/job/JobConcurrencyManager;->mRunningJobs:Landroid/util/ArraySet;

    .line 19
    .line 20
    new-instance v1, Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-virtual {p0}, Landroid/util/ArraySet;->size()I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Landroid/util/ArraySet;->size()I

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    add-int/lit8 v2, v2, -0x1

    .line 34
    .line 35
    :goto_0
    if-ltz v2, :cond_1

    .line 36
    .line 37
    invoke-virtual {p0, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    check-cast v3, Lcom/android/server/job/controllers/JobStatus;

    .line 42
    .line 43
    if-eqz v3, :cond_0

    .line 44
    .line 45
    iget-object v3, v3, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    .line 46
    .line 47
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    goto :goto_1

    .line 51
    :catchall_0
    move-exception p0

    .line 52
    goto :goto_2

    .line 53
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, -0x1

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_1
    monitor-exit v0

    .line 57
    return-object v1

    .line 58
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    throw p0

    .line 60
    :cond_2
    new-instance p0, Ljava/lang/SecurityException;

    .line 61
    .line 62
    const-string/jumbo v0, "getStartedJobs() is system internal use only."

    .line 63
    .line 64
    .line 65
    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    throw p0
.end method

.method public final handleShellCommand(Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;[Ljava/lang/String;)I
    .locals 6

    .line 1
    new-instance v0, Lcom/android/server/job/JobSchedulerShellCommand;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;->this$0:Lcom/android/server/job/JobSchedulerService;

    .line 4
    .line 5
    invoke-direct {v0}, Lcom/android/modules/utils/BasicShellCommandHandler;-><init>()V

    .line 6
    .line 7
    .line 8
    iput-object v1, v0, Lcom/android/server/job/JobSchedulerShellCommand;->mInternal:Lcom/android/server/job/JobSchedulerService;

    .line 9
    .line 10
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    iput-object v1, v0, Lcom/android/server/job/JobSchedulerShellCommand;->mPM:Landroid/content/pm/IPackageManager;

    .line 15
    .line 16
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    invoke-virtual {p3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    .line 25
    .line 26
    .line 27
    move-result-object v4

    .line 28
    move-object v1, p0

    .line 29
    move-object v5, p4

    .line 30
    invoke-virtual/range {v0 .. v5}, Lcom/android/modules/utils/BasicShellCommandHandler;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    move-result p0

    .line 34
    return p0
.end method

.method public final hasRunUserInitiatedJobsPermission(Ljava/lang/String;I)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;->this$0:Lcom/android/server/job/JobSchedulerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService;->mLocalPM:Landroid/content/pm/PackageManagerInternal;

    .line 4
    .line 5
    const-wide/16 v1, 0x0

    .line 6
    .line 7
    invoke-virtual {v0, p1, v1, v2, p2}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    .line 8
    .line 9
    .line 10
    move-result p2

    .line 11
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eq v0, p2, :cond_1

    .line 16
    .line 17
    invoke-static {v0}, Landroid/os/UserHandle;->isCore(I)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    .line 25
    .line 26
    const-string p2, "Uid "

    .line 27
    .line 28
    const-string v1, " cannot query hasRunUserInitiatedJobsPermission for package "

    .line 29
    .line 30
    invoke-static {v0, p2, v1, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    throw p0

    .line 38
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;->this$0:Lcom/android/server/job/JobSchedulerService;

    .line 39
    .line 40
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    const-string v0, "android.permission.RUN_USER_INITIATED_JOBS"

    .line 45
    .line 46
    const/4 v1, -0x1

    .line 47
    invoke-static {p0, v0, v1, p2, p1}, Landroid/content/PermissionChecker;->checkPermissionForPreflight(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;)I

    .line 48
    .line 49
    .line 50
    move-result p0

    .line 51
    if-nez p0, :cond_2

    .line 52
    .line 53
    const/4 p0, 0x1

    .line 54
    goto :goto_1

    .line 55
    :cond_2
    const/4 p0, 0x0

    .line 56
    :goto_1
    return p0
.end method

.method public final isInStateToScheduleUserInitiatedJobs(IILjava/lang/String;)Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;->this$0:Lcom/android/server/job/JobSchedulerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/app/ActivityManagerInternal;->getUidProcessState(I)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    sget-boolean v1, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    .line 10
    .line 11
    const-string v2, "Uid "

    .line 12
    .line 13
    const-string v3, "JobScheduler"

    .line 14
    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    const-string v4, " proc state="

    .line 18
    .line 19
    invoke-static {p1, v2, v4}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    move-result-object v4

    .line 23
    invoke-static {v0}, Landroid/app/ActivityManager;->procStateToString(I)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v5

    .line 27
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v4

    .line 34
    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    .line 36
    .line 37
    :cond_0
    const/4 v4, 0x2

    .line 38
    if-ne v0, v4, :cond_1

    .line 39
    .line 40
    const/4 p0, 0x1

    .line 41
    return p0

    .line 42
    :cond_1
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;->this$0:Lcom/android/server/job/JobSchedulerService;

    .line 43
    .line 44
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 45
    .line 46
    invoke-virtual {p0, p1, p2, p3}, Landroid/app/ActivityManagerInternal;->canScheduleUserInitiatedJobs(IILjava/lang/String;)Z

    .line 47
    .line 48
    .line 49
    move-result p0

    .line 50
    if-eqz v1, :cond_2

    .line 51
    .line 52
    new-instance p2, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    const-string p1, " AM.canScheduleUserInitiatedJobs= "

    .line 61
    .line 62
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    invoke-static {v3, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    .line 74
    .line 75
    :cond_2
    return p0
.end method

.method public final notePendingUserRequestedAppStop(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/app/job/IJobScheduler$Stub;->notePendingUserRequestedAppStop_enforcePermission()V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;->this$0:Lcom/android/server/job/JobSchedulerService;

    .line 7
    .line 8
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/job/JobSchedulerService;->notePendingUserRequestedAppStopInternal(Ljava/lang/String;ILjava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    .line 13
    .line 14
    const-string/jumbo p1, "packageName"

    .line 15
    .line 16
    .line 17
    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    throw p0
.end method

.method public final registerUserVisibleJobObserver(Landroid/app/job/IUserVisibleJobObserver;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/app/job/IJobScheduler$Stub;->registerUserVisibleJobObserver_enforcePermission()V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;->this$0:Lcom/android/server/job/JobSchedulerService;

    .line 7
    .line 8
    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService;->mUserVisibleJobObservers:Landroid/os/RemoteCallbackList;

    .line 9
    .line 10
    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 11
    .line 12
    .line 13
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;->this$0:Lcom/android/server/job/JobSchedulerService;

    .line 14
    .line 15
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mHandler:Lcom/android/server/job/JobSchedulerService$JobHandler;

    .line 16
    .line 17
    const/16 v0, 0xa

    .line 18
    .line 19
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    .line 28
    .line 29
    const-string/jumbo p1, "observer"

    .line 30
    .line 31
    .line 32
    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    throw p0
.end method

.method public final schedule(Ljava/lang/String;Landroid/app/job/JobInfo;)I
    .locals 11

    .line 1
    sget-boolean v0, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string v1, "Scheduling job: "

    .line 8
    .line 9
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p2}, Landroid/app/job/JobInfo;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const-string v1, "JobScheduler"

    .line 24
    .line 25
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 33
    .line 34
    .line 35
    move-result v9

    .line 36
    invoke-static {v9}, Landroid/os/UserHandle;->getUserId(I)I

    .line 37
    .line 38
    .line 39
    move-result v10

    .line 40
    invoke-virtual {p0, v9, v0, p2}, Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;->enforceValidJobRequest(IILandroid/app/job/JobInfo;)V

    .line 41
    .line 42
    .line 43
    const/4 v8, 0x0

    .line 44
    const/4 v6, -0x1

    .line 45
    const/4 v7, 0x0

    .line 46
    move-object v2, p0

    .line 47
    move-object v3, p2

    .line 48
    move v4, v9

    .line 49
    move v5, v0

    .line 50
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;->validateJob(Landroid/app/job/JobInfo;IIILjava/lang/String;Landroid/app/job/JobWorkItem;)I

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    const/4 v2, 0x1

    .line 55
    if-eq v1, v2, :cond_1

    .line 56
    .line 57
    return v1

    .line 58
    :cond_1
    invoke-static {p1}, Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;->validateNamespace(Ljava/lang/String;)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v7

    .line 62
    invoke-virtual {p0, v9, v0, p2}, Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;->enforceBuilderApiPermissions(IILandroid/app/job/JobInfo;)Landroid/app/job/JobInfo;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 67
    .line 68
    .line 69
    move-result-wide p1

    .line 70
    :try_start_0
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;->this$0:Lcom/android/server/job/JobSchedulerService;

    .line 71
    .line 72
    const/4 v8, 0x0

    .line 73
    const/4 v3, 0x0

    .line 74
    const/4 v5, 0x0

    .line 75
    move v4, v9

    .line 76
    move v6, v10

    .line 77
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/job/JobSchedulerService;->scheduleAsPackage(Landroid/app/job/JobInfo;Landroid/app/job/JobWorkItem;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)I

    .line 78
    .line 79
    .line 80
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    invoke-static {p1, p2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 82
    .line 83
    .line 84
    return p0

    .line 85
    :catchall_0
    move-exception p0

    .line 86
    invoke-static {p1, p2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 87
    .line 88
    .line 89
    throw p0
.end method

.method public final scheduleAsPackage(Ljava/lang/String;Landroid/app/job/JobInfo;Ljava/lang/String;ILjava/lang/String;)I
    .locals 9

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v7

    .line 5
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 6
    .line 7
    .line 8
    move-result v8

    .line 9
    sget-boolean v0, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    .line 10
    .line 11
    const-string v1, "Caller uid "

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    const-string v0, " scheduling job: "

    .line 16
    .line 17
    invoke-static {v7, v1, v0}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {p2}, Landroid/app/job/JobInfo;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string v2, " on behalf of "

    .line 29
    .line 30
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v2, "/"

    .line 37
    .line 38
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    const-string v2, "JobScheduler"

    .line 46
    .line 47
    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    .line 49
    .line 50
    :cond_0
    if-eqz p3, :cond_3

    .line 51
    .line 52
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;->this$0:Lcom/android/server/job/JobSchedulerService;

    .line 53
    .line 54
    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    const-string v2, "android.permission.UPDATE_DEVICE_STATS"

    .line 59
    .line 60
    invoke-virtual {v0, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    if-nez v0, :cond_2

    .line 65
    .line 66
    invoke-virtual {p0, v7, v8, p2}, Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;->enforceValidJobRequest(IILandroid/app/job/JobInfo;)V

    .line 67
    .line 68
    .line 69
    const/4 v6, 0x0

    .line 70
    move-object v0, p0

    .line 71
    move-object v1, p2

    .line 72
    move v2, v7

    .line 73
    move v3, v8

    .line 74
    move v4, p4

    .line 75
    move-object v5, p3

    .line 76
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;->validateJob(Landroid/app/job/JobInfo;IIILjava/lang/String;Landroid/app/job/JobWorkItem;)I

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    const/4 v1, 0x1

    .line 81
    if-eq v0, v1, :cond_1

    .line 82
    .line 83
    return v0

    .line 84
    :cond_1
    invoke-static {p1}, Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;->validateNamespace(Ljava/lang/String;)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v6

    .line 88
    invoke-virtual {p0, v7, v8, p2}, Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;->enforceBuilderApiPermissions(IILandroid/app/job/JobInfo;)Landroid/app/job/JobInfo;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 93
    .line 94
    .line 95
    move-result-wide p1

    .line 96
    :try_start_0
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;->this$0:Lcom/android/server/job/JobSchedulerService;

    .line 97
    .line 98
    const/4 v2, 0x0

    .line 99
    move v3, v7

    .line 100
    move-object v4, p3

    .line 101
    move v5, p4

    .line 102
    move-object v7, p5

    .line 103
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/job/JobSchedulerService;->scheduleAsPackage(Landroid/app/job/JobInfo;Landroid/app/job/JobWorkItem;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)I

    .line 104
    .line 105
    .line 106
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    invoke-static {p1, p2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 108
    .line 109
    .line 110
    return p0

    .line 111
    :catchall_0
    move-exception p0

    .line 112
    invoke-static {p1, p2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 113
    .line 114
    .line 115
    throw p0

    .line 116
    :cond_2
    new-instance p0, Ljava/lang/SecurityException;

    .line 117
    .line 118
    const-string p1, " not permitted to schedule jobs for other apps"

    .line 119
    .line 120
    invoke-static {v7, v1, p1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    throw p0

    .line 128
    :cond_3
    new-instance p0, Ljava/lang/NullPointerException;

    .line 129
    .line 130
    const-string p1, "Must specify a package for scheduleAsPackage()"

    .line 131
    .line 132
    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    throw p0
.end method

.method public final unregisterUserVisibleJobObserver(Landroid/app/job/IUserVisibleJobObserver;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/app/job/IJobScheduler$Stub;->unregisterUserVisibleJobObserver_enforcePermission()V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;->this$0:Lcom/android/server/job/JobSchedulerService;

    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mUserVisibleJobObservers:Landroid/os/RemoteCallbackList;

    .line 9
    .line 10
    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    .line 15
    .line 16
    const-string/jumbo p1, "observer"

    .line 17
    .line 18
    .line 19
    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    throw p0
.end method

.method public final validateJob(Landroid/app/job/JobInfo;IIILjava/lang/String;Landroid/app/job/JobWorkItem;)I
    .locals 7

    .line 1
    const-wide/32 v0, 0xf1e9ef7

    .line 2
    .line 3
    .line 4
    invoke-static {v0, v1, p2}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JI)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const-wide/32 v1, 0xb98555f

    .line 9
    .line 10
    .line 11
    invoke-static {v1, v2, p2}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JI)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    const-wide/32 v2, 0x128fa179

    .line 16
    .line 17
    .line 18
    invoke-static {v2, v3, p2}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JI)Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    const-wide/32 v3, 0x1345eb5a

    .line 23
    .line 24
    .line 25
    invoke-static {v3, v4, p2}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JI)Z

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/app/job/JobInfo;->enforceValidity(ZZZZ)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1}, Landroid/app/job/JobInfo;->getFlags()I

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    const/4 v2, 0x1

    .line 37
    and-int/2addr v1, v2

    .line 38
    const-string v3, "JobScheduler"

    .line 39
    .line 40
    if-eqz v1, :cond_0

    .line 41
    .line 42
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;->this$0:Lcom/android/server/job/JobSchedulerService;

    .line 43
    .line 44
    invoke-virtual {v1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    const-string v4, "android.permission.CONNECTIVITY_INTERNAL"

    .line 49
    .line 50
    invoke-virtual {v1, v4, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    :cond_0
    invoke-virtual {p1}, Landroid/app/job/JobInfo;->getFlags()I

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    and-int/lit8 v1, v1, 0x8

    .line 58
    .line 59
    if-eqz v1, :cond_2

    .line 60
    .line 61
    const/16 v1, 0x3e8

    .line 62
    .line 63
    if-ne p2, v1, :cond_1

    .line 64
    .line 65
    invoke-virtual {p1}, Landroid/app/job/JobInfo;->isPeriodic()Z

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    if-eqz v1, :cond_2

    .line 70
    .line 71
    new-instance v1, Ljava/lang/StringBuilder;

    .line 72
    .line 73
    const-string v4, "Periodic jobs mustn\'t have FLAG_EXEMPT_FROM_APP_STANDBY. Job="

    .line 74
    .line 75
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    invoke-static {v3, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_1
    new-instance p0, Ljava/lang/SecurityException;

    .line 90
    .line 91
    const-string p1, "Job has invalid flags"

    .line 92
    .line 93
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    throw p0

    .line 97
    :cond_2
    :goto_0
    invoke-virtual {p1}, Landroid/app/job/JobInfo;->isUserInitiated()Z

    .line 98
    .line 99
    .line 100
    move-result v1

    .line 101
    if-eqz v1, :cond_a

    .line 102
    .line 103
    const/4 v1, -0x1

    .line 104
    if-eq p4, v1, :cond_3

    .line 105
    .line 106
    if-eqz p5, :cond_3

    .line 107
    .line 108
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    .line 109
    .line 110
    .line 111
    move-result-object v4

    .line 112
    const-wide/16 v5, 0x0

    .line 113
    .line 114
    invoke-interface {v4, p5, v5, v6, p4}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;JI)I

    .line 115
    .line 116
    .line 117
    move-result p4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    goto :goto_1

    .line 119
    :catch_0
    :cond_3
    move p4, v1

    .line 120
    :goto_1
    invoke-virtual {p1}, Landroid/app/job/JobInfo;->getService()Landroid/content/ComponentName;

    .line 121
    .line 122
    .line 123
    move-result-object v4

    .line 124
    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v4

    .line 128
    const/4 v5, 0x0

    .line 129
    if-eq p4, v1, :cond_6

    .line 130
    .line 131
    invoke-virtual {p0, p4, p5}, Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;->validateRunUserInitiatedJobsPermission(ILjava/lang/String;)I

    .line 132
    .line 133
    .line 134
    move-result v6

    .line 135
    if-eq v6, v2, :cond_4

    .line 136
    .line 137
    return v6

    .line 138
    :cond_4
    if-ne p2, p4, :cond_5

    .line 139
    .line 140
    invoke-virtual {v4, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 141
    .line 142
    .line 143
    move-result v6

    .line 144
    if-eqz v6, :cond_5

    .line 145
    .line 146
    move v1, p3

    .line 147
    :cond_5
    invoke-virtual {p0, p4, v1, p5}, Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;->isInStateToScheduleUserInitiatedJobs(IILjava/lang/String;)Z

    .line 148
    .line 149
    .line 150
    move-result v1

    .line 151
    goto :goto_2

    .line 152
    :cond_6
    move v1, v5

    .line 153
    :goto_2
    if-ne p2, p4, :cond_7

    .line 154
    .line 155
    invoke-virtual {v4, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 156
    .line 157
    .line 158
    move-result p5

    .line 159
    if-nez p5, :cond_9

    .line 160
    .line 161
    :cond_7
    invoke-virtual {p0, p2, v4}, Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;->validateRunUserInitiatedJobsPermission(ILjava/lang/String;)I

    .line 162
    .line 163
    .line 164
    move-result p5

    .line 165
    if-eq p5, v2, :cond_8

    .line 166
    .line 167
    return p5

    .line 168
    :cond_8
    if-nez v1, :cond_9

    .line 169
    .line 170
    invoke-virtual {p0, p2, p3, v4}, Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;->isInStateToScheduleUserInitiatedJobs(IILjava/lang/String;)Z

    .line 171
    .line 172
    .line 173
    move-result p0

    .line 174
    goto :goto_3

    .line 175
    :cond_9
    move p0, v5

    .line 176
    :goto_3
    if-nez v1, :cond_a

    .line 177
    .line 178
    if-nez p0, :cond_a

    .line 179
    .line 180
    const-string p0, "Uid(s) "

    .line 181
    .line 182
    const-string p1, "/"

    .line 183
    .line 184
    const-string p3, " not in a state to schedule user-initiated jobs"

    .line 185
    .line 186
    invoke-static {p4, p2, p0, p1, p3}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object p0

    .line 190
    invoke-static {v3, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    .line 192
    .line 193
    const-string/jumbo p0, "job_scheduler.value_cntr_w_uid_schedule_failure_uij_invalid_state"

    .line 194
    .line 195
    .line 196
    invoke-static {p0, p2}, Lcom/android/modules/expresslog/Counter;->logIncrementWithUid(Ljava/lang/String;I)V

    .line 197
    .line 198
    .line 199
    return v5

    .line 200
    :cond_a
    if-eqz p6, :cond_f

    .line 201
    .line 202
    invoke-virtual {p6, v0}, Landroid/app/job/JobWorkItem;->enforceValidity(Z)V

    .line 203
    .line 204
    .line 205
    invoke-virtual {p6}, Landroid/app/job/JobWorkItem;->getEstimatedNetworkDownloadBytes()J

    .line 206
    .line 207
    .line 208
    move-result-wide p3

    .line 209
    const-wide/16 v0, -0x1

    .line 210
    .line 211
    cmp-long p0, p3, v0

    .line 212
    .line 213
    if-nez p0, :cond_b

    .line 214
    .line 215
    invoke-virtual {p6}, Landroid/app/job/JobWorkItem;->getEstimatedNetworkUploadBytes()J

    .line 216
    .line 217
    .line 218
    move-result-wide p3

    .line 219
    cmp-long p0, p3, v0

    .line 220
    .line 221
    if-nez p0, :cond_b

    .line 222
    .line 223
    invoke-virtual {p6}, Landroid/app/job/JobWorkItem;->getMinimumNetworkChunkBytes()J

    .line 224
    .line 225
    .line 226
    move-result-wide p3

    .line 227
    cmp-long p0, p3, v0

    .line 228
    .line 229
    if-eqz p0, :cond_d

    .line 230
    .line 231
    :cond_b
    invoke-virtual {p1}, Landroid/app/job/JobInfo;->getRequiredNetwork()Landroid/net/NetworkRequest;

    .line 232
    .line 233
    .line 234
    move-result-object p0

    .line 235
    if-nez p0, :cond_d

    .line 236
    .line 237
    const-wide/32 p3, 0xe5ef4d2

    .line 238
    .line 239
    .line 240
    invoke-static {p3, p4, p2}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JI)Z

    .line 241
    .line 242
    .line 243
    move-result p0

    .line 244
    const-string p2, "JobWorkItem implies network usage but job doesn\'t specify a network constraint"

    .line 245
    .line 246
    if-nez p0, :cond_c

    .line 247
    .line 248
    invoke-static {v3, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    .line 250
    .line 251
    goto :goto_4

    .line 252
    :cond_c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 253
    .line 254
    invoke-direct {p0, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 255
    .line 256
    .line 257
    throw p0

    .line 258
    :cond_d
    :goto_4
    invoke-virtual {p1}, Landroid/app/job/JobInfo;->isPersisted()Z

    .line 259
    .line 260
    .line 261
    move-result p0

    .line 262
    if-eqz p0, :cond_f

    .line 263
    .line 264
    invoke-virtual {p6}, Landroid/app/job/JobWorkItem;->getIntent()Landroid/content/Intent;

    .line 265
    .line 266
    .line 267
    move-result-object p0

    .line 268
    if-nez p0, :cond_e

    .line 269
    .line 270
    goto :goto_5

    .line 271
    :cond_e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 272
    .line 273
    const-string p1, "Cannot persist JobWorkItems with Intents"

    .line 274
    .line 275
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 276
    .line 277
    .line 278
    throw p0

    .line 279
    :cond_f
    :goto_5
    return v2
.end method

.method public final validateRunUserInitiatedJobsPermission(ILjava/lang/String;)I
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;->this$0:Lcom/android/server/job/JobSchedulerService;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    const-string v0, "android.permission.RUN_USER_INITIATED_JOBS"

    .line 8
    .line 9
    const/4 v1, -0x1

    .line 10
    invoke-static {p0, v0, v1, p1, p2}, Landroid/content/PermissionChecker;->checkPermissionForPreflight(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;)I

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    const/4 p2, 0x2

    .line 15
    const-string/jumbo v0, "job_scheduler.value_cntr_w_uid_schedule_failure_uij_no_permission"

    .line 16
    .line 17
    .line 18
    if-eq p0, p2, :cond_1

    .line 19
    .line 20
    const/4 p2, 0x1

    .line 21
    if-ne p0, p2, :cond_0

    .line 22
    .line 23
    invoke-static {v0, p1}, Lcom/android/modules/expresslog/Counter;->logIncrementWithUid(Ljava/lang/String;I)V

    .line 24
    .line 25
    .line 26
    const/4 p0, 0x0

    .line 27
    return p0

    .line 28
    :cond_0
    return p2

    .line 29
    :cond_1
    invoke-static {v0, p1}, Lcom/android/modules/expresslog/Counter;->logIncrementWithUid(Ljava/lang/String;I)V

    .line 30
    .line 31
    .line 32
    new-instance p0, Ljava/lang/SecurityException;

    .line 33
    .line 34
    const-string p1, "android.permission.RUN_USER_INITIATED_JOBS required to schedule user-initiated jobs."

    .line 35
    .line 36
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    throw p0
.end method
