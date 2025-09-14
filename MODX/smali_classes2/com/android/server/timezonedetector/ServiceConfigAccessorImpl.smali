.class public final Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/timezonedetector/ServiceConfigAccessor;


# static fields
.field public static final CONFIGURATION_INTERNAL_SERVER_FLAGS_KEYS_TO_WATCH:Ljava/util/Set;

.field public static final DEFAULT_LTZP_EVENT_FILTER_AGE_THRESHOLD:Ljava/time/Duration;

.field public static final DEFAULT_LTZP_INITIALIZATION_TIMEOUT:Ljava/time/Duration;

.field public static final DEFAULT_LTZP_INITIALIZATION_TIMEOUT_FUZZ:Ljava/time/Duration;

.field public static final DEFAULT_LTZP_UNCERTAINTY_DELAY:Ljava/time/Duration;

.field public static final LOCATION_TIME_ZONE_MANAGER_SERVER_FLAGS_KEYS_TO_WATCH:Ljava/util/Set;

.field public static final SLOCK:Ljava/lang/Object;

.field public static sInstance:Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;


# instance fields
.field public final mConfigurationInternalListeners:Ljava/util/List;

.field public final mContext:Landroid/content/Context;

.field public final mCr:Landroid/content/ContentResolver;

.field public final mLocationManager:Landroid/location/LocationManager;

.field public mRecordStateChangesForTests:Z

.field public final mServerFlags:Lcom/android/server/timedetector/ServerFlags;

.field public mTestPrimaryLocationTimeZoneProviderMode:Ljava/lang/String;

.field public mTestPrimaryLocationTimeZoneProviderPackageName:Ljava/lang/String;

.field public mTestSecondaryLocationTimeZoneProviderMode:Ljava/lang/String;

.field public mTestSecondaryLocationTimeZoneProviderPackageName:Ljava/lang/String;

