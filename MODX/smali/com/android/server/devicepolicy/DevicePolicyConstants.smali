.class public final Lcom/android/server/devicepolicy/DevicePolicyConstants;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final BATTERY_THRESHOLD_CHARGING:I

.field public final BATTERY_THRESHOLD_NOT_CHARGING:I

.field public final DAS_DIED_SERVICE_RECONNECT_BACKOFF_INCREASE:D

.field public final DAS_DIED_SERVICE_RECONNECT_BACKOFF_SEC:J

.field public final DAS_DIED_SERVICE_RECONNECT_MAX_BACKOFF_SEC:J

.field public final DAS_DIED_SERVICE_STABLE_CONNECTION_THRESHOLD_SEC:J

.field public final USE_TEST_ADMIN_AS_SUPERVISION_COMPONENT:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 12

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Landroid/util/KeyValueListParser;

    .line 6
    const/16 v1, 0x2c

    .line 8
    invoke-direct {v0, v1}, Landroid/util/KeyValueListParser;-><init>(C)V

    .line 11
    :try_start_0
    invoke-virtual {v0, p1}, Landroid/util/KeyValueListParser;->setString(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    goto :goto_0

    .line 15
    :catch_0
    const-string v1, "Bad device policy settings: %s"

    .line 17
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 20
    move-result-object p1

    .line 21
    const-string v2, "DevicePolicyManager"

    .line 23
    invoke-static {v2, v1, p1}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 26
    :goto_0
    sget-object p1, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    .line 28
    const-wide/16 v1, 0x1

    .line 30
    invoke-virtual {p1, v1, v2}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    .line 33
    move-result-wide v3

    .line 34
    const-string/jumbo p1, "das_died_service_reconnect_backoff_sec"

    .line 37
    invoke-virtual {v0, p1, v3, v4}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    .line 40
    move-result-wide v3

    .line 41
    const-string/jumbo p1, "das_died_service_reconnect_backoff_increase"

    .line 44
    const/high16 v5, 0x40000000    # 2.0f

    .line 46
    invoke-virtual {v0, p1, v5}, Landroid/util/KeyValueListParser;->getFloat(Ljava/lang/String;F)F

    .line 49
    move-result p1

    .line 50
    float-to-double v5, p1

    .line 51
    sget-object p1, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    .line 53
    invoke-virtual {p1, v1, v2}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    .line 56
    move-result-wide v1

    .line 57
    const-string/jumbo p1, "das_died_service_reconnect_max_backoff_sec"

    .line 60
    invoke-virtual {v0, p1, v1, v2}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    .line 63
    move-result-wide v1

    .line 64
    sget-object p1, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    .line 66
    const-wide/16 v7, 0x2

    .line 68
    invoke-virtual {p1, v7, v8}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    .line 71
    move-result-wide v7

    .line 72
    const-string/jumbo p1, "das_died_service_stable_connection_threshold_sec"

    .line 75
    invoke-virtual {v0, p1, v7, v8}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    .line 78
    move-result-wide v7

    .line 79
    const-string p1, "battery_threshold_not_charging"

    .line 81
    const/16 v9, 0x28

    .line 83
    invoke-virtual {v0, p1, v9}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    .line 86
    move-result p1

    .line 87
    const-string v9, "battery_threshold_charging"

    .line 89
    const/16 v10, 0x14

    .line 91
    invoke-virtual {v0, v9, v10}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    .line 94
    move-result v9

    .line 95
    const-string/jumbo v10, "use_test_admin_as_supervision_component"

    .line 98
    const/4 v11, 0x0

    .line 99
    invoke-virtual {v0, v10, v11}, Landroid/util/KeyValueListParser;->getBoolean(Ljava/lang/String;Z)Z

    .line 102
    move-result v0

    .line 103
    const-wide/16 v10, 0x5

    .line 105
    invoke-static {v10, v11, v3, v4}, Ljava/lang/Math;->max(JJ)J

    .line 108
    move-result-wide v3

    .line 109
    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    .line 111
    invoke-static {v10, v11, v5, v6}, Ljava/lang/Math;->max(DD)D

    .line 114
    move-result-wide v5

    .line 115
    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->max(JJ)J

    .line 118
    move-result-wide v1

    .line 119
    iput-wide v3, p0, Lcom/android/server/devicepolicy/DevicePolicyConstants;->DAS_DIED_SERVICE_RECONNECT_BACKOFF_SEC:J

    .line 121
    iput-wide v5, p0, Lcom/android/server/devicepolicy/DevicePolicyConstants;->DAS_DIED_SERVICE_RECONNECT_BACKOFF_INCREASE:D

    .line 123
    iput-wide v1, p0, Lcom/android/server/devicepolicy/DevicePolicyConstants;->DAS_DIED_SERVICE_RECONNECT_MAX_BACKOFF_SEC:J

    .line 125
    iput-wide v7, p0, Lcom/android/server/devicepolicy/DevicePolicyConstants;->DAS_DIED_SERVICE_STABLE_CONNECTION_THRESHOLD_SEC:J

    .line 127
    iput p1, p0, Lcom/android/server/devicepolicy/DevicePolicyConstants;->BATTERY_THRESHOLD_NOT_CHARGING:I

    .line 129
    iput v9, p0, Lcom/android/server/devicepolicy/DevicePolicyConstants;->BATTERY_THRESHOLD_CHARGING:I

    .line 131
    iput-boolean v0, p0, Lcom/android/server/devicepolicy/DevicePolicyConstants;->USE_TEST_ADMIN_AS_SUPERVISION_COMPONENT:Z

    .line 133
    return-void
.end method


# virtual methods
.method public final dump(Landroid/util/IndentingPrintWriter;)V
    .locals 2

    .line 1
    const-string v0, "Constants:"

    .line 3
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 9
    const-string v0, "DAS_DIED_SERVICE_RECONNECT_BACKOFF_SEC: "

    .line 11
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 14
    iget-wide v0, p0, Lcom/android/server/devicepolicy/DevicePolicyConstants;->DAS_DIED_SERVICE_RECONNECT_BACKOFF_SEC:J

    .line 16
    invoke-virtual {p1, v0, v1}, Landroid/util/IndentingPrintWriter;->println(J)V

    .line 19
    const-string v0, "DAS_DIED_SERVICE_RECONNECT_BACKOFF_INCREASE: "

    .line 21
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 24
    iget-wide v0, p0, Lcom/android/server/devicepolicy/DevicePolicyConstants;->DAS_DIED_SERVICE_RECONNECT_BACKOFF_INCREASE:D

    .line 26
    invoke-virtual {p1, v0, v1}, Landroid/util/IndentingPrintWriter;->println(D)V

    .line 29
    const-string v0, "DAS_DIED_SERVICE_RECONNECT_MAX_BACKOFF_SEC: "

    .line 31
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 34
    iget-wide v0, p0, Lcom/android/server/devicepolicy/DevicePolicyConstants;->DAS_DIED_SERVICE_RECONNECT_MAX_BACKOFF_SEC:J

    .line 36
    invoke-virtual {p1, v0, v1}, Landroid/util/IndentingPrintWriter;->println(J)V

    .line 39
    const-string v0, "DAS_DIED_SERVICE_STABLE_CONNECTION_THRESHOLD_SEC: "

    .line 41
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 44
    iget-wide v0, p0, Lcom/android/server/devicepolicy/DevicePolicyConstants;->DAS_DIED_SERVICE_STABLE_CONNECTION_THRESHOLD_SEC:J

    .line 46
    invoke-virtual {p1, v0, v1}, Landroid/util/IndentingPrintWriter;->println(J)V

    .line 49
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 52
    return-void
.end method
