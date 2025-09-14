.class final Lcom/android/server/alarm/AlarmManagerService$Constants;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/provider/DeviceConfig$OnPropertiesChangedListener;


# static fields
.field static final KEY_ALLOW_WHILE_IDLE_COMPAT_QUOTA:Ljava/lang/String; = "allow_while_idle_compat_quota"

.field static final KEY_ALLOW_WHILE_IDLE_COMPAT_WINDOW:Ljava/lang/String; = "allow_while_idle_compat_window"

.field static final KEY_ALLOW_WHILE_IDLE_QUOTA:Ljava/lang/String; = "allow_while_idle_quota"

.field static final KEY_ALLOW_WHILE_IDLE_WHITELIST_DURATION:Ljava/lang/String; = "allow_while_idle_whitelist_duration"

.field static final KEY_ALLOW_WHILE_IDLE_WINDOW:Ljava/lang/String; = "allow_while_idle_window"

.field static final KEY_CACHED_LISTENER_REMOVAL_DELAY:Ljava/lang/String; = "cached_listener_removal_delay"

.field static final KEY_LISTENER_TIMEOUT:Ljava/lang/String; = "listener_timeout"

.field static final KEY_MAX_ALARMS_PER_UID:Ljava/lang/String; = "max_alarms_per_uid"

.field static final KEY_MAX_DEVICE_IDLE_FUZZ:Ljava/lang/String; = "max_device_idle_fuzz"

.field static final KEY_MAX_INTERVAL:Ljava/lang/String; = "max_interval"

.field static final KEY_MIN_DEVICE_IDLE_FUZZ:Ljava/lang/String; = "min_device_idle_fuzz"

.field static final KEY_MIN_FUTURITY:Ljava/lang/String; = "min_futurity"

.field static final KEY_MIN_INTERVAL:Ljava/lang/String; = "min_interval"

.field static final KEY_MIN_WINDOW:Ljava/lang/String; = "min_window"

.field static final KEY_PRIORITY_ALARM_DELAY:Ljava/lang/String; = "priority_alarm_delay"

.field static final KEY_TEMPORARY_QUOTA_BUMP:Ljava/lang/String; = "temporary_quota_bump"


# instance fields
.field public ALLOW_WHILE_IDLE_COMPAT_QUOTA:I

.field public ALLOW_WHILE_IDLE_COMPAT_WINDOW:J

.field public ALLOW_WHILE_IDLE_QUOTA:I

.field public ALLOW_WHILE_IDLE_WHITELIST_DURATION:J

.field public ALLOW_WHILE_IDLE_WINDOW:J

