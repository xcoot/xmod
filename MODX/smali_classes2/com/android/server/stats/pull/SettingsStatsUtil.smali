.class public abstract Lcom/android/server/stats/pull/SettingsStatsUtil;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final GLOBAL_SETTINGS:[Lcom/android/server/stats/pull/SettingsStatsUtil$FlagsData;

.field public static final SECURE_SETTINGS:[Lcom/android/server/stats/pull/SettingsStatsUtil$FlagsData;

.field public static final SYSTEM_SETTINGS:[Lcom/android/server/stats/pull/SettingsStatsUtil$FlagsData;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Lcom/android/server/stats/pull/SettingsStatsUtil$FlagsData;

    .line 2
    .line 3
    const-string v1, "GlobalFeature__boolean_whitelist"

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    invoke-direct {v0, v1, v2}, Lcom/android/server/stats/pull/SettingsStatsUtil$FlagsData;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    new-instance v1, Lcom/android/server/stats/pull/SettingsStatsUtil$FlagsData;

    .line 10
    .line 11
    const-string v3, "GlobalFeature__integer_whitelist"

    .line 12
    .line 13
    const/4 v4, 0x2

    .line 14
    invoke-direct {v1, v3, v4}, Lcom/android/server/stats/pull/SettingsStatsUtil$FlagsData;-><init>(Ljava/lang/String;I)V

    .line 15
    .line 16
    .line 17
    new-instance v3, Lcom/android/server/stats/pull/SettingsStatsUtil$FlagsData;

    .line 18
    .line 19
    const-string v5, "GlobalFeature__float_whitelist"

    .line 20
    .line 21
    const/4 v6, 0x3

    .line 22
    invoke-direct {v3, v5, v6}, Lcom/android/server/stats/pull/SettingsStatsUtil$FlagsData;-><init>(Ljava/lang/String;I)V

    .line 23
    .line 24
    .line 25
    new-instance v5, Lcom/android/server/stats/pull/SettingsStatsUtil$FlagsData;

    .line 26
    .line 27
    const-string v7, "GlobalFeature__string_whitelist"

    .line 28
    .line 29
    const/4 v8, 0x4

    .line 30
    invoke-direct {v5, v7, v8}, Lcom/android/server/stats/pull/SettingsStatsUtil$FlagsData;-><init>(Ljava/lang/String;I)V

    .line 31
    .line 32
    .line 33
    filled-new-array {v0, v1, v3, v5}, [Lcom/android/server/stats/pull/SettingsStatsUtil$FlagsData;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    sput-object v0, Lcom/android/server/stats/pull/SettingsStatsUtil;->GLOBAL_SETTINGS:[Lcom/android/server/stats/pull/SettingsStatsUtil$FlagsData;

    .line 38
    .line 39
    new-instance v0, Lcom/android/server/stats/pull/SettingsStatsUtil$FlagsData;

    .line 40
    .line 41
    const-string v1, "SecureFeature__boolean_whitelist"

    .line 42
    .line 43
    invoke-direct {v0, v1, v2}, Lcom/android/server/stats/pull/SettingsStatsUtil$FlagsData;-><init>(Ljava/lang/String;I)V

    .line 44
    .line 45
    .line 46
    new-instance v1, Lcom/android/server/stats/pull/SettingsStatsUtil$FlagsData;

    .line 47
    .line 48
    const-string v3, "SecureFeature__integer_whitelist"

    .line 49
    .line 50
    invoke-direct {v1, v3, v4}, Lcom/android/server/stats/pull/SettingsStatsUtil$FlagsData;-><init>(Ljava/lang/String;I)V

    .line 51
    .line 52
    .line 53
    new-instance v3, Lcom/android/server/stats/pull/SettingsStatsUtil$FlagsData;

    .line 54
    .line 55
    const-string v5, "SecureFeature__float_whitelist"

    .line 56
    .line 57
    invoke-direct {v3, v5, v6}, Lcom/android/server/stats/pull/SettingsStatsUtil$FlagsData;-><init>(Ljava/lang/String;I)V

    .line 58
    .line 59
    .line 60
    new-instance v5, Lcom/android/server/stats/pull/SettingsStatsUtil$FlagsData;

    .line 61
    .line 62
    const-string v7, "SecureFeature__string_whitelist"

    .line 63
    .line 64
    invoke-direct {v5, v7, v8}, Lcom/android/server/stats/pull/SettingsStatsUtil$FlagsData;-><init>(Ljava/lang/String;I)V

    .line 65
    .line 66
    .line 67
    filled-new-array {v0, v1, v3, v5}, [Lcom/android/server/stats/pull/SettingsStatsUtil$FlagsData;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    sput-object v0, Lcom/android/server/stats/pull/SettingsStatsUtil;->SECURE_SETTINGS:[Lcom/android/server/stats/pull/SettingsStatsUtil$FlagsData;

    .line 72
    .line 73
    new-instance v0, Lcom/android/server/stats/pull/SettingsStatsUtil$FlagsData;

    .line 74
    .line 75
    const-string v1, "SystemFeature__boolean_whitelist"

    .line 76
    .line 77
    invoke-direct {v0, v1, v2}, Lcom/android/server/stats/pull/SettingsStatsUtil$FlagsData;-><init>(Ljava/lang/String;I)V

    .line 78
    .line 79
    .line 80
    new-instance v1, Lcom/android/server/stats/pull/SettingsStatsUtil$FlagsData;

    .line 81
    .line 82
    const-string v2, "SystemFeature__integer_whitelist"

    .line 83
    .line 84
    invoke-direct {v1, v2, v4}, Lcom/android/server/stats/pull/SettingsStatsUtil$FlagsData;-><init>(Ljava/lang/String;I)V

    .line 85
    .line 86
    .line 87
    new-instance v2, Lcom/android/server/stats/pull/SettingsStatsUtil$FlagsData;

    .line 88
    .line 89
    const-string v3, "SystemFeature__float_whitelist"

    .line 90
    .line 91
    invoke-direct {v2, v3, v6}, Lcom/android/server/stats/pull/SettingsStatsUtil$FlagsData;-><init>(Ljava/lang/String;I)V

    .line 92
    .line 93
    .line 94
    new-instance v3, Lcom/android/server/stats/pull/SettingsStatsUtil$FlagsData;

    .line 95
    .line 96
    const-string v4, "SystemFeature__string_whitelist"

    .line 97
    .line 98
    invoke-direct {v3, v4, v8}, Lcom/android/server/stats/pull/SettingsStatsUtil$FlagsData;-><init>(Ljava/lang/String;I)V

    .line 99
    .line 100
    .line 101
    filled-new-array {v0, v1, v2, v3}, [Lcom/android/server/stats/pull/SettingsStatsUtil$FlagsData;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    sput-object v0, Lcom/android/server/stats/pull/SettingsStatsUtil;->SYSTEM_SETTINGS:[Lcom/android/server/stats/pull/SettingsStatsUtil$FlagsData;

    .line 106
    .line 107
    return-void
.end method

.method public static createStatsEvent(IIILjava/lang/String;Ljava/lang/String;)Landroid/util/StatsEvent;
    .locals 6

    .line 1
    invoke-static {}, Landroid/util/StatsEvent;->newBuilder()Landroid/util/StatsEvent$Builder;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, Landroid/util/StatsEvent$Builder;->setAtomId(I)Landroid/util/StatsEvent$Builder;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-virtual {p0, p3}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 14
    .line 15
    .line 16
    move-result p3

    .line 17
    const/4 v0, 0x0

    .line 18
    const/4 v1, 0x0

    .line 19
    const-string v2, ""

    .line 20
    .line 21
    if-eqz p3, :cond_0

    .line 22
    .line 23
    invoke-virtual {p0, v0}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    invoke-virtual {p2, v0}, Landroid/util/StatsEvent$Builder;->writeBoolean(Z)Landroid/util/StatsEvent$Builder;

    .line 28
    .line 29
    .line 30
    move-result-object p2

    .line 31
    invoke-virtual {p2, v0}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 32
    .line 33
    .line 34
    move-result-object p2

    .line 35
    invoke-virtual {p2, v1}, Landroid/util/StatsEvent$Builder;->writeFloat(F)Landroid/util/StatsEvent$Builder;

    .line 36
    .line 37
    .line 38
    move-result-object p2

    .line 39
    invoke-virtual {p2, v2}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    .line 40
    .line 41
    .line 42
    move-result-object p2

    .line 43
    invoke-virtual {p2, p1}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 44
    .line 45
    .line 46
    goto :goto_3

    .line 47
    :cond_0
    const/4 p3, 0x1

    .line 48
    if-eq p2, p3, :cond_4

    .line 49
    .line 50
    const/4 p3, 0x2

    .line 51
    const-string v3, "Can not parse value to float: "

    .line 52
    .line 53
    const-string v4, "SettingsStatsUtil"

    .line 54
    .line 55
    if-eq p2, p3, :cond_3

    .line 56
    .line 57
    const/4 p3, 0x3

    .line 58
    if-eq p2, p3, :cond_2

    .line 59
    .line 60
    const/4 p3, 0x4

    .line 61
    if-eq p2, p3, :cond_1

    .line 62
    .line 63
    const-string p3, "Unexpected value type "

    .line 64
    .line 65
    invoke-static {p2, p3, v4}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_1
    move p3, v0

    .line 70
    goto :goto_2

    .line 71
    :cond_2
    :try_start_0
    invoke-static {p4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 72
    .line 73
    .line 74
    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    :goto_0
    move p3, v0

    .line 76
    :goto_1
    move-object p4, v2

    .line 77
    goto :goto_2

    .line 78
    :catch_0
    invoke-static {v3, p4, v4}, Lcom/android/server/HeimdAllFsService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_3
    :try_start_1
    invoke-static {p4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 83
    .line 84
    .line 85
    move-result p3
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 86
    goto :goto_1

    .line 87
    :catch_1
    invoke-static {v3, p4, v4}, Lcom/android/server/HeimdAllFsService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_4
    const-string p3, "1"

    .line 92
    .line 93
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    move-result p3

    .line 97
    move-object p4, v2

    .line 98
    move v5, v0

    .line 99
    move v0, p3

    .line 100
    move p3, v5

    .line 101
    :goto_2
    invoke-virtual {p0, p2}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 102
    .line 103
    .line 104
    move-result-object p2

    .line 105
    invoke-virtual {p2, v0}, Landroid/util/StatsEvent$Builder;->writeBoolean(Z)Landroid/util/StatsEvent$Builder;

    .line 106
    .line 107
    .line 108
    move-result-object p2

    .line 109
    invoke-virtual {p2, p3}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 110
    .line 111
    .line 112
    move-result-object p2

    .line 113
    invoke-virtual {p2, v1}, Landroid/util/StatsEvent$Builder;->writeFloat(F)Landroid/util/StatsEvent$Builder;

    .line 114
    .line 115
    .line 116
    move-result-object p2

    .line 117
    invoke-virtual {p2, p4}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    .line 118
    .line 119
    .line 120
    move-result-object p2

    .line 121
    invoke-virtual {p2, p1}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 122
    .line 123
    .line 124
    :goto_3
    invoke-virtual {p0}, Landroid/util/StatsEvent$Builder;->build()Landroid/util/StatsEvent;

    .line 125
    .line 126
    .line 127
    move-result-object p0

    .line 128
    return-object p0
.end method

.method public static getList(Ljava/lang/String;)Lcom/android/service/nano/StringListParamProto;
    .locals 3

    .line 1
    const-string/jumbo v0, "settings_stats"

    .line 2
    .line 3
    .line 4
    invoke-static {v0, p0}, Landroid/provider/DeviceConfig;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const/4 v1, 0x0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    return-object v1

    .line 16
    :cond_0
    const/4 v0, 0x3

    .line 17
    invoke-static {p0, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    :try_start_0
    invoke-static {p0}, Lcom/android/service/nano/StringListParamProto;->parseFrom([B)Lcom/android/service/nano/StringListParamProto;

    .line 22
    .line 23
    .line 24
    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    goto :goto_0

    .line 26
    :catch_0
    move-exception p0

    .line 27
    const-string v0, "SettingsStatsUtil"

    .line 28
    .line 29
    const-string v2, "Error parsing string list proto"

    .line 30
    .line 31
    invoke-static {v0, v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 32
    .line 33
    .line 34
    :goto_0
    return-object v1
.end method

.method public static logGlobalSettings(Landroid/content/Context;II)Ljava/util/List;
    .locals 11

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    sget-object v1, Lcom/android/server/stats/pull/SettingsStatsUtil;->GLOBAL_SETTINGS:[Lcom/android/server/stats/pull/SettingsStatsUtil$FlagsData;

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    move v3, v2

    .line 14
    :goto_0
    const/4 v4, 0x4

    .line 15
    if-ge v3, v4, :cond_2

    .line 16
    .line 17
    aget-object v4, v1, v3

    .line 18
    .line 19
    iget-object v5, v4, Lcom/android/server/stats/pull/SettingsStatsUtil$FlagsData;->mFlagName:Ljava/lang/String;

    .line 20
    .line 21
    invoke-static {v5}, Lcom/android/server/stats/pull/SettingsStatsUtil;->getList(Ljava/lang/String;)Lcom/android/service/nano/StringListParamProto;

    .line 22
    .line 23
    .line 24
    move-result-object v5

    .line 25
    if-nez v5, :cond_0

    .line 26
    .line 27
    goto :goto_2

    .line 28
    :cond_0
    iget-object v5, v5, Lcom/android/service/nano/StringListParamProto;->element:[Ljava/lang/String;

    .line 29
    .line 30
    array-length v6, v5

    .line 31
    move v7, v2

    .line 32
    :goto_1
    if-ge v7, v6, :cond_1

    .line 33
    .line 34
    aget-object v8, v5, v7

    .line 35
    .line 36
    invoke-static {p0, v8, p2}, Landroid/provider/Settings$Global;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v9

    .line 40
    iget v10, v4, Lcom/android/server/stats/pull/SettingsStatsUtil$FlagsData;->mDataType:I

    .line 41
    .line 42
    invoke-static {p1, p2, v10, v8, v9}, Lcom/android/server/stats/pull/SettingsStatsUtil;->createStatsEvent(IIILjava/lang/String;Ljava/lang/String;)Landroid/util/StatsEvent;

    .line 43
    .line 44
    .line 45
    move-result-object v8

    .line 46
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    add-int/lit8 v7, v7, 0x1

    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_1
    :goto_2
    add-int/lit8 v3, v3, 0x1

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_2
    return-object v0
.end method

.method public static logSecureSettings(Landroid/content/Context;II)Ljava/util/List;
    .locals 11

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    sget-object v1, Lcom/android/server/stats/pull/SettingsStatsUtil;->SECURE_SETTINGS:[Lcom/android/server/stats/pull/SettingsStatsUtil$FlagsData;

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    move v3, v2

    .line 14
    :goto_0
    const/4 v4, 0x4

    .line 15
    if-ge v3, v4, :cond_2

    .line 16
    .line 17
    aget-object v4, v1, v3

    .line 18
    .line 19
    iget-object v5, v4, Lcom/android/server/stats/pull/SettingsStatsUtil$FlagsData;->mFlagName:Ljava/lang/String;

    .line 20
    .line 21
    invoke-static {v5}, Lcom/android/server/stats/pull/SettingsStatsUtil;->getList(Ljava/lang/String;)Lcom/android/service/nano/StringListParamProto;

    .line 22
    .line 23
    .line 24
    move-result-object v5

    .line 25
    if-nez v5, :cond_0

    .line 26
    .line 27
    goto :goto_2

    .line 28
    :cond_0
    iget-object v5, v5, Lcom/android/service/nano/StringListParamProto;->element:[Ljava/lang/String;

    .line 29
    .line 30
    array-length v6, v5

    .line 31
    move v7, v2

    .line 32
    :goto_1
    if-ge v7, v6, :cond_1

    .line 33
    .line 34
    aget-object v8, v5, v7

    .line 35
    .line 36
    invoke-static {p0, v8, p2}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v9

    .line 40
    iget v10, v4, Lcom/android/server/stats/pull/SettingsStatsUtil$FlagsData;->mDataType:I

    .line 41
    .line 42
    invoke-static {p1, p2, v10, v8, v9}, Lcom/android/server/stats/pull/SettingsStatsUtil;->createStatsEvent(IIILjava/lang/String;Ljava/lang/String;)Landroid/util/StatsEvent;

    .line 43
    .line 44
    .line 45
    move-result-object v8

    .line 46
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    add-int/lit8 v7, v7, 0x1

    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_1
    :goto_2
    add-int/lit8 v3, v3, 0x1

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_2
    return-object v0
.end method

.method public static logSystemSettings(Landroid/content/Context;II)Ljava/util/List;
    .locals 11

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    sget-object v1, Lcom/android/server/stats/pull/SettingsStatsUtil;->SYSTEM_SETTINGS:[Lcom/android/server/stats/pull/SettingsStatsUtil$FlagsData;

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    move v3, v2

    .line 14
    :goto_0
    const/4 v4, 0x4

    .line 15
    if-ge v3, v4, :cond_2

    .line 16
    .line 17
    aget-object v4, v1, v3

    .line 18
    .line 19
    iget-object v5, v4, Lcom/android/server/stats/pull/SettingsStatsUtil$FlagsData;->mFlagName:Ljava/lang/String;

    .line 20
    .line 21
    invoke-static {v5}, Lcom/android/server/stats/pull/SettingsStatsUtil;->getList(Ljava/lang/String;)Lcom/android/service/nano/StringListParamProto;

    .line 22
    .line 23
    .line 24
    move-result-object v5

    .line 25
    if-nez v5, :cond_0

    .line 26
    .line 27
    goto :goto_2

    .line 28
    :cond_0
    iget-object v5, v5, Lcom/android/service/nano/StringListParamProto;->element:[Ljava/lang/String;

    .line 29
    .line 30
    array-length v6, v5

    .line 31
    move v7, v2

    .line 32
    :goto_1
    if-ge v7, v6, :cond_1

    .line 33
    .line 34
    aget-object v8, v5, v7

    .line 35
    .line 36
    invoke-static {p0, v8, p2}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v9

    .line 40
    iget v10, v4, Lcom/android/server/stats/pull/SettingsStatsUtil$FlagsData;->mDataType:I

    .line 41
    .line 42
    invoke-static {p1, p2, v10, v8, v9}, Lcom/android/server/stats/pull/SettingsStatsUtil;->createStatsEvent(IIILjava/lang/String;Ljava/lang/String;)Landroid/util/StatsEvent;

    .line 43
    .line 44
    .line 45
    move-result-object v8

    .line 46
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    add-int/lit8 v7, v7, 0x1

    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_1
    :goto_2
    add-int/lit8 v3, v3, 0x1

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_2
    return-object v0
.end method
