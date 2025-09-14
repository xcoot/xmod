.class public final Lcom/android/server/job/JobSchedulerService$Constants;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final DEFAULT_CONN_TRANSPORT_BATCH_THRESHOLD:Landroid/util/SparseIntArray;

.field public static final DEFAULT_MIN_READY_CPU_ONLY_JOBS_COUNT:I

.field public static final DEFAULT_MIN_READY_NON_ACTIVE_JOBS_COUNT:I

.field public static final DEFAULT_RUNTIME_FREE_QUOTA_MAX_LIMIT_MS:J = 0x1b7740L

.field public static final DEFAULT_RUNTIME_MIN_EJ_GUARANTEE_MS:J = 0x2bf20L

.field public static final DEFAULT_RUNTIME_MIN_GUARANTEE_MS:J = 0x927c0L

.field public static final DEFAULT_RUNTIME_MIN_UI_DATA_TRANSFER_GUARANTEE_MS:J

.field public static final DEFAULT_RUNTIME_MIN_UI_GUARANTEE_MS:J

.field public static final DEFAULT_RUNTIME_UI_LIMIT_MS:J


# instance fields
.field public API_QUOTA_SCHEDULE_COUNT:I

.field public API_QUOTA_SCHEDULE_RETURN_FAILURE_RESULT:Z

.field public API_QUOTA_SCHEDULE_THROW_EXCEPTION:Z

.field public API_QUOTA_SCHEDULE_WINDOW_MS:J

.field public CONN_CONGESTION_DELAY_FRAC:F

.field public CONN_LOW_SIGNAL_STRENGTH_RELAX_FRAC:F

.field public CONN_MAX_CONNECTIVITY_JOB_BATCH_DELAY_MS:J

.field public CONN_PREFETCH_RELAX_FRAC:F

.field public CONN_TRANSPORT_BATCH_THRESHOLD:Landroid/util/SparseIntArray;

.field public CONN_UPDATE_ALL_JOBS_MIN_INTERVAL_MS:J

.field public CONN_USE_CELL_SIGNAL_STRENGTH:Z

.field public ENABLE_API_QUOTAS:Z

.field public ENABLE_EXECUTION_SAFEGUARDS_UDC:Z

.field public EXECUTION_SAFEGUARDS_UDC_ANR_COUNT:I

.field public EXECUTION_SAFEGUARDS_UDC_ANR_WINDOW_MS:J

.field public EXECUTION_SAFEGUARDS_UDC_TIMEOUT_EJ_COUNT:I

.field public EXECUTION_SAFEGUARDS_UDC_TIMEOUT_REG_COUNT:I

.field public EXECUTION_SAFEGUARDS_UDC_TIMEOUT_TOTAL_COUNT:I

.field public EXECUTION_SAFEGUARDS_UDC_TIMEOUT_UIJ_COUNT:I

.field public EXECUTION_SAFEGUARDS_UDC_TIMEOUT_WINDOW_MS:J

.field public HEAVY_USE_FACTOR:F

.field public MAX_CPU_ONLY_JOB_BATCH_DELAY_MS:J

.field public MAX_NON_ACTIVE_JOB_BATCH_DELAY_MS:J

.field public MAX_NUM_PERSISTED_JOB_WORK_ITEMS:I

.field public MIN_EXP_BACKOFF_TIME_MS:J

.field public MIN_LINEAR_BACKOFF_TIME_MS:J

.field public MIN_READY_CPU_ONLY_JOBS_COUNT:I

.field public MIN_READY_NON_ACTIVE_JOBS_COUNT:I

.field public MODERATE_USE_FACTOR:F

.field public PERSIST_IN_SPLIT_FILES:Z

.field public PREFETCH_FORCE_BATCH_RELAX_THRESHOLD_MS:J

.field public RUNTIME_CUMULATIVE_UI_LIMIT_MS:J

.field public RUNTIME_FREE_QUOTA_MAX_LIMIT_MS:J

.field public RUNTIME_MIN_EJ_GUARANTEE_MS:J

.field public RUNTIME_MIN_GUARANTEE_MS:J

.field public RUNTIME_MIN_UI_DATA_TRANSFER_GUARANTEE_BUFFER_FACTOR:F

.field public RUNTIME_MIN_UI_DATA_TRANSFER_GUARANTEE_MS:J

.field public RUNTIME_MIN_UI_GUARANTEE_MS:J

.field public RUNTIME_UI_LIMIT_MS:J

.field public RUNTIME_USE_DATA_ESTIMATES_FOR_LIMITS:Z

.field public SYSTEM_STOP_TO_FAILURE_RATIO:I


