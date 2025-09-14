.class public final Lcom/android/server/location/injector/SystemSettingsHelper$PackageTagsListSetting;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/provider/DeviceConfig$OnPropertiesChangedListener;


# instance fields
.field public final mBaseValuesSupplier:Ljava/util/function/Supplier;

.field public mCachedValue:Landroid/os/PackageTagsList;

.field public final mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public final mName:Ljava/lang/String;

.field public mRegistered:Z

.field public mValid:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/function/Supplier;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/location/injector/SystemSettingsHelper$PackageTagsListSetting;->mName:Ljava/lang/String;

    .line 6
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 8
    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/android/server/location/injector/SystemSettingsHelper$PackageTagsListSetting;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 13
    iput-object p2, p0, Lcom/android/server/location/injector/SystemSettingsHelper$PackageTagsListSetting;->mBaseValuesSupplier:Ljava/util/function/Supplier;

    .line 15
    return-void
.end method


# virtual methods
.method public final declared-synchronized getValue()Landroid/os/PackageTagsList;
    .locals 13

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/android/server/location/injector/SystemSettingsHelper$PackageTagsListSetting;->mCachedValue:Landroid/os/PackageTagsList;

    .line 4
    iget-boolean v1, p0, Lcom/android/server/location/injector/SystemSettingsHelper$PackageTagsListSetting;->mValid:Z

    .line 6
    if-nez v1, :cond_7

    .line 8
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 11
    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 12
    :try_start_1
    new-instance v2, Landroid/os/PackageTagsList$Builder;

    .line 14
    invoke-direct {v2}, Landroid/os/PackageTagsList$Builder;-><init>()V

    .line 17
    iget-object v3, p0, Lcom/android/server/location/injector/SystemSettingsHelper$PackageTagsListSetting;->mBaseValuesSupplier:Ljava/util/function/Supplier;

    .line 19
    invoke-interface {v3}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 22
    move-result-object v3

    .line 23
    check-cast v3, Ljava/util/Map;

    .line 25
    invoke-virtual {v2, v3}, Landroid/os/PackageTagsList$Builder;->add(Ljava/util/Map;)Landroid/os/PackageTagsList$Builder;

    .line 28
    move-result-object v2

    .line 29
    const-string/jumbo v3, "location"

    .line 32
    iget-object v4, p0, Lcom/android/server/location/injector/SystemSettingsHelper$PackageTagsListSetting;->mName:Ljava/lang/String;

    .line 34
    invoke-static {v3, v4}, Landroid/provider/DeviceConfig;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 37
    move-result-object v3

    .line 38
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 41
    move-result v4

    .line 42
    const/4 v5, 0x1

    .line 43
    if-nez v4, :cond_5

    .line 45
    const-string v4, ","

    .line 47
    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 50
    move-result-object v3

    .line 51
    array-length v4, v3

    .line 52
    const/4 v6, 0x0

    .line 53
    move v7, v6

    .line 54
    :goto_0
    if-ge v7, v4, :cond_5

    .line 56
    aget-object v8, v3, v7

    .line 58
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 61
    move-result v9

    .line 62
    if-eqz v9, :cond_0

    .line 64
    goto :goto_3

    .line 65
    :cond_0
    const-string v9, ";"

    .line 67
    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 70
    move-result-object v8

    .line 71
    aget-object v9, v8, v6

    .line 73
    array-length v10, v8

    .line 74
    if-ne v10, v5, :cond_1

    .line 76
    invoke-virtual {v2, v9}, Landroid/os/PackageTagsList$Builder;->add(Ljava/lang/String;)Landroid/os/PackageTagsList$Builder;

    .line 79
    goto :goto_3

    .line 80
    :catchall_0
    move-exception v2

    .line 81
    goto :goto_5

    .line 82
    :cond_1
    move v10, v5

    .line 83
    :goto_1
    array-length v11, v8

    .line 84
    if-ge v10, v11, :cond_4

    .line 86
    aget-object v11, v8, v10

    .line 88
    const-string/jumbo v12, "null"

    .line 91
    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 94
    move-result v12

    .line 95
    if-eqz v12, :cond_2

    .line 97
    const/4 v11, 0x0

    .line 98
    :cond_2
    const-string v12, "*"

    .line 100
    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 103
    move-result v12

    .line 104
    if-eqz v12, :cond_3

    .line 106
    invoke-virtual {v2, v9}, Landroid/os/PackageTagsList$Builder;->add(Ljava/lang/String;)Landroid/os/PackageTagsList$Builder;

    .line 109
    goto :goto_2

    .line 110
    :cond_3
    invoke-virtual {v2, v9, v11}, Landroid/os/PackageTagsList$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Landroid/os/PackageTagsList$Builder;

    .line 113
    :goto_2
    add-int/lit8 v10, v10, 0x1

    .line 115
    goto :goto_1

    .line 116
    :cond_4
    :goto_3
    add-int/lit8 v7, v7, 0x1

    .line 118
    goto :goto_0

    .line 119
    :cond_5
    invoke-virtual {v2}, Landroid/os/PackageTagsList$Builder;->build()Landroid/os/PackageTagsList;

    .line 122
    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 123
    :try_start_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 126
    monitor-enter p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 127
    :try_start_3
    iget-boolean v0, p0, Lcom/android/server/location/injector/SystemSettingsHelper$PackageTagsListSetting;->mRegistered:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 129
    :try_start_4
    monitor-exit p0

    .line 130
    if-eqz v0, :cond_6

    .line 132
    iput-boolean v5, p0, Lcom/android/server/location/injector/SystemSettingsHelper$PackageTagsListSetting;->mValid:Z

    .line 134
    iput-object v2, p0, Lcom/android/server/location/injector/SystemSettingsHelper$PackageTagsListSetting;->mCachedValue:Landroid/os/PackageTagsList;

    .line 136
    goto :goto_4

    .line 137
    :catchall_1
    move-exception v0

    .line 138
    goto :goto_7

    .line 139
    :cond_6
    :goto_4
    move-object v0, v2

    .line 140
    goto :goto_6

    .line 141
    :catchall_2
    move-exception v0

    .line 142
    monitor-exit p0

    .line 143
    throw v0

    .line 144
    :goto_5
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 147
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 148
    :cond_7
    :goto_6
    monitor-exit p0

    .line 149
    return-object v0

    .line 150
    :goto_7
    monitor-exit p0

    .line 151
    throw v0
