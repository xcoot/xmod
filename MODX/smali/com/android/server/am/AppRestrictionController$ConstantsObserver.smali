.class public final Lcom/android/server/am/AppRestrictionController$ConstantsObserver;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/provider/DeviceConfig$OnPropertiesChangedListener;


# instance fields
.field public volatile mBgAbusiveNotificationMinIntervalMs:J

.field public volatile mBgAutoRestrictAbusiveApps:Z

.field public volatile mBgAutoRestrictedBucket:Z

.field public volatile mBgLongFgsNotificationMinIntervalMs:J

.field public volatile mBgPromptAbusiveAppsToBgRestricted:Z

.field public volatile mBgPromptFgsOnLongRunning:Z

.field public volatile mBgPromptFgsWithNotiOnLongRunning:Z

.field public volatile mBgPromptFgsWithNotiToBgRestricted:Z

.field public volatile mBgRestrictionExemptedPackages:Ljava/util/Set;

.field public final mDefaultBgPromptAbusiveAppToBgRestricted:Z

.field public final mDefaultBgPromptFgsWithNotiToBgRestricted:Z

.field public final synthetic this$0:Lcom/android/server/am/AppRestrictionController;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/am/AppRestrictionController;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p2, p0, Lcom/android/server/am/AppRestrictionController$ConstantsObserver;->this$0:Lcom/android/server/am/AppRestrictionController;

    .line 6
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    .line 9
    move-result-object p2

    .line 10
    iput-object p2, p0, Lcom/android/server/am/AppRestrictionController$ConstantsObserver;->mBgRestrictionExemptedPackages:Ljava/util/Set;

    .line 12
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 15
    move-result-object p2

    .line 16
    const v0, 0x1110060

    .line 19
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 22
    move-result p2

    .line 23
    iput-boolean p2, p0, Lcom/android/server/am/AppRestrictionController$ConstantsObserver;->mDefaultBgPromptFgsWithNotiToBgRestricted:Z

    .line 25
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 28
    move-result-object p1

    .line 29
    const p2, 0x111005f

    .line 32
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 35
    move-result p1

    .line 36
    iput-boolean p1, p0, Lcom/android/server/am/AppRestrictionController$ConstantsObserver;->mDefaultBgPromptAbusiveAppToBgRestricted:Z

    .line 38
    return-void
.end method