# direct methods
.method public static -$$Nest$mupdateApiQuotaConstantsLocked(Lcom/android/server/job/JobSchedulerService$Constants;)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    const-string/jumbo v0, "jobscheduler"

    .line 7
    const-string/jumbo v1, "enable_api_quotas"

    .line 10
    const/4 v2, 0x1

    .line 11
    invoke-static {v0, v1, v2}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 14
    move-result v1

    .line 15
    iput-boolean v1, p0, Lcom/android/server/job/JobSchedulerService$Constants;->ENABLE_API_QUOTAS:Z

    .line 17
    const-string/jumbo v1, "enable_execution_safeguards_udc"

    .line 20
    invoke-static {v0, v1, v2}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 23
    move-result v1

    .line 24
    iput-boolean v1, p0, Lcom/android/server/job/JobSchedulerService$Constants;->ENABLE_EXECUTION_SAFEGUARDS_UDC:Z

    .line 26
    const-string v1, "aq_schedule_count"

    .line 28
    const/16 v3, 0xfa

    .line 30
    invoke-static {v0, v1, v3}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    .line 33
    move-result v1

    .line 34
    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    .line 37
    move-result v1

    .line 38
    iput v1, p0, Lcom/android/server/job/JobSchedulerService$Constants;->API_QUOTA_SCHEDULE_COUNT:I

    .line 40
    const-string v1, "aq_schedule_window_ms"

    .line 42
    const-wide/32 v3, 0xea60

    .line 45
    invoke-static {v0, v1, v3, v4}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    .line 48
    move-result-wide v3

    .line 49
    iput-wide v3, p0, Lcom/android/server/job/JobSchedulerService$Constants;->API_QUOTA_SCHEDULE_WINDOW_MS:J

    .line 51
    const-string v1, "aq_schedule_throw_exception"

    .line 53
    invoke-static {v0, v1, v2}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 56
    move-result v1

    .line 57
    iput-boolean v1, p0, Lcom/android/server/job/JobSchedulerService$Constants;->API_QUOTA_SCHEDULE_THROW_EXCEPTION:Z

    .line 59
    const-string v1, "aq_schedule_return_failure"

    .line 61
    const/4 v3, 0x0

    .line 62
    invoke-static {v0, v1, v3}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 65
    move-result v1

    .line 66
    iput-boolean v1, p0, Lcom/android/server/job/JobSchedulerService$Constants;->API_QUOTA_SCHEDULE_RETURN_FAILURE_RESULT:Z

    .line 68
    const-string/jumbo v1, "es_u_timeout_uij_count"

    .line 71
    const/4 v3, 0x2

    .line 72
    invoke-static {v0, v1, v3}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    .line 75
    move-result v1

    .line 76
    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    .line 79
    move-result v1

    .line 80
    iput v1, p0, Lcom/android/server/job/JobSchedulerService$Constants;->EXECUTION_SAFEGUARDS_UDC_TIMEOUT_UIJ_COUNT:I

    .line 82
    const-string/jumbo v1, "es_u_timeout_ej_count"

    .line 85
    const/4 v4, 0x5

    .line 86
    invoke-static {v0, v1, v4}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    .line 89
    move-result v1

    .line 90
    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    .line 93
    move-result v1

    .line 94
    iput v1, p0, Lcom/android/server/job/JobSchedulerService$Constants;->EXECUTION_SAFEGUARDS_UDC_TIMEOUT_EJ_COUNT:I

    .line 96
    const-string/jumbo v1, "es_u_timeout_reg_count"

    .line 99
    const/4 v4, 0x3

    .line 100
    invoke-static {v0, v1, v4}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    .line 103
    move-result v1

    .line 104
    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    .line 107
    move-result v1

    .line 108
    iput v1, p0, Lcom/android/server/job/JobSchedulerService$Constants;->EXECUTION_SAFEGUARDS_UDC_TIMEOUT_REG_COUNT:I

    .line 110
    iget v3, p0, Lcom/android/server/job/JobSchedulerService$Constants;->EXECUTION_SAFEGUARDS_UDC_TIMEOUT_UIJ_COUNT:I

    .line 112
    iget v5, p0, Lcom/android/server/job/JobSchedulerService$Constants;->EXECUTION_SAFEGUARDS_UDC_TIMEOUT_EJ_COUNT:I

    .line 114
    invoke-static {v5, v1}, Ljava/lang/Math;->max(II)I

    .line 117
    move-result v1

    .line 118
    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    .line 121
    move-result v1

    .line 122
    const-string/jumbo v3, "es_u_timeout_total_count"

    .line 125
    const/16 v5, 0xa

    .line 127
    invoke-static {v0, v3, v5}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    .line 130
    move-result v3

    .line 131
    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    .line 134
    move-result v1

    .line 135
    iput v1, p0, Lcom/android/server/job/JobSchedulerService$Constants;->EXECUTION_SAFEGUARDS_UDC_TIMEOUT_TOTAL_COUNT:I

    .line 137
    const-string/jumbo v1, "es_u_timeout_window_ms"

    .line 140
    const-wide/32 v5, 0x5265c00

    .line 143
    invoke-static {v0, v1, v5, v6}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    .line 146
    move-result-wide v5

    .line 147
    iput-wide v5, p0, Lcom/android/server/job/JobSchedulerService$Constants;->EXECUTION_SAFEGUARDS_UDC_TIMEOUT_WINDOW_MS:J

    .line 149
    const-string/jumbo v1, "es_u_anr_count"

    .line 152
    invoke-static {v0, v1, v4}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    .line 155
    move-result v1

    .line 156
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    .line 159
    move-result v1

    .line 160
    iput v1, p0, Lcom/android/server/job/JobSchedulerService$Constants;->EXECUTION_SAFEGUARDS_UDC_ANR_COUNT:I

    .line 162
    const-string/jumbo v1, "es_u_anr_window_ms"

    .line 165
    const-wide/32 v2, 0x1499700

    .line 168
    invoke-static {v0, v1, v2, v3}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    .line 171
    move-result-wide v0

    .line 172
    iput-wide v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->EXECUTION_SAFEGUARDS_UDC_ANR_WINDOW_MS:J

    .line 174
    return-void
.end method

