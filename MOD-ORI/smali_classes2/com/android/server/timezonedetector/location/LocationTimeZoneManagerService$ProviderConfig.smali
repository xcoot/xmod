.class public final Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService$ProviderConfig;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/timezonedetector/Dumpable;


# instance fields
.field public final mIndex:I

.field public final mName:Ljava/lang/String;

.field public final mServiceAction:Ljava/lang/String;

.field public final synthetic this$0:Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService$ProviderConfig;->this$0:Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;

    .line 5
    .line 6
    if-ltz p2, :cond_0

    .line 7
    .line 8
    const/4 p1, 0x1

    .line 9
    if-gt p2, p1, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p1, 0x0

    .line 13
    :goto_0
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 14
    .line 15
    .line 16
    iput p2, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService$ProviderConfig;->mIndex:I

    .line 17
    .line 18
    iput-object p3, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService$ProviderConfig;->mName:Ljava/lang/String;

    .line 19
    .line 20
    iput-object p4, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService$ProviderConfig;->mServiceAction:Ljava/lang/String;

    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public final createProvider()Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;
    .locals 10

    .line 1
    new-instance v1, Lcom/android/server/timezonedetector/location/RealProviderMetricsLogger;

    .line 2
    .line 3
    iget v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService$ProviderConfig;->mIndex:I

    .line 4
    .line 5
    invoke-direct {v1, v0}, Lcom/android/server/timezonedetector/location/RealProviderMetricsLogger;-><init>(I)V

    .line 6
    .line 7
    .line 8
    iget-object v2, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService$ProviderConfig;->this$0:Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    iget-object v0, v2, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->mServiceConfigAccessor:Lcom/android/server/timezonedetector/ServiceConfigAccessor;

    .line 13
    .line 14
    check-cast v0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->getPrimaryLocationTimeZoneProviderMode()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    iget-object v0, v2, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->mServiceConfigAccessor:Lcom/android/server/timezonedetector/ServiceConfigAccessor;

    .line 22
    .line 23
    check-cast v0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;

    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->getSecondaryLocationTimeZoneProviderMode()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    :goto_0
    const-string v2, "disabled"

    .line 30
    .line 31
    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_1

    .line 36
    .line 37
    new-instance v6, Lcom/android/server/timezonedetector/location/DisabledLocationTimeZoneProvider;

    .line 38
    .line 39
    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService$ProviderConfig;->this$0:Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;

    .line 40
    .line 41
    iget-object v2, v0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->mThreadingDomain:Lcom/android/server/timezonedetector/location/HandlerThreadingDomain;

    .line 42
    .line 43
    iget-object v3, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService$ProviderConfig;->mName:Ljava/lang/String;

    .line 44
    .line 45
    iget-object p0, v0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->mServiceConfigAccessor:Lcom/android/server/timezonedetector/ServiceConfigAccessor;

    .line 46
    .line 47
    check-cast p0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;

    .line 48
    .line 49
    monitor-enter p0

    .line 50
    :try_start_0
    iget-boolean v5, p0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->mRecordStateChangesForTests:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    .line 52
    monitor-exit p0

    .line 53
    new-instance v4, Lcom/android/server/timezonedetector/location/DisabledLocationTimeZoneProvider$$ExternalSyntheticLambda0;

    .line 54
    .line 55
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 56
    .line 57
    .line 58
    move-object v0, v6

    .line 59
    invoke-direct/range {v0 .. v5}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;-><init>(Lcom/android/server/timezonedetector/location/RealProviderMetricsLogger;Lcom/android/server/timezonedetector/location/HandlerThreadingDomain;Ljava/lang/String;Lcom/android/server/timezonedetector/location/TimeZoneProviderEventPreProcessor;Z)V

    .line 60
    .line 61
    .line 62
    return-object v6

    .line 63
    :catchall_0
    move-exception v0

    .line 64
    monitor-exit p0

    .line 65
    throw v0

    .line 66
    :cond_1
    iget-object v6, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService$ProviderConfig;->mServiceAction:Ljava/lang/String;

    .line 67
    .line 68
    iget v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService$ProviderConfig;->mIndex:I

    .line 69
    .line 70
    const/4 v2, 0x0

    .line 71
    const/4 v3, 0x1

    .line 72
    if-nez v0, :cond_3

    .line 73
    .line 74
    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService$ProviderConfig;->this$0:Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;

    .line 75
    .line 76
    iget-object v0, v0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->mServiceConfigAccessor:Lcom/android/server/timezonedetector/ServiceConfigAccessor;

    .line 77
    .line 78
    check-cast v0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;

    .line 79
    .line 80
    monitor-enter v0

    .line 81
    :try_start_1
    iget-object v4, v0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->mTestPrimaryLocationTimeZoneProviderMode:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 82
    .line 83
    if-eqz v4, :cond_2

    .line 84
    .line 85
    move v2, v3

    .line 86
    :cond_2
    monitor-exit v0

    .line 87
    :goto_1
    move v8, v2

    .line 88
    goto :goto_2

    .line 89
    :catchall_1
    move-exception p0

    .line 90
    monitor-exit v0

    .line 91
    throw p0

    .line 92
    :cond_3
    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService$ProviderConfig;->this$0:Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;

    .line 93
    .line 94
    iget-object v0, v0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->mServiceConfigAccessor:Lcom/android/server/timezonedetector/ServiceConfigAccessor;

    .line 95
    .line 96
    check-cast v0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;

    .line 97
    .line 98
    monitor-enter v0

    .line 99
    :try_start_2
    iget-object v4, v0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->mTestSecondaryLocationTimeZoneProviderMode:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 100
    .line 101
    if-eqz v4, :cond_4

    .line 102
    .line 103
    move v2, v3

    .line 104
    :cond_4
    monitor-exit v0

    .line 105
    goto :goto_1

    .line 106
    :goto_2
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService$ProviderConfig;->getPackageName()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v7

    .line 110
    new-instance v9, Lcom/android/server/timezonedetector/location/RealLocationTimeZoneProviderProxy;

    .line 111
    .line 112
    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService$ProviderConfig;->this$0:Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;

    .line 113
    .line 114
    iget-object v3, v0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->mContext:Landroid/content/Context;

    .line 115
    .line 116
    iget-object v4, v0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->mHandler:Landroid/os/Handler;

    .line 117
    .line 118
    iget-object v5, v0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->mThreadingDomain:Lcom/android/server/timezonedetector/location/HandlerThreadingDomain;

    .line 119
    .line 120
    move-object v2, v9

    .line 121
    invoke-direct/range {v2 .. v8}, Lcom/android/server/timezonedetector/location/RealLocationTimeZoneProviderProxy;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/timezonedetector/location/HandlerThreadingDomain;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 122
    .line 123
    .line 124
    new-instance v6, Lcom/android/server/timezonedetector/location/BinderLocationTimeZoneProvider;

    .line 125
    .line 126
    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService$ProviderConfig;->this$0:Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;

    .line 127
    .line 128
    iget-object v2, v0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->mThreadingDomain:Lcom/android/server/timezonedetector/location/HandlerThreadingDomain;

    .line 129
    .line 130
    iget-object v3, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService$ProviderConfig;->mName:Ljava/lang/String;

    .line 131
    .line 132
    iget-object p0, v0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->mServiceConfigAccessor:Lcom/android/server/timezonedetector/ServiceConfigAccessor;

    .line 133
    .line 134
    check-cast p0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;

    .line 135
    .line 136
    monitor-enter p0

    .line 137
    :try_start_3
    iget-boolean v5, p0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->mRecordStateChangesForTests:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 138
    .line 139
    monitor-exit p0

    .line 140
    move-object v0, v6

    .line 141
    move-object v4, v9

    .line 142
    invoke-direct/range {v0 .. v5}, Lcom/android/server/timezonedetector/location/BinderLocationTimeZoneProvider;-><init>(Lcom/android/server/timezonedetector/location/RealProviderMetricsLogger;Lcom/android/server/timezonedetector/location/HandlerThreadingDomain;Ljava/lang/String;Lcom/android/server/timezonedetector/location/RealLocationTimeZoneProviderProxy;Z)V

    .line 143
    .line 144
    .line 145
    return-object v6

    .line 146
    :catchall_2
    move-exception v0

    .line 147
    monitor-exit p0

    .line 148
    throw v0

    .line 149
    :catchall_3
    move-exception p0

    .line 150
    monitor-exit v0

    .line 151
    throw p0
