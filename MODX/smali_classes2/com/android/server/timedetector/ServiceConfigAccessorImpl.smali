.class public final Lcom/android/server/timedetector/ServiceConfigAccessorImpl;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/timedetector/ServiceConfigAccessor;


# static fields
.field public static final DEFAULT_AUTOMATIC_TIME_ORIGIN_PRIORITIES:[I

.field public static final SERVER_FLAGS_KEYS_TO_WATCH:Ljava/util/Set;

.field public static final SLOCK:Ljava/lang/Object;

.field public static sInstance:Lcom/android/server/timedetector/ServiceConfigAccessorImpl;


# instance fields
.field public final mConfigOriginPrioritiesSupplier:Lcom/android/server/timedetector/ServiceConfigAccessorImpl$ConfigOriginPrioritiesSupplier;

.field public final mConfigurationInternalListeners:Ljava/util/List;

.field public final mContext:Landroid/content/Context;

.field public final mCr:Landroid/content/ContentResolver;

.field public final mServerFlags:Lcom/android/server/timedetector/ServerFlags;

.field public final mServerFlagsOriginPrioritiesSupplier:Lcom/android/server/timedetector/ServiceConfigAccessorImpl$ConfigOriginPrioritiesSupplier;

.field public final mSystemClockUpdateThresholdMillis:I

.field public final mUserManager:Landroid/os/UserManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x3

    .line 3
    filled-new-array {v0, v1}, [I

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lcom/android/server/timedetector/ServiceConfigAccessorImpl;->DEFAULT_AUTOMATIC_TIME_ORIGIN_PRIORITIES:[I

    .line 8
    .line 9
    const-string/jumbo v0, "time_detector_lower_bound_millis_override"

    .line 10
    .line 11
    .line 12
    const-string/jumbo v1, "time_detector_origin_priorities_override"

    .line 13
    .line 14
    .line 15
    invoke-static {v0, v1}, Ljava/util/Set;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Set;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    sput-object v0, Lcom/android/server/timedetector/ServiceConfigAccessorImpl;->SERVER_FLAGS_KEYS_TO_WATCH:Ljava/util/Set;

    .line 20
    .line 21
    new-instance v0, Ljava/lang/Object;

    .line 22
    .line 23
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 24
    .line 25
    .line 26
    sput-object v0, Lcom/android/server/timedetector/ServiceConfigAccessorImpl;->SLOCK:Ljava/lang/Object;

    .line 27
    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/timedetector/ServiceConfigAccessorImpl;->mConfigurationInternalListeners:Ljava/util/List;

    .line 10
    .line 11
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lcom/android/server/timedetector/ServiceConfigAccessorImpl;->mContext:Landroid/content/Context;

    .line 15
    .line 16
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iput-object v0, p0, Lcom/android/server/timedetector/ServiceConfigAccessorImpl;->mCr:Landroid/content/ContentResolver;

    .line 21
    .line 22
    const-class v0, Landroid/os/UserManager;

    .line 23
    .line 24
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    check-cast v0, Landroid/os/UserManager;

    .line 29
    .line 30
    iput-object v0, p0, Lcom/android/server/timedetector/ServiceConfigAccessorImpl;->mUserManager:Landroid/os/UserManager;

    .line 31
    .line 32
    invoke-static {p1}, Lcom/android/server/timedetector/ServerFlags;->getInstance(Landroid/content/Context;)Lcom/android/server/timedetector/ServerFlags;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    iput-object v1, p0, Lcom/android/server/timedetector/ServiceConfigAccessorImpl;->mServerFlags:Lcom/android/server/timedetector/ServerFlags;

    .line 37
    .line 38
    new-instance v2, Lcom/android/server/timedetector/ServiceConfigAccessorImpl$ConfigOriginPrioritiesSupplier;

    .line 39
    .line 40
    invoke-direct {v2, p1}, Lcom/android/server/timedetector/ServiceConfigAccessorImpl$ConfigOriginPrioritiesSupplier;-><init>(Landroid/content/Context;)V

    .line 41
    .line 42
    .line 43
    iput-object v2, p0, Lcom/android/server/timedetector/ServiceConfigAccessorImpl;->mConfigOriginPrioritiesSupplier:Lcom/android/server/timedetector/ServiceConfigAccessorImpl$ConfigOriginPrioritiesSupplier;

    .line 44
    .line 45
    new-instance v2, Lcom/android/server/timedetector/ServiceConfigAccessorImpl$ConfigOriginPrioritiesSupplier;

    .line 46
    .line 47
    invoke-direct {v2, v1}, Lcom/android/server/timedetector/ServiceConfigAccessorImpl$ConfigOriginPrioritiesSupplier;-><init>(Lcom/android/server/timedetector/ServerFlags;)V

    .line 48
    .line 49
    .line 50
    iput-object v2, p0, Lcom/android/server/timedetector/ServiceConfigAccessorImpl;->mServerFlagsOriginPrioritiesSupplier:Lcom/android/server/timedetector/ServiceConfigAccessorImpl$ConfigOriginPrioritiesSupplier;

    .line 51
    .line 52
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    const v3, 0x10e015d

    .line 57
    .line 58
    .line 59
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    .line 60
    .line 61
    .line 62
    move-result v2

    .line 63
    iput v2, p0, Lcom/android/server/timedetector/ServiceConfigAccessorImpl;->mSystemClockUpdateThresholdMillis:I

    .line 64
    .line 65
    const-string v2, "android.intent.action.USER_SWITCHED"

    .line 66
    .line 67
    invoke-static {v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Landroid/content/IntentFilter;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    new-instance v3, Lcom/android/server/timedetector/ServiceConfigAccessorImpl$1;

    .line 72
    .line 73
    invoke-direct {v3, p0}, Lcom/android/server/timedetector/ServiceConfigAccessorImpl$1;-><init>(Lcom/android/server/timedetector/ServiceConfigAccessorImpl;)V

    .line 74
    .line 75
    .line 76
    const/4 v4, 0x0

    .line 77
    invoke-virtual {p1, v3, v2, v4, v4}, Landroid/content/Context;->registerReceiverForAllUsers(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 78
    .line 79
    .line 80
    invoke-virtual {p1}, Landroid/content/Context;->getMainThreadHandler()Landroid/os/Handler;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    new-instance v3, Lcom/android/server/timedetector/ServiceConfigAccessorImpl$2;

    .line 89
    .line 90
    invoke-direct {v3, p0, v2}, Lcom/android/server/timedetector/ServiceConfigAccessorImpl$2;-><init>(Lcom/android/server/timedetector/ServiceConfigAccessorImpl;Landroid/os/Handler;)V

    .line 91
    .line 92
    .line 93
    const-string v4, "auto_time"

    .line 94
    .line 95
    invoke-static {v4}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 96
    .line 97
    .line 98
    move-result-object v4

    .line 99
    const/4 v5, 0x1

    .line 100
    invoke-virtual {p1, v4, v5, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 101
    .line 102
    .line 103
    new-instance p1, Lcom/android/server/timedetector/ServiceConfigAccessorImpl$$ExternalSyntheticLambda0;

    .line 104
    .line 105
    invoke-direct {p1, p0}, Lcom/android/server/timedetector/ServiceConfigAccessorImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/timedetector/ServiceConfigAccessorImpl;)V

    .line 106
    .line 107
    .line 108
    sget-object v3, Lcom/android/server/timedetector/ServiceConfigAccessorImpl;->SERVER_FLAGS_KEYS_TO_WATCH:Ljava/util/Set;

    .line 109
    .line 110
    invoke-virtual {v1, p1, v3}, Lcom/android/server/timedetector/ServerFlags;->addListener(Lcom/android/server/timezonedetector/StateChangeListener;Ljava/util/Set;)V

    .line 111
    .line 112
    .line 113
    new-instance p1, Lcom/android/server/timedetector/ServiceConfigAccessorImpl$3;

    .line 114
    .line 115
    invoke-direct {p1, p0, v2}, Lcom/android/server/timedetector/ServiceConfigAccessorImpl$3;-><init>(Lcom/android/server/timedetector/ServiceConfigAccessorImpl;Landroid/os/Handler;)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v0, p1}, Landroid/os/UserManager;->addUserRestrictionsListener(Landroid/os/IUserRestrictionsListener;)V

    .line 119
    .line 120
    .line 121
    return-void
.end method


# virtual methods
.method public final declared-synchronized getConfigurationInternal(I)Lcom/android/server/timedetector/ConfigurationInternal;
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    sget-object v0, Landroid/app/timedetector/TimeDetectorHelper;->INSTANCE:Landroid/app/timedetector/TimeDetectorHelper;

    .line 3
    .line 4
    new-instance v1, Lcom/android/server/timedetector/ConfigurationInternal$Builder;

    .line 5
    .line 6
    invoke-direct {v1, p1}, Lcom/android/server/timedetector/ConfigurationInternal$Builder;-><init>(I)V

    .line 7
    .line 8
    .line 9
    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    iget-object v2, p0, Lcom/android/server/timedetector/ServiceConfigAccessorImpl;->mUserManager:Landroid/os/UserManager;

    .line 14
    .line 15
    const-string/jumbo v3, "no_config_date_time"

    .line 16
    .line 17
    .line 18
    invoke-virtual {v2, v3, p1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    const/4 v2, 0x1

    .line 23
    xor-int/2addr p1, v2

    .line 24
    iput-boolean p1, v1, Lcom/android/server/timedetector/ConfigurationInternal$Builder;->mUserConfigAllowed:Z

    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/android/server/timedetector/ServiceConfigAccessorImpl;->isAutoDetectionSupported()Z

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    iput-boolean p1, v1, Lcom/android/server/timedetector/ConfigurationInternal$Builder;->mAutoDetectionSupported:Z

    .line 31
    .line 32
    iget-object p1, p0, Lcom/android/server/timedetector/ServiceConfigAccessorImpl;->mCr:Landroid/content/ContentResolver;

    .line 33
    .line 34
    const-string v3, "auto_time"

    .line 35
    .line 36
    invoke-static {p1, v3, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    if-lez p1, :cond_0

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    const/4 v2, 0x0

    .line 44
    :goto_0
    iput-boolean v2, v1, Lcom/android/server/timedetector/ConfigurationInternal$Builder;->mAutoDetectionEnabledSetting:Z

    .line 45
    .line 46
    iget p1, p0, Lcom/android/server/timedetector/ServiceConfigAccessorImpl;->mSystemClockUpdateThresholdMillis:I

    .line 47
    .line 48
    iput p1, v1, Lcom/android/server/timedetector/ConfigurationInternal$Builder;->mSystemClockUpdateThresholdMillis:I

    .line 49
    .line 50
    const/16 p1, 0x3e8

    .line 51
    .line 52
    iput p1, v1, Lcom/android/server/timedetector/ConfigurationInternal$Builder;->mSystemClockConfidenceThresholdMillis:I

    .line 53
    .line 54
    iget-object p1, p0, Lcom/android/server/timedetector/ServiceConfigAccessorImpl;->mServerFlags:Lcom/android/server/timedetector/ServerFlags;

    .line 55
    .line 56
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 57
    .line 58
    .line 59
    const-string/jumbo p1, "system_time"

    .line 60
    .line 61
    .line 62
    const-string/jumbo v2, "time_detector_lower_bound_millis_override"

    .line 63
    .line 64
    .line 65
    invoke-static {p1, v2}, Landroid/provider/DeviceConfig;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    if-nez p1, :cond_1

    .line 70
    .line 71
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    .line 72
    .line 73
    .line 74
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    goto :goto_1

    .line 76
    :cond_1
    :try_start_1
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 77
    .line 78
    .line 79
    move-result-wide v2

    .line 80
    invoke-static {v2, v3}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    invoke-static {p1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    .line 85
    .line 86
    .line 87
    move-result-object p1
    :try_end_1
    .catch Ljava/time/DateTimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 88
    goto :goto_1

    .line 89
    :catch_0
    :try_start_2
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    :goto_1
    sget-object v2, Landroid/app/timedetector/TimeDetectorHelper;->INSTANCE:Landroid/app/timedetector/TimeDetectorHelper;

    .line 94
    .line 95
    invoke-virtual {v2}, Landroid/app/timedetector/TimeDetectorHelper;->getAutoSuggestionLowerBoundDefault()Ljava/time/Instant;

    .line 96
    .line 97
    .line 98
    move-result-object v2

    .line 99
    invoke-virtual {p1, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    check-cast p1, Ljava/time/Instant;

    .line 104
    .line 105
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    iput-object p1, v1, Lcom/android/server/timedetector/ConfigurationInternal$Builder;->mAutoSuggestionLowerBound:Ljava/time/Instant;

    .line 109
    .line 110
    invoke-virtual {v0}, Landroid/app/timedetector/TimeDetectorHelper;->getManualSuggestionLowerBound()Ljava/time/Instant;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    iput-object p1, v1, Lcom/android/server/timedetector/ConfigurationInternal$Builder;->mManualSuggestionLowerBound:Ljava/time/Instant;

    .line 118
    .line 119
    invoke-virtual {v0}, Landroid/app/timedetector/TimeDetectorHelper;->getSuggestionUpperBound()Ljava/time/Instant;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    iput-object p1, v1, Lcom/android/server/timedetector/ConfigurationInternal$Builder;->mSuggestionUpperBound:Ljava/time/Instant;

    .line 127
    .line 128
    iget-object p1, p0, Lcom/android/server/timedetector/ServiceConfigAccessorImpl;->mServerFlagsOriginPrioritiesSupplier:Lcom/android/server/timedetector/ServiceConfigAccessorImpl$ConfigOriginPrioritiesSupplier;

    .line 129
    .line 130
    invoke-virtual {p1}, Lcom/android/server/timedetector/ServiceConfigAccessorImpl$ConfigOriginPrioritiesSupplier;->get()[I

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    if-eqz p1, :cond_2

    .line 135
    .line 136
    goto :goto_2

    .line 137
    :cond_2
    iget-object p1, p0, Lcom/android/server/timedetector/ServiceConfigAccessorImpl;->mConfigOriginPrioritiesSupplier:Lcom/android/server/timedetector/ServiceConfigAccessorImpl$ConfigOriginPrioritiesSupplier;

    .line 138
    .line 139
    invoke-virtual {p1}, Lcom/android/server/timedetector/ServiceConfigAccessorImpl$ConfigOriginPrioritiesSupplier;->get()[I

    .line 140
    .line 141
    .line 142
    move-result-object p1

    .line 143
    if-eqz p1, :cond_3

    .line 144
    .line 145
    goto :goto_2

    .line 146
    :cond_3
    sget-object p1, Lcom/android/server/timedetector/ServiceConfigAccessorImpl;->DEFAULT_AUTOMATIC_TIME_ORIGIN_PRIORITIES:[I

    .line 147
    .line 148
    :goto_2
    iput-object p1, v1, Lcom/android/server/timedetector/ConfigurationInternal$Builder;->mOriginPriorities:[I

    .line 149
    .line 150
    new-instance p1, Lcom/android/server/timedetector/ConfigurationInternal;

    .line 151
    .line 152
    invoke-direct {p1, v1}, Lcom/android/server/timedetector/ConfigurationInternal;-><init>(Lcom/android/server/timedetector/ConfigurationInternal$Builder;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 153
    .line 154
    .line 155
    monitor-exit p0

    .line 156
    return-object p1

    .line 157
    :catchall_0
    move-exception p1

    .line 158
    monitor-exit p0

    .line 159
    throw p1
.end method

.method public final handleConfigurationInternalChangeOnMainThread()V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/android/server/timedetector/ServiceConfigAccessorImpl;->mConfigurationInternalListeners:Ljava/util/List;

    .line 5
    .line 6
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 7
    .line 8
    .line 9
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    check-cast v0, Lcom/android/server/timezonedetector/StateChangeListener;

    .line 25
    .line 26
    invoke-interface {v0}, Lcom/android/server/timezonedetector/StateChangeListener;->onChange()V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    return-void

    .line 31
    :catchall_0
    move-exception v0

    .line 32
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 33
    throw v0
.end method

.method public final isAutoDetectionSupported()Z
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/timedetector/ServiceConfigAccessorImpl;->mServerFlagsOriginPrioritiesSupplier:Lcom/android/server/timedetector/ServiceConfigAccessorImpl$ConfigOriginPrioritiesSupplier;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/server/timedetector/ServiceConfigAccessorImpl$ConfigOriginPrioritiesSupplier;->get()[I

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/android/server/timedetector/ServiceConfigAccessorImpl;->mConfigOriginPrioritiesSupplier:Lcom/android/server/timedetector/ServiceConfigAccessorImpl$ConfigOriginPrioritiesSupplier;

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/android/server/timedetector/ServiceConfigAccessorImpl$ConfigOriginPrioritiesSupplier;->get()[I

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    sget-object v0, Lcom/android/server/timedetector/ServiceConfigAccessorImpl;->DEFAULT_AUTOMATIC_TIME_ORIGIN_PRIORITIES:[I

    .line 20
    .line 21
    :goto_0
    array-length v1, v0

    .line 22
    const/4 v2, 0x0

    .line 23
    move v3, v2

    .line 24
    :goto_1
    if-ge v3, v1, :cond_5

    .line 25
    .line 26
    aget v4, v0, v3

    .line 27
    .line 28
    const/4 v5, 0x3

    .line 29
    const/4 v6, 0x1

    .line 30
    if-eq v4, v5, :cond_4

    .line 31
    .line 32
    const/4 v5, 0x5

    .line 33
    if-eq v4, v5, :cond_4

    .line 34
    .line 35
    const/4 v5, 0x4

    .line 36
    if-ne v4, v5, :cond_2

    .line 37
    .line 38
    goto :goto_2

    .line 39
    :cond_2
    if-ne v4, v6, :cond_3

    .line 40
    .line 41
    iget-object v4, p0, Lcom/android/server/timedetector/ServiceConfigAccessorImpl;->mContext:Landroid/content/Context;

    .line 42
    .line 43
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 44
    .line 45
    .line 46
    move-result-object v4

    .line 47
    const-string v5, "android.hardware.telephony"

    .line 48
    .line 49
    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 50
    .line 51
    .line 52
    move-result v4

    .line 53
    if-eqz v4, :cond_3

    .line 54
    .line 55
    return v6

    .line 56
    :cond_3
    add-int/lit8 v3, v3, 0x1

    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_4
    :goto_2
    return v6

    .line 60
    :cond_5
    return v2
.end method

.method public final declared-synchronized updateConfiguration(ILandroid/app/time/TimeConfiguration;)Z
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lcom/android/server/timedetector/ServiceConfigAccessorImpl;->getConfigurationInternal(I)Lcom/android/server/timedetector/ConfigurationInternal;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p1}, Lcom/android/server/timedetector/ConfigurationInternal;->createCapabilitiesAndConfig()Landroid/app/time/TimeCapabilitiesAndConfig;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p1}, Landroid/app/time/TimeCapabilitiesAndConfig;->getCapabilities()Landroid/app/time/TimeCapabilities;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {p1}, Landroid/app/time/TimeCapabilitiesAndConfig;->getConfiguration()Landroid/app/time/TimeConfiguration;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {v0, p1, p2}, Landroid/app/time/TimeCapabilities;->tryApplyConfigChanges(Landroid/app/time/TimeConfiguration;Landroid/app/time/TimeConfiguration;)Landroid/app/time/TimeConfiguration;

    .line 22
    .line 23
    .line 24
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    const/4 p2, 0x0

    .line 26
    if-nez p1, :cond_0

    .line 27
    .line 28
    monitor-exit p0

    .line 29
    return p2

    .line 30
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/timedetector/ServiceConfigAccessorImpl;->isAutoDetectionSupported()Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    const/4 v1, 0x1

    .line 35
    if-eqz v0, :cond_2

    .line 36
    .line 37
    invoke-virtual {p1}, Landroid/app/time/TimeConfiguration;->isAutoDetectionEnabled()Z

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    iget-object v0, p0, Lcom/android/server/timedetector/ServiceConfigAccessorImpl;->mCr:Landroid/content/ContentResolver;

    .line 42
    .line 43
    const-string v2, "auto_time"

    .line 44
    .line 45
    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    if-lez v0, :cond_1

    .line 50
    .line 51
    move p2, v1

    .line 52
    :cond_1
    if-eq p2, p1, :cond_2

    .line 53
    .line 54
    iget-object p2, p0, Lcom/android/server/timedetector/ServiceConfigAccessorImpl;->mCr:Landroid/content/ContentResolver;

    .line 55
    .line 56
    const-string v0, "auto_time"

    .line 57
    .line 58
    invoke-static {p2, v0, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 59
    .line 60
    .line 61
    :cond_2
    monitor-exit p0

    .line 62
    return v1

    .line 63
    :catchall_0
    move-exception p1

    .line 64
    monitor-exit p0

    .line 65
    throw p1
.end method