.method public static -$$Nest$mupdateBatchingConstantsLocked(Lcom/android/server/job/JobSchedulerService$Constants;)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    sget v0, Lcom/android/server/job/JobConcurrencyManager;->DEFAULT_CONCURRENCY_LIMIT:I

    .line 6
    div-int/lit8 v0, v0, 0x3

    .line 8
    const-string/jumbo v1, "jobscheduler"

    .line 11
    const-string/jumbo v2, "min_ready_cpu_only_jobs_count"

    .line 14
    sget v3, Lcom/android/server/job/JobSchedulerService$Constants;->DEFAULT_MIN_READY_CPU_ONLY_JOBS_COUNT:I

    .line 16
    invoke-static {v1, v2, v3}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    .line 19
    move-result v2

    .line 20
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    .line 23
    move-result v2

    .line 24
    const/4 v3, 0x0

    .line 25
    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    .line 28
    move-result v2

    .line 29
    iput v2, p0, Lcom/android/server/job/JobSchedulerService$Constants;->MIN_READY_CPU_ONLY_JOBS_COUNT:I

    .line 31
    const-string/jumbo v2, "min_ready_non_active_jobs_count"

    .line 34
    sget v4, Lcom/android/server/job/JobSchedulerService$Constants;->DEFAULT_MIN_READY_NON_ACTIVE_JOBS_COUNT:I

    .line 36
    invoke-static {v1, v2, v4}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    .line 39
    move-result v2

    .line 40
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    .line 43
    move-result v0

    .line 44
    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    .line 47
    move-result v0

    .line 48
    iput v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->MIN_READY_NON_ACTIVE_JOBS_COUNT:I

    .line 50
    const-string/jumbo v0, "max_cpu_only_job_batch_delay_ms"

    .line 53
    const-wide/32 v2, 0x1c61a0

    .line 56
    invoke-static {v1, v0, v2, v3}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    .line 59
    move-result-wide v4

    .line 60
    iput-wide v4, p0, Lcom/android/server/job/JobSchedulerService$Constants;->MAX_CPU_ONLY_JOB_BATCH_DELAY_MS:J

    .line 62
    const-string/jumbo v0, "max_non_active_job_batch_delay_ms"

    .line 65
    invoke-static {v1, v0, v2, v3}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    .line 68
    move-result-wide v0

    .line 69
    iput-wide v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->MAX_NON_ACTIVE_JOB_BATCH_DELAY_MS:J

    .line 71
    return-void
.end method

