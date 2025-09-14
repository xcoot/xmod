.class public final Lcom/android/server/location/injector/SystemSettingsHelper$StringSetCachedGlobalSetting;
.super Lcom/android/server/location/injector/SystemSettingsHelper$ObservingSetting;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mBaseValuesSupplier:Ljava/util/function/Supplier;

.field public mCachedValue:Landroid/util/ArraySet;

.field public final mContext:Landroid/content/Context;

.field public final mSettingName:Ljava/lang/String;

.field public mValid:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/location/injector/SystemSettingsHelper$$ExternalSyntheticLambda0;Landroid/os/Handler;)V
    .locals 0

    .line 1
    invoke-direct {p0, p3}, Lcom/android/server/location/injector/SystemSettingsHelper$ObservingSetting;-><init>(Landroid/os/Handler;)V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/location/injector/SystemSettingsHelper$StringSetCachedGlobalSetting;->mContext:Landroid/content/Context;

    .line 5
    .line 6
    const-string/jumbo p1, "location_background_throttle_package_whitelist"

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/android/server/location/injector/SystemSettingsHelper$StringSetCachedGlobalSetting;->mSettingName:Ljava/lang/String;

    .line 10
    .line 11
    iput-object p2, p0, Lcom/android/server/location/injector/SystemSettingsHelper$StringSetCachedGlobalSetting;->mBaseValuesSupplier:Ljava/util/function/Supplier;

    .line 12
    .line 13
    const/4 p1, 0x0

    .line 14
    iput-boolean p1, p0, Lcom/android/server/location/injector/SystemSettingsHelper$StringSetCachedGlobalSetting;->mValid:Z

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final declared-synchronized getValue()Ljava/util/Set;
    .locals 5

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/android/server/location/injector/SystemSettingsHelper$StringSetCachedGlobalSetting;->mCachedValue:Landroid/util/ArraySet;

    .line 3
    .line 4
    iget-boolean v1, p0, Lcom/android/server/location/injector/SystemSettingsHelper$StringSetCachedGlobalSetting;->mValid:Z

    .line 5
    .line 6
    if-nez v1, :cond_2

    .line 7
    .line 8
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 9
    .line 10
    .line 11
    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 12
    :try_start_1
    new-instance v2, Landroid/util/ArraySet;

    .line 13
    .line 14
    iget-object v3, p0, Lcom/android/server/location/injector/SystemSettingsHelper$StringSetCachedGlobalSetting;->mBaseValuesSupplier:Ljava/util/function/Supplier;

    .line 15
    .line 16
    invoke-interface {v3}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    check-cast v3, Landroid/util/ArraySet;

    .line 21
    .line 22
    invoke-direct {v2, v3}, Landroid/util/ArraySet;-><init>(Landroid/util/ArraySet;)V

    .line 23
    .line 24
    .line 25
    iget-object v3, p0, Lcom/android/server/location/injector/SystemSettingsHelper$StringSetCachedGlobalSetting;->mContext:Landroid/content/Context;

    .line 26
    .line 27
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    iget-object v4, p0, Lcom/android/server/location/injector/SystemSettingsHelper$StringSetCachedGlobalSetting;->mSettingName:Ljava/lang/String;

    .line 32
    .line 33
    invoke-static {v3, v4}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 38
    .line 39
    .line 40
    move-result v4

    .line 41
    if-nez v4, :cond_0

    .line 42
    .line 43
    const-string v4, ","

    .line 44
    .line 45
    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :catchall_0
    move-exception v2

    .line 58
    goto :goto_2

    .line 59
    :cond_0
    :goto_0
    :try_start_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 60
    .line 61
    .line 62
    monitor-enter p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 63
    :try_start_3
    iget-boolean v0, p0, Lcom/android/server/location/injector/SystemSettingsHelper$ObservingSetting;->mRegistered:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 64
    .line 65
    :try_start_4
    monitor-exit p0

    .line 66
    if-eqz v0, :cond_1

    .line 67
    .line 68
    const/4 v0, 0x1

    .line 69
    iput-boolean v0, p0, Lcom/android/server/location/injector/SystemSettingsHelper$StringSetCachedGlobalSetting;->mValid:Z

    .line 70
    .line 71
    iput-object v2, p0, Lcom/android/server/location/injector/SystemSettingsHelper$StringSetCachedGlobalSetting;->mCachedValue:Landroid/util/ArraySet;

    .line 72
    .line 73
    goto :goto_1

    .line 74
    :catchall_1
    move-exception v0

    .line 75
    goto :goto_4

    .line 76
    :cond_1
    :goto_1
    move-object v0, v2

    .line 77
    goto :goto_3

    .line 78
    :catchall_2
    move-exception v0

    .line 79
    monitor-exit p0

    .line 80
    throw v0

    .line 81
    :goto_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 82
    .line 83
    .line 84
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 85
    :cond_2
    :goto_3
    monitor-exit p0

    .line 86
    return-object v0

    .line 87
    :goto_4
    monitor-exit p0

    .line 88
    throw v0
.end method

.method public final onChange(ZLandroid/net/Uri;I)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    const/4 v0, 0x0

    .line 3
    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/location/injector/SystemSettingsHelper$StringSetCachedGlobalSetting;->mValid:Z

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/android/server/location/injector/SystemSettingsHelper$StringSetCachedGlobalSetting;->mCachedValue:Landroid/util/ArraySet;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    .line 8
    monitor-exit p0

    .line 9
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/location/injector/SystemSettingsHelper$ObservingSetting;->onChange(ZLandroid/net/Uri;I)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :catchall_0
    move-exception p1

    .line 14
    monitor-exit p0

    .line 15
    throw p1
.end method
