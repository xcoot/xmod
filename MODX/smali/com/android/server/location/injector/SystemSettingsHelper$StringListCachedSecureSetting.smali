.class public final Lcom/android/server/location/injector/SystemSettingsHelper$StringListCachedSecureSetting;
.super Lcom/android/server/location/injector/SystemSettingsHelper$ObservingSetting;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mCachedUserId:I

.field public mCachedValue:Ljava/util/List;

.field public final mContext:Landroid/content/Context;

.field public final mSettingName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Handler;)V
    .locals 0

    .line 1
    invoke-direct {p0, p3}, Lcom/android/server/location/injector/SystemSettingsHelper$ObservingSetting;-><init>(Landroid/os/Handler;)V

    .line 4
    iput-object p1, p0, Lcom/android/server/location/injector/SystemSettingsHelper$StringListCachedSecureSetting;->mContext:Landroid/content/Context;

    .line 6
    iput-object p2, p0, Lcom/android/server/location/injector/SystemSettingsHelper$StringListCachedSecureSetting;->mSettingName:Ljava/lang/String;

    .line 8
    const/16 p1, -0x2710

    .line 10
    iput p1, p0, Lcom/android/server/location/injector/SystemSettingsHelper$StringListCachedSecureSetting;->mCachedUserId:I

    .line 12
    return-void
.end method


# virtual methods
.method public final declared-synchronized getValueForUser(I)Ljava/util/List;
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    const/16 v0, -0x2710

    .line 4
    if-eq p1, v0, :cond_0

    .line 6
    const/4 v0, 0x1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    :goto_0
    :try_start_0
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 12
    iget-object v0, p0, Lcom/android/server/location/injector/SystemSettingsHelper$StringListCachedSecureSetting;->mCachedValue:Ljava/util/List;

    .line 14
    iget v1, p0, Lcom/android/server/location/injector/SystemSettingsHelper$StringListCachedSecureSetting;->mCachedUserId:I

    .line 16
    if-eq p1, v1, :cond_3

    .line 18
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 21
    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 22
    :try_start_1
    iget-object v2, p0, Lcom/android/server/location/injector/SystemSettingsHelper$StringListCachedSecureSetting;->mContext:Landroid/content/Context;

    .line 24
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 27
    move-result-object v2

    .line 28
    iget-object v3, p0, Lcom/android/server/location/injector/SystemSettingsHelper$StringListCachedSecureSetting;->mSettingName:Ljava/lang/String;

    .line 30
    invoke-static {v2, v3, p1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    .line 33
    move-result-object v2

    .line 34
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 37
    move-result v3

    .line 38
    if-eqz v3, :cond_1

    .line 40
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 43
    move-result-object v2

    .line 44
    goto :goto_1

    .line 45
    :catchall_0
    move-exception p1

    .line 46
    goto :goto_3

    .line 47
    :cond_1
    const-string v3, ","

    .line 49
    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 52
    move-result-object v2

    .line 53
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 56
    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 57
    :goto_1
    :try_start_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 60
    monitor-enter p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 61
    :try_start_3
    iget-boolean v0, p0, Lcom/android/server/location/injector/SystemSettingsHelper$ObservingSetting;->mRegistered:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 63
    :try_start_4
    monitor-exit p0

    .line 64
    if-eqz v0, :cond_2

    .line 66
    iput p1, p0, Lcom/android/server/location/injector/SystemSettingsHelper$StringListCachedSecureSetting;->mCachedUserId:I

    .line 68
    iput-object v2, p0, Lcom/android/server/location/injector/SystemSettingsHelper$StringListCachedSecureSetting;->mCachedValue:Ljava/util/List;

    .line 70
    goto :goto_2

    .line 71
    :catchall_1
    move-exception p1

    .line 72
    goto :goto_5

    .line 73
    :cond_2
    :goto_2
    move-object v0, v2

    .line 74
    goto :goto_4

    .line 75
    :catchall_2
    move-exception p1

    .line 76
    monitor-exit p0

    .line 77
    throw p1

    .line 78
    :goto_3
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 81
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 82
    :cond_3
    :goto_4
    monitor-exit p0

    .line 83
    return-object v0

    .line 84
    :goto_5
    monitor-exit p0

    .line 85
    throw p1
.end method

.method public final onChange(ZLandroid/net/Uri;I)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget v0, p0, Lcom/android/server/location/injector/SystemSettingsHelper$StringListCachedSecureSetting;->mCachedUserId:I

    .line 4
    if-ne v0, p3, :cond_0

    .line 6
    const/16 v0, -0x2710

    .line 8
    iput v0, p0, Lcom/android/server/location/injector/SystemSettingsHelper$StringListCachedSecureSetting;->mCachedUserId:I

    .line 10
    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Lcom/android/server/location/injector/SystemSettingsHelper$StringListCachedSecureSetting;->mCachedValue:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    goto :goto_0

    .line 14
    :catchall_0
    move-exception p1

    .line 15
    goto :goto_1

    .line 16
    :cond_0
    :goto_0
    monitor-exit p0

    .line 17
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/location/injector/SystemSettingsHelper$ObservingSetting;->onChange(ZLandroid/net/Uri;I)V

    .line 20
    return-void

    .line 21
    :goto_1
    monitor-exit p0

    .line 22
    throw p1
.end method