.method public static -$$Nest$mupdateConnectivityConstantsLocked(Lcom/android/server/job/JobSchedulerService$Constants;)V
    .locals 9

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    const-string v0, "JobScheduler"

    .line 6
    const-string/jumbo v1, "jobscheduler"

    .line 9
    const-string/jumbo v2, "conn_congestion_delay_frac"

    .line 12
    const/high16 v3, 0x3f000000    # 0.5f

    .line 14
    invoke-static {v1, v2, v3}, Landroid/provider/DeviceConfig;->getFloat(Ljava/lang/String;Ljava/lang/String;F)F

    .line 17
    move-result v2

    .line 18
    iput v2, p0, Lcom/android/server/job/JobSchedulerService$Constants;->CONN_CONGESTION_DELAY_FRAC:F

    .line 20
    const-string/jumbo v2, "conn_prefetch_relax_frac"

    .line 23
    invoke-static {v1, v2, v3}, Landroid/provider/DeviceConfig;->getFloat(Ljava/lang/String;Ljava/lang/String;F)F

    .line 26
    move-result v2

    .line 27
    iput v2, p0, Lcom/android/server/job/JobSchedulerService$Constants;->CONN_PREFETCH_RELAX_FRAC:F

    .line 29
    const-string/jumbo v2, "conn_use_cell_signal_strength"

    .line 32
    const/4 v4, 0x1

    .line 33
    invoke-static {v1, v2, v4}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 36
    move-result v2

    .line 37
    iput-boolean v2, p0, Lcom/android/server/job/JobSchedulerService$Constants;->CONN_USE_CELL_SIGNAL_STRENGTH:Z

    .line 39
    const-string/jumbo v2, "conn_update_all_jobs_min_interval_ms"

    .line 42
    const-wide/32 v5, 0xea60

    .line 45
    invoke-static {v1, v2, v5, v6}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    .line 48
    move-result-wide v5

    .line 49
    iput-wide v5, p0, Lcom/android/server/job/JobSchedulerService$Constants;->CONN_UPDATE_ALL_JOBS_MIN_INTERVAL_MS:J

    .line 51
    const-string/jumbo v2, "conn_low_signal_strength_relax_frac"

    .line 54
    invoke-static {v1, v2, v3}, Landroid/provider/DeviceConfig;->getFloat(Ljava/lang/String;Ljava/lang/String;F)F

    .line 57
    move-result v2

    .line 58
    iput v2, p0, Lcom/android/server/job/JobSchedulerService$Constants;->CONN_LOW_SIGNAL_STRENGTH_RELAX_FRAC:F

    .line 60
    const-string/jumbo v2, "conn_transport_batch_threshold"

    .line 63
    const/4 v3, 0x0

    .line 64
    invoke-static {v1, v2, v3}, Landroid/provider/DeviceConfig;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 67
    move-result-object v2

    .line 68
    new-instance v3, Landroid/util/KeyValueListParser;

    .line 70
    const/16 v5, 0x2c

    .line 72
    invoke-direct {v3, v5}, Landroid/util/KeyValueListParser;-><init>(C)V

    .line 75
    iget-object v5, p0, Lcom/android/server/job/JobSchedulerService$Constants;->CONN_TRANSPORT_BATCH_THRESHOLD:Landroid/util/SparseIntArray;

    .line 77
    invoke-virtual {v5}, Landroid/util/SparseIntArray;->clear()V

    .line 80
    :try_start_0
    invoke-virtual {v3, v2}, Landroid/util/KeyValueListParser;->setString(Ljava/lang/String;)V

    .line 83
    invoke-virtual {v3}, Landroid/util/KeyValueListParser;->size()I

    .line 86
    move-result v2

    .line 87
    sub-int/2addr v2, v4

    .line 88
    :goto_0
    if-ltz v2, :cond_0

    .line 90
    invoke-virtual {v3, v2}, Landroid/util/KeyValueListParser;->keyAt(I)Ljava/lang/String;

    .line 93
    move-result-object v5
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    :try_start_1
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 97
    move-result v6

    .line 98
    iget-object v7, p0, Lcom/android/server/job/JobSchedulerService$Constants;->CONN_TRANSPORT_BATCH_THRESHOLD:Landroid/util/SparseIntArray;

    .line 100
    sget v8, Lcom/android/server/job/JobConcurrencyManager;->DEFAULT_CONCURRENCY_LIMIT:I

    .line 102
    div-int/lit8 v8, v8, 0x3

    .line 104
    invoke-virtual {v3, v5, v4}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    .line 107
    move-result v5

    .line 108
    invoke-static {v8, v5}, Ljava/lang/Math;->min(II)I

    .line 111
    move-result v5

    .line 112
    const/4 v8, 0x0

    .line 113
    invoke-static {v8, v5}, Ljava/lang/Math;->max(II)I

    .line 116
    move-result v5

    .line 117
    invoke-virtual {v7, v6, v5}, Landroid/util/SparseIntArray;->put(II)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    .line 120
    goto :goto_1

    .line 121
    :catch_0
    move-exception v2

    .line 122
    goto :goto_2

    .line 123
    :catch_1
    move-exception v5

    .line 124
    :try_start_2
    const-string v6, "Bad transport string"

    .line 126
    invoke-static {v0, v6, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0

    .line 129
    :goto_1
    add-int/lit8 v2, v2, -0x1

    .line 131
    goto :goto_0

    .line 132
    :goto_2
    const-string v3, "Bad string for conn_transport_batch_threshold"

    .line 134
    invoke-static {v0, v3, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 137
    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerService$Constants;->copyTransportBatchThresholdDefaults()V

    .line 140
    :cond_0
    const-string/jumbo v0, "conn_max_connectivity_job_batch_delay_ms"

    .line 143
    const-wide/32 v2, 0x1c61a0

    .line 146
    invoke-static {v1, v0, v2, v3}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    .line 149
    move-result-wide v0

    .line 150
    const-wide/32 v2, 0x5265c00

    .line 153
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    .line 156
    move-result-wide v0

    .line 157
    const-wide/16 v2, 0x0

    .line 159
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    .line 162
    move-result-wide v0

    .line 163
    iput-wide v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->CONN_MAX_CONNECTIVITY_JOB_BATCH_DELAY_MS:J

    .line 165
    return-void
.end method

.method public static -$$Nest$mupdateRuntimeConstantsLocked(Lcom/android/server/job/JobSchedulerService$Constants;)V
    .locals 9

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    const-string/jumbo v5, "runtime_ui_limit_ms"

    .line 7
    const-string/jumbo v6, "runtime_min_ui_data_transfer_guarantee_ms"

    .line 10
    const-string/jumbo v0, "runtime_free_quota_max_limit_ms"

    .line 13
    const-string/jumbo v1, "runtime_min_guarantee_ms"

    .line 16
    const-string/jumbo v2, "runtime_min_ej_guarantee_ms"

    .line 19
    const-string/jumbo v3, "runtime_min_ui_data_transfer_guarantee_buffer_factor"

    .line 22
    const-string/jumbo v4, "runtime_min_ui_guarantee_ms"

    .line 25
    const-string/jumbo v7, "runtime_cumulative_ui_limit_ms"

    .line 28
    const-string/jumbo v8, "runtime_use_data_estimates_for_limits"

    .line 31
    filled-new-array/range {v0 .. v8}, [Ljava/lang/String;

    .line 34
    move-result-object v0

    .line 35
    const-string/jumbo v1, "jobscheduler"

    .line 38
    invoke-static {v1, v0}, Landroid/provider/DeviceConfig;->getProperties(Ljava/lang/String;[Ljava/lang/String;)Landroid/provider/DeviceConfig$Properties;

    .line 41
    move-result-object v0

    .line 42
    const-string/jumbo v1, "runtime_min_guarantee_ms"

    .line 45
    const-wide/32 v2, 0x927c0

    .line 48
    invoke-virtual {v0, v1, v2, v3}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    .line 51
    move-result-wide v4

    .line 52
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    .line 55
    move-result-wide v1

    .line 56
    iput-wide v1, p0, Lcom/android/server/job/JobSchedulerService$Constants;->RUNTIME_MIN_GUARANTEE_MS:J

    .line 58
    const-string/jumbo v1, "runtime_min_ej_guarantee_ms"

    .line 61
    const-wide/32 v2, 0x2bf20

    .line 64
    invoke-virtual {v0, v1, v2, v3}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    .line 67
    move-result-wide v1

    .line 68
    const-wide/32 v3, 0xea60

    .line 71
    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->max(JJ)J

    .line 74
    move-result-wide v1

    .line 75
    iput-wide v1, p0, Lcom/android/server/job/JobSchedulerService$Constants;->RUNTIME_MIN_EJ_GUARANTEE_MS:J

    .line 77
    iget-wide v1, p0, Lcom/android/server/job/JobSchedulerService$Constants;->RUNTIME_MIN_GUARANTEE_MS:J

    .line 79
    const-string/jumbo v3, "runtime_free_quota_max_limit_ms"

    .line 82
    const-wide/32 v4, 0x1b7740

    .line 85
    invoke-virtual {v0, v3, v4, v5}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    .line 88
    move-result-wide v3

    .line 89
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    .line 92
    move-result-wide v1

    .line 93
    iput-wide v1, p0, Lcom/android/server/job/JobSchedulerService$Constants;->RUNTIME_FREE_QUOTA_MAX_LIMIT_MS:J

    .line 95
    iget-wide v1, p0, Lcom/android/server/job/JobSchedulerService$Constants;->RUNTIME_MIN_GUARANTEE_MS:J

    .line 97
    const-string/jumbo v3, "runtime_min_ui_guarantee_ms"

    .line 100
    sget-wide v4, Lcom/android/server/job/JobSchedulerService$Constants;->DEFAULT_RUNTIME_MIN_UI_GUARANTEE_MS:J

    .line 102
    invoke-virtual {v0, v3, v4, v5}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    .line 105
    move-result-wide v3

    .line 106
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    .line 109
    move-result-wide v1

    .line 110
    iput-wide v1, p0, Lcom/android/server/job/JobSchedulerService$Constants;->RUNTIME_MIN_UI_GUARANTEE_MS:J

    .line 112
    iget-wide v3, p0, Lcom/android/server/job/JobSchedulerService$Constants;->RUNTIME_FREE_QUOTA_MAX_LIMIT_MS:J

    .line 114
    const-string/jumbo v5, "runtime_ui_limit_ms"

    .line 117
    sget-wide v6, Lcom/android/server/job/JobSchedulerService$Constants;->DEFAULT_RUNTIME_UI_LIMIT_MS:J

    .line 119
    invoke-virtual {v0, v5, v6, v7}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    .line 122
    move-result-wide v5

    .line 123
    invoke-static {v1, v2, v5, v6}, Ljava/lang/Math;->max(JJ)J

    .line 126
    move-result-wide v1

    .line 127
    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->max(JJ)J

    .line 130
    move-result-wide v1

    .line 131
    iput-wide v1, p0, Lcom/android/server/job/JobSchedulerService$Constants;->RUNTIME_UI_LIMIT_MS:J

    .line 133
    const-string/jumbo v1, "runtime_min_ui_data_transfer_guarantee_buffer_factor"

    .line 136
    const v2, 0x3faccccd    # 1.35f

    .line 139
    invoke-virtual {v0, v1, v2}, Landroid/provider/DeviceConfig$Properties;->getFloat(Ljava/lang/String;F)F

    .line 142
    move-result v1

    .line 143
    const/high16 v2, 0x3f800000    # 1.0f

    .line 145
    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    .line 148
    move-result v1

    .line 149
    iput v1, p0, Lcom/android/server/job/JobSchedulerService$Constants;->RUNTIME_MIN_UI_DATA_TRANSFER_GUARANTEE_BUFFER_FACTOR:F

    .line 151
    iget-wide v1, p0, Lcom/android/server/job/JobSchedulerService$Constants;->RUNTIME_MIN_UI_GUARANTEE_MS:J

    .line 153
    const-string/jumbo v3, "runtime_min_ui_data_transfer_guarantee_ms"

    .line 156
    sget-wide v4, Lcom/android/server/job/JobSchedulerService$Constants;->DEFAULT_RUNTIME_MIN_UI_DATA_TRANSFER_GUARANTEE_MS:J

    .line 158
    invoke-virtual {v0, v3, v4, v5}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    .line 161
    move-result-wide v3

    .line 162
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    .line 165
    move-result-wide v1

    .line 166
    iput-wide v1, p0, Lcom/android/server/job/JobSchedulerService$Constants;->RUNTIME_MIN_UI_DATA_TRANSFER_GUARANTEE_MS:J

    .line 168
    iget-wide v1, p0, Lcom/android/server/job/JobSchedulerService$Constants;->RUNTIME_UI_LIMIT_MS:J

    .line 170
    const-string/jumbo v3, "runtime_cumulative_ui_limit_ms"

    .line 173
    const-wide/32 v4, 0x5265c00

    .line 176
    invoke-virtual {v0, v3, v4, v5}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    .line 179
    move-result-wide v3

    .line 180
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    .line 183
    move-result-wide v1

    .line 184
    iput-wide v1, p0, Lcom/android/server/job/JobSchedulerService$Constants;->RUNTIME_CUMULATIVE_UI_LIMIT_MS:J

    .line 186
    const-string/jumbo v1, "runtime_use_data_estimates_for_limits"

    .line 189
    const/4 v2, 0x0

    .line 190
    invoke-virtual {v0, v1, v2}, Landroid/provider/DeviceConfig$Properties;->getBoolean(Ljava/lang/String;Z)Z

    .line 193
    move-result v0

    .line 194
    iput-boolean v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->RUNTIME_USE_DATA_ESTIMATES_FOR_LIMITS:Z

    .line 196
    return-void
.end method

.method static constructor <clinit>()V
    .locals 8

    .line 1
    sget v0, Lcom/android/server/job/JobConcurrencyManager;->DEFAULT_CONCURRENCY_LIMIT:I

    .line 3
    div-int/lit8 v1, v0, 0x3

    .line 5
    const/4 v2, 0x3

    .line 6
    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    .line 9
    move-result v1

    .line 10
    sput v1, Lcom/android/server/job/JobSchedulerService$Constants;->DEFAULT_MIN_READY_CPU_ONLY_JOBS_COUNT:I

    .line 12
    div-int/lit8 v1, v0, 0x3

    .line 14
    const/4 v3, 0x5

    .line 15
    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    .line 18
    move-result v1

    .line 19
    sput v1, Lcom/android/server/job/JobSchedulerService$Constants;->DEFAULT_MIN_READY_NON_ACTIVE_JOBS_COUNT:I

    .line 21
    new-instance v1, Landroid/util/SparseIntArray;

    .line 23
    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    .line 26
    sput-object v1, Lcom/android/server/job/JobSchedulerService$Constants;->DEFAULT_CONN_TRANSPORT_BATCH_THRESHOLD:Landroid/util/SparseIntArray;

    .line 28
    div-int/2addr v0, v2

    .line 29
    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    .line 32
    move-result v0

    .line 33
    const/4 v2, 0x0

    .line 34
    invoke-virtual {v1, v2, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 37
    const-wide/32 v0, 0x1499700

    .line 40
    const-wide/32 v2, 0x927c0

    .line 43
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    .line 46
    move-result-wide v0

    .line 47
    sput-wide v0, Lcom/android/server/job/JobSchedulerService$Constants;->DEFAULT_RUNTIME_MIN_UI_GUARANTEE_MS:J

    .line 49
    const-wide/32 v4, 0x2932e00

    .line 52
    const-wide/32 v6, 0x1b7740

    .line 55
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    .line 58
    move-result-wide v4

    .line 59
    sput-wide v4, Lcom/android/server/job/JobSchedulerService$Constants;->DEFAULT_RUNTIME_UI_LIMIT_MS:J

    .line 61
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    .line 64
    move-result-wide v0

    .line 65
    sput-wide v0, Lcom/android/server/job/JobSchedulerService$Constants;->DEFAULT_RUNTIME_MIN_UI_DATA_TRANSFER_GUARANTEE_MS:J

    .line 67
    return-void
.end method


# virtual methods
.method public final copyTransportBatchThresholdDefaults()V
    .locals 4

    .line 1
    sget-object v0, Lcom/android/server/job/JobSchedulerService$Constants;->DEFAULT_CONN_TRANSPORT_BATCH_THRESHOLD:Landroid/util/SparseIntArray;

    .line 3
    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    .line 6
    move-result v0

    .line 7
    add-int/lit8 v0, v0, -0x1

    .line 9
    :goto_0
    if-ltz v0, :cond_0

    .line 11
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService$Constants;->CONN_TRANSPORT_BATCH_THRESHOLD:Landroid/util/SparseIntArray;

    .line 13
    sget-object v2, Lcom/android/server/job/JobSchedulerService$Constants;->DEFAULT_CONN_TRANSPORT_BATCH_THRESHOLD:Landroid/util/SparseIntArray;

    .line 15
    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    .line 18
    move-result v3

    .line 19
    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    .line 22
    move-result v2

    .line 23
    invoke-virtual {v1, v3, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 26
    add-int/lit8 v0, v0, -0x1

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    return-void
.end method

.method public final dump(Landroid/util/IndentingPrintWriter;)V
    .locals 3

    .line 1
    const-string v0, "Settings:"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 3
    iget v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->MIN_READY_CPU_ONLY_JOBS_COUNT:I

    const-string/jumbo v1, "min_ready_cpu_only_jobs_count"

    .line 4
    invoke-static {v0, p1, v1}, Lcom/android/server/job/JobSchedulerService$Constants$$ExternalSyntheticOutline0;->m(ILandroid/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 5
    iget v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->MIN_READY_NON_ACTIVE_JOBS_COUNT:I

    const-string/jumbo v1, "min_ready_non_active_jobs_count"

    .line 6
    invoke-static {v0, p1, v1}, Lcom/android/server/job/JobSchedulerService$Constants$$ExternalSyntheticOutline0;->m(ILandroid/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 7
    iget-wide v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->MAX_CPU_ONLY_JOB_BATCH_DELAY_MS:J

    const-string/jumbo v2, "max_cpu_only_job_batch_delay_ms"

    .line 8
    invoke-static {v0, v1, p1, v2}, Lcom/android/server/job/JobSchedulerService$Constants$$ExternalSyntheticOutline0;->m(JLandroid/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 9
    iget-wide v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->MAX_NON_ACTIVE_JOB_BATCH_DELAY_MS:J

    const-string/jumbo v2, "max_non_active_job_batch_delay_ms"

    .line 10
    invoke-static {v0, v1, p1, v2}, Lcom/android/server/job/JobSchedulerService$Constants$$ExternalSyntheticOutline0;->m(JLandroid/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 11
    iget v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->HEAVY_USE_FACTOR:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string/jumbo v1, "heavy_use_factor"

    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 12
    iget v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->MODERATE_USE_FACTOR:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string/jumbo v1, "moderate_use_factor"

    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 13
    iget-wide v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->MIN_LINEAR_BACKOFF_TIME_MS:J

    const-string/jumbo v2, "min_linear_backoff_time_ms"

    .line 14
    invoke-static {v0, v1, p1, v2}, Lcom/android/server/job/JobSchedulerService$Constants$$ExternalSyntheticOutline0;->m(JLandroid/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 15
    iget-wide v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->MIN_EXP_BACKOFF_TIME_MS:J

    const-string/jumbo v2, "min_exp_backoff_time_ms"

    .line 16
    invoke-static {v0, v1, p1, v2}, Lcom/android/server/job/JobSchedulerService$Constants$$ExternalSyntheticOutline0;->m(JLandroid/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 17
    iget v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->SYSTEM_STOP_TO_FAILURE_RATIO:I

    const-string/jumbo v1, "system_stop_to_failure_ratio"

    .line 18
    invoke-static {v0, p1, v1}, Lcom/android/server/job/JobSchedulerService$Constants$$ExternalSyntheticOutline0;->m(ILandroid/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 19
    iget v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->CONN_CONGESTION_DELAY_FRAC:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string/jumbo v1, "conn_congestion_delay_frac"

    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 20
    iget v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->CONN_PREFETCH_RELAX_FRAC:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string/jumbo v1, "conn_prefetch_relax_frac"

    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 21
    iget-boolean v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->CONN_USE_CELL_SIGNAL_STRENGTH:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string/jumbo v1, "conn_use_cell_signal_strength"

    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 22
    iget-wide v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->CONN_UPDATE_ALL_JOBS_MIN_INTERVAL_MS:J

    const-string/jumbo v2, "conn_update_all_jobs_min_interval_ms"

    .line 23
    invoke-static {v0, v1, p1, v2}, Lcom/android/server/job/JobSchedulerService$Constants$$ExternalSyntheticOutline0;->m(JLandroid/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 24
    iget v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->CONN_LOW_SIGNAL_STRENGTH_RELAX_FRAC:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string/jumbo v1, "conn_low_signal_strength_relax_frac"

    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    .line 25
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 26
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->CONN_TRANSPORT_BATCH_THRESHOLD:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "conn_transport_batch_threshold"

    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    .line 27
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 28
    iget-wide v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->CONN_MAX_CONNECTIVITY_JOB_BATCH_DELAY_MS:J

    const-string/jumbo v2, "conn_max_connectivity_job_batch_delay_ms"

    .line 29
    invoke-static {v0, v1, p1, v2}, Lcom/android/server/job/JobSchedulerService$Constants$$ExternalSyntheticOutline0;->m(JLandroid/util/IndentingPrintWriter;Ljava/lang/String;)V

    const-wide/32 v0, 0x1d4c0

    .line 30
    const-string/jumbo v2, "sec_conn_max_connectivity_job_batch_delay_ms"

    .line 31
    invoke-static {v0, v1, p1, v2}, Lcom/android/server/job/JobSchedulerService$Constants$$ExternalSyntheticOutline0;->m(JLandroid/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 32
    iget-wide v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->PREFETCH_FORCE_BATCH_RELAX_THRESHOLD_MS:J

    const-string/jumbo v2, "prefetch_force_batch_relax_threshold_ms"

    .line 33
    invoke-static {v0, v1, p1, v2}, Lcom/android/server/job/JobSchedulerService$Constants$$ExternalSyntheticOutline0;->m(JLandroid/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 34
    iget-boolean v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->ENABLE_API_QUOTAS:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string/jumbo v1, "enable_api_quotas"

    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 35
    iget v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->API_QUOTA_SCHEDULE_COUNT:I

    const-string v1, "aq_schedule_count"

    .line 36
    invoke-static {v0, p1, v1}, Lcom/android/server/job/JobSchedulerService$Constants$$ExternalSyntheticOutline0;->m(ILandroid/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 37
    iget-wide v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->API_QUOTA_SCHEDULE_WINDOW_MS:J

    const-string v2, "aq_schedule_window_ms"

    .line 38
    invoke-static {v0, v1, p1, v2}, Lcom/android/server/job/JobSchedulerService$Constants$$ExternalSyntheticOutline0;->m(JLandroid/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 39
    iget-boolean v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->API_QUOTA_SCHEDULE_THROW_EXCEPTION:Z

    .line 40
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 41
    const-string v1, "aq_schedule_throw_exception"

    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    .line 42
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 43
    iget-boolean v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->API_QUOTA_SCHEDULE_RETURN_FAILURE_RESULT:Z

    .line 44
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 45
    const-string v1, "aq_schedule_return_failure"

    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    .line 46
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 47
    iget-boolean v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->ENABLE_EXECUTION_SAFEGUARDS_UDC:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string/jumbo v1, "enable_execution_safeguards_udc"

    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    .line 48
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 49
    iget v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->EXECUTION_SAFEGUARDS_UDC_TIMEOUT_UIJ_COUNT:I

    const-string/jumbo v1, "es_u_timeout_uij_count"

    .line 50
    invoke-static {v0, p1, v1}, Lcom/android/server/job/JobSchedulerService$Constants$$ExternalSyntheticOutline0;->m(ILandroid/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 51
    iget v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->EXECUTION_SAFEGUARDS_UDC_TIMEOUT_EJ_COUNT:I

    const-string/jumbo v1, "es_u_timeout_ej_count"

    .line 52
    invoke-static {v0, p1, v1}, Lcom/android/server/job/JobSchedulerService$Constants$$ExternalSyntheticOutline0;->m(ILandroid/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 53
    iget v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->EXECUTION_SAFEGUARDS_UDC_TIMEOUT_REG_COUNT:I

    const-string/jumbo v1, "es_u_timeout_reg_count"

    .line 54
    invoke-static {v0, p1, v1}, Lcom/android/server/job/JobSchedulerService$Constants$$ExternalSyntheticOutline0;->m(ILandroid/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 55
    iget v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->EXECUTION_SAFEGUARDS_UDC_TIMEOUT_TOTAL_COUNT:I

    const-string/jumbo v1, "es_u_timeout_total_count"

    .line 56
    invoke-static {v0, p1, v1}, Lcom/android/server/job/JobSchedulerService$Constants$$ExternalSyntheticOutline0;->m(ILandroid/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 57
    iget-wide v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->EXECUTION_SAFEGUARDS_UDC_TIMEOUT_WINDOW_MS:J

    const-string/jumbo v2, "es_u_timeout_window_ms"

    .line 58
    invoke-static {v0, v1, p1, v2}, Lcom/android/server/job/JobSchedulerService$Constants$$ExternalSyntheticOutline0;->m(JLandroid/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 59
    iget v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->EXECUTION_SAFEGUARDS_UDC_ANR_COUNT:I

    const-string/jumbo v1, "es_u_anr_count"

    .line 60
    invoke-static {v0, p1, v1}, Lcom/android/server/job/JobSchedulerService$Constants$$ExternalSyntheticOutline0;->m(ILandroid/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 61
    iget-wide v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->EXECUTION_SAFEGUARDS_UDC_ANR_WINDOW_MS:J

    const-string/jumbo v2, "es_u_anr_window_ms"

    .line 62
    invoke-static {v0, v1, p1, v2}, Lcom/android/server/job/JobSchedulerService$Constants$$ExternalSyntheticOutline0;->m(JLandroid/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 63
    iget-wide v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->RUNTIME_MIN_GUARANTEE_MS:J

    const-string/jumbo v2, "runtime_min_guarantee_ms"

    .line 64
    invoke-static {v0, v1, p1, v2}, Lcom/android/server/job/JobSchedulerService$Constants$$ExternalSyntheticOutline0;->m(JLandroid/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 65
    iget-wide v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->RUNTIME_MIN_EJ_GUARANTEE_MS:J

    const-string/jumbo v2, "runtime_min_ej_guarantee_ms"

    .line 66
    invoke-static {v0, v1, p1, v2}, Lcom/android/server/job/JobSchedulerService$Constants$$ExternalSyntheticOutline0;->m(JLandroid/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 67
    iget-wide v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->RUNTIME_FREE_QUOTA_MAX_LIMIT_MS:J

    const-string/jumbo v2, "runtime_free_quota_max_limit_ms"

    .line 68
    invoke-static {v0, v1, p1, v2}, Lcom/android/server/job/JobSchedulerService$Constants$$ExternalSyntheticOutline0;->m(JLandroid/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 69
    iget-wide v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->RUNTIME_MIN_UI_GUARANTEE_MS:J

    const-string/jumbo v2, "runtime_min_ui_guarantee_ms"

    .line 70
    invoke-static {v0, v1, p1, v2}, Lcom/android/server/job/JobSchedulerService$Constants$$ExternalSyntheticOutline0;->m(JLandroid/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 71
    iget-wide v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->RUNTIME_UI_LIMIT_MS:J

    const-string/jumbo v2, "runtime_ui_limit_ms"

    .line 72
    invoke-static {v0, v1, p1, v2}, Lcom/android/server/job/JobSchedulerService$Constants$$ExternalSyntheticOutline0;->m(JLandroid/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 73
    iget v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->RUNTIME_MIN_UI_DATA_TRANSFER_GUARANTEE_BUFFER_FACTOR:F

    .line 74
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .line 75
    const-string/jumbo v1, "runtime_min_ui_data_transfer_guarantee_buffer_factor"

    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    .line 76
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 77
    iget-wide v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->RUNTIME_MIN_UI_DATA_TRANSFER_GUARANTEE_MS:J

    const-string/jumbo v2, "runtime_min_ui_data_transfer_guarantee_ms"

    .line 78
    invoke-static {v0, v1, p1, v2}, Lcom/android/server/job/JobSchedulerService$Constants$$ExternalSyntheticOutline0;->m(JLandroid/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 79
    iget-wide v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->RUNTIME_CUMULATIVE_UI_LIMIT_MS:J

    const-string/jumbo v2, "runtime_cumulative_ui_limit_ms"

    .line 80
    invoke-static {v0, v1, p1, v2}, Lcom/android/server/job/JobSchedulerService$Constants$$ExternalSyntheticOutline0;->m(JLandroid/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 81
    iget-boolean v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->RUNTIME_USE_DATA_ESTIMATES_FOR_LIMITS:Z

    .line 82
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 83
    const-string/jumbo v1, "runtime_use_data_estimates_for_limits"

    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    .line 84
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 85
    iget-boolean v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->PERSIST_IN_SPLIT_FILES:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string/jumbo v1, "persist_in_split_files"

    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 86
    iget p0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->MAX_NUM_PERSISTED_JOB_WORK_ITEMS:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string/jumbo v0, "max_num_persisted_job_work_items"

    invoke-virtual {p1, v0, p0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object p0

    .line 87
    invoke-virtual {p0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 88
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    return-void
.end method

.method public final dump(Landroid/util/proto/ProtoOutputStream;)V
    .locals 4

    const-wide v0, 0x1050000001dL

    .line 170
    iget v2, p0, Lcom/android/server/job/JobSchedulerService$Constants;->MIN_READY_NON_ACTIVE_JOBS_COUNT:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v0, 0x1030000001eL

    .line 171
    iget-wide v2, p0, Lcom/android/server/job/JobSchedulerService$Constants;->MAX_NON_ACTIVE_JOB_BATCH_DELAY_MS:J

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v0, 0x10100000008L

    .line 172
    iget v2, p0, Lcom/android/server/job/JobSchedulerService$Constants;->HEAVY_USE_FACTOR:F

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    const-wide v0, 0x10100000009L

    .line 173
    iget v2, p0, Lcom/android/server/job/JobSchedulerService$Constants;->MODERATE_USE_FACTOR:F

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    const-wide v0, 0x10300000011L

    .line 174
    iget-wide v2, p0, Lcom/android/server/job/JobSchedulerService$Constants;->MIN_LINEAR_BACKOFF_TIME_MS:J

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v0, 0x10300000012L

    .line 175
    iget-wide v2, p0, Lcom/android/server/job/JobSchedulerService$Constants;->MIN_EXP_BACKOFF_TIME_MS:J

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v0, 0x10100000015L

    .line 176
    iget v2, p0, Lcom/android/server/job/JobSchedulerService$Constants;->CONN_CONGESTION_DELAY_FRAC:F

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    const-wide v0, 0x10100000016L

    .line 177
    iget v2, p0, Lcom/android/server/job/JobSchedulerService$Constants;->CONN_PREFETCH_RELAX_FRAC:F

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    const-wide v0, 0x1080000001fL

    .line 178
    iget-boolean v2, p0, Lcom/android/server/job/JobSchedulerService$Constants;->ENABLE_API_QUOTAS:Z

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v0, 0x10500000020L

    .line 179
    iget v2, p0, Lcom/android/server/job/JobSchedulerService$Constants;->API_QUOTA_SCHEDULE_COUNT:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v0, 0x10300000021L

    .line 180
    iget-wide v2, p0, Lcom/android/server/job/JobSchedulerService$Constants;->API_QUOTA_SCHEDULE_WINDOW_MS:J

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v0, 0x10800000022L

    .line 181
    iget-boolean v2, p0, Lcom/android/server/job/JobSchedulerService$Constants;->API_QUOTA_SCHEDULE_THROW_EXCEPTION:Z

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v0, 0x10800000023L

    .line 182
    iget-boolean p0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->API_QUOTA_SCHEDULE_RETURN_FAILURE_RESULT:Z

    invoke-virtual {p1, v0, v1, p0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    return-void
.end method