# virtual methods
.method public final onPropertiesChanged(Landroid/provider/DeviceConfig$Properties;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 3
    const-string v1, "bg_prompt_fgs_with_noti_to_bg_restricted"

    .line 5
    const-string v2, "bg_prompt_fgs_with_noti_on_long_running"

    .line 7
    const-string v3, "bg_long_fgs_notification_minimal_interval"

    .line 9
    const-string v4, "bg_abusive_notification_minimal_interval"

    .line 11
    const-string v5, "bg_prompt_fgs_on_long_running"

    .line 13
    const-string v6, "bg_auto_restrict_abusive_apps"

    .line 15
    const-string v7, "bg_prompt_abusive_apps_to_bg_restricted"

    .line 17
    const/4 v8, 0x0

    .line 18
    const/4 v9, 0x1

    .line 19
    invoke-virtual/range {p1 .. p1}, Landroid/provider/DeviceConfig$Properties;->getKeyset()Ljava/util/Set;

    .line 22
    move-result-object v10

    .line 23
    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 26
    move-result-object v10

    .line 27
    :cond_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    .line 30
    move-result v11

    .line 31
    if-eqz v11, :cond_b

    .line 33
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 36
    move-result-object v11

    .line 37
    check-cast v11, Ljava/lang/String;

    .line 39
    if-eqz v11, :cond_b

    .line 41
    const-string v12, "bg_"

    .line 43
    invoke-virtual {v11, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 46
    move-result v12

    .line 47
    if-nez v12, :cond_1

    .line 49
    goto/16 :goto_4

    .line 51
    :cond_1
    const-wide v12, 0x9a7ec800L

    .line 56
    const-string v14, "activity_manager"

    .line 58
    invoke-virtual {v11}, Ljava/lang/String;->hashCode()I

    .line 61
    move-result v16

    .line 62
    sparse-switch v16, :sswitch_data_0

    .line 65
    :goto_0
    const/4 v15, -0x1

    .line 66
    goto/16 :goto_1

    .line 68
    :sswitch_0
    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 71
    move-result v16

    .line 72
    if-nez v16, :cond_2

    .line 74
    goto :goto_0

    .line 75
    :cond_2
    const/16 v15, 0x8

    .line 77
    goto :goto_1

    .line 78
    :sswitch_1
    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 81
    move-result v16

    .line 82
    if-nez v16, :cond_3

    .line 84
    goto :goto_0

    .line 85
    :cond_3
    const/4 v15, 0x7

    .line 86
    goto :goto_1

    .line 87
    :sswitch_2
    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 90
    move-result v16

    .line 91
    if-nez v16, :cond_4

    .line 93
    goto :goto_0

    .line 94
    :cond_4
    const/4 v15, 0x6

    .line 95
    goto :goto_1

    .line 96
    :sswitch_3
    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 99
    move-result v16

    .line 100
    if-nez v16, :cond_5

    .line 102
    goto :goto_0

    .line 103
    :cond_5
    const/4 v15, 0x5

    .line 104
    goto :goto_1

    .line 105
    :sswitch_4
    const-string v15, "bg_restriction_exempted_packages"

    .line 107
    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 110
    move-result v15

    .line 111
    if-nez v15, :cond_6

    .line 113
    goto :goto_0

    .line 114
    :cond_6
    const/4 v15, 0x4

    .line 115
    goto :goto_1

    .line 116
    :sswitch_5
    const-string v15, "bg_auto_restricted_bucket_on_bg_restricted"

    .line 118
    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 121
    move-result v15

    .line 122
    if-nez v15, :cond_7

    .line 124
    goto :goto_0

    .line 125
    :cond_7
    const/4 v15, 0x3

    .line 126
    goto :goto_1

    .line 127
    :sswitch_6
    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 130
    move-result v15

    .line 131
    if-nez v15, :cond_8

    .line 133
    goto :goto_0

    .line 134
    :cond_8
    const/4 v15, 0x2

    .line 135
    goto :goto_1

    .line 136
    :sswitch_7
    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 139
    move-result v15

    .line 140
    if-nez v15, :cond_9

    .line 142
    goto :goto_0

    .line 143
    :cond_9
    move v15, v9

    .line 144
    goto :goto_1

    .line 145
    :sswitch_8
    invoke-virtual {v11, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 148
    move-result v15

    .line 149
    if-nez v15, :cond_a

    .line 151
    goto :goto_0

    .line 152
    :cond_a
    move v15, v8

    .line 153
    :goto_1
    packed-switch v15, :pswitch_data_0

    .line 156
    goto :goto_2

    .line 157
    :pswitch_0
    iget-boolean v12, v0, Lcom/android/server/am/AppRestrictionController$ConstantsObserver;->mDefaultBgPromptFgsWithNotiToBgRestricted:Z

    .line 159
    invoke-static {v14, v1, v12}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 162
    move-result v12

    .line 163
    iput-boolean v12, v0, Lcom/android/server/am/AppRestrictionController$ConstantsObserver;->mBgPromptFgsWithNotiToBgRestricted:Z

    .line 165
    goto :goto_2

    .line 166
    :pswitch_1
    invoke-static {v14, v2, v8}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 169
    move-result v12

    .line 170
    iput-boolean v12, v0, Lcom/android/server/am/AppRestrictionController$ConstantsObserver;->mBgPromptFgsWithNotiOnLongRunning:Z

    .line 172
    goto :goto_2

    .line 173
    :pswitch_2
    invoke-static {v14, v3, v12, v13}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    .line 176
    move-result-wide v12

    .line 177
    iput-wide v12, v0, Lcom/android/server/am/AppRestrictionController$ConstantsObserver;->mBgLongFgsNotificationMinIntervalMs:J

    .line 179
    goto :goto_2

    .line 180
    :pswitch_3
    invoke-static {v14, v4, v12, v13}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    .line 183
    move-result-wide v12

    .line 184
    iput-wide v12, v0, Lcom/android/server/am/AppRestrictionController$ConstantsObserver;->mBgAbusiveNotificationMinIntervalMs:J

    .line 186
    goto :goto_2

    .line 187
    :pswitch_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/AppRestrictionController$ConstantsObserver;->updateBgRestrictionExemptedPackages()V

    .line 190
    goto :goto_2

    .line 191
    :pswitch_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/AppRestrictionController$ConstantsObserver;->updateBgAutoRestrictedBucketChanged()V

    .line 194
    goto :goto_2

    .line 195
    :pswitch_6
    invoke-static {v14, v5, v8}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 198
    move-result v12

    .line 199
    iput-boolean v12, v0, Lcom/android/server/am/AppRestrictionController$ConstantsObserver;->mBgPromptFgsOnLongRunning:Z

    .line 201
    goto :goto_2

    .line 202
    :pswitch_7
    invoke-static {v14, v6, v9}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 205
    move-result v12

    .line 206
    iput-boolean v12, v0, Lcom/android/server/am/AppRestrictionController$ConstantsObserver;->mBgAutoRestrictAbusiveApps:Z

    .line 208
    goto :goto_2

    .line 209
    :pswitch_8
    iget-boolean v12, v0, Lcom/android/server/am/AppRestrictionController$ConstantsObserver;->mDefaultBgPromptAbusiveAppToBgRestricted:Z

    .line 211
    invoke-static {v14, v7, v12}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 214
    move-result v12

    .line 215
    iput-boolean v12, v0, Lcom/android/server/am/AppRestrictionController$ConstantsObserver;->mBgPromptAbusiveAppsToBgRestricted:Z

    .line 217
    :goto_2
    iget-object v12, v0, Lcom/android/server/am/AppRestrictionController$ConstantsObserver;->this$0:Lcom/android/server/am/AppRestrictionController;

    .line 219
    iget-object v13, v12, Lcom/android/server/am/AppRestrictionController;->mAppStateTrackers:Ljava/util/ArrayList;

    .line 221
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    .line 224
    move-result v13

    .line 225
    move v14, v8

    .line 226
    :goto_3
    if-ge v14, v13, :cond_0

    .line 228
    iget-object v15, v12, Lcom/android/server/am/AppRestrictionController;->mAppStateTrackers:Ljava/util/ArrayList;

    .line 230
    invoke-virtual {v15, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 233
    move-result-object v15

    .line 234
    check-cast v15, Lcom/android/server/am/BaseAppStateTracker;

    .line 236
    iget-object v15, v15, Lcom/android/server/am/BaseAppStateTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    .line 238
    iget-object v15, v15, Lcom/android/server/am/BaseAppStateTracker$Injector;->mAppStatePolicy:Lcom/android/server/am/BaseAppStatePolicy;

    .line 240
    invoke-virtual {v15, v11}, Lcom/android/server/am/BaseAppStatePolicy;->onPropertiesChanged(Ljava/lang/String;)V

    .line 243
    add-int/2addr v14, v9

    .line 244
    goto :goto_3

    .line 245
    :cond_b
    :goto_4
    return-void

    .line 246
    nop

    .line 247
    :sswitch_data_0
    .sparse-switch
        -0x725c6ba9 -> :sswitch_8
        -0x4784dcbb -> :sswitch_7
        -0x22b4a832 -> :sswitch_6
        -0x1796dd64 -> :sswitch_5
        -0x965c8df -> :sswitch_4
        0x32f03e37 -> :sswitch_3
        0x352f0b01 -> :sswitch_2
        0x69968cde -> :sswitch_1
        0x75259a8f -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final updateBgAutoRestrictedBucketChanged()V
    .locals 11

    .line 1
    iget-boolean v0, p0, Lcom/android/server/am/AppRestrictionController$ConstantsObserver;->mBgAutoRestrictedBucket:Z

    .line 3
    const-string v1, "activity_manager"

    .line 5
    const-string v2, "bg_auto_restricted_bucket_on_bg_restricted"

    .line 7
    const/4 v3, 0x0

    .line 8
    invoke-static {v1, v2, v3}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 11
    move-result v1

    .line 12
    iput-boolean v1, p0, Lcom/android/server/am/AppRestrictionController$ConstantsObserver;->mBgAutoRestrictedBucket:Z

    .line 14
    iget-boolean v1, p0, Lcom/android/server/am/AppRestrictionController$ConstantsObserver;->mBgAutoRestrictedBucket:Z

    .line 16
    if-eq v0, v1, :cond_2

    .line 18
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController$ConstantsObserver;->this$0:Lcom/android/server/am/AppRestrictionController;

    .line 20
    iget-boolean p0, p0, Lcom/android/server/am/AppRestrictionController$ConstantsObserver;->mBgAutoRestrictedBucket:Z

    .line 22
    iget-object v1, v0, Lcom/android/server/am/AppRestrictionController;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    .line 24
    invoke-virtual {v1}, Lcom/android/server/am/AppRestrictionController$Injector;->getAppStandbyInternal()Lcom/android/server/usage/AppStandbyInternal;

    .line 27
    move-result-object v1

    .line 28
    new-instance v2, Ljava/util/ArrayList;

    .line 30
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 33
    iget-object v4, v0, Lcom/android/server/am/AppRestrictionController;->mSettingsLock:Ljava/lang/Object;

    .line 35
    monitor-enter v4

    .line 36
    :try_start_0
    iget-object v5, v0, Lcom/android/server/am/AppRestrictionController;->mRestrictionSettings:Lcom/android/server/am/AppRestrictionController$RestrictionSettings;

    .line 38
    iget-object v6, v5, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->mRestrictionLevels:Landroid/util/SparseArrayMap;

    .line 40
    invoke-virtual {v6}, Landroid/util/SparseArrayMap;->numMaps()I

    .line 43
    move-result v6

    .line 44
    add-int/lit8 v6, v6, -0x1

    .line 46
    :goto_0
    if-ltz v6, :cond_0

    .line 48
    iget-object v7, v5, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->mRestrictionLevels:Landroid/util/SparseArrayMap;

    .line 50
    invoke-virtual {v7, v6}, Landroid/util/SparseArrayMap;->keyAt(I)I

    .line 53
    move-result v7

    .line 54
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 57
    move-result-object v8

    .line 58
    iget-object v9, v0, Lcom/android/server/am/AppRestrictionController;->mRestrictionSettings:Lcom/android/server/am/AppRestrictionController$RestrictionSettings;

    .line 60
    new-instance v10, Lcom/android/server/am/AppRestrictionController$$ExternalSyntheticLambda7;

    .line 62
    invoke-direct {v10, v2, p0, v1, v8}, Lcom/android/server/am/AppRestrictionController$$ExternalSyntheticLambda7;-><init>(Ljava/util/ArrayList;ZLcom/android/server/usage/AppStandbyInternal;Ljava/lang/Integer;)V

    .line 65
    invoke-virtual {v9, v7, v10}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->forEachPackageInUidLocked(ILcom/android/internal/util/function/TriConsumer;)V

    .line 68
    add-int/lit8 v6, v6, -0x1

    .line 70
    goto :goto_0

    .line 71
    :cond_0
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    :goto_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 75
    move-result v1

    .line 76
    if-ge v3, v1, :cond_1

    .line 78
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 81
    move-result-object v1

    .line 82
    check-cast v1, Ljava/lang/Runnable;

    .line 84
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 87
    add-int/lit8 v3, v3, 0x1

    .line 89
    goto :goto_1

    .line 90
    :cond_1
    iget-object v0, v0, Lcom/android/server/am/AppRestrictionController;->mRestrictionListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 92
    new-instance v1, Lcom/android/server/am/AppRestrictionController$$ExternalSyntheticLambda6;

    .line 94
    invoke-direct {v1, p0}, Lcom/android/server/am/AppRestrictionController$$ExternalSyntheticLambda6;-><init>(Z)V

    .line 97
    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->forEach(Ljava/util/function/Consumer;)V

    .line 100
    goto :goto_2

    .line 101
    :catchall_0
    move-exception p0

    .line 102
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 103
    throw p0

    .line 104
    :cond_2
    :goto_2
    return-void
.end method

.method public final updateBgRestrictionExemptedPackages()V
    .locals 5

    .line 1
    const-string v0, "bg_restriction_exempted_packages"

    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "activity_manager"

    .line 6
    invoke-static {v2, v0, v1}, Landroid/provider/DeviceConfig;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 9
    move-result-object v0

    .line 10
    if-nez v0, :cond_0

    .line 12
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    .line 15
    move-result-object v0

    .line 16
    iput-object v0, p0, Lcom/android/server/am/AppRestrictionController$ConstantsObserver;->mBgRestrictionExemptedPackages:Ljava/util/Set;

    .line 18
    return-void

    .line 19
    :cond_0
    const-string v1, ","

    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 24
    move-result-object v0

    .line 25
    new-instance v1, Landroid/util/ArraySet;

    .line 27
    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 30
    array-length v2, v0

    .line 31
    const/4 v3, 0x0

    .line 32
    :goto_0
    if-ge v3, v2, :cond_1

    .line 34
    aget-object v4, v0, v3

    .line 36
    invoke-virtual {v1, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 39
    add-int/lit8 v3, v3, 0x1

    .line 41
    goto :goto_0

    .line 42
    :cond_1
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    .line 45
    move-result-object v0

    .line 46
    iput-object v0, p0, Lcom/android/server/am/AppRestrictionController$ConstantsObserver;->mBgRestrictionExemptedPackages:Ljava/util/Set;

    .line 48
    return-void
.end method