.field public final APP_STANDBY_QUOTAS:[I

.field public APP_STANDBY_RESTRICTED_QUOTA:I

.field public APP_STANDBY_RESTRICTED_WINDOW:J

.field public APP_STANDBY_WINDOW:J

.field public CACHED_LISTENER_REMOVAL_DELAY:J

.field public final DEFAULT_APP_STANDBY_QUOTAS:[I

.field public DELAY_NONWAKEUP_ALARMS_WHILE_SCREEN_OFF:Z

.field final KEYS_APP_STANDBY_QUOTAS:[Ljava/lang/String;

.field public LISTENER_TIMEOUT:J

.field public MAX_ALARMS_PER_UID:I

.field public MAX_DEVICE_IDLE_FUZZ:J

.field public MAX_INTERVAL:J

.field public MIN_DEVICE_IDLE_FUZZ:J

.field public MIN_FUTURITY:J

.field public MIN_INTERVAL:J

.field public MIN_WINDOW:J

.field public PRIORITY_ALARM_DELAY:J

.field public TEMPORARY_QUOTA_BUMP:I

.field public TIME_TICK_ALLOWED_WHILE_IDLE:Z

.field public mLastAllowWhileIdleWhitelistDuration:J

.field public mVersion:I

.field public final synthetic this$0:Lcom/android/server/alarm/AlarmManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/alarm/AlarmManagerService;)V
    .locals 8

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 5
    .line 6
    const-string/jumbo p1, "standby_quota_working"

    .line 7
    .line 8
    .line 9
    const-string/jumbo v0, "standby_quota_frequent"

    .line 10
    .line 11
    .line 12
    const-string/jumbo v1, "standby_quota_active"

    .line 13
    .line 14
    .line 15
    const-string/jumbo v2, "standby_quota_rare"

    .line 16
    .line 17
    .line 18
    const-string/jumbo v3, "standby_quota_never"

    .line 19
    .line 20
    .line 21
    filled-new-array {v1, p1, v0, v2, v3}, [Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    iput-object p1, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->KEYS_APP_STANDBY_QUOTAS:[Ljava/lang/String;

    .line 26
    .line 27
    const/16 p1, 0x2d0

    .line 28
    .line 29
    const/16 v0, 0xa

    .line 30
    .line 31
    const/4 v1, 0x2

    .line 32
    const/4 v2, 0x1

    .line 33
    const/4 v3, 0x0

    .line 34
    filled-new-array {p1, v0, v1, v2, v3}, [I

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    iput-object p1, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->DEFAULT_APP_STANDBY_QUOTAS:[I

    .line 39
    .line 40
    const-wide/16 v0, 0x1388

    .line 41
    .line 42
    iput-wide v0, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->MIN_FUTURITY:J

    .line 43
    .line 44
    const-wide/32 v4, 0xea60

    .line 45
    .line 46
    .line 47
    iput-wide v4, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->MIN_INTERVAL:J

    .line 48
    .line 49
    const-wide v4, 0x757b12c00L

    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    iput-wide v4, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->MAX_INTERVAL:J

    .line 55
    .line 56
    const-wide/32 v4, 0x927c0

    .line 57
    .line 58
    .line 59
    iput-wide v4, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->MIN_WINDOW:J

    .line 60
    .line 61
    const-wide/16 v4, 0x2710

    .line 62
    .line 63
    iput-wide v4, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->ALLOW_WHILE_IDLE_WHITELIST_DURATION:J

    .line 64
    .line 65
    iput-wide v0, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->LISTENER_TIMEOUT:J

    .line 66
    .line 67
    const/16 p1, 0x1f4

    .line 68
    .line 69
    iput p1, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->MAX_ALARMS_PER_UID:I

    .line 70
    .line 71
    const-wide/32 v0, 0x36ee80

    .line 72
    .line 73
    .line 74
    iput-wide v0, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->APP_STANDBY_WINDOW:J

    .line 75
    .line 76
    const/4 p1, 0x5

    .line 77
    new-array p1, p1, [I

    .line 78
    .line 79
    iput-object p1, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->APP_STANDBY_QUOTAS:[I

    .line 80
    .line 81
    iput v2, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->APP_STANDBY_RESTRICTED_QUOTA:I

    .line 82
    .line 83
    const-wide/32 v6, 0x5265c00

    .line 84
    .line 85
    .line 86
    iput-wide v6, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->APP_STANDBY_RESTRICTED_WINDOW:J

    .line 87
    .line 88
    iput-boolean v2, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->TIME_TICK_ALLOWED_WHILE_IDLE:Z

    .line 89
    .line 90
    const/16 p1, 0x48

    .line 91
    .line 92
    iput p1, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->ALLOW_WHILE_IDLE_QUOTA:I

    .line 93
    .line 94
    const/4 p1, 0x7

    .line 95
    iput p1, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->ALLOW_WHILE_IDLE_COMPAT_QUOTA:I

    .line 96
    .line 97
    iput-wide v0, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->ALLOW_WHILE_IDLE_COMPAT_WINDOW:J

    .line 98
    .line 99
    iput-wide v0, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->ALLOW_WHILE_IDLE_WINDOW:J

    .line 100
    .line 101
    const-wide/32 v0, 0x83d60

    .line 102
    .line 103
    .line 104
    iput-wide v0, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->PRIORITY_ALARM_DELAY:J

    .line 105
    .line 106
    const-wide/32 v0, 0x1d4c0

    .line 107
    .line 108
    .line 109
    iput-wide v0, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->MIN_DEVICE_IDLE_FUZZ:J

    .line 110
    .line 111
    const-wide/32 v0, 0xdbba0

    .line 112
    .line 113
    .line 114
    iput-wide v0, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->MAX_DEVICE_IDLE_FUZZ:J

    .line 115
    .line 116
    iput v3, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->TEMPORARY_QUOTA_BUMP:I

    .line 117
    .line 118
    iput-boolean v2, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->DELAY_NONWAKEUP_ALARMS_WHILE_SCREEN_OFF:Z

    .line 119
    .line 120
    iput-wide v4, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->CACHED_LISTENER_REMOVAL_DELAY:J

    .line 121
    .line 122
    const-wide/16 v0, -0x1

    .line 123
    .line 124
    iput-wide v0, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->mLastAllowWhileIdleWhitelistDuration:J

    .line 125
    .line 126
    iput v3, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->mVersion:I

    .line 127
    .line 128
    invoke-virtual {p0}, Lcom/android/server/alarm/AlarmManagerService$Constants;->updateAllowWhileIdleWhitelistDurationLocked()V

    .line 129
    .line 130
    .line 131
    :goto_0
    iget-object p1, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->APP_STANDBY_QUOTAS:[I

    .line 132
    .line 133
    array-length v0, p1

    .line 134
    if-ge v3, v0, :cond_0

    .line 135
    .line 136
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->DEFAULT_APP_STANDBY_QUOTAS:[I

    .line 137
    .line 138
    aget v0, v0, v3

    .line 139
    .line 140
    aput v0, p1, v3

    .line 141
    .line 142
    add-int/lit8 v3, v3, 0x1

    .line 143
    .line 144
    goto :goto_0

    .line 145
    :cond_0
    return-void
.end method


# virtual methods
.method public final dump(Landroid/util/IndentingPrintWriter;)V
    .locals 4

    .line 1
    const-string v0, "Settings:"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 7
    .line 8
    .line 9
    iget v0, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->mVersion:I

    .line 10
    .line 11
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-string/jumbo v1, "version"

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 22
    .line 23
    .line 24
    const-string/jumbo v0, "min_futurity"

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    const-string v0, "="

    .line 31
    .line 32
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    iget-wide v1, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->MIN_FUTURITY:J

    .line 36
    .line 37
    invoke-static {v1, v2, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 41
    .line 42
    .line 43
    const-string/jumbo v1, "min_interval"

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    iget-wide v1, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->MIN_INTERVAL:J

    .line 53
    .line 54
    invoke-static {v1, v2, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 58
    .line 59
    .line 60
    const-string/jumbo v1, "max_interval"

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    iget-wide v1, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->MAX_INTERVAL:J

    .line 70
    .line 71
    invoke-static {v1, v2, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 75
    .line 76
    .line 77
    const-string/jumbo v1, "min_window"

    .line 78
    .line 79
    .line 80
    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    iget-wide v1, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->MIN_WINDOW:J

    .line 87
    .line 88
    invoke-static {v1, v2, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 92
    .line 93
    .line 94
    const-string/jumbo v1, "listener_timeout"

    .line 95
    .line 96
    .line 97
    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    iget-wide v1, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->LISTENER_TIMEOUT:J

    .line 104
    .line 105
    invoke-static {v1, v2, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 109
    .line 110
    .line 111
    iget v1, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->ALLOW_WHILE_IDLE_QUOTA:I

    .line 112
    .line 113
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 114
    .line 115
    .line 116
    move-result-object v1

    .line 117
    const-string v2, "allow_while_idle_quota"

    .line 118
    .line 119
    invoke-virtual {p1, v2, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    .line 120
    .line 121
    .line 122
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 123
    .line 124
    .line 125
    const-string v1, "allow_while_idle_window"

    .line 126
    .line 127
    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    iget-wide v1, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->ALLOW_WHILE_IDLE_WINDOW:J

    .line 134
    .line 135
    invoke-static {v1, v2, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 139
    .line 140
    .line 141
    iget v1, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->ALLOW_WHILE_IDLE_COMPAT_QUOTA:I

    .line 142
    .line 143
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 144
    .line 145
    .line 146
    move-result-object v1

    .line 147
    const-string v2, "allow_while_idle_compat_quota"

    .line 148
    .line 149
    invoke-virtual {p1, v2, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    .line 150
    .line 151
    .line 152
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 153
    .line 154
    .line 155
    const-string v1, "allow_while_idle_compat_window"

    .line 156
    .line 157
    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    iget-wide v1, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->ALLOW_WHILE_IDLE_COMPAT_WINDOW:J

    .line 164
    .line 165
    invoke-static {v1, v2, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 169
    .line 170
    .line 171
    const-string v1, "allow_while_idle_whitelist_duration"

    .line 172
    .line 173
    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    iget-wide v1, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->ALLOW_WHILE_IDLE_WHITELIST_DURATION:J

    .line 180
    .line 181
    invoke-static {v1, v2, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 182
    .line 183
    .line 184
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 185
    .line 186
    .line 187
    iget v1, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->MAX_ALARMS_PER_UID:I

    .line 188
    .line 189
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 190
    .line 191
    .line 192
    move-result-object v1

    .line 193
    const-string/jumbo v2, "max_alarms_per_uid"

    .line 194
    .line 195
    .line 196
    invoke-virtual {p1, v2, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    .line 197
    .line 198
    .line 199
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 200
    .line 201
    .line 202
    const-string v1, "app_standby_window"

    .line 203
    .line 204
    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 205
    .line 206
    .line 207
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 208
    .line 209
    .line 210
    iget-wide v1, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->APP_STANDBY_WINDOW:J

    .line 211
    .line 212
    invoke-static {v1, v2, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 213
    .line 214
    .line 215
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 216
    .line 217
    .line 218
    const/4 v1, 0x0

    .line 219
    :goto_0
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->KEYS_APP_STANDBY_QUOTAS:[Ljava/lang/String;

    .line 220
    .line 221
    array-length v3, v2

    .line 222
    if-ge v1, v3, :cond_0

    .line 223
    .line 224
    aget-object v2, v2, v1

    .line 225
    .line 226
    iget-object v3, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->APP_STANDBY_QUOTAS:[I

    .line 227
    .line 228
    aget v3, v3, v1

    .line 229
    .line 230
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 231
    .line 232
    .line 233
    move-result-object v3

    .line 234
    invoke-virtual {p1, v2, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    .line 235
    .line 236
    .line 237
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 238
    .line 239
    .line 240
    add-int/lit8 v1, v1, 0x1

    .line 241
    .line 242
    goto :goto_0

    .line 243
    :cond_0
    iget v1, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->APP_STANDBY_RESTRICTED_QUOTA:I

    .line 244
    .line 245
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 246
    .line 247
    .line 248
    move-result-object v1

    .line 249
    const-string/jumbo v2, "standby_quota_restricted"

    .line 250
    .line 251
    .line 252
    invoke-virtual {p1, v2, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    .line 253
    .line 254
    .line 255
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 256
    .line 257
    .line 258
    const-string v1, "app_standby_restricted_window"

    .line 259
    .line 260
    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 261
    .line 262
    .line 263
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 264
    .line 265
    .line 266
    iget-wide v1, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->APP_STANDBY_RESTRICTED_WINDOW:J

    .line 267
    .line 268
    invoke-static {v1, v2, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 269
    .line 270
    .line 271
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 272
    .line 273
    .line 274
    iget-boolean v1, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->TIME_TICK_ALLOWED_WHILE_IDLE:Z

    .line 275
    .line 276
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 277
    .line 278
    .line 279
    move-result-object v1

    .line 280
    const-string/jumbo v2, "time_tick_allowed_while_idle"

    .line 281
    .line 282
    .line 283
    invoke-virtual {p1, v2, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    .line 284
    .line 285
    .line 286
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 287
    .line 288
    .line 289
    const-string/jumbo v1, "priority_alarm_delay"

    .line 290
    .line 291
    .line 292
    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 293
    .line 294
    .line 295
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 296
    .line 297
    .line 298
    iget-wide v1, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->PRIORITY_ALARM_DELAY:J

    .line 299
    .line 300
    invoke-static {v1, v2, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 301
    .line 302
    .line 303
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 304
    .line 305
    .line 306
    const-string/jumbo v1, "min_device_idle_fuzz"

    .line 307
    .line 308
    .line 309
    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 310
    .line 311
    .line 312
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 313
    .line 314
    .line 315
    iget-wide v1, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->MIN_DEVICE_IDLE_FUZZ:J

    .line 316
    .line 317
    invoke-static {v1, v2, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 318
    .line 319
    .line 320
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 321
    .line 322
    .line 323
    const-string/jumbo v1, "max_device_idle_fuzz"

    .line 324
    .line 325
    .line 326
    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 327
    .line 328
    .line 329
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 330
    .line 331
    .line 332
    iget-wide v1, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->MAX_DEVICE_IDLE_FUZZ:J

    .line 333
    .line 334
    invoke-static {v1, v2, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 335
    .line 336
    .line 337
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 338
    .line 339
    .line 340
    iget v1, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->TEMPORARY_QUOTA_BUMP:I

    .line 341
    .line 342
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 343
    .line 344
    .line 345
    move-result-object v1

    .line 346
    const-string/jumbo v2, "temporary_quota_bump"

    .line 347
    .line 348
    .line 349
    invoke-virtual {p1, v2, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    .line 350
    .line 351
    .line 352
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 353
    .line 354
    .line 355
    iget-boolean v1, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->DELAY_NONWAKEUP_ALARMS_WHILE_SCREEN_OFF:Z

    .line 356
    .line 357
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 358
    .line 359
    .line 360
    move-result-object v1

    .line 361
    const-string/jumbo v2, "delay_nonwakeup_alarms_while_screen_off"

    .line 362
    .line 363
    .line 364
    invoke-virtual {p1, v2, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    .line 365
    .line 366
    .line 367
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 368
    .line 369
    .line 370
    const-string/jumbo v1, "cached_listener_removal_delay"

    .line 371
    .line 372
    .line 373
    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 374
    .line 375
    .line 376
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 377
    .line 378
    .line 379
    iget-wide v0, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->CACHED_LISTENER_REMOVAL_DELAY:J

    .line 380
    .line 381
    invoke-static {v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 382
    .line 383
    .line 384
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 385
    .line 386
    .line 387
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 388
    .line 389
    .line 390
    return-void
.end method

.method public final onPropertiesChanged(Landroid/provider/DeviceConfig$Properties;)V
    .locals 15

    .line 1
    move-object v0, p0

    .line 2
    move-object/from16 v1, p1

    .line 3
    .line 4
    iget-object v2, v0, Lcom/android/server/alarm/AlarmManagerService$Constants;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 5
    .line 6
    iget-object v2, v2, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    .line 7
    .line 8
    monitor-enter v2

    .line 9
    :try_start_0
    iget v3, v0, Lcom/android/server/alarm/AlarmManagerService$Constants;->mVersion:I

    .line 10
    .line 11
    const/4 v4, 0x1

    .line 12
    add-int/2addr v3, v4

    .line 13
    iput v3, v0, Lcom/android/server/alarm/AlarmManagerService$Constants;->mVersion:I

    .line 14
    .line 15
    invoke-virtual/range {p1 .. p1}, Landroid/provider/DeviceConfig$Properties;->getKeyset()Ljava/util/Set;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    const/4 v5, 0x0

    .line 24
    move v6, v5

    .line 25
    move v7, v6

    .line 26
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 27
    .line 28
    .line 29
    move-result v8

    .line 30
    if-eqz v8, :cond_5

    .line 31
    .line 32
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v8

    .line 36
    check-cast v8, Ljava/lang/String;

    .line 37
    .line 38
    if-nez v8, :cond_1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    .line 42
    .line 43
    .line 44
    move-result v9

    .line 45
    sparse-switch v9, :sswitch_data_0

    .line 46
    .line 47
    .line 48
    goto/16 :goto_1

    .line 49
    .line 50
    :sswitch_0
    const-string/jumbo v9, "delay_nonwakeup_alarms_while_screen_off"

    .line 51
    .line 52
    .line 53
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result v9

    .line 57
    if-eqz v9, :cond_2

    .line 58
    .line 59
    const/16 v9, 0x12

    .line 60
    .line 61
    goto/16 :goto_2

    .line 62
    .line 63
    :catchall_0
    move-exception v0

    .line 64
    goto/16 :goto_3

    .line 65
    .line 66
    :sswitch_1
    const-string/jumbo v9, "min_interval"

    .line 67
    .line 68
    .line 69
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    move-result v9

    .line 73
    if-eqz v9, :cond_2

    .line 74
    .line 75
    move v9, v4

    .line 76
    goto/16 :goto_2

    .line 77
    .line 78
    :sswitch_2
    const-string v9, "allow_while_idle_compat_quota"

    .line 79
    .line 80
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    move-result v9

    .line 84
    if-eqz v9, :cond_2

    .line 85
    .line 86
    const/4 v9, 0x5

    .line 87
    goto/16 :goto_2

    .line 88
    .line 89
    :sswitch_3
    const-string/jumbo v9, "max_interval"

    .line 90
    .line 91
    .line 92
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    move-result v9

    .line 96
    if-eqz v9, :cond_2

    .line 97
    .line 98
    const/4 v9, 0x2

    .line 99
    goto/16 :goto_2

    .line 100
    .line 101
    :sswitch_4
    const-string/jumbo v9, "time_tick_allowed_while_idle"

    .line 102
    .line 103
    .line 104
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 105
    .line 106
    .line 107
    move-result v9

    .line 108
    if-eqz v9, :cond_2

    .line 109
    .line 110
    const/16 v9, 0xd

    .line 111
    .line 112
    goto/16 :goto_2

    .line 113
    .line 114
    :sswitch_5
    const-string v9, "allow_while_idle_whitelist_duration"

    .line 115
    .line 116
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    move-result v9

    .line 120
    if-eqz v9, :cond_2

    .line 121
    .line 122
    const/16 v9, 0x8

    .line 123
    .line 124
    goto/16 :goto_2

    .line 125
    .line 126
    :sswitch_6
    const-string/jumbo v9, "listener_timeout"

    .line 127
    .line 128
    .line 129
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 130
    .line 131
    .line 132
    move-result v9

    .line 133
    if-eqz v9, :cond_2

    .line 134
    .line 135
    const/16 v9, 0x9

    .line 136
    .line 137
    goto/16 :goto_2

    .line 138
    .line 139
    :sswitch_7
    const-string v9, "app_standby_window"

    .line 140
    .line 141
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 142
    .line 143
    .line 144
    move-result v9

    .line 145
    if-eqz v9, :cond_2

    .line 146
    .line 147
    const/16 v9, 0xb

    .line 148
    .line 149
    goto/16 :goto_2

    .line 150
    .line 151
    :sswitch_8
    const-string/jumbo v9, "min_window"

    .line 152
    .line 153
    .line 154
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 155
    .line 156
    .line 157
    move-result v9

    .line 158
    if-eqz v9, :cond_2

    .line 159
    .line 160
    const/4 v9, 0x4

    .line 161
    goto/16 :goto_2

    .line 162
    .line 163
    :sswitch_9
    const-string/jumbo v9, "max_device_idle_fuzz"

    .line 164
    .line 165
    .line 166
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 167
    .line 168
    .line 169
    move-result v9

    .line 170
    if-eqz v9, :cond_2

    .line 171
    .line 172
    const/16 v9, 0x10

    .line 173
    .line 174
    goto/16 :goto_2

    .line 175
    .line 176
    :sswitch_a
    const-string v9, "allow_while_idle_window"

    .line 177
    .line 178
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 179
    .line 180
    .line 181
    move-result v9

    .line 182
    if-eqz v9, :cond_2

    .line 183
    .line 184
    const/4 v9, 0x6

    .line 185
    goto/16 :goto_2

    .line 186
    .line 187
    :sswitch_b
    const-string v9, "allow_while_idle_quota"

    .line 188
    .line 189
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 190
    .line 191
    .line 192
    move-result v9

    .line 193
    if-eqz v9, :cond_2

    .line 194
    .line 195
    const/4 v9, 0x3

    .line 196
    goto :goto_2

    .line 197
    :sswitch_c
    const-string/jumbo v9, "temporary_quota_bump"

    .line 198
    .line 199
    .line 200
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 201
    .line 202
    .line 203
    move-result v9

    .line 204
    if-eqz v9, :cond_2

    .line 205
    .line 206
    const/16 v9, 0x11

    .line 207
    .line 208
    goto :goto_2

    .line 209
    :sswitch_d
    const-string/jumbo v9, "priority_alarm_delay"

    .line 210
    .line 211
    .line 212
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 213
    .line 214
    .line 215
    move-result v9

    .line 216
    if-eqz v9, :cond_2

    .line 217
    .line 218
    const/16 v9, 0xe

    .line 219
    .line 220
    goto :goto_2

    .line 221
    :sswitch_e
    const-string v9, "app_standby_restricted_window"

    .line 222
    .line 223
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 224
    .line 225
    .line 226
    move-result v9

    .line 227
    if-eqz v9, :cond_2

    .line 228
    .line 229
    const/16 v9, 0xc

    .line 230
    .line 231
    goto :goto_2

    .line 232
    :sswitch_f
    const-string/jumbo v9, "max_alarms_per_uid"

    .line 233
    .line 234
    .line 235
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 236
    .line 237
    .line 238
    move-result v9

    .line 239
    if-eqz v9, :cond_2

    .line 240
    .line 241
    const/16 v9, 0xa

    .line 242
    .line 243
    goto :goto_2

    .line 244
    :sswitch_10
    const-string/jumbo v9, "cached_listener_removal_delay"

    .line 245
    .line 246
    .line 247
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 248
    .line 249
    .line 250
    move-result v9

    .line 251
    if-eqz v9, :cond_2

    .line 252
    .line 253
    const/16 v9, 0x13

    .line 254
    .line 255
    goto :goto_2

    .line 256
    :sswitch_11
    const-string/jumbo v9, "min_futurity"

    .line 257
    .line 258
    .line 259
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 260
    .line 261
    .line 262
    move-result v9

    .line 263
    if-eqz v9, :cond_2

    .line 264
    .line 265
    move v9, v5

    .line 266
    goto :goto_2

    .line 267
    :sswitch_12
    const-string/jumbo v9, "min_device_idle_fuzz"

    .line 268
    .line 269
    .line 270
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 271
    .line 272
    .line 273
    move-result v9

    .line 274
    if-eqz v9, :cond_2

    .line 275
    .line 276
    const/16 v9, 0xf

    .line 277
    .line 278
    goto :goto_2

    .line 279
    :sswitch_13
    const-string v9, "allow_while_idle_compat_window"

    .line 280
    .line 281
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 282
    .line 283
    .line 284
    move-result v9

    .line 285
    if-eqz v9, :cond_2

    .line 286
    .line 287
    const/4 v9, 0x7

    .line 288
    goto :goto_2

    .line 289
    :cond_2
    :goto_1
    const/4 v9, -0x1

    .line 290
    :goto_2
    const-wide/16 v13, 0x2710

    .line 291
    .line 292
    const-wide/32 v10, 0x36ee80

    .line 293
    .line 294
    .line 295
    packed-switch v9, :pswitch_data_0

    .line 296
    .line 297
    .line 298
    const-string/jumbo v9, "standby_quota_"

    .line 299
    .line 300
    .line 301
    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 302
    .line 303
    .line 304
    move-result v8

    .line 305
    if-eqz v8, :cond_0

    .line 306
    .line 307
    if-nez v7, :cond_0

    .line 308
    .line 309
    invoke-virtual {p0}, Lcom/android/server/alarm/AlarmManagerService$Constants;->updateStandbyQuotasLocked()V

    .line 310
    .line 311
    .line 312
    move v7, v4

    .line 313
    goto/16 :goto_0

    .line 314
    .line 315
    :pswitch_0
    const-string/jumbo v8, "cached_listener_removal_delay"

    .line 316
    .line 317
    .line 318
    invoke-virtual {v1, v8, v13, v14}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    .line 319
    .line 320
    .line 321
    move-result-wide v8

    .line 322
    iput-wide v8, v0, Lcom/android/server/alarm/AlarmManagerService$Constants;->CACHED_LISTENER_REMOVAL_DELAY:J

    .line 323
    .line 324
    goto/16 :goto_0

    .line 325
    .line 326
    :pswitch_1
    const-string/jumbo v8, "delay_nonwakeup_alarms_while_screen_off"

    .line 327
    .line 328
    .line 329
    invoke-virtual {v1, v8, v4}, Landroid/provider/DeviceConfig$Properties;->getBoolean(Ljava/lang/String;Z)Z

    .line 330
    .line 331
    .line 332
    move-result v8

    .line 333
    iput-boolean v8, v0, Lcom/android/server/alarm/AlarmManagerService$Constants;->DELAY_NONWAKEUP_ALARMS_WHILE_SCREEN_OFF:Z

    .line 334
    .line 335
    goto/16 :goto_0

    .line 336
    .line 337
    :pswitch_2
    const-string/jumbo v8, "temporary_quota_bump"

    .line 338
    .line 339
    .line 340
    invoke-virtual {v1, v8, v5}, Landroid/provider/DeviceConfig$Properties;->getInt(Ljava/lang/String;I)I

    .line 341
    .line 342
    .line 343
    move-result v8

    .line 344
    iput v8, v0, Lcom/android/server/alarm/AlarmManagerService$Constants;->TEMPORARY_QUOTA_BUMP:I

    .line 345
    .line 346
    goto/16 :goto_0

    .line 347
    .line 348
    :pswitch_3
    if-nez v6, :cond_0

    .line 349
    .line 350
    invoke-virtual {p0}, Lcom/android/server/alarm/AlarmManagerService$Constants;->updateDeviceIdleFuzzBoundaries()V

    .line 351
    .line 352
    .line 353
    move v6, v4

    .line 354
    goto/16 :goto_0

    .line 355
    .line 356
    :pswitch_4
    const-string/jumbo v8, "priority_alarm_delay"

    .line 357
    .line 358
    .line 359
    const-wide/32 v9, 0x83d60

    .line 360
    .line 361
    .line 362
    invoke-virtual {v1, v8, v9, v10}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    .line 363
    .line 364
    .line 365
    move-result-wide v8

    .line 366
    iput-wide v8, v0, Lcom/android/server/alarm/AlarmManagerService$Constants;->PRIORITY_ALARM_DELAY:J

    .line 367
    .line 368
    goto/16 :goto_0

    .line 369
    .line 370
    :pswitch_5
    const-string/jumbo v8, "time_tick_allowed_while_idle"

    .line 371
    .line 372
    .line 373
    invoke-virtual {v1, v8, v4}, Landroid/provider/DeviceConfig$Properties;->getBoolean(Ljava/lang/String;Z)Z

    .line 374
    .line 375
    .line 376
    move-result v8

    .line 377
    iput-boolean v8, v0, Lcom/android/server/alarm/AlarmManagerService$Constants;->TIME_TICK_ALLOWED_WHILE_IDLE:Z

    .line 378
    .line 379
    goto/16 :goto_0

    .line 380
    .line 381
    :pswitch_6
    invoke-virtual {p0}, Lcom/android/server/alarm/AlarmManagerService$Constants;->updateStandbyWindowsLocked()V

    .line 382
    .line 383
    .line 384
    goto/16 :goto_0

    .line 385
    .line 386
    :pswitch_7
    const-string/jumbo v8, "max_alarms_per_uid"

    .line 387
    .line 388
    .line 389
    const/16 v9, 0x1f4

    .line 390
    .line 391
    invoke-virtual {v1, v8, v9}, Landroid/provider/DeviceConfig$Properties;->getInt(Ljava/lang/String;I)I

    .line 392
    .line 393
    .line 394
    move-result v8

    .line 395
    iput v8, v0, Lcom/android/server/alarm/AlarmManagerService$Constants;->MAX_ALARMS_PER_UID:I

    .line 396
    .line 397
    if-ge v8, v9, :cond_0

    .line 398
    .line 399
    const-string v8, "AlarmManager"

    .line 400
    .line 401
    const-string v10, "Cannot set max_alarms_per_uid lower than 500"

    .line 402
    .line 403
    invoke-static {v8, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    .line 405
    .line 406
    iput v9, v0, Lcom/android/server/alarm/AlarmManagerService$Constants;->MAX_ALARMS_PER_UID:I

    .line 407
    .line 408
    goto/16 :goto_0

    .line 409
    .line 410
    :pswitch_8
    const-string/jumbo v8, "listener_timeout"

    .line 411
    .line 412
    .line 413
    const-wide/16 v9, 0x1388

    .line 414
    .line 415
    invoke-virtual {v1, v8, v9, v10}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    .line 416
    .line 417
    .line 418
    move-result-wide v8

    .line 419
    iput-wide v8, v0, Lcom/android/server/alarm/AlarmManagerService$Constants;->LISTENER_TIMEOUT:J

    .line 420
    .line 421
    goto/16 :goto_0

    .line 422
    .line 423
    :pswitch_9
    const-string v8, "allow_while_idle_whitelist_duration"

    .line 424
    .line 425
    invoke-virtual {v1, v8, v13, v14}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    .line 426
    .line 427
    .line 428
    move-result-wide v8

    .line 429
    iput-wide v8, v0, Lcom/android/server/alarm/AlarmManagerService$Constants;->ALLOW_WHILE_IDLE_WHITELIST_DURATION:J

    .line 430
    .line 431
    invoke-virtual {p0}, Lcom/android/server/alarm/AlarmManagerService$Constants;->updateAllowWhileIdleWhitelistDurationLocked()V

    .line 432
    .line 433
    .line 434
    goto/16 :goto_0

    .line 435
    .line 436
    :pswitch_a
    const-string v8, "allow_while_idle_compat_window"

    .line 437
    .line 438
    invoke-virtual {v1, v8, v10, v11}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    .line 439
    .line 440
    .line 441
    move-result-wide v8

    .line 442
    iput-wide v8, v0, Lcom/android/server/alarm/AlarmManagerService$Constants;->ALLOW_WHILE_IDLE_COMPAT_WINDOW:J

    .line 443
    .line 444
    cmp-long v12, v8, v10

    .line 445
    .line 446
    if-lez v12, :cond_3

    .line 447
    .line 448
    const-string v8, "AlarmManager"

    .line 449
    .line 450
    const-string v9, "Cannot have allow_while_idle_compat_window > 3600000"

    .line 451
    .line 452
    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    .line 454
    .line 455
    iput-wide v10, v0, Lcom/android/server/alarm/AlarmManagerService$Constants;->ALLOW_WHILE_IDLE_COMPAT_WINDOW:J

    .line 456
    .line 457
    goto/16 :goto_0

    .line 458
    .line 459
    :cond_3
    cmp-long v8, v8, v10

    .line 460
    .line 461
    if-eqz v8, :cond_0

    .line 462
    .line 463
    const-string v8, "AlarmManager"

    .line 464
    .line 465
    new-instance v9, Ljava/lang/StringBuilder;

    .line 466
    .line 467
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 468
    .line 469
    .line 470
    const-string v10, "Using a non-default allow_while_idle_compat_window = "

    .line 471
    .line 472
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 473
    .line 474
    .line 475
    iget-wide v10, v0, Lcom/android/server/alarm/AlarmManagerService$Constants;->ALLOW_WHILE_IDLE_COMPAT_WINDOW:J

    .line 476
    .line 477
    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 478
    .line 479
    .line 480
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 481
    .line 482
    .line 483
    move-result-object v9

    .line 484
    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    .line 486
    .line 487
    goto/16 :goto_0

    .line 488
    .line 489
    :pswitch_b
    const-string v8, "allow_while_idle_window"

    .line 490
    .line 491
    invoke-virtual {v1, v8, v10, v11}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    .line 492
    .line 493
    .line 494
    move-result-wide v8

    .line 495
    iput-wide v8, v0, Lcom/android/server/alarm/AlarmManagerService$Constants;->ALLOW_WHILE_IDLE_WINDOW:J

    .line 496
    .line 497
    cmp-long v12, v8, v10

    .line 498
    .line 499
    if-lez v12, :cond_4

    .line 500
    .line 501
    const-string v8, "AlarmManager"

    .line 502
    .line 503
    const-string v9, "Cannot have allow_while_idle_window > 3600000"

    .line 504
    .line 505
    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    .line 507
    .line 508
    iput-wide v10, v0, Lcom/android/server/alarm/AlarmManagerService$Constants;->ALLOW_WHILE_IDLE_WINDOW:J

    .line 509
    .line 510
    goto/16 :goto_0

    .line 511
    .line 512
    :cond_4
    cmp-long v8, v8, v10

    .line 513
    .line 514
    if-eqz v8, :cond_0

    .line 515
    .line 516
    const-string v8, "AlarmManager"

    .line 517
    .line 518
    new-instance v9, Ljava/lang/StringBuilder;

    .line 519
    .line 520
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 521
    .line 522
    .line 523
    const-string v10, "Using a non-default allow_while_idle_window = "

    .line 524
    .line 525
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 526
    .line 527
    .line 528
    iget-wide v10, v0, Lcom/android/server/alarm/AlarmManagerService$Constants;->ALLOW_WHILE_IDLE_WINDOW:J

    .line 529
    .line 530
    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 531
    .line 532
    .line 533
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 534
    .line 535
    .line 536
    move-result-object v9

    .line 537
    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    .line 539
    .line 540
    goto/16 :goto_0

    .line 541
    .line 542
    :pswitch_c
    const-string v8, "allow_while_idle_compat_quota"

    .line 543
    .line 544
    const/4 v9, 0x7

    .line 545
    invoke-virtual {v1, v8, v9}, Landroid/provider/DeviceConfig$Properties;->getInt(Ljava/lang/String;I)I

    .line 546
    .line 547
    .line 548
    move-result v8

    .line 549
    iput v8, v0, Lcom/android/server/alarm/AlarmManagerService$Constants;->ALLOW_WHILE_IDLE_COMPAT_QUOTA:I

    .line 550
    .line 551
    if-gtz v8, :cond_0

    .line 552
    .line 553
    const-string v8, "AlarmManager"

    .line 554
    .line 555
    const-string v9, "Must have positive allow_while_idle_compat quota"

    .line 556
    .line 557
    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    .line 559
    .line 560
    iput v4, v0, Lcom/android/server/alarm/AlarmManagerService$Constants;->ALLOW_WHILE_IDLE_COMPAT_QUOTA:I

    .line 561
    .line 562
    goto/16 :goto_0

    .line 563
    .line 564
    :pswitch_d
    const-string/jumbo v8, "min_window"

    .line 565
    .line 566
    .line 567
    const-wide/32 v9, 0x927c0

    .line 568
    .line 569
    .line 570
    invoke-virtual {v1, v8, v9, v10}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    .line 571
    .line 572
    .line 573
    move-result-wide v8

    .line 574
    iput-wide v8, v0, Lcom/android/server/alarm/AlarmManagerService$Constants;->MIN_WINDOW:J

    .line 575
    .line 576
    goto/16 :goto_0

    .line 577
    .line 578
    :pswitch_e
    const-string v8, "allow_while_idle_quota"

    .line 579
    .line 580
    const/16 v9, 0x48

    .line 581
    .line 582
    invoke-virtual {v1, v8, v9}, Landroid/provider/DeviceConfig$Properties;->getInt(Ljava/lang/String;I)I

    .line 583
    .line 584
    .line 585
    move-result v8

    .line 586
    iput v8, v0, Lcom/android/server/alarm/AlarmManagerService$Constants;->ALLOW_WHILE_IDLE_QUOTA:I

    .line 587
    .line 588
    if-gtz v8, :cond_0

    .line 589
    .line 590
    const-string v8, "AlarmManager"

    .line 591
    .line 592
    const-string v9, "Must have positive allow_while_idle quota"

    .line 593
    .line 594
    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    .line 596
    .line 597
    iput v4, v0, Lcom/android/server/alarm/AlarmManagerService$Constants;->ALLOW_WHILE_IDLE_QUOTA:I

    .line 598
    .line 599
    goto/16 :goto_0

    .line 600
    .line 601
    :pswitch_f
    const-string/jumbo v8, "max_interval"

    .line 602
    .line 603
    .line 604
    const-wide v9, 0x757b12c00L

    .line 605
    .line 606
    .line 607
    .line 608
    .line 609
    invoke-virtual {v1, v8, v9, v10}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    .line 610
    .line 611
    .line 612
    move-result-wide v8

    .line 613
    iput-wide v8, v0, Lcom/android/server/alarm/AlarmManagerService$Constants;->MAX_INTERVAL:J

    .line 614
    .line 615
    goto/16 :goto_0

    .line 616
    .line 617
    :pswitch_10
    const-string/jumbo v8, "min_interval"

    .line 618
    .line 619
    .line 620
    const-wide/32 v9, 0xea60

    .line 621
    .line 622
    .line 623
    invoke-virtual {v1, v8, v9, v10}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    .line 624
    .line 625
    .line 626
    move-result-wide v8

    .line 627
    iput-wide v8, v0, Lcom/android/server/alarm/AlarmManagerService$Constants;->MIN_INTERVAL:J

    .line 628
    .line 629
    goto/16 :goto_0

    .line 630
    .line 631
    :pswitch_11
    const-string/jumbo v8, "min_futurity"

    .line 632
    .line 633
    .line 634
    const-wide/16 v9, 0x1388

    .line 635
    .line 636
    invoke-virtual {v1, v8, v9, v10}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    .line 637
    .line 638
    .line 639
    move-result-wide v8

    .line 640
    iput-wide v8, v0, Lcom/android/server/alarm/AlarmManagerService$Constants;->MIN_FUTURITY:J

    .line 641
    .line 642
    goto/16 :goto_0

    .line 643
    .line 644
    :cond_5
    monitor-exit v2

    .line 645
    return-void

    .line 646
    :goto_3
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 647
    throw v0

    .line 648
    nop

    .line 649
    :sswitch_data_0
    .sparse-switch
        -0x5e0379da -> :sswitch_13
        -0x58de0e82 -> :sswitch_12
        -0x4d123227 -> :sswitch_11
        -0x4a94a91e -> :sswitch_10
        -0x3a284894 -> :sswitch_f
        -0x3481955c -> :sswitch_e
        -0x24dca806 -> :sswitch_d
        -0x23417eb5 -> :sswitch_c
        -0x226d61af -> :sswitch_b
        -0x21ab88c9 -> :sswitch_a
        -0x187e4754 -> :sswitch_9
        -0x176c2d83 -> :sswitch_8
        -0x8c8f860 -> :sswitch_7
        0x3795c4d6 -> :sswitch_6
        0x43f28753 -> :sswitch_5
        0x48578d89 -> :sswitch_4
        0x5b1d4140 -> :sswitch_3
        0x70457582 -> :sswitch_2
        0x77646c12 -> :sswitch_1
        0x7d295c98 -> :sswitch_0
    .end sparse-switch

    .line 650
    .line 651
    .line 652
    .line 653
    .line 654
    .line 655
    .line 656
    .line 657
    .line 658
    .line 659
    .line 660
    .line 661
    .line 662
    .line 663
    .line 664
    .line 665
    .line 666
    .line 667
    .line 668
    .line 669
    .line 670
    .line 671
    .line 672
    .line 673
    .line 674
    .line 675
    .line 676
    .line 677
    .line 678
    .line 679
    .line 680
    .line 681
    .line 682
    .line 683
    .line 684
    .line 685
    .line 686
    .line 687
    .line 688
    .line 689
    .line 690
    .line 691
    .line 692
    .line 693
    .line 694
    .line 695
    .line 696
    .line 697
    .line 698
    .line 699
    .line 700
    .line 701
    .line 702
    .line 703
    .line 704
    .line 705
    .line 706
    .line 707
    .line 708
    .line 709
    .line 710
    .line 711
    .line 712
    .line 713
    .line 714
    .line 715
    .line 716
    .line 717
    .line 718
    .line 719
    .line 720
    .line 721
    .line 722
    .line 723
    .line 724
    .line 725
    .line 726
    .line 727
    .line 728
    .line 729
    .line 730
    .line 731
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final updateAllowWhileIdleWhitelistDurationLocked()V
    .locals 8

    .line 1
    iget-wide v0, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->mLastAllowWhileIdleWhitelistDuration:J

    .line 2
    .line 3
    iget-wide v3, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->ALLOW_WHILE_IDLE_WHITELIST_DURATION:J

    .line 4
    .line 5
    cmp-long v0, v0, v3

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iput-wide v3, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->mLastAllowWhileIdleWhitelistDuration:J

    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 12
    .line 13
    iget-object v2, v0, Lcom/android/server/alarm/AlarmManagerService;->mOptsWithFgs:Landroid/app/BroadcastOptions;

    .line 14
    .line 15
    const/16 v6, 0x12e

    .line 16
    .line 17
    const-string v7, ""

    .line 18
    .line 19
    const/4 v5, 0x0

    .line 20
    invoke-virtual/range {v2 .. v7}, Landroid/app/BroadcastOptions;->setTemporaryAppAllowlist(JIILjava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 24
    .line 25
    iget-object v1, v0, Lcom/android/server/alarm/AlarmManagerService;->mOptsWithFgsForAlarmClock:Landroid/app/BroadcastOptions;

    .line 26
    .line 27
    iget-wide v2, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->ALLOW_WHILE_IDLE_WHITELIST_DURATION:J

    .line 28
    .line 29
    const/16 v5, 0x12d

    .line 30
    .line 31
    const-string v6, ""

    .line 32
    .line 33
    const/4 v4, 0x0

    .line 34
    invoke-virtual/range {v1 .. v6}, Landroid/app/BroadcastOptions;->setTemporaryAppAllowlist(JIILjava/lang/String;)V

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 38
    .line 39
    iget-object v1, v0, Lcom/android/server/alarm/AlarmManagerService;->mOptsWithoutFgs:Landroid/app/BroadcastOptions;

    .line 40
    .line 41
    iget-wide v2, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->ALLOW_WHILE_IDLE_WHITELIST_DURATION:J

    .line 42
    .line 43
    const/4 v5, -0x1

    .line 44
    const-string v6, ""

    .line 45
    .line 46
    const/4 v4, 0x1

    .line 47
    invoke-virtual/range {v1 .. v6}, Landroid/app/BroadcastOptions;->setTemporaryAppAllowlist(JIILjava/lang/String;)V

    .line 48
    .line 49
    .line 50
    :cond_0
    return-void
.end method

.method public final updateDeviceIdleFuzzBoundaries()V
    .locals 5

    .line 1
    const-string/jumbo v0, "min_device_idle_fuzz"

    .line 2
    .line 3
    .line 4
    const-string/jumbo v1, "max_device_idle_fuzz"

    .line 5
    .line 6
    .line 7
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    const-string v3, "alarm_manager"

    .line 12
    .line 13
    invoke-static {v3, v2}, Landroid/provider/DeviceConfig;->getProperties(Ljava/lang/String;[Ljava/lang/String;)Landroid/provider/DeviceConfig$Properties;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    const-wide/32 v3, 0x1d4c0

    .line 18
    .line 19
    .line 20
    invoke-virtual {v2, v0, v3, v4}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    .line 21
    .line 22
    .line 23
    move-result-wide v3

    .line 24
    iput-wide v3, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->MIN_DEVICE_IDLE_FUZZ:J

    .line 25
    .line 26
    const-wide/32 v3, 0xdbba0

    .line 27
    .line 28
    .line 29
    invoke-virtual {v2, v1, v3, v4}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    .line 30
    .line 31
    .line 32
    move-result-wide v0

    .line 33
    iput-wide v0, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->MAX_DEVICE_IDLE_FUZZ:J

    .line 34
    .line 35
    iget-wide v2, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->MIN_DEVICE_IDLE_FUZZ:J

    .line 36
    .line 37
    cmp-long v0, v0, v2

    .line 38
    .line 39
    if-gez v0, :cond_0

    .line 40
    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    const-string/jumbo v1, "max_device_idle_fuzz cannot be smaller than min_device_idle_fuzz! Increasing to "

    .line 44
    .line 45
    .line 46
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    iget-wide v1, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->MIN_DEVICE_IDLE_FUZZ:J

    .line 50
    .line 51
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    const-string v1, "AlarmManager"

    .line 59
    .line 60
    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    .line 62
    .line 63
    iget-wide v0, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->MIN_DEVICE_IDLE_FUZZ:J

    .line 64
    .line 65
    iput-wide v0, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->MAX_DEVICE_IDLE_FUZZ:J

    .line 66
    .line 67
    :cond_0
    return-void
.end method

.method public final updateStandbyQuotasLocked()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->KEYS_APP_STANDBY_QUOTAS:[Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "alarm_manager"

    .line 4
    .line 5
    invoke-static {v1, v0}, Landroid/provider/DeviceConfig;->getProperties(Ljava/lang/String;[Ljava/lang/String;)Landroid/provider/DeviceConfig$Properties;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->APP_STANDBY_QUOTAS:[I

    .line 10
    .line 11
    iget-object v3, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->KEYS_APP_STANDBY_QUOTAS:[Ljava/lang/String;

    .line 12
    .line 13
    const/4 v4, 0x0

    .line 14
    aget-object v3, v3, v4

    .line 15
    .line 16
    iget-object v5, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->DEFAULT_APP_STANDBY_QUOTAS:[I

    .line 17
    .line 18
    aget v5, v5, v4

    .line 19
    .line 20
    invoke-virtual {v0, v3, v5}, Landroid/provider/DeviceConfig$Properties;->getInt(Ljava/lang/String;I)I

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    aput v3, v2, v4

    .line 25
    .line 26
    const/4 v2, 0x1

    .line 27
    move v3, v2

    .line 28
    :goto_0
    iget-object v4, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->KEYS_APP_STANDBY_QUOTAS:[Ljava/lang/String;

    .line 29
    .line 30
    array-length v5, v4

    .line 31
    if-ge v3, v5, :cond_0

    .line 32
    .line 33
    iget-object v5, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->APP_STANDBY_QUOTAS:[I

    .line 34
    .line 35
    aget-object v4, v4, v3

    .line 36
    .line 37
    add-int/lit8 v6, v3, -0x1

    .line 38
    .line 39
    aget v6, v5, v6

    .line 40
    .line 41
    iget-object v7, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->DEFAULT_APP_STANDBY_QUOTAS:[I

    .line 42
    .line 43
    aget v7, v7, v3

    .line 44
    .line 45
    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    .line 46
    .line 47
    .line 48
    move-result v6

    .line 49
    invoke-virtual {v0, v4, v6}, Landroid/provider/DeviceConfig$Properties;->getInt(Ljava/lang/String;I)I

    .line 50
    .line 51
    .line 52
    move-result v4

    .line 53
    aput v4, v5, v3

    .line 54
    .line 55
    add-int/lit8 v3, v3, 0x1

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_0
    const-string/jumbo v0, "standby_quota_restricted"

    .line 59
    .line 60
    .line 61
    invoke-static {v1, v0, v2}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    iput v0, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->APP_STANDBY_RESTRICTED_QUOTA:I

    .line 70
    .line 71
    return-void
.end method

.method public final updateStandbyWindowsLocked()V
    .locals 8

    .line 1
    const-string v0, "app_standby_window"

    .line 2
    .line 3
    const-string v1, "app_standby_restricted_window"

    .line 4
    .line 5
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    const-string v3, "alarm_manager"

    .line 10
    .line 11
    invoke-static {v3, v2}, Landroid/provider/DeviceConfig;->getProperties(Ljava/lang/String;[Ljava/lang/String;)Landroid/provider/DeviceConfig$Properties;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    const-wide/32 v3, 0x36ee80

    .line 16
    .line 17
    .line 18
    invoke-virtual {v2, v0, v3, v4}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    .line 19
    .line 20
    .line 21
    move-result-wide v5

    .line 22
    iput-wide v5, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->APP_STANDBY_WINDOW:J

    .line 23
    .line 24
    cmp-long v0, v5, v3

    .line 25
    .line 26
    const-string v7, "AlarmManager"

    .line 27
    .line 28
    if-lez v0, :cond_0

    .line 29
    .line 30
    const-string v0, "Cannot exceed the app_standby_window size of 3600000"

    .line 31
    .line 32
    invoke-static {v7, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    iput-wide v3, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->APP_STANDBY_WINDOW:J

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    cmp-long v0, v5, v3

    .line 39
    .line 40
    if-gez v0, :cond_1

    .line 41
    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    const-string v3, "Using a non-default app_standby_window of "

    .line 45
    .line 46
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    iget-wide v3, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->APP_STANDBY_WINDOW:J

    .line 50
    .line 51
    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-static {v7, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    .line 60
    .line 61
    :cond_1
    :goto_0
    iget-wide v3, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->APP_STANDBY_WINDOW:J

    .line 62
    .line 63
    const-wide/32 v5, 0x5265c00

    .line 64
    .line 65
    .line 66
    invoke-virtual {v2, v1, v5, v6}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    .line 67
    .line 68
    .line 69
    move-result-wide v0

    .line 70
    invoke-static {v3, v4, v0, v1}, Ljava/lang/Math;->max(JJ)J

    .line 71
    .line 72
    .line 73
    move-result-wide v0

    .line 74
    iput-wide v0, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->APP_STANDBY_RESTRICTED_WINDOW:J

    .line 75
    .line 76
    return-void
.end method