.end method

.method public final onPropertiesChanged(Landroid/provider/DeviceConfig$Properties;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/provider/DeviceConfig$Properties;->getKeyset()Ljava/util/Set;

    .line 4
    move-result-object p1

    .line 5
    iget-object v0, p0, Lcom/android/server/location/injector/SystemSettingsHelper$PackageTagsListSetting;->mName:Ljava/lang/String;

    .line 7
    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 10
    move-result p1

    .line 11
    if-nez p1, :cond_0

    .line 13
    return-void

    .line 14
    :cond_0
    monitor-enter p0

    .line 15
    const/4 p1, 0x0

    .line 16
    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/location/injector/SystemSettingsHelper$PackageTagsListSetting;->mValid:Z

    .line 18
    const/4 p1, 0x0

    .line 19
    iput-object p1, p0, Lcom/android/server/location/injector/SystemSettingsHelper$PackageTagsListSetting;->mCachedValue:Landroid/os/PackageTagsList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    monitor-exit p0

    .line 22
    new-instance p1, Ljava/lang/StringBuilder;

    .line 24
    const-string/jumbo v0, "location device config setting changed: "

    .line 27
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 30
    iget-object v0, p0, Lcom/android/server/location/injector/SystemSettingsHelper$PackageTagsListSetting;->mName:Ljava/lang/String;

    .line 32
    const-string v1, "LocationManagerService"

    .line 34
    invoke-static {p1, v0, v1}, Lcom/android/server/VpnManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    iget-object p0, p0, Lcom/android/server/location/injector/SystemSettingsHelper$PackageTagsListSetting;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 39
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 42
    move-result-object p0

    .line 43
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 46
    move-result p1

    .line 47
    if-eqz p1, :cond_1

    .line 49
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 52
    move-result-object p1

    .line 53
    check-cast p1, Lcom/android/server/location/injector/SettingsHelper$UserSettingChangedListener;

    .line 55
    const/4 v0, -0x1

    .line 56
    invoke-interface {p1, v0}, Lcom/android/server/location/injector/SettingsHelper$UserSettingChangedListener;->onSettingChanged(I)V

    .line 59
    goto :goto_0

    .line 60
    :cond_1
    return-void

    .line 61
    :catchall_0
    move-exception p1

    .line 62
    monitor-exit p0

    .line 63
    throw p1
.end method