.field public final mUserManager:Landroid/os/UserManager;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 1
    const-string/jumbo v7, "time_zone_detector_auto_detection_enabled_default"

    .line 2
    .line 3
    .line 4
    const-string/jumbo v8, "time_zone_detector_telephony_fallback_supported"

    .line 5
    .line 6
    .line 7
    const-string v0, "location_time_zone_detection_feature_supported"

    .line 8
    .line 9
    const-string/jumbo v1, "primary_location_time_zone_provider_mode_override"

    .line 10
    .line 11
    .line 12
    const-string/jumbo v2, "secondary_location_time_zone_provider_mode_override"

    .line 13
    .line 14
    .line 15
    const-string v3, "location_time_zone_detection_run_in_background_enabled"

    .line 16
    .line 17
    const-string v4, "enhanced_metrics_collection_enabled"

    .line 18
    .line 19
    const-string v5, "location_time_zone_detection_setting_enabled_default"

    .line 20
    .line 21
    const-string v6, "location_time_zone_detection_setting_enabled_override"

    .line 22
    .line 23
    invoke-static/range {v0 .. v8}, Ljava/util/Set;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Set;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    sput-object v0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->CONFIGURATION_INTERNAL_SERVER_FLAGS_KEYS_TO_WATCH:Ljava/util/Set;

    .line 28
    .line 29
    const-string v9, "ltzp_event_filtering_age_threshold_millis"

    .line 30
    .line 31
    const-string v10, "location_time_zone_detection_uncertainty_delay_millis"

    .line 32
    .line 33
    const-string v1, "location_time_zone_detection_feature_supported"

    .line 34
    .line 35
    const-string v2, "location_time_zone_detection_run_in_background_enabled"

    .line 36
    .line 37
    const-string v3, "location_time_zone_detection_setting_enabled_default"

    .line 38
    .line 39
    const-string v4, "location_time_zone_detection_setting_enabled_override"

    .line 40
    .line 41
    const-string/jumbo v5, "primary_location_time_zone_provider_mode_override"

    .line 42
    .line 43
    .line 44
    const-string/jumbo v6, "secondary_location_time_zone_provider_mode_override"

    .line 45
    .line 46
    .line 47
    const-string v7, "ltzp_init_timeout_millis"

    .line 48
    .line 49
    const-string v8, "ltzp_init_timeout_fuzz_millis"

    .line 50
    .line 51
    invoke-static/range {v1 .. v10}, Ljava/util/Set;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Set;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    sput-object v0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->LOCATION_TIME_ZONE_MANAGER_SERVER_FLAGS_KEYS_TO_WATCH:Ljava/util/Set;

    .line 56
    .line 57
    const-wide/16 v0, 0x5

    .line 58
    .line 59
    invoke-static {v0, v1}, Ljava/time/Duration;->ofMinutes(J)Ljava/time/Duration;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    sput-object v2, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->DEFAULT_LTZP_INITIALIZATION_TIMEOUT:Ljava/time/Duration;

    .line 64
    .line 65
    const-wide/16 v2, 0x1

    .line 66
    .line 67
    invoke-static {v2, v3}, Ljava/time/Duration;->ofMinutes(J)Ljava/time/Duration;

    .line 68
    .line 69
    .line 70
    move-result-object v4

    .line 71
    sput-object v4, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->DEFAULT_LTZP_INITIALIZATION_TIMEOUT_FUZZ:Ljava/time/Duration;

    .line 72
    .line 73
    invoke-static {v0, v1}, Ljava/time/Duration;->ofMinutes(J)Ljava/time/Duration;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    sput-object v0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->DEFAULT_LTZP_UNCERTAINTY_DELAY:Ljava/time/Duration;

    .line 78
    .line 79
    invoke-static {v2, v3}, Ljava/time/Duration;->ofMinutes(J)Ljava/time/Duration;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    sput-object v0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->DEFAULT_LTZP_EVENT_FILTER_AGE_THRESHOLD:Ljava/time/Duration;

    .line 84
    .line 85
    new-instance v0, Ljava/lang/Object;

    .line 86
    .line 87
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 88
    .line 89
    .line 90
    sput-object v0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->SLOCK:Ljava/lang/Object;

    .line 91
    .line 92
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

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
    iput-object v0, p0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->mConfigurationInternalListeners:Ljava/util/List;

    .line 10
    .line 11
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-object v0, p1

    .line 15
    check-cast v0, Landroid/content/Context;

    .line 16
    .line 17
    iput-object p1, p0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->mContext:Landroid/content/Context;

    .line 18
    .line 19
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iput-object v0, p0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->mCr:Landroid/content/ContentResolver;

    .line 24
    .line 25
    const-class v0, Landroid/os/UserManager;

    .line 26
    .line 27
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    check-cast v0, Landroid/os/UserManager;

    .line 32
    .line 33
    iput-object v0, p0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->mUserManager:Landroid/os/UserManager;

    .line 34
    .line 35
    const-class v1, Landroid/location/LocationManager;

    .line 36
    .line 37
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    check-cast v1, Landroid/location/LocationManager;

    .line 42
    .line 43
    iput-object v1, p0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->mLocationManager:Landroid/location/LocationManager;

    .line 44
    .line 45
    invoke-static {p1}, Lcom/android/server/timedetector/ServerFlags;->getInstance(Landroid/content/Context;)Lcom/android/server/timedetector/ServerFlags;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    iput-object v1, p0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->mServerFlags:Lcom/android/server/timedetector/ServerFlags;

    .line 50
    .line 51
    const-string v2, "android.intent.action.USER_SWITCHED"

    .line 52
    .line 53
    const-string v3, "android.location.MODE_CHANGED"

    .line 54
    .line 55
    invoke-static {v2, v3}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Landroid/content/IntentFilter;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    new-instance v3, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl$1;

    .line 60
    .line 61
    invoke-direct {v3, p0}, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl$1;-><init>(Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;)V

    .line 62
    .line 63
    .line 64
    const/4 v4, 0x0

    .line 65
    invoke-virtual {p1, v3, v2, v4, v4}, Landroid/content/Context;->registerReceiverForAllUsers(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1}, Landroid/content/Context;->getMainThreadHandler()Landroid/os/Handler;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    new-instance v3, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl$2;

    .line 77
    .line 78
    invoke-direct {v3, p0, v2}, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl$2;-><init>(Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;Landroid/os/Handler;)V

    .line 79
    .line 80
    .line 81
    const-string v4, "auto_time_zone"

    .line 82
    .line 83
    invoke-static {v4}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 84
    .line 85
    .line 86
    move-result-object v4

    .line 87
    const/4 v5, 0x1

    .line 88
    invoke-virtual {p1, v4, v5, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 89
    .line 90
    .line 91
    const-string v4, "auto_time_zone_explicit"

    .line 92
    .line 93
    invoke-static {v4}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 94
    .line 95
    .line 96
    move-result-object v4

    .line 97
    invoke-virtual {p1, v4, v5, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 98
    .line 99
    .line 100
    const-string v4, "location_time_zone_detection_enabled"

    .line 101
    .line 102
    invoke-static {v4}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 103
    .line 104
    .line 105
    move-result-object v4

    .line 106
    const/4 v6, -0x1

    .line 107
    invoke-virtual {p1, v4, v5, v3, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 108
    .line 109
    .line 110
    const-string/jumbo v4, "preferred_time_zone_detection_method"

    .line 111
    .line 112
    .line 113
    invoke-static {v4}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 114
    .line 115
    .line 116
    move-result-object v4

    .line 117
    invoke-virtual {p1, v4, v5, v3, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 118
    .line 119
    .line 120
    new-instance p1, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl$$ExternalSyntheticLambda0;

    .line 121
    .line 122
    invoke-direct {p1, p0}, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;)V

    .line 123
    .line 124
    .line 125
    sget-object v3, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->CONFIGURATION_INTERNAL_SERVER_FLAGS_KEYS_TO_WATCH:Ljava/util/Set;

    .line 126
    .line 127
    invoke-virtual {v1, p1, v3}, Lcom/android/server/timedetector/ServerFlags;->addListener(Lcom/android/server/timezonedetector/StateChangeListener;Ljava/util/Set;)V

    .line 128
    .line 129
    .line 130
    new-instance p1, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl$3;

    .line 131
    .line 132
    invoke-direct {p1, p0, v2}, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl$3;-><init>(Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;Landroid/os/Handler;)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {v0, p1}, Landroid/os/UserManager;->addUserRestrictionsListener(Landroid/os/IUserRestrictionsListener;)V

    .line 136
    .line 137
    .line 138
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/server/timezonedetector/ServiceConfigAccessor;
    .locals 2

    .line 1
    sget-object v0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->SLOCK:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->sInstance:Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    new-instance v1, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;

    .line 9
    .line 10
    invoke-direct {v1, p0}, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;-><init>(Landroid/content/Context;)V

    .line 11
    .line 12
    .line 13
    sput-object v1, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->sInstance:Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    goto :goto_1

    .line 18
    :cond_0
    :goto_0
    sget-object p0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->sInstance:Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;

    .line 19
    .line 20
    monitor-exit v0

    .line 21
    return-object p0

    .line 22
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    throw p0
.end method


# virtual methods
.method public final getAutoDetectionEnabledSetting()Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->mCr:Landroid/content/ContentResolver;

    .line 2
    .line 3
    const-string v1, "auto_time_zone"

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v3, 0x0

    .line 11
    if-lez v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    move v2, v3

    .line 15
    :goto_0
    iget-object v0, p0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->mServerFlags:Lcom/android/server/timedetector/ServerFlags;

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    const-string/jumbo v0, "system_time"

    .line 21
    .line 22
    .line 23
    const-string/jumbo v4, "time_zone_detector_auto_detection_enabled_default"

    .line 24
    .line 25
    .line 26
    invoke-static {v0, v4}, Landroid/provider/DeviceConfig;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    if-nez v0, :cond_1

    .line 31
    .line 32
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    goto :goto_1

    .line 37
    :cond_1
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-eqz v0, :cond_2

    .line 42
    .line 43
    sget-object v0, Lcom/android/server/timedetector/ServerFlags;->OPTIONAL_TRUE:Ljava/util/Optional;

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_2
    sget-object v0, Lcom/android/server/timedetector/ServerFlags;->OPTIONAL_FALSE:Ljava/util/Optional;

    .line 47
    .line 48
    :goto_1
    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    .line 49
    .line 50
    .line 51
    move-result v4

    .line 52
    if-eqz v4, :cond_4

    .line 53
    .line 54
    iget-object v4, p0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->mCr:Landroid/content/ContentResolver;

    .line 55
    .line 56
    const-string v5, "auto_time_zone_explicit"

    .line 57
    .line 58
    invoke-static {v4, v5, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 59
    .line 60
    .line 61
    move-result v3

    .line 62
    if-nez v3, :cond_4

    .line 63
    .line 64
    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    check-cast v0, Ljava/lang/Boolean;

    .line 69
    .line 70
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    if-eq v0, v2, :cond_3

    .line 75
    .line 76
    iget-object p0, p0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->mCr:Landroid/content/ContentResolver;

    .line 77
    .line 78
    invoke-static {p0, v1, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 79
    .line 80
    .line 81
    :cond_3
    move v2, v0

    .line 82
    :cond_4
    return v2
.end method

.method public final declared-synchronized getConfigurationInternal(I)Lcom/android/server/timezonedetector/ConfigurationInternal;
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    new-instance v0, Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;

    .line 3
    .line 4
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    iput-object v1, v0, Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;->mUserId:Ljava/lang/Integer;

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->isTelephonyTimeZoneDetectionFeatureSupported()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    iput-boolean v1, v0, Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;->mTelephonyDetectionSupported:Z

    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->isGeoTimeZoneDetectionFeatureSupported()Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    iput-boolean v1, v0, Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;->mGeoDetectionSupported:Z

    .line 24
    .line 25
    iget-object v1, p0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->mContext:Landroid/content/Context;

    .line 26
    .line 27
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    const v2, 0x111024c

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    iget-object v2, p0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->mServerFlags:Lcom/android/server/timedetector/ServerFlags;

    .line 39
    .line 40
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 41
    .line 42
    .line 43
    const-string/jumbo v2, "system_time"

    .line 44
    .line 45
    .line 46
    const-string/jumbo v3, "time_zone_detector_telephony_fallback_supported"

    .line 47
    .line 48
    .line 49
    invoke-static {v2, v3, v1}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    iput-boolean v1, v0, Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;->mTelephonyFallbackSupported:Z

    .line 54
    .line 55
    iget-object v1, p0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->mServerFlags:Lcom/android/server/timedetector/ServerFlags;

    .line 56
    .line 57
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 58
    .line 59
    .line 60
    const-string/jumbo v1, "system_time"

    .line 61
    .line 62
    .line 63
    const-string v2, "location_time_zone_detection_run_in_background_enabled"

    .line 64
    .line 65
    const/4 v3, 0x0

    .line 66
    invoke-static {v1, v2, v3}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 67
    .line 68
    .line 69
    move-result v1

    .line 70
    iput-boolean v1, v0, Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;->mGeoDetectionRunInBackgroundEnabled:Z

    .line 71
    .line 72
    iget-object v1, p0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->mServerFlags:Lcom/android/server/timedetector/ServerFlags;

    .line 73
    .line 74
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 75
    .line 76
    .line 77
    const-string/jumbo v1, "system_time"

    .line 78
    .line 79
    .line 80
    const-string v2, "enhanced_metrics_collection_enabled"

    .line 81
    .line 82
    invoke-static {v1, v2, v3}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 83
    .line 84
    .line 85
    move-result v1

    .line 86
    iput-boolean v1, v0, Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;->mEnhancedMetricsCollectionEnabled:Z

    .line 87
    .line 88
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->getAutoDetectionEnabledSetting()Z

    .line 89
    .line 90
    .line 91
    move-result v1

    .line 92
    iput-boolean v1, v0, Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;->mAutoDetectionEnabledSetting:Z

    .line 93
    .line 94
    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    iget-object v2, p0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->mUserManager:Landroid/os/UserManager;

    .line 99
    .line 100
    const-string/jumbo v3, "no_config_date_time"

    .line 101
    .line 102
    .line 103
    invoke-virtual {v2, v3, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    .line 104
    .line 105
    .line 106
    move-result v1

    .line 107
    xor-int/lit8 v1, v1, 0x1

    .line 108
    .line 109
    iput-boolean v1, v0, Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;->mUserConfigAllowed:Z

    .line 110
    .line 111
    iget-object v1, p0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->mLocationManager:Landroid/location/LocationManager;

    .line 112
    .line 113
    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 114
    .line 115
    .line 116
    move-result-object v2

    .line 117
    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->isLocationEnabledForUser(Landroid/os/UserHandle;)Z

    .line 118
    .line 119
    .line 120
    move-result v1

    .line 121
    iput-boolean v1, v0, Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;->mLocationEnabledSetting:Z

    .line 122
    .line 123
    invoke-virtual {p0, p1}, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->getGeoDetectionEnabledSetting(I)Z

    .line 124
    .line 125
    .line 126
    move-result p1

    .line 127
    iput-boolean p1, v0, Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;->mGeoDetectionEnabledSetting:Z

    .line 128
    .line 129
    new-instance p1, Lcom/android/server/timezonedetector/ConfigurationInternal;

    .line 130
    .line 131
    invoke-direct {p1, v0}, Lcom/android/server/timezonedetector/ConfigurationInternal;-><init>(Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    .line 133
    .line 134
    monitor-exit p0

    .line 135
    return-object p1

    .line 136
    :catchall_0
    move-exception p1

    .line 137
    monitor-exit p0

    .line 138
    throw p1
.end method

.method public final getGeoDetectionEnabledSetting(I)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->mServerFlags:Lcom/android/server/timedetector/ServerFlags;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    const-string v1, "location_time_zone_detection_setting_enabled_override"

    .line 7
    .line 8
    const-string/jumbo v2, "system_time"

    .line 9
    .line 10
    .line 11
    invoke-static {v2, v1}, Landroid/provider/DeviceConfig;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-eqz v1, :cond_1

    .line 27
    .line 28
    sget-object v1, Lcom/android/server/timedetector/ServerFlags;->OPTIONAL_TRUE:Ljava/util/Optional;

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    sget-object v1, Lcom/android/server/timedetector/ServerFlags;->OPTIONAL_FALSE:Ljava/util/Optional;

    .line 32
    .line 33
    :goto_0
    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    if-eqz v3, :cond_2

    .line 38
    .line 39
    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    check-cast p0, Ljava/lang/Boolean;

    .line 44
    .line 45
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 46
    .line 47
    .line 48
    move-result p0

    .line 49
    return p0

    .line 50
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 51
    .line 52
    .line 53
    const-string v0, "location_time_zone_detection_setting_enabled_default"

    .line 54
    .line 55
    const/4 v1, 0x0

    .line 56
    invoke-static {v2, v0, v1}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    iget-object p0, p0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->mCr:Landroid/content/ContentResolver;

    .line 61
    .line 62
    const-string v2, "location_time_zone_detection_enabled"

    .line 63
    .line 64
    invoke-static {p0, v2, v0, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 65
    .line 66
    .line 67
    move-result p0

    .line 68
    if-eqz p0, :cond_3

    .line 69
    .line 70
    const/4 v1, 0x1

    .line 71
    :cond_3
    return v1
.end method

.method public final declared-synchronized getPrimaryLocationTimeZoneProviderMode()Ljava/lang/String;
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->mTestPrimaryLocationTimeZoneProviderMode:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    monitor-exit p0

    .line 7
    return-object v0

    .line 8
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->mServerFlags:Lcom/android/server/timedetector/ServerFlags;

    .line 9
    .line 10
    const-string/jumbo v1, "primary_location_time_zone_provider_mode_override"

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    const-string/jumbo v0, "system_time"

    .line 17
    .line 18
    .line 19
    invoke-static {v0, v1}, Landroid/provider/DeviceConfig;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    monitor-enter p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 28
    :try_start_2
    iget-object v1, p0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->mContext:Landroid/content/Context;

    .line 29
    .line 30
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    const v2, 0x1110180

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-eqz v1, :cond_1

    .line 42
    .line 43
    const-string v1, "enabled"

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :catchall_0
    move-exception v0

    .line 47
    goto :goto_1

    .line 48
    :cond_1
    const-string v1, "disabled"
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 49
    .line 50
    :goto_0
    :try_start_3
    monitor-exit p0

    .line 51
    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    check-cast v0, Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 56
    .line 57
    monitor-exit p0

    .line 58
    return-object v0

    .line 59
    :catchall_1
    move-exception v0

    .line 60
    goto :goto_2

    .line 61
    :goto_1
    :try_start_4
    monitor-exit p0

    .line 62
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 63
    :goto_2
    monitor-exit p0

    .line 64
    throw v0
.end method

.method public final declared-synchronized getSecondaryLocationTimeZoneProviderMode()Ljava/lang/String;
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->mTestSecondaryLocationTimeZoneProviderMode:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    monitor-exit p0

    .line 7
    return-object v0

    .line 8
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->mServerFlags:Lcom/android/server/timedetector/ServerFlags;

    .line 9
    .line 10
    const-string/jumbo v1, "secondary_location_time_zone_provider_mode_override"

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    const-string/jumbo v0, "system_time"

    .line 17
    .line 18
    .line 19
    invoke-static {v0, v1}, Landroid/provider/DeviceConfig;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    monitor-enter p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 28
    :try_start_2
    iget-object v1, p0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->mContext:Landroid/content/Context;

    .line 29
    .line 30
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    const v2, 0x1110184

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-eqz v1, :cond_1

    .line 42
    .line 43
    const-string v1, "enabled"

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :catchall_0
    move-exception v0

    .line 47
    goto :goto_1

    .line 48
    :cond_1
    const-string v1, "disabled"
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 49
    .line 50
    :goto_0
    :try_start_3
    monitor-exit p0

    .line 51
    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    check-cast v0, Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 56
    .line 57
    monitor-exit p0

    .line 58
    return-object v0

    .line 59
    :catchall_1
    move-exception v0

    .line 60
    goto :goto_2

    .line 61
    :goto_1
    :try_start_4
    monitor-exit p0

    .line 62
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 63
    :goto_2
    monitor-exit p0

    .line 64
    throw v0
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
    iget-object v1, p0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->mConfigurationInternalListeners:Ljava/util/List;

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

.method public final isGeoTimeZoneDetectionFeatureSupported()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const v1, 0x1110173

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    iget-object v0, p0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->mServerFlags:Lcom/android/server/timedetector/ServerFlags;

    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    const-string/jumbo v0, "system_time"

    .line 22
    .line 23
    .line 24
    const-string v1, "location_time_zone_detection_feature_supported"

    .line 25
    .line 26
    const/4 v2, 0x1

    .line 27
    invoke-static {v0, v1, v2}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_0

    .line 32
    .line 33
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->getPrimaryLocationTimeZoneProviderMode()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    const-string v1, "disabled"

    .line 38
    .line 39
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-eqz v0, :cond_1

    .line 44
    .line 45
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->getSecondaryLocationTimeZoneProviderMode()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    invoke-static {p0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result p0

    .line 53
    if-nez p0, :cond_0

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_0
    const/4 v2, 0x0

    .line 57
    :cond_1
    :goto_0
    return v2
.end method

.method public final isGeolocationFallbackEnabled()Z
    .locals 3

    .line 1
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "CscFeature_Common_SupportGeolocationFallback"

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;Z)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-object p0, p0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->mCr:Landroid/content/ContentResolver;

    .line 15
    .line 16
    const-string/jumbo v0, "preferred_time_zone_detection_method"

    .line 17
    .line 18
    .line 19
    invoke-static {p0, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    const-string/jumbo v0, "mobile"

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result p0

    .line 30
    return p0

    .line 31
    :cond_0
    return v2
.end method

.method public final isTelephonyTimeZoneDetectionFeatureSupported()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const v1, 0x1110187

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    iget-object p0, p0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->mContext:Landroid/content/Context;

    .line 17
    .line 18
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    const-string v0, "android.hardware.telephony"

    .line 23
    .line 24
    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 25
    .line 26
    .line 27
    move-result p0

    .line 28
    if-nez p0, :cond_0

    .line 29
    .line 30
    const-string/jumbo p0, "ro.carrier"

    .line 31
    .line 32
    .line 33
    const-string v0, "Unknown"

    .line 34
    .line 35
    invoke-static {p0, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    const-string/jumbo v0, "wifi-only"

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 43
    .line 44
    .line 45
    move-result p0

    .line 46
    if-nez p0, :cond_1

    .line 47
    .line 48
    :cond_0
    const/4 p0, 0x1

    .line 49
    goto :goto_0

    .line 50
    :cond_1
    const/4 p0, 0x0

    .line 51
    :goto_0
    return p0
.end method

.method public final storeConfiguration(ILandroid/app/time/TimeZoneConfiguration;Landroid/app/time/TimeZoneConfiguration;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->isTelephonyTimeZoneDetectionFeatureSupported()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->isGeoTimeZoneDetectionFeatureSupported()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_5

    .line 12
    .line 13
    :cond_0
    invoke-virtual {p2}, Landroid/app/time/TimeZoneConfiguration;->hasIsAutoDetectionEnabled()Z

    .line 14
    .line 15
    .line 16
    move-result p2

    .line 17
    if-eqz p2, :cond_1

    .line 18
    .line 19
    iget-object p2, p0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->mCr:Landroid/content/ContentResolver;

    .line 20
    .line 21
    const-string v0, "auto_time_zone_explicit"

    .line 22
    .line 23
    const/4 v1, 0x1

    .line 24
    invoke-static {p2, v0, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 25
    .line 26
    .line 27
    :cond_1
    invoke-virtual {p3}, Landroid/app/time/TimeZoneConfiguration;->isAutoDetectionEnabled()Z

    .line 28
    .line 29
    .line 30
    move-result p2

    .line 31
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->getAutoDetectionEnabledSetting()Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-eq v0, p2, :cond_2

    .line 36
    .line 37
    iget-object v0, p0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->mCr:Landroid/content/ContentResolver;

    .line 38
    .line 39
    const-string v1, "auto_time_zone"

    .line 40
    .line 41
    invoke-static {v0, v1, p2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 42
    .line 43
    .line 44
    :cond_2
    iget-object p2, p0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->mServerFlags:Lcom/android/server/timedetector/ServerFlags;

    .line 45
    .line 46
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    .line 48
    .line 49
    const-string/jumbo p2, "system_time"

    .line 50
    .line 51
    .line 52
    const-string v0, "location_time_zone_detection_setting_enabled_override"

    .line 53
    .line 54
    invoke-static {p2, v0}, Landroid/provider/DeviceConfig;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p2

    .line 58
    if-nez p2, :cond_3

    .line 59
    .line 60
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    .line 61
    .line 62
    .line 63
    move-result-object p2

    .line 64
    goto :goto_0

    .line 65
    :cond_3
    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 66
    .line 67
    .line 68
    move-result p2

    .line 69
    if-eqz p2, :cond_4

    .line 70
    .line 71
    sget-object p2, Lcom/android/server/timedetector/ServerFlags;->OPTIONAL_TRUE:Ljava/util/Optional;

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_4
    sget-object p2, Lcom/android/server/timedetector/ServerFlags;->OPTIONAL_FALSE:Ljava/util/Optional;

    .line 75
    .line 76
    :goto_0
    invoke-virtual {p2}, Ljava/util/Optional;->isEmpty()Z

    .line 77
    .line 78
    .line 79
    move-result p2

    .line 80
    if-eqz p2, :cond_5

    .line 81
    .line 82
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->isGeoTimeZoneDetectionFeatureSupported()Z

    .line 83
    .line 84
    .line 85
    move-result p2

    .line 86
    if-eqz p2, :cond_5

    .line 87
    .line 88
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->isTelephonyTimeZoneDetectionFeatureSupported()Z

    .line 89
    .line 90
    .line 91
    move-result p2

    .line 92
    if-eqz p2, :cond_5

    .line 93
    .line 94
    invoke-virtual {p3}, Landroid/app/time/TimeZoneConfiguration;->isGeoDetectionEnabled()Z

    .line 95
    .line 96
    .line 97
    move-result p2

    .line 98
    invoke-virtual {p0, p1}, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->getGeoDetectionEnabledSetting(I)Z

    .line 99
    .line 100
    .line 101
    move-result p3

    .line 102
    if-eq p3, p2, :cond_5

    .line 103
    .line 104
    iget-object p0, p0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->mCr:Landroid/content/ContentResolver;

    .line 105
    .line 106
    const-string p3, "location_time_zone_detection_enabled"

    .line 107
    .line 108
    invoke-static {p0, p3, p2, p1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 109
    .line 110
    .line 111
    :cond_5
    return-void
.end method
