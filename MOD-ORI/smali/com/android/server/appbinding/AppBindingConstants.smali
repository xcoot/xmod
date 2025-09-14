.class public final Lcom/android/server/appbinding/AppBindingConstants;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final SERVICE_RECONNECT_BACKOFF_INCREASE:D

.field public final SERVICE_RECONNECT_BACKOFF_SEC:J

.field public final SERVICE_RECONNECT_MAX_BACKOFF_SEC:J

.field public final SERVICE_STABLE_CONNECTION_THRESHOLD_SEC:J

.field public final SMS_APP_BIND_FLAGS:I

.field public final SMS_SERVICE_ENABLED:Z

.field public final sourceSettings:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 12

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/appbinding/AppBindingConstants;->sourceSettings:Ljava/lang/String;

    .line 5
    .line 6
    new-instance v0, Landroid/util/KeyValueListParser;

    .line 7
    .line 8
    const/16 v1, 0x2c

    .line 9
    .line 10
    invoke-direct {v0, v1}, Landroid/util/KeyValueListParser;-><init>(C)V

    .line 11
    .line 12
    .line 13
    :try_start_0
    invoke-virtual {v0, p1}, Landroid/util/KeyValueListParser;->setString(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :catch_0
    const-string v1, "Bad setting: "

    .line 18
    .line 19
    const-string v2, "AppBindingService"

    .line 20
    .line 21
    invoke-static {v1, p1, v2}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    :goto_0
    const-string/jumbo p1, "service_reconnect_backoff_sec"

    .line 25
    .line 26
    .line 27
    const-wide/16 v1, 0xa

    .line 28
    .line 29
    invoke-virtual {v0, p1, v1, v2}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    .line 30
    .line 31
    .line 32
    move-result-wide v1

    .line 33
    const-string/jumbo p1, "service_reconnect_backoff_increase"

    .line 34
    .line 35
    .line 36
    const/high16 v3, 0x40000000    # 2.0f

    .line 37
    .line 38
    invoke-virtual {v0, p1, v3}, Landroid/util/KeyValueListParser;->getFloat(Ljava/lang/String;F)F

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    float-to-double v3, p1

    .line 43
    sget-object p1, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    .line 44
    .line 45
    const-wide/16 v5, 0x1

    .line 46
    .line 47
    invoke-virtual {p1, v5, v6}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    .line 48
    .line 49
    .line 50
    move-result-wide v5

    .line 51
    const-string/jumbo p1, "service_reconnect_max_backoff_sec"

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, p1, v5, v6}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    .line 55
    .line 56
    .line 57
    move-result-wide v5

    .line 58
    const-string/jumbo p1, "sms_service_enabled"

    .line 59
    .line 60
    .line 61
    const/4 v7, 0x1

    .line 62
    invoke-virtual {v0, p1, v7}, Landroid/util/KeyValueListParser;->getBoolean(Ljava/lang/String;Z)Z

    .line 63
    .line 64
    .line 65
    move-result p1

    .line 66
    const-string/jumbo v7, "sms_app_bind_flags"

    .line 67
    .line 68
    .line 69
    const/high16 v8, 0x44000000    # 512.0f

    .line 70
    .line 71
    invoke-virtual {v0, v7, v8}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    .line 72
    .line 73
    .line 74
    move-result v7

    .line 75
    sget-object v8, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    .line 76
    .line 77
    const-wide/16 v9, 0x2

    .line 78
    .line 79
    invoke-virtual {v8, v9, v10}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    .line 80
    .line 81
    .line 82
    move-result-wide v8

    .line 83
    const-string/jumbo v10, "service_stable_connection_threshold_sec"

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0, v10, v8, v9}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    .line 87
    .line 88
    .line 89
    move-result-wide v8

    .line 90
    const-wide/16 v10, 0x5

    .line 91
    .line 92
    invoke-static {v10, v11, v1, v2}, Ljava/lang/Math;->max(JJ)J

    .line 93
    .line 94
    .line 95
    move-result-wide v0

    .line 96
    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    .line 97
    .line 98
    invoke-static {v10, v11, v3, v4}, Ljava/lang/Math;->max(DD)D

    .line 99
    .line 100
    .line 101
    move-result-wide v2

    .line 102
    invoke-static {v0, v1, v5, v6}, Ljava/lang/Math;->max(JJ)J

    .line 103
    .line 104
    .line 105
    move-result-wide v4

    .line 106
    iput-wide v0, p0, Lcom/android/server/appbinding/AppBindingConstants;->SERVICE_RECONNECT_BACKOFF_SEC:J

    .line 107
    .line 108
    iput-wide v2, p0, Lcom/android/server/appbinding/AppBindingConstants;->SERVICE_RECONNECT_BACKOFF_INCREASE:D

    .line 109
    .line 110
    iput-wide v4, p0, Lcom/android/server/appbinding/AppBindingConstants;->SERVICE_RECONNECT_MAX_BACKOFF_SEC:J

    .line 111
    .line 112
    iput-wide v8, p0, Lcom/android/server/appbinding/AppBindingConstants;->SERVICE_STABLE_CONNECTION_THRESHOLD_SEC:J

    .line 113
    .line 114
    iput-boolean p1, p0, Lcom/android/server/appbinding/AppBindingConstants;->SMS_SERVICE_ENABLED:Z

    .line 115
    .line 116
    iput v7, p0, Lcom/android/server/appbinding/AppBindingConstants;->SMS_APP_BIND_FLAGS:I

    .line 117
    .line 118
    return-void
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;)V
    .locals 4

    .line 1
    const-string v0, "  "

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v1, "Constants: "

    .line 7
    .line 8
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/android/server/appbinding/AppBindingConstants;->sourceSettings:Ljava/lang/String;

    .line 12
    .line 13
    const-string v2, "  SERVICE_RECONNECT_BACKOFF_SEC: "

    .line 14
    .line 15
    invoke-static {p1, v1, v0, v2}, Lcom/android/server/am/ProcessList$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iget-wide v1, p0, Lcom/android/server/appbinding/AppBindingConstants;->SERVICE_RECONNECT_BACKOFF_SEC:J

    .line 19
    .line 20
    const-string v3, "  SERVICE_RECONNECT_BACKOFF_INCREASE: "

    .line 21
    .line 22
    invoke-static {v1, v2, p1, v0, v3}, Lcom/android/server/am/ActivityManagerConstants$$ExternalSyntheticOutline0;->m(JLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    iget-wide v1, p0, Lcom/android/server/appbinding/AppBindingConstants;->SERVICE_RECONNECT_BACKOFF_INCREASE:D

    .line 26
    .line 27
    invoke-virtual {p1, v1, v2}, Ljava/io/PrintWriter;->println(D)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    const-string v1, "  SERVICE_RECONNECT_MAX_BACKOFF_SEC: "

    .line 34
    .line 35
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    iget-wide v1, p0, Lcom/android/server/appbinding/AppBindingConstants;->SERVICE_RECONNECT_MAX_BACKOFF_SEC:J

    .line 39
    .line 40
    const-string v3, "  SERVICE_STABLE_CONNECTION_THRESHOLD_SEC: "

    .line 41
    .line 42
    invoke-static {v1, v2, p1, v0, v3}, Lcom/android/server/am/ActivityManagerConstants$$ExternalSyntheticOutline0;->m(JLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    iget-wide v1, p0, Lcom/android/server/appbinding/AppBindingConstants;->SERVICE_STABLE_CONNECTION_THRESHOLD_SEC:J

    .line 46
    .line 47
    const-string v3, "  SMS_SERVICE_ENABLED: "

    .line 48
    .line 49
    invoke-static {v1, v2, p1, v0, v3}, Lcom/android/server/am/ActivityManagerConstants$$ExternalSyntheticOutline0;->m(JLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    iget-boolean v1, p0, Lcom/android/server/appbinding/AppBindingConstants;->SMS_SERVICE_ENABLED:Z

    .line 53
    .line 54
    const-string v2, "  SMS_APP_BIND_FLAGS: 0x"

    .line 55
    .line 56
    invoke-static {p1, v0, v2, v1}, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 57
    .line 58
    .line 59
    iget p0, p0, Lcom/android/server/appbinding/AppBindingConstants;->SMS_APP_BIND_FLAGS:I

    .line 60
    .line 61
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    return-void
.end method