.end method

.method public final dump(Landroid/util/IndentingPrintWriter;[Ljava/lang/String;)V
    .locals 1

    .line 1
    iget p2, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService$ProviderConfig;->mIndex:I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService$ProviderConfig;->this$0:Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;

    .line 4
    .line 5
    if-nez p2, :cond_0

    .line 6
    .line 7
    iget-object p2, v0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->mServiceConfigAccessor:Lcom/android/server/timezonedetector/ServiceConfigAccessor;

    .line 8
    .line 9
    check-cast p2, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;

    .line 10
    .line 11
    invoke-virtual {p2}, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->getPrimaryLocationTimeZoneProviderMode()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iget-object p2, v0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->mServiceConfigAccessor:Lcom/android/server/timezonedetector/ServiceConfigAccessor;

    .line 17
    .line 18
    check-cast p2, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;

    .line 19
    .line 20
    invoke-virtual {p2}, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->getSecondaryLocationTimeZoneProviderMode()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p2

    .line 24
    :goto_0
    filled-new-array {p2}, [Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    const-string v0, "getMode()=%s\n"

    .line 29
    .line 30
    invoke-virtual {p1, v0, p2}, Landroid/util/IndentingPrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService$ProviderConfig;->getPackageName()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    const-string p2, "getPackageName()=%s\n"

    .line 42
    .line 43
    invoke-virtual {p1, p2, p0}, Landroid/util/IndentingPrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 44
    .line 45
    .line 46
    return-void
.end method

.method public final getPackageName()Ljava/lang/String;
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService$ProviderConfig;->mIndex:I

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService$ProviderConfig;->this$0:Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->mServiceConfigAccessor:Lcom/android/server/timezonedetector/ServiceConfigAccessor;

    .line 8
    .line 9
    check-cast p0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;

    .line 10
    .line 11
    monitor-enter p0

    .line 12
    :try_start_0
    iget-object v0, p0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->mTestPrimaryLocationTimeZoneProviderMode:Ljava/lang/String;

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    iget-object v0, p0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->mTestPrimaryLocationTimeZoneProviderPackageName:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    .line 18
    monitor-exit p0

    .line 19
    goto :goto_0

    .line 20
    :catchall_0
    move-exception v0

    .line 21
    goto :goto_1

    .line 22
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->mContext:Landroid/content/Context;

    .line 23
    .line 24
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    const v1, 0x1040396

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 35
    monitor-exit p0

    .line 36
    :goto_0
    return-object v0

    .line 37
    :goto_1
    monitor-exit p0

    .line 38
    throw v0

    .line 39
    :cond_1
    iget-object p0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService$ProviderConfig;->this$0:Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;

    .line 40
    .line 41
    iget-object p0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->mServiceConfigAccessor:Lcom/android/server/timezonedetector/ServiceConfigAccessor;

    .line 42
    .line 43
    check-cast p0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;

    .line 44
    .line 45
    monitor-enter p0

    .line 46
    :try_start_2
    iget-object v0, p0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->mTestSecondaryLocationTimeZoneProviderMode:Ljava/lang/String;

    .line 47
    .line 48
    if-eqz v0, :cond_2

    .line 49
    .line 50
    iget-object v0, p0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->mTestSecondaryLocationTimeZoneProviderPackageName:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 51
    .line 52
    monitor-exit p0

    .line 53
    goto :goto_2

    .line 54
    :catchall_1
    move-exception v0

    .line 55
    goto :goto_3

    .line 56
    :cond_2
    :try_start_3
    iget-object v0, p0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->mContext:Landroid/content/Context;

    .line 57
    .line 58
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    const v1, 0x10403b5

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 69
    monitor-exit p0

    .line 70
    :goto_2
    return-object v0

    .line 71
    :goto_3
    monitor-exit p0

    .line 72
    throw v0
.end method
