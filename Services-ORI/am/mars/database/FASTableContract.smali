.class public abstract Lcom/android/server/am/mars/database/FASTableContract;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final DC_AUTHORITY_FAS_URI:Landroid/net/Uri;

.field public static final FASQueryProjectionV1:[Ljava/lang/String;

.field public static final FASQueryProjectionV2:[Ljava/lang/String;

.field public static final FASQueryProjectionV3:[Ljava/lang/String;

.field public static final SMART_MGR_APP_STARTUP_URI:Landroid/net/Uri;

.field public static final SMART_MGR_DEFAULT_ALLOWED_LIST_URI:Landroid/net/Uri;

.field public static final SMART_MGR_FORCED_APP_STANDBY_URI:Landroid/net/Uri;

.field public static final SMART_MGR_FREEZE_EXCLUDE_LIST_URI:Landroid/net/Uri;

.field public static final SMART_MGR_SETTINGS_URI:Landroid/net/Uri;

.field public static final disableReasonProjection:[Ljava/lang/String;

.field public static final preBattetyUsageProjection:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 1
    const-string/jumbo v0, "content://com.sec.android.sdhms.fasprovider/ForcedAppStandby"

    .line 2
    .line 3
    .line 4
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    sput-object v0, Lcom/android/server/am/mars/database/FASTableContract;->SMART_MGR_FORCED_APP_STANDBY_URI:Landroid/net/Uri;

    .line 9
    .line 10
    const-string/jumbo v0, "content://com.samsung.android.sm.battery.bridge"

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    sput-object v0, Lcom/android/server/am/mars/database/FASTableContract;->DC_AUTHORITY_FAS_URI:Landroid/net/Uri;

    .line 18
    .line 19
    const-string/jumbo v0, "prevCurrent"

    .line 20
    .line 21
    .line 22
    filled-new-array {v0}, [Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    sput-object v0, Lcom/android/server/am/mars/database/FASTableContract;->preBattetyUsageProjection:[Ljava/lang/String;

    .line 27
    .line 28
    const-string/jumbo v0, "disableReason"

    .line 29
    .line 30
    .line 31
    filled-new-array {v0}, [Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    sput-object v0, Lcom/android/server/am/mars/database/FASTableContract;->disableReasonProjection:[Ljava/lang/String;

    .line 36
    .line 37
    const-string/jumbo v10, "disableType"

    .line 38
    .line 39
    .line 40
    const-string/jumbo v11, "disableResetTime"

    .line 41
    .line 42
    .line 43
    const-string/jumbo v1, "package_name"

    .line 44
    .line 45
    .line 46
    const-string/jumbo v2, "uid"

    .line 47
    .line 48
    .line 49
    const-string/jumbo v3, "mode"

    .line 50
    .line 51
    .line 52
    const-string/jumbo v4, "new"

    .line 53
    .line 54
    .line 55
    const-string/jumbo v5, "reason"

    .line 56
    .line 57
    .line 58
    const-string/jumbo v6, "extras"

    .line 59
    .line 60
    .line 61
    const-string/jumbo v7, "resetTime"

    .line 62
    .line 63
    .line 64
    const-string/jumbo v8, "packageType"

    .line 65
    .line 66
    .line 67
    const-string/jumbo v9, "level"

    .line 68
    .line 69
    .line 70
    filled-new-array/range {v1 .. v11}, [Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    sput-object v0, Lcom/android/server/am/mars/database/FASTableContract;->FASQueryProjectionV1:[Ljava/lang/String;

    .line 75
    .line 76
    const-string/jumbo v11, "disableResetTime"

    .line 77
    .line 78
    .line 79
    const-string/jumbo v12, "prevCurrent"

    .line 80
    .line 81
    .line 82
    const-string/jumbo v1, "package_name"

    .line 83
    .line 84
    .line 85
    const-string/jumbo v2, "uid"

    .line 86
    .line 87
    .line 88
    const-string/jumbo v3, "mode"

    .line 89
    .line 90
    .line 91
    const-string/jumbo v4, "new"

    .line 92
    .line 93
    .line 94
    const-string/jumbo v5, "reason"

    .line 95
    .line 96
    .line 97
    const-string/jumbo v6, "extras"

    .line 98
    .line 99
    .line 100
    const-string/jumbo v7, "resetTime"

    .line 101
    .line 102
    .line 103
    const-string/jumbo v8, "packageType"

    .line 104
    .line 105
    .line 106
    const-string/jumbo v9, "level"

    .line 107
    .line 108
    .line 109
    const-string/jumbo v10, "disableType"

    .line 110
    .line 111
    .line 112
    filled-new-array/range {v1 .. v12}, [Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    sput-object v0, Lcom/android/server/am/mars/database/FASTableContract;->FASQueryProjectionV2:[Ljava/lang/String;

    .line 117
    .line 118
    const-string/jumbo v12, "prevCurrent"

    .line 119
    .line 120
    .line 121
    const-string/jumbo v13, "disableReason"

    .line 122
    .line 123
    .line 124
    const-string/jumbo v1, "package_name"

    .line 125
    .line 126
    .line 127
    const-string/jumbo v2, "uid"

    .line 128
    .line 129
    .line 130
    const-string/jumbo v3, "mode"

    .line 131
    .line 132
    .line 133
    const-string/jumbo v4, "new"

    .line 134
    .line 135
    .line 136
    const-string/jumbo v5, "reason"

    .line 137
    .line 138
    .line 139
    const-string/jumbo v6, "extras"

    .line 140
    .line 141
    .line 142
    const-string/jumbo v7, "resetTime"

    .line 143
    .line 144
    .line 145
    const-string/jumbo v8, "packageType"

    .line 146
    .line 147
    .line 148
    const-string/jumbo v9, "level"

    .line 149
    .line 150
    .line 151
    const-string/jumbo v10, "disableType"

    .line 152
    .line 153
    .line 154
    const-string/jumbo v11, "disableResetTime"

    .line 155
    .line 156
    .line 157
    filled-new-array/range {v1 .. v13}, [Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v0

    .line 161
    sput-object v0, Lcom/android/server/am/mars/database/FASTableContract;->FASQueryProjectionV3:[Ljava/lang/String;

    .line 162
    .line 163
    const-string/jumbo v0, "content://com.samsung.android.sm/settings"

    .line 164
    .line 165
    .line 166
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 167
    .line 168
    .line 169
    move-result-object v0

    .line 170
    sput-object v0, Lcom/android/server/am/mars/database/FASTableContract;->SMART_MGR_SETTINGS_URI:Landroid/net/Uri;

    .line 171
    .line 172
    const-string/jumbo v0, "content://com.samsung.android.sm/DefaultAllowedList"

    .line 173
    .line 174
    .line 175
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 176
    .line 177
    .line 178
    move-result-object v0

    .line 179
    sput-object v0, Lcom/android/server/am/mars/database/FASTableContract;->SMART_MGR_DEFAULT_ALLOWED_LIST_URI:Landroid/net/Uri;

    .line 180
    .line 181
    const-string/jumbo v0, "content://com.samsung.android.sm.appstart/appstart_record"

    .line 182
    .line 183
    .line 184
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 185
    .line 186
    .line 187
    move-result-object v0

    .line 188
    sput-object v0, Lcom/android/server/am/mars/database/FASTableContract;->SMART_MGR_APP_STARTUP_URI:Landroid/net/Uri;

    .line 189
    .line 190
    const-string/jumbo v0, "content://com.samsung.android.sm/FreezeExcludeList"

    .line 191
    .line 192
    .line 193
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 194
    .line 195
    .line 196
    move-result-object v0

    .line 197
    sput-object v0, Lcom/android/server/am/mars/database/FASTableContract;->SMART_MGR_FREEZE_EXCLUDE_LIST_URI:Landroid/net/Uri;

    .line 198
    .line 199
    return-void
.end method

.method public static convertDBValueToDisableReason(Ljava/lang/String;)I
    .locals 1

    .line 1
    const-string/jumbo v0, "default"

    .line 2
    .line 3
    .line 4
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    const/4 p0, 0x0

    .line 11
    return p0

    .line 12
    :cond_0
    const-string v0, "added_from_mars_auto"

    .line 13
    .line 14
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    const/4 p0, 0x1

    .line 21
    return p0

    .line 22
    :cond_1
    const-string v0, "added_from_user_manual"

    .line 23
    .line 24
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_2

    .line 29
    .line 30
    const/4 p0, 0x2

    .line 31
    return p0

    .line 32
    :cond_2
    const-string/jumbo v0, "deleted_from_mars_auto"

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-eqz v0, :cond_3

    .line 40
    .line 41
    const/4 p0, 0x4

    .line 42
    return p0

    .line 43
    :cond_3
    const-string/jumbo v0, "deleted_from_user_manual"

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    if-eqz v0, :cond_4

    .line 51
    .line 52
    const/16 p0, 0x8

    .line 53
    .line 54
    return p0

    .line 55
    :cond_4
    const-string v0, "added_from_mars_auto_specific"

    .line 56
    .line 57
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    if-eqz v0, :cond_5

    .line 62
    .line 63
    const/16 p0, 0x10

    .line 64
    .line 65
    return p0

    .line 66
    :cond_5
    const-string v0, "added_from_anomaly_manual"

    .line 67
    .line 68
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result p0

    .line 72
    if-eqz p0, :cond_6

    .line 73
    .line 74
    const/16 p0, 0x20

    .line 75
    .line 76
    return p0

    .line 77
    :cond_6
    const/4 p0, -0x1

    .line 78
    return p0
.end method

.method public static convertDisableReasonToDBValue(I)Ljava/lang/String;
    .locals 1

    .line 1
    if-eqz p0, :cond_6

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p0, v0, :cond_5

    .line 5
    .line 6
    const/4 v0, 0x2

    .line 7
    if-eq p0, v0, :cond_4

    .line 8
    .line 9
    const/4 v0, 0x4

    .line 10
    if-eq p0, v0, :cond_3

    .line 11
    .line 12
    const/16 v0, 0x8

    .line 13
    .line 14
    if-eq p0, v0, :cond_2

    .line 15
    .line 16
    const/16 v0, 0x10

    .line 17
    .line 18
    if-eq p0, v0, :cond_1

    .line 19
    .line 20
    const/16 v0, 0x20

    .line 21
    .line 22
    if-eq p0, v0, :cond_0

    .line 23
    .line 24
    const-string/jumbo p0, "null"

    .line 25
    .line 26
    .line 27
    return-object p0

    .line 28
    :cond_0
    const-string p0, "added_from_anomaly_manual"

    .line 29
    .line 30
    return-object p0

    .line 31
    :cond_1
    const-string p0, "added_from_mars_auto_specific"

    .line 32
    .line 33
    return-object p0

    .line 34
    :cond_2
    const-string/jumbo p0, "deleted_from_user_manual"

    .line 35
    .line 36
    .line 37
    return-object p0

    .line 38
    :cond_3
    const-string/jumbo p0, "deleted_from_mars_auto"

    .line 39
    .line 40
    .line 41
    return-object p0

    .line 42
    :cond_4
    const-string p0, "added_from_user_manual"

    .line 43
    .line 44
    return-object p0

    .line 45
    :cond_5
    const-string p0, "added_from_mars_auto"

    .line 46
    .line 47
    return-object p0

    .line 48
    :cond_6
    const-string/jumbo p0, "default"

    .line 49
    .line 50
    .line 51
    return-object p0
.end method

.method public static convertFASReasonToValue(Ljava/lang/String;)I
    .locals 2

    .line 1
    const/4 v0, -0x1

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    const-string/jumbo v1, "default"

    .line 6
    .line 7
    .line 8
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    const/4 p0, 0x0

    .line 15
    return p0

    .line 16
    :cond_1
    const-string v1, "added_from_mars_auto"

    .line 17
    .line 18
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_2

    .line 23
    .line 24
    const/4 p0, 0x1

    .line 25
    return p0

    .line 26
    :cond_2
    const-string v1, "added_from_user_manual"

    .line 27
    .line 28
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-eqz v1, :cond_3

    .line 33
    .line 34
    const/4 p0, 0x2

    .line 35
    return p0

    .line 36
    :cond_3
    const-string v1, "added_from_anomaly_auto"

    .line 37
    .line 38
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    if-eqz v1, :cond_4

    .line 43
    .line 44
    const/4 p0, 0x4

    .line 45
    return p0

    .line 46
    :cond_4
    const-string v1, "added_from_anomaly_manual"

    .line 47
    .line 48
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    if-eqz v1, :cond_5

    .line 53
    .line 54
    const/16 p0, 0x8

    .line 55
    .line 56
    return p0

    .line 57
    :cond_5
    const-string v1, "added_from_pre_o"

    .line 58
    .line 59
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    if-eqz v1, :cond_6

    .line 64
    .line 65
    const/16 p0, 0x10

    .line 66
    .line 67
    return p0

    .line 68
    :cond_6
    const-string v1, "added_from_policy_in_china"

    .line 69
    .line 70
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    move-result v1

    .line 74
    if-eqz v1, :cond_7

    .line 75
    .line 76
    const/16 p0, 0x20

    .line 77
    .line 78
    return p0

    .line 79
    :cond_7
    const-string v1, "added_from_unknown"

    .line 80
    .line 81
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    move-result v1

    .line 85
    if-eqz v1, :cond_8

    .line 86
    .line 87
    const/16 p0, 0x40

    .line 88
    .line 89
    return p0

    .line 90
    :cond_8
    const-string/jumbo v1, "deleted_from_mars_auto"

    .line 91
    .line 92
    .line 93
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    move-result v1

    .line 97
    if-eqz v1, :cond_9

    .line 98
    .line 99
    const/16 p0, 0x80

    .line 100
    .line 101
    return p0

    .line 102
    :cond_9
    const-string/jumbo v1, "deleted_from_user_manual"

    .line 103
    .line 104
    .line 105
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    move-result v1

    .line 109
    if-eqz v1, :cond_a

    .line 110
    .line 111
    const/16 p0, 0x100

    .line 112
    .line 113
    return p0

    .line 114
    :cond_a
    const-string/jumbo v1, "deleted_from_post_o"

    .line 115
    .line 116
    .line 117
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 118
    .line 119
    .line 120
    move-result v1

    .line 121
    if-eqz v1, :cond_b

    .line 122
    .line 123
    const/16 p0, 0x200

    .line 124
    .line 125
    return p0

    .line 126
    :cond_b
    const-string/jumbo v1, "deleted_from_policy_in_china"

    .line 127
    .line 128
    .line 129
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 130
    .line 131
    .line 132
    move-result v1

    .line 133
    if-eqz v1, :cond_c

    .line 134
    .line 135
    const/16 p0, 0x800

    .line 136
    .line 137
    return p0

    .line 138
    :cond_c
    const-string/jumbo v1, "deleted_from_unknown"

    .line 139
    .line 140
    .line 141
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 142
    .line 143
    .line 144
    move-result p0

    .line 145
    if-eqz p0, :cond_d

    .line 146
    .line 147
    const/16 p0, 0x1000

    .line 148
    .line 149
    return p0

    .line 150
    :cond_d
    return v0
.end method

.method public static convertFASTypeToReason(I)Ljava/lang/String;
    .locals 1

    .line 1
    if-eqz p0, :cond_c

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p0, v0, :cond_b

    .line 5
    .line 6
    const/4 v0, 0x2

    .line 7
    if-eq p0, v0, :cond_a

    .line 8
    .line 9
    const/4 v0, 0x4

    .line 10
    if-eq p0, v0, :cond_9

    .line 11
    .line 12
    const/16 v0, 0x8

    .line 13
    .line 14
    if-eq p0, v0, :cond_8

    .line 15
    .line 16
    const/16 v0, 0x10

    .line 17
    .line 18
    if-eq p0, v0, :cond_7

    .line 19
    .line 20
    const/16 v0, 0x20

    .line 21
    .line 22
    if-eq p0, v0, :cond_6

    .line 23
    .line 24
    const/16 v0, 0x40

    .line 25
    .line 26
    if-eq p0, v0, :cond_5

    .line 27
    .line 28
    const/16 v0, 0x80

    .line 29
    .line 30
    if-eq p0, v0, :cond_4

    .line 31
    .line 32
    const/16 v0, 0x100

    .line 33
    .line 34
    if-eq p0, v0, :cond_3

    .line 35
    .line 36
    const/16 v0, 0x200

    .line 37
    .line 38
    if-eq p0, v0, :cond_2

    .line 39
    .line 40
    const/16 v0, 0x800

    .line 41
    .line 42
    if-eq p0, v0, :cond_1

    .line 43
    .line 44
    const/16 v0, 0x1000

    .line 45
    .line 46
    if-eq p0, v0, :cond_0

    .line 47
    .line 48
    const-string/jumbo p0, "null"

    .line 49
    .line 50
    .line 51
    return-object p0

    .line 52
    :cond_0
    const-string/jumbo p0, "deleted_from_unknown"

    .line 53
    .line 54
    .line 55
    return-object p0

    .line 56
    :cond_1
    const-string/jumbo p0, "deleted_from_policy_in_china"

    .line 57
    .line 58
    .line 59
    return-object p0

    .line 60
    :cond_2
    const-string/jumbo p0, "deleted_from_post_o"

    .line 61
    .line 62
    .line 63
    return-object p0

    .line 64
    :cond_3
    const-string/jumbo p0, "deleted_from_user_manual"

    .line 65
    .line 66
    .line 67
    return-object p0

    .line 68
    :cond_4
    const-string/jumbo p0, "deleted_from_mars_auto"

    .line 69
    .line 70
    .line 71
    return-object p0

    .line 72
    :cond_5
    const-string p0, "added_from_unknown"

    .line 73
    .line 74
    return-object p0

    .line 75
    :cond_6
    const-string p0, "added_from_policy_in_china"

    .line 76
    .line 77
    return-object p0

    .line 78
    :cond_7
    const-string p0, "added_from_pre_o"

    .line 79
    .line 80
    return-object p0

    .line 81
    :cond_8
    const-string p0, "added_from_anomaly_manual"

    .line 82
    .line 83
    return-object p0

    .line 84
    :cond_9
    const-string p0, "added_from_anomaly_auto"

    .line 85
    .line 86
    return-object p0

    .line 87
    :cond_a
    const-string p0, "added_from_user_manual"

    .line 88
    .line 89
    return-object p0

    .line 90
    :cond_b
    const-string p0, "added_from_mars_auto"

    .line 91
    .line 92
    return-object p0

    .line 93
    :cond_c
    const-string/jumbo p0, "default"

    .line 94
    .line 95
    .line 96
    return-object p0
.end method

.method public static convertStateToDBExtrasValue(I)Ljava/lang/String;
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    if-eq p0, v0, :cond_3

    .line 3
    .line 4
    const/4 v0, 0x4

    .line 5
    if-eq p0, v0, :cond_2

    .line 6
    .line 7
    const/16 v0, 0x8

    .line 8
    .line 9
    if-eq p0, v0, :cond_1

    .line 10
    .line 11
    const/16 v0, 0x10

    .line 12
    .line 13
    if-eq p0, v0, :cond_0

    .line 14
    .line 15
    const-string p0, "0"

    .line 16
    .line 17
    return-object p0

    .line 18
    :cond_0
    const-string p0, "4"

    .line 19
    .line 20
    return-object p0

    .line 21
    :cond_1
    const-string p0, "3"

    .line 22
    .line 23
    return-object p0

    .line 24
    :cond_2
    const-string p0, "2"

    .line 25
    .line 26
    return-object p0

    .line 27
    :cond_3
    const-string p0, "1"

    .line 28
    .line 29
    return-object p0
.end method
