.class public final Lcom/android/server/pm/ResolveIntentHelper;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

.field public final mInstantAppInstallerActivitySupplier:Ljava/util/function/Supplier;

.field public final mPlatformCompat:Lcom/android/server/compat/PlatformCompat;

.field public final mPreferredActivityHelper:Lcom/android/server/pm/PreferredActivityHelper;

.field public final mResolveInfoSupplier:Ljava/util/function/Supplier;

.field public final mUserManager:Lcom/android/server/pm/UserManagerService;

.field public final mUserNeedsBadging:Lcom/android/server/pm/UserNeedsBadgingCache;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/pm/PreferredActivityHelper;Lcom/android/server/compat/PlatformCompat;Lcom/android/server/pm/UserManagerService;Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;Lcom/android/server/pm/UserNeedsBadgingCache;Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda41;Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda41;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/pm/ResolveIntentHelper;->mContext:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/pm/ResolveIntentHelper;->mPreferredActivityHelper:Lcom/android/server/pm/PreferredActivityHelper;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/pm/ResolveIntentHelper;->mPlatformCompat:Lcom/android/server/compat/PlatformCompat;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/server/pm/ResolveIntentHelper;->mUserManager:Lcom/android/server/pm/UserManagerService;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/android/server/pm/ResolveIntentHelper;->mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

    .line 13
    .line 14
    iput-object p6, p0, Lcom/android/server/pm/ResolveIntentHelper;->mUserNeedsBadging:Lcom/android/server/pm/UserNeedsBadgingCache;

    .line 15
    .line 16
    iput-object p7, p0, Lcom/android/server/pm/ResolveIntentHelper;->mResolveInfoSupplier:Ljava/util/function/Supplier;

    .line 17
    .line 18
    iput-object p8, p0, Lcom/android/server/pm/ResolveIntentHelper;->mInstantAppInstallerActivitySupplier:Ljava/util/function/Supplier;

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final applyPostContentProviderResolutionFilter(Lcom/android/server/pm/Computer;Ljava/util/List;Ljava/lang/String;II)V
    .locals 10

    .line 1
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    add-int/lit8 v0, v0, -0x1

    .line 6
    .line 7
    :goto_0
    if-ltz v0, :cond_7

    .line 8
    .line 9
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 14
    .line 15
    if-nez p3, :cond_0

    .line 16
    .line 17
    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    .line 18
    .line 19
    iget-object v2, v2, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    .line 20
    .line 21
    const/4 v3, 0x0

    .line 22
    invoke-interface {p1, v3, v2}, Lcom/android/server/pm/Computer;->getPackageStateInternal(ILjava/lang/String;)Lcom/android/server/pm/PackageSetting;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-interface {p1, v2, p5, p4}, Lcom/android/server/pm/Computer;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    if-nez v2, :cond_0

    .line 31
    .line 32
    goto/16 :goto_1

    .line 33
    .line 34
    :cond_0
    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    .line 35
    .line 36
    iget-object v2, v2, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 37
    .line 38
    invoke-virtual {v2}, Landroid/content/pm/ApplicationInfo;->isInstantApp()Z

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    if-eqz v2, :cond_4

    .line 43
    .line 44
    iget-object v3, v1, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    .line 45
    .line 46
    iget-object v3, v3, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    .line 47
    .line 48
    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result v3

    .line 52
    if-eqz v3, :cond_4

    .line 53
    .line 54
    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    .line 55
    .line 56
    iget-object v3, v2, Landroid/content/pm/ProviderInfo;->splitName:Ljava/lang/String;

    .line 57
    .line 58
    if-eqz v3, :cond_6

    .line 59
    .line 60
    iget-object v2, v2, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 61
    .line 62
    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->splitNames:[Ljava/lang/String;

    .line 63
    .line 64
    invoke-static {v2, v3}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result v2

    .line 68
    if-nez v2, :cond_6

    .line 69
    .line 70
    iget-object v2, p0, Lcom/android/server/pm/ResolveIntentHelper;->mInstantAppInstallerActivitySupplier:Ljava/util/function/Supplier;

    .line 71
    .line 72
    invoke-interface {v2}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    const-string v3, "PackageManager"

    .line 77
    .line 78
    if-nez v2, :cond_2

    .line 79
    .line 80
    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_INSTANT:Z

    .line 81
    .line 82
    if-eqz v1, :cond_1

    .line 83
    .line 84
    const-string v1, "No installer - not adding it to the ResolveInfo list"

    .line 85
    .line 86
    invoke-static {v3, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    .line 88
    .line 89
    :cond_1
    invoke-interface {p2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    goto :goto_1

    .line 93
    :cond_2
    sget-boolean v2, Lcom/android/server/pm/PackageManagerService;->DEBUG_INSTANT:Z

    .line 94
    .line 95
    if-eqz v2, :cond_3

    .line 96
    .line 97
    const-string v2, "Adding ephemeral installer to the ResolveInfo list"

    .line 98
    .line 99
    invoke-static {v3, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    .line 101
    .line 102
    :cond_3
    new-instance v2, Landroid/content/pm/ResolveInfo;

    .line 103
    .line 104
    invoke-interface {p1}, Lcom/android/server/pm/Computer;->getInstantAppInstallerInfo()Landroid/content/pm/ResolveInfo;

    .line 105
    .line 106
    .line 107
    move-result-object v3

    .line 108
    invoke-direct {v2, v3}, Landroid/content/pm/ResolveInfo;-><init>(Landroid/content/pm/ResolveInfo;)V

    .line 109
    .line 110
    .line 111
    new-instance v3, Landroid/content/pm/AuxiliaryResolveInfo;

    .line 112
    .line 113
    iget-object v4, v1, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    .line 114
    .line 115
    iget-object v6, v4, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    .line 116
    .line 117
    iget-object v5, v4, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 118
    .line 119
    iget-wide v7, v5, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    .line 120
    .line 121
    iget-object v9, v4, Landroid/content/pm/ProviderInfo;->splitName:Ljava/lang/String;

    .line 122
    .line 123
    const/4 v5, 0x0

    .line 124
    move-object v4, v3

    .line 125
    invoke-direct/range {v4 .. v9}, Landroid/content/pm/AuxiliaryResolveInfo;-><init>(Landroid/content/ComponentName;Ljava/lang/String;JLjava/lang/String;)V

    .line 126
    .line 127
    .line 128
    iput-object v3, v2, Landroid/content/pm/ResolveInfo;->auxiliaryInfo:Landroid/content/pm/AuxiliaryResolveInfo;

    .line 129
    .line 130
    new-instance v3, Landroid/content/IntentFilter;

    .line 131
    .line 132
    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 133
    .line 134
    .line 135
    iput-object v3, v2, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    .line 136
    .line 137
    invoke-virtual {v1}, Landroid/content/pm/ResolveInfo;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    .line 138
    .line 139
    .line 140
    move-result-object v1

    .line 141
    iget-object v1, v1, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    .line 142
    .line 143
    iput-object v1, v2, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    .line 144
    .line 145
    invoke-interface {p2, v0, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    goto :goto_1

    .line 149
    :cond_4
    if-nez v2, :cond_5

    .line 150
    .line 151
    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    .line 152
    .line 153
    iget v1, v1, Landroid/content/pm/ProviderInfo;->flags:I

    .line 154
    .line 155
    const/high16 v2, 0x100000

    .line 156
    .line 157
    and-int/2addr v1, v2

    .line 158
    if-eqz v1, :cond_5

    .line 159
    .line 160
    goto :goto_1

    .line 161
    :cond_5
    invoke-interface {p2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 162
    .line 163
    .line 164
    :cond_6
    :goto_1
    add-int/lit8 v0, v0, -0x1

    .line 165
    .line 166
    goto/16 :goto_0

    .line 167
    .line 168
    :cond_7
    return-void
.end method

.method public final chooseBestActivity(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;JJLjava/util/List;IZ)Landroid/content/pm/ResolveInfo;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v12, p8

    .line 4
    .line 5
    move/from16 v13, p9

    .line 6
    .line 7
    const/4 v14, 0x1

    .line 8
    if-eqz v12, :cond_1a

    .line 9
    .line 10
    invoke-interface/range {p8 .. p8}, Ljava/util/List;->size()I

    .line 11
    .line 12
    .line 13
    move-result v11

    .line 14
    invoke-static {}, Lcom/samsung/android/knox/custom/ProKioskManager;->getInstance()Lcom/samsung/android/knox/custom/ProKioskManager;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    const/4 v10, 0x0

    .line 19
    if-eqz v1, :cond_3

    .line 20
    .line 21
    const-string v2, "android.intent.category.HOME"

    .line 22
    .line 23
    move-object/from16 v9, p2

    .line 24
    .line 25
    invoke-virtual {v9, v2}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-eqz v2, :cond_3

    .line 30
    .line 31
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    if-nez v2, :cond_3

    .line 36
    .line 37
    if-lez v11, :cond_3

    .line 38
    .line 39
    invoke-virtual {v1}, Lcom/samsung/android/knox/custom/ProKioskManager;->getProKioskState()Z

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    if-eqz v2, :cond_3

    .line 44
    .line 45
    invoke-virtual {v1}, Lcom/samsung/android/knox/custom/ProKioskManager;->getHomeActivity()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    if-eqz v1, :cond_3

    .line 50
    .line 51
    invoke-interface/range {p8 .. p8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 56
    .line 57
    .line 58
    move-result v3

    .line 59
    if-eqz v3, :cond_1

    .line 60
    .line 61
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 66
    .line 67
    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 68
    .line 69
    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 70
    .line 71
    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 72
    .line 73
    .line 74
    move-result v4

    .line 75
    if-eqz v4, :cond_0

    .line 76
    .line 77
    return-object v3

    .line 78
    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getFlags()I

    .line 79
    .line 80
    .line 81
    move-result v1

    .line 82
    and-int/lit8 v1, v1, 0x8

    .line 83
    .line 84
    if-eqz v1, :cond_2

    .line 85
    .line 86
    move/from16 v16, v14

    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_2
    move/from16 v16, v10

    .line 90
    .line 91
    :goto_0
    const/4 v8, 0x0

    .line 92
    iget-object v1, v0, Lcom/android/server/pm/ResolveIntentHelper;->mPreferredActivityHelper:Lcom/android/server/pm/PreferredActivityHelper;

    .line 93
    .line 94
    const/4 v7, 0x1

    .line 95
    move-object/from16 v2, p2

    .line 96
    .line 97
    move-object/from16 v3, p3

    .line 98
    .line 99
    move-wide/from16 v4, p4

    .line 100
    .line 101
    move-object/from16 v6, p8

    .line 102
    .line 103
    move/from16 v9, v16

    .line 104
    .line 105
    move v15, v10

    .line 106
    move/from16 v10, p9

    .line 107
    .line 108
    move v15, v11

    .line 109
    move/from16 v11, p10

    .line 110
    .line 111
    invoke-virtual/range {v1 .. v11}, Lcom/android/server/pm/PreferredActivityHelper;->findPreferredActivityNotLocked(Landroid/content/Intent;Ljava/lang/String;JLjava/util/List;ZZZIZ)Landroid/content/pm/ResolveInfo;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    if-eqz v1, :cond_4

    .line 116
    .line 117
    return-object v1

    .line 118
    :cond_3
    move v15, v11

    .line 119
    :cond_4
    if-ne v15, v14, :cond_5

    .line 120
    .line 121
    const/4 v1, 0x0

    .line 122
    invoke-interface {v12, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 127
    .line 128
    return-object v0

    .line 129
    :cond_5
    const/4 v1, 0x0

    .line 130
    if-le v15, v14, :cond_1a

    .line 131
    .line 132
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getFlags()I

    .line 133
    .line 134
    .line 135
    move-result v2

    .line 136
    and-int/lit8 v2, v2, 0x8

    .line 137
    .line 138
    if-eqz v2, :cond_6

    .line 139
    .line 140
    move v9, v14

    .line 141
    goto :goto_1

    .line 142
    :cond_6
    move v9, v1

    .line 143
    :goto_1
    invoke-interface {v12, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    move-result-object v2

    .line 147
    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 148
    .line 149
    invoke-interface {v12, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    move-result-object v1

    .line 153
    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 154
    .line 155
    if-eqz v9, :cond_7

    .line 156
    .line 157
    new-instance v3, Ljava/lang/StringBuilder;

    .line 158
    .line 159
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 160
    .line 161
    .line 162
    iget-object v4, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 163
    .line 164
    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 165
    .line 166
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    const-string v4, "="

    .line 170
    .line 171
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    iget v5, v2, Landroid/content/pm/ResolveInfo;->priority:I

    .line 175
    .line 176
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    const-string v5, " vs "

    .line 180
    .line 181
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    iget-object v5, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 185
    .line 186
    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 187
    .line 188
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    .line 190
    .line 191
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    .line 193
    .line 194
    iget v4, v1, Landroid/content/pm/ResolveInfo;->priority:I

    .line 195
    .line 196
    const-string v5, "PackageManager"

    .line 197
    .line 198
    invoke-static {v3, v4, v5}, Lcom/android/server/alarm/GmsAlarmManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 199
    .line 200
    .line 201
    :cond_7
    iget v3, v2, Landroid/content/pm/ResolveInfo;->priority:I

    .line 202
    .line 203
    iget v4, v1, Landroid/content/pm/ResolveInfo;->priority:I

    .line 204
    .line 205
    if-ne v3, v4, :cond_8

    .line 206
    .line 207
    iget v3, v2, Landroid/content/pm/ResolveInfo;->preferredOrder:I

    .line 208
    .line 209
    iget v4, v1, Landroid/content/pm/ResolveInfo;->preferredOrder:I

    .line 210
    .line 211
    if-ne v3, v4, :cond_8

    .line 212
    .line 213
    iget-boolean v2, v2, Landroid/content/pm/ResolveInfo;->isDefault:Z

    .line 214
    .line 215
    iget-boolean v1, v1, Landroid/content/pm/ResolveInfo;->isDefault:Z

    .line 216
    .line 217
    if-eq v2, v1, :cond_9

    .line 218
    .line 219
    :cond_8
    const/4 v0, 0x0

    .line 220
    goto/16 :goto_8

    .line 221
    .line 222
    :cond_9
    const/4 v8, 0x0

    .line 223
    iget-object v1, v0, Lcom/android/server/pm/ResolveIntentHelper;->mPreferredActivityHelper:Lcom/android/server/pm/PreferredActivityHelper;

    .line 224
    .line 225
    const/4 v7, 0x1

    .line 226
    move-object/from16 v2, p2

    .line 227
    .line 228
    move-object/from16 v3, p3

    .line 229
    .line 230
    move-wide/from16 v4, p4

    .line 231
    .line 232
    move-object/from16 v6, p8

    .line 233
    .line 234
    move/from16 v10, p9

    .line 235
    .line 236
    move/from16 v11, p10

    .line 237
    .line 238
    invoke-virtual/range {v1 .. v11}, Lcom/android/server/pm/PreferredActivityHelper;->findPreferredActivityNotLocked(Landroid/content/Intent;Ljava/lang/String;JLjava/util/List;ZZZIZ)Landroid/content/pm/ResolveInfo;

    .line 239
    .line 240
    .line 241
    move-result-object v1

    .line 242
    if-eqz v1, :cond_a

    .line 243
    .line 244
    return-object v1

    .line 245
    :cond_a
    const/4 v1, 0x0

    .line 246
    const/4 v10, 0x0

    .line 247
    :goto_2
    if-ge v10, v15, :cond_e

    .line 248
    .line 249
    invoke-interface {v12, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 250
    .line 251
    .line 252
    move-result-object v2

    .line 253
    move-object v7, v2

    .line 254
    check-cast v7, Landroid/content/pm/ResolveInfo;

    .line 255
    .line 256
    iget-boolean v2, v7, Landroid/content/pm/ResolveInfo;->handleAllWebDataURI:Z

    .line 257
    .line 258
    if-eqz v2, :cond_b

    .line 259
    .line 260
    add-int/2addr v1, v14

    .line 261
    :cond_b
    move v8, v1

    .line 262
    iget-object v1, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 263
    .line 264
    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 265
    .line 266
    invoke-virtual {v1}, Landroid/content/pm/ApplicationInfo;->isInstantApp()Z

    .line 267
    .line 268
    .line 269
    move-result v1

    .line 270
    if-eqz v1, :cond_c

    .line 271
    .line 272
    iget-object v1, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 273
    .line 274
    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 275
    .line 276
    move-object/from16 v9, p1

    .line 277
    .line 278
    invoke-interface {v9, v1}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    .line 279
    .line 280
    .line 281
    move-result-object v2

    .line 282
    if-eqz v2, :cond_d

    .line 283
    .line 284
    sget-boolean v1, Lcom/android/server/pm/PackageManagerServiceUtils;->DEBUG:Z

    .line 285
    .line 286
    iget-object v1, v0, Lcom/android/server/pm/ResolveIntentHelper;->mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

    .line 287
    .line 288
    check-cast v1, Lcom/android/server/pm/verify/domain/DomainVerificationService;

    .line 289
    .line 290
    move-object/from16 v3, p2

    .line 291
    .line 292
    move-wide/from16 v4, p4

    .line 293
    .line 294
    move/from16 v6, p9

    .line 295
    .line 296
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->approvalLevelForDomain(Lcom/android/server/pm/pkg/PackageStateInternal;Landroid/content/Intent;JI)I

    .line 297
    .line 298
    .line 299
    move-result v1

    .line 300
    if-lez v1, :cond_d

    .line 301
    .line 302
    return-object v7

    .line 303
    :cond_c
    move-object/from16 v9, p1

    .line 304
    .line 305
    :cond_d
    add-int/2addr v10, v14

    .line 306
    move v1, v8

    .line 307
    goto :goto_2

    .line 308
    :cond_e
    const-wide/16 v2, 0x2

    .line 309
    .line 310
    and-long v2, p6, v2

    .line 311
    .line 312
    const-wide/16 v4, 0x0

    .line 313
    .line 314
    cmp-long v2, v2, v4

    .line 315
    .line 316
    if-eqz v2, :cond_f

    .line 317
    .line 318
    const/4 v2, 0x0

    .line 319
    return-object v2

    .line 320
    :cond_f
    new-instance v2, Landroid/content/pm/ResolveInfo;

    .line 321
    .line 322
    iget-object v3, v0, Lcom/android/server/pm/ResolveIntentHelper;->mResolveInfoSupplier:Ljava/util/function/Supplier;

    .line 323
    .line 324
    invoke-interface {v3}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 325
    .line 326
    .line 327
    move-result-object v3

    .line 328
    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 329
    .line 330
    invoke-direct {v2, v3}, Landroid/content/pm/ResolveInfo;-><init>(Landroid/content/pm/ResolveInfo;)V

    .line 331
    .line 332
    .line 333
    if-ne v1, v15, :cond_10

    .line 334
    .line 335
    move v10, v14

    .line 336
    goto :goto_3

    .line 337
    :cond_10
    const/4 v10, 0x0

    .line 338
    :goto_3
    iput-boolean v10, v2, Landroid/content/pm/ResolveInfo;->handleAllWebDataURI:Z

    .line 339
    .line 340
    new-instance v1, Landroid/content/pm/ActivityInfo;

    .line 341
    .line 342
    iget-object v3, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 343
    .line 344
    invoke-direct {v1, v3}, Landroid/content/pm/ActivityInfo;-><init>(Landroid/content/pm/ActivityInfo;)V

    .line 345
    .line 346
    .line 347
    iput-object v1, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 348
    .line 349
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 350
    .line 351
    .line 352
    move-result-object v3

    .line 353
    invoke-static {v3}, Lcom/android/internal/app/ResolverActivity;->getLabelRes(Ljava/lang/String;)I

    .line 354
    .line 355
    .line 356
    move-result v3

    .line 357
    iput v3, v1, Landroid/content/pm/ActivityInfo;->labelRes:I

    .line 358
    .line 359
    iget-object v1, v2, Landroid/content/pm/ResolveInfo;->userHandle:Landroid/os/UserHandle;

    .line 360
    .line 361
    if-nez v1, :cond_11

    .line 362
    .line 363
    invoke-static/range {p9 .. p9}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 364
    .line 365
    .line 366
    move-result-object v1

    .line 367
    iput-object v1, v2, Landroid/content/pm/ResolveInfo;->userHandle:Landroid/os/UserHandle;

    .line 368
    .line 369
    :cond_11
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    .line 370
    .line 371
    .line 372
    move-result-object v1

    .line 373
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 374
    .line 375
    .line 376
    move-result v3

    .line 377
    if-nez v3, :cond_17

    .line 378
    .line 379
    invoke-static/range {p8 .. p8}, Lcom/android/internal/util/ArrayUtils;->isEmpty(Ljava/util/Collection;)Z

    .line 380
    .line 381
    .line 382
    move-result v3

    .line 383
    if-eqz v3, :cond_12

    .line 384
    .line 385
    goto :goto_7

    .line 386
    :cond_12
    invoke-interface/range {p8 .. p8}, Ljava/util/List;->size()I

    .line 387
    .line 388
    .line 389
    move-result v3

    .line 390
    const/4 v10, 0x0

    .line 391
    :goto_4
    if-ge v10, v3, :cond_15

    .line 392
    .line 393
    invoke-interface {v12, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 394
    .line 395
    .line 396
    move-result-object v4

    .line 397
    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 398
    .line 399
    if-eqz v4, :cond_13

    .line 400
    .line 401
    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 402
    .line 403
    goto :goto_5

    .line 404
    :cond_13
    const/4 v4, 0x0

    .line 405
    :goto_5
    if-eqz v4, :cond_17

    .line 406
    .line 407
    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 408
    .line 409
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 410
    .line 411
    .line 412
    move-result v4

    .line 413
    if-nez v4, :cond_14

    .line 414
    .line 415
    goto :goto_7

    .line 416
    :cond_14
    add-int/2addr v10, v14

    .line 417
    goto :goto_4

    .line 418
    :cond_15
    const/4 v3, 0x0

    .line 419
    invoke-interface {v12, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 420
    .line 421
    .line 422
    move-result-object v3

    .line 423
    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 424
    .line 425
    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 426
    .line 427
    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 428
    .line 429
    iput-object v1, v2, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    .line 430
    .line 431
    iget-object v0, v0, Lcom/android/server/pm/ResolveIntentHelper;->mUserNeedsBadging:Lcom/android/server/pm/UserNeedsBadgingCache;

    .line 432
    .line 433
    invoke-virtual {v0, v13}, Lcom/android/server/pm/UserNeedsBadgingCache;->get(I)Z

    .line 434
    .line 435
    .line 436
    move-result v0

    .line 437
    if-eqz v0, :cond_16

    .line 438
    .line 439
    iput-boolean v14, v2, Landroid/content/pm/ResolveInfo;->noResourceId:Z

    .line 440
    .line 441
    goto :goto_6

    .line 442
    :cond_16
    iget v0, v3, Landroid/content/pm/ApplicationInfo;->icon:I

    .line 443
    .line 444
    iput v0, v2, Landroid/content/pm/ResolveInfo;->icon:I

    .line 445
    .line 446
    :goto_6
    iget v0, v3, Landroid/content/pm/ApplicationInfo;->icon:I

    .line 447
    .line 448
    iput v0, v2, Landroid/content/pm/ResolveInfo;->iconResourceId:I

    .line 449
    .line 450
    iget v0, v3, Landroid/content/pm/ApplicationInfo;->labelRes:I

    .line 451
    .line 452
    iput v0, v2, Landroid/content/pm/ResolveInfo;->labelRes:I

    .line 453
    .line 454
    :cond_17
    :goto_7
    iget-object v0, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 455
    .line 456
    new-instance v1, Landroid/content/pm/ApplicationInfo;

    .line 457
    .line 458
    iget-object v3, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 459
    .line 460
    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 461
    .line 462
    invoke-direct {v1, v3}, Landroid/content/pm/ApplicationInfo;-><init>(Landroid/content/pm/ApplicationInfo;)V

    .line 463
    .line 464
    .line 465
    iput-object v1, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 466
    .line 467
    if-eqz v13, :cond_18

    .line 468
    .line 469
    iget-object v0, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 470
    .line 471
    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 472
    .line 473
    iget v1, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 474
    .line 475
    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    .line 476
    .line 477
    .line 478
    move-result v1

    .line 479
    invoke-static {v13, v1}, Landroid/os/UserHandle;->getUid(II)I

    .line 480
    .line 481
    .line 482
    move-result v1

    .line 483
    iput v1, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 484
    .line 485
    :cond_18
    iget-object v0, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 486
    .line 487
    iget-object v1, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 488
    .line 489
    if-nez v1, :cond_19

    .line 490
    .line 491
    new-instance v1, Landroid/os/Bundle;

    .line 492
    .line 493
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 494
    .line 495
    .line 496
    iput-object v1, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 497
    .line 498
    :cond_19
    iget-object v0, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 499
    .line 500
    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 501
    .line 502
    const-string v1, "android.dock_home"

    .line 503
    .line 504
    invoke-virtual {v0, v1, v14}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 505
    .line 506
    .line 507
    return-object v2

    .line 508
    :goto_8
    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 509
    .line 510
    .line 511
    move-result-object v0

    .line 512
    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 513
    .line 514
    return-object v0

    .line 515
    :cond_1a
    const/4 v0, 0x0

    .line 516
    return-object v0
.end method

.method public final queryIntentReceiversInternal(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;JIIIZ)Ljava/util/List;
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v8, p1

    .line 4
    .line 5
    iget-object v1, v0, Lcom/android/server/pm/ResolveIntentHelper;->mUserManager:Lcom/android/server/pm/UserManagerService;

    .line 6
    .line 7
    iget-object v1, v1, Lcom/android/server/pm/UserManagerService;->mLocalService:Lcom/android/server/pm/UserManagerService$LocalService;

    .line 8
    .line 9
    move/from16 v2, p6

    .line 10
    .line 11
    invoke-virtual {v1, v2}, Lcom/android/server/pm/UserManagerService$LocalService;->exists(I)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    return-object v0

    .line 22
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    const-string v3, "com.sec.android.app.dictionary.SEARCH"

    .line 27
    .line 28
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-eqz v1, :cond_1

    .line 33
    .line 34
    invoke-static/range {p6 .. p6}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    if-eqz v1, :cond_1

    .line 39
    .line 40
    const/4 v10, 0x0

    .line 41
    goto :goto_0

    .line 42
    :cond_1
    move v10, v2

    .line 43
    :goto_0
    if-eqz p9, :cond_2

    .line 44
    .line 45
    const/16 v1, 0x3e8

    .line 46
    .line 47
    move v11, v1

    .line 48
    goto :goto_1

    .line 49
    :cond_2
    move/from16 v11, p7

    .line 50
    .line 51
    :goto_1
    const-string/jumbo v2, "query intent receivers"

    .line 52
    .line 53
    .line 54
    const/4 v5, 0x0

    .line 55
    const/4 v6, 0x0

    .line 56
    move-object/from16 v1, p1

    .line 57
    .line 58
    move v3, v11

    .line 59
    move v4, v10

    .line 60
    invoke-interface/range {v1 .. v6}, Lcom/android/server/pm/Computer;->enforceCrossUserPermission(Ljava/lang/String;IIZZ)V

    .line 61
    .line 62
    .line 63
    invoke-interface {v8, v11}, Lcom/android/server/pm/Computer;->getInstantAppPackageName(I)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v12

    .line 67
    const/4 v7, 0x0

    .line 68
    move-object/from16 v2, p2

    .line 69
    .line 70
    move-object/from16 v3, p3

    .line 71
    .line 72
    move-wide/from16 v4, p4

    .line 73
    .line 74
    move v6, v10

    .line 75
    invoke-interface/range {v1 .. v6}, Lcom/android/server/pm/Computer;->isImplicitImageCaptureIntentAndNotSetByDpc(Landroid/content/Intent;Ljava/lang/String;JI)Z

    .line 76
    .line 77
    .line 78
    move-result v13

    .line 79
    move v2, v10

    .line 80
    move v3, v11

    .line 81
    move v6, v7

    .line 82
    move v7, v13

    .line 83
    invoke-interface/range {v1 .. v7}, Lcom/android/server/pm/Computer;->updateFlagsForResolve(IIJZZ)J

    .line 84
    .line 85
    .line 86
    move-result-wide v13

    .line 87
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    if-nez v1, :cond_3

    .line 92
    .line 93
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getSelector()Landroid/content/Intent;

    .line 94
    .line 95
    .line 96
    move-result-object v2

    .line 97
    if-eqz v2, :cond_3

    .line 98
    .line 99
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getSelector()Landroid/content/Intent;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 104
    .line 105
    .line 106
    move-result-object v2

    .line 107
    move-object/from16 v15, p2

    .line 108
    .line 109
    move-object/from16 v16, v1

    .line 110
    .line 111
    move-object v7, v2

    .line 112
    goto :goto_2

    .line 113
    :cond_3
    const/4 v2, 0x0

    .line 114
    move-object/from16 v16, p2

    .line 115
    .line 116
    move-object v7, v1

    .line 117
    move-object v15, v2

    .line 118
    :goto_2
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/Computer;->getComponentResolver()Lcom/android/server/pm/resolution/ComponentResolverApi;

    .line 119
    .line 120
    .line 121
    move-result-object v17

    .line 122
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 123
    .line 124
    .line 125
    move-result-object v18

    .line 126
    new-instance v6, Lcom/android/server/pm/SaferIntentUtils$IntentArgs;

    .line 127
    .line 128
    const/4 v2, 0x1

    .line 129
    move-object v1, v6

    .line 130
    move/from16 v3, p7

    .line 131
    .line 132
    move/from16 v4, p8

    .line 133
    .line 134
    move-object/from16 v5, v16

    .line 135
    .line 136
    move-object v9, v6

    .line 137
    move-object/from16 v6, p3

    .line 138
    .line 139
    move/from16 p6, v11

    .line 140
    .line 141
    move-object v11, v7

    .line 142
    move/from16 v7, p9

    .line 143
    .line 144
    invoke-direct/range {v1 .. v7}, Lcom/android/server/pm/SaferIntentUtils$IntentArgs;-><init>(ZIILandroid/content/Intent;Ljava/lang/String;Z)V

    .line 145
    .line 146
    .line 147
    iget-object v0, v0, Lcom/android/server/pm/ResolveIntentHelper;->mPlatformCompat:Lcom/android/server/compat/PlatformCompat;

    .line 148
    .line 149
    iput-object v0, v9, Lcom/android/server/pm/SaferIntentUtils$IntentArgs;->platformCompat:Lcom/android/server/compat/PlatformCompat;

    .line 150
    .line 151
    iput-object v8, v9, Lcom/android/server/pm/SaferIntentUtils$IntentArgs;->snapshot:Lcom/android/server/pm/Computer;

    .line 152
    .line 153
    if-eqz v11, :cond_10

    .line 154
    .line 155
    invoke-interface {v8, v11, v13, v14, v10}, Lcom/android/server/pm/Computer;->getReceiverInfo(Landroid/content/ComponentName;JI)Landroid/content/pm/ActivityInfo;

    .line 156
    .line 157
    .line 158
    move-result-object v0

    .line 159
    if-eqz v0, :cond_f

    .line 160
    .line 161
    const-wide/32 v1, 0x800000

    .line 162
    .line 163
    .line 164
    and-long/2addr v1, v13

    .line 165
    const-wide/16 v3, 0x0

    .line 166
    .line 167
    cmp-long v1, v1, v3

    .line 168
    .line 169
    const/4 v2, 0x1

    .line 170
    if-eqz v1, :cond_4

    .line 171
    .line 172
    move v1, v2

    .line 173
    goto :goto_3

    .line 174
    :cond_4
    const/4 v1, 0x0

    .line 175
    :goto_3
    const-wide/32 v5, 0x1000000

    .line 176
    .line 177
    .line 178
    and-long/2addr v5, v13

    .line 179
    cmp-long v5, v5, v3

    .line 180
    .line 181
    if-eqz v5, :cond_5

    .line 182
    .line 183
    move v5, v2

    .line 184
    goto :goto_4

    .line 185
    :cond_5
    const/4 v5, 0x0

    .line 186
    :goto_4
    const-wide/32 v6, 0x2000000

    .line 187
    .line 188
    .line 189
    and-long/2addr v6, v13

    .line 190
    cmp-long v3, v6, v3

    .line 191
    .line 192
    if-eqz v3, :cond_6

    .line 193
    .line 194
    move v3, v2

    .line 195
    goto :goto_5

    .line 196
    :cond_6
    const/4 v3, 0x0

    .line 197
    :goto_5
    if-eqz v12, :cond_7

    .line 198
    .line 199
    move v4, v2

    .line 200
    goto :goto_6

    .line 201
    :cond_7
    const/4 v4, 0x0

    .line 202
    :goto_6
    invoke-virtual {v11}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v6

    .line 206
    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 207
    .line 208
    .line 209
    move-result v6

    .line 210
    iget-object v7, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 211
    .line 212
    iget v7, v7, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    .line 213
    .line 214
    and-int/lit16 v7, v7, 0x80

    .line 215
    .line 216
    if-eqz v7, :cond_8

    .line 217
    .line 218
    move v7, v2

    .line 219
    goto :goto_7

    .line 220
    :cond_8
    const/4 v7, 0x0

    .line 221
    :goto_7
    iget v11, v0, Landroid/content/pm/ActivityInfo;->flags:I

    .line 222
    .line 223
    const/high16 v13, 0x100000

    .line 224
    .line 225
    and-int/2addr v13, v11

    .line 226
    if-eqz v13, :cond_9

    .line 227
    .line 228
    move v13, v2

    .line 229
    goto :goto_8

    .line 230
    :cond_9
    const/4 v13, 0x0

    .line 231
    :goto_8
    if-eqz v13, :cond_a

    .line 232
    .line 233
    const/high16 v14, 0x200000

    .line 234
    .line 235
    and-int/2addr v11, v14

    .line 236
    if-nez v11, :cond_a

    .line 237
    .line 238
    move v11, v2

    .line 239
    goto :goto_9

    .line 240
    :cond_a
    const/4 v11, 0x0

    .line 241
    :goto_9
    if-eqz v13, :cond_c

    .line 242
    .line 243
    if-eqz v3, :cond_b

    .line 244
    .line 245
    if-nez v11, :cond_b

    .line 246
    .line 247
    goto :goto_a

    .line 248
    :cond_b
    const/16 v19, 0x0

    .line 249
    .line 250
    goto :goto_b

    .line 251
    :cond_c
    :goto_a
    move/from16 v19, v2

    .line 252
    .line 253
    :goto_b
    if-nez v6, :cond_e

    .line 254
    .line 255
    if-nez v1, :cond_d

    .line 256
    .line 257
    if-nez v4, :cond_d

    .line 258
    .line 259
    if-nez v7, :cond_f

    .line 260
    .line 261
    :cond_d
    if-eqz v5, :cond_e

    .line 262
    .line 263
    if-eqz v4, :cond_e

    .line 264
    .line 265
    if-eqz v19, :cond_e

    .line 266
    .line 267
    goto :goto_c

    .line 268
    :cond_e
    new-instance v1, Landroid/content/pm/ResolveInfo;

    .line 269
    .line 270
    invoke-direct {v1}, Landroid/content/pm/ResolveInfo;-><init>()V

    .line 271
    .line 272
    .line 273
    iput-object v0, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 274
    .line 275
    new-instance v0, Ljava/util/ArrayList;

    .line 276
    .line 277
    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 278
    .line 279
    .line 280
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 281
    .line 282
    .line 283
    invoke-static {v9, v0}, Lcom/android/server/pm/SaferIntentUtils;->enforceIntentFilterMatching(Lcom/android/server/pm/SaferIntentUtils$IntentArgs;Ljava/util/List;)V

    .line 284
    .line 285
    .line 286
    move-object/from16 v18, v0

    .line 287
    .line 288
    :cond_f
    :goto_c
    move-object/from16 v0, v18

    .line 289
    .line 290
    goto :goto_e

    .line 291
    :cond_10
    invoke-virtual/range {v16 .. v16}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    .line 292
    .line 293
    .line 294
    move-result-object v7

    .line 295
    if-nez v7, :cond_11

    .line 296
    .line 297
    move-object/from16 v0, v17

    .line 298
    .line 299
    move-object/from16 v1, p1

    .line 300
    .line 301
    move-object/from16 v2, v16

    .line 302
    .line 303
    move-object/from16 v3, p3

    .line 304
    .line 305
    move-wide v4, v13

    .line 306
    move v6, v10

    .line 307
    invoke-interface/range {v0 .. v6}, Lcom/android/server/pm/resolution/ComponentResolverApi;->queryReceivers(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;JI)Ljava/util/List;

    .line 308
    .line 309
    .line 310
    move-result-object v0

    .line 311
    if-eqz v0, :cond_11

    .line 312
    .line 313
    move-object/from16 v18, v0

    .line 314
    .line 315
    :cond_11
    invoke-interface {v8, v7}, Lcom/android/server/pm/Computer;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/AndroidPackage;

    .line 316
    .line 317
    .line 318
    move-result-object v0

    .line 319
    if-eqz v0, :cond_12

    .line 320
    .line 321
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getReceivers()Ljava/util/List;

    .line 322
    .line 323
    .line 324
    move-result-object v6

    .line 325
    move-object/from16 v0, v17

    .line 326
    .line 327
    move-object/from16 v1, p1

    .line 328
    .line 329
    move-object/from16 v2, v16

    .line 330
    .line 331
    move-object/from16 v3, p3

    .line 332
    .line 333
    move-wide v4, v13

    .line 334
    move v7, v10

    .line 335
    invoke-interface/range {v0 .. v7}, Lcom/android/server/pm/resolution/ComponentResolverApi;->queryReceivers(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;JLjava/util/List;I)Ljava/util/List;

    .line 336
    .line 337
    .line 338
    move-result-object v0

    .line 339
    if-eqz v0, :cond_12

    .line 340
    .line 341
    goto :goto_d

    .line 342
    :cond_12
    move-object/from16 v0, v18

    .line 343
    .line 344
    :goto_d
    invoke-static {v9, v0}, Lcom/android/server/pm/SaferIntentUtils;->blockNullAction(Lcom/android/server/pm/SaferIntentUtils$IntentArgs;Ljava/util/List;)V

    .line 345
    .line 346
    .line 347
    :goto_e
    if-eqz v15, :cond_13

    .line 348
    .line 349
    iput-object v15, v9, Lcom/android/server/pm/SaferIntentUtils$IntentArgs;->intent:Landroid/content/Intent;

    .line 350
    .line 351
    invoke-static {v9, v0}, Lcom/android/server/pm/SaferIntentUtils;->enforceIntentFilterMatching(Lcom/android/server/pm/SaferIntentUtils$IntentArgs;Ljava/util/List;)V

    .line 352
    .line 353
    .line 354
    :cond_13
    const/4 v1, 0x0

    .line 355
    const/4 v2, 0x0

    .line 356
    move-object/from16 p0, p1

    .line 357
    .line 358
    move-object/from16 p1, v0

    .line 359
    .line 360
    move-object/from16 p2, v12

    .line 361
    .line 362
    move/from16 p3, v1

    .line 363
    .line 364
    move/from16 p4, p6

    .line 365
    .line 366
    move/from16 p5, v2

    .line 367
    .line 368
    move/from16 p6, v10

    .line 369
    .line 370
    move-object/from16 p7, v16

    .line 371
    .line 372
    invoke-interface/range {p0 .. p7}, Lcom/android/server/pm/Computer;->applyPostResolutionFilter(Ljava/util/List;Ljava/lang/String;ZIZILandroid/content/Intent;)Ljava/util/List;

    .line 373
    .line 374
    .line 375
    move-result-object v0

    .line 376
    return-object v0
.end method

.method public final resolveIntentInternal(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;JJIZII)Landroid/content/pm/ResolveInfo;
    .locals 27

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v11, p8

    .line 4
    .line 5
    const-string v8, "PackageManager"

    .line 6
    .line 7
    const-string v9, "Get preferred activity for NFC of user "

    .line 8
    .line 9
    const-string v10, "Resolving for NFC "

    .line 10
    .line 11
    const-wide/32 v12, 0x40000

    .line 12
    .line 13
    .line 14
    :try_start_0
    const-string/jumbo v1, "resolveIntent"

    .line 15
    .line 16
    .line 17
    invoke-static {v12, v13, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 18
    .line 19
    .line 20
    iget-object v1, v0, Lcom/android/server/pm/ResolveIntentHelper;->mUserManager:Lcom/android/server/pm/UserManagerService;

    .line 21
    .line 22
    iget-object v1, v1, Lcom/android/server/pm/UserManagerService;->mLocalService:Lcom/android/server/pm/UserManagerService$LocalService;

    .line 23
    .line 24
    invoke-virtual {v1, v11}, Lcom/android/server/pm/UserManagerService$LocalService;->exists(I)Z

    .line 25
    .line 26
    .line 27
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    const/4 v14, 0x0

    .line 29
    if-nez v1, :cond_0

    .line 30
    .line 31
    invoke-static {v12, v13}, Landroid/os/Trace;->traceEnd(J)V

    .line 32
    .line 33
    .line 34
    return-object v14

    .line 35
    :cond_0
    :try_start_1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 36
    .line 37
    .line 38
    move-result v15

    .line 39
    move-object/from16 v1, p1

    .line 40
    .line 41
    move-object/from16 v2, p2

    .line 42
    .line 43
    move-object/from16 v3, p3

    .line 44
    .line 45
    move-wide/from16 v4, p4

    .line 46
    .line 47
    move/from16 v6, p8

    .line 48
    .line 49
    invoke-interface/range {v1 .. v6}, Lcom/android/server/pm/Computer;->isImplicitImageCaptureIntentAndNotSetByDpc(Landroid/content/Intent;Ljava/lang/String;JI)Z

    .line 50
    .line 51
    .line 52
    move-result v7

    .line 53
    move-object/from16 v1, p1

    .line 54
    .line 55
    move/from16 v2, p8

    .line 56
    .line 57
    move/from16 v3, p10

    .line 58
    .line 59
    move-wide/from16 v4, p4

    .line 60
    .line 61
    move/from16 v6, p9

    .line 62
    .line 63
    invoke-interface/range {v1 .. v7}, Lcom/android/server/pm/Computer;->updateFlagsForResolve(IIJZZ)J

    .line 64
    .line 65
    .line 66
    move-result-wide v6

    .line 67
    const-string/jumbo v2, "resolve intent"

    .line 68
    .line 69
    .line 70
    const/4 v5, 0x0

    .line 71
    const/16 v16, 0x0

    .line 72
    .line 73
    move-object/from16 v1, p1

    .line 74
    .line 75
    move v3, v15

    .line 76
    move/from16 v4, p8

    .line 77
    .line 78
    move-wide v14, v6

    .line 79
    move/from16 v6, v16

    .line 80
    .line 81
    invoke-interface/range {v1 .. v6}, Lcom/android/server/pm/Computer;->enforceCrossUserPermission(Ljava/lang/String;IIZZ)V

    .line 82
    .line 83
    .line 84
    sget-object v1, Lcom/android/server/pm/PersonaServiceHelper;->ALLOWED_BLUETOOTH_TARGET:Ljava/util/List;

    .line 85
    .line 86
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 87
    .line 88
    .line 89
    move-result v1

    .line 90
    const/16 v2, 0x403

    .line 91
    .line 92
    const/16 v16, 0x0

    .line 93
    .line 94
    const/16 v17, 0x1

    .line 95
    .line 96
    if-ne v1, v2, :cond_1

    .line 97
    .line 98
    move/from16 v1, v17

    .line 99
    .line 100
    goto :goto_0

    .line 101
    :cond_1
    move/from16 v1, v16

    .line 102
    .line 103
    :goto_0
    const/16 v7, 0x2710

    .line 104
    .line 105
    const-wide/16 v18, 0x0

    .line 106
    .line 107
    if-eqz v1, :cond_5

    .line 108
    .line 109
    new-instance v1, Ljava/lang/StringBuilder;

    .line 110
    .line 111
    invoke-direct {v1, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    move-object/from16 v10, p2

    .line 115
    .line 116
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    const-string v2, " flag "

    .line 120
    .line 121
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v1, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    const-string v2, " user "

    .line 128
    .line 129
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v1

    .line 139
    invoke-static {v8, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    .line 141
    .line 142
    const-wide/32 v1, 0x20000

    .line 143
    .line 144
    .line 145
    and-long/2addr v1, v14

    .line 146
    cmp-long v1, v1, v18

    .line 147
    .line 148
    if-eqz v1, :cond_6

    .line 149
    .line 150
    new-instance v1, Ljava/lang/StringBuilder;

    .line 151
    .line 152
    invoke-direct {v1, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v1

    .line 162
    invoke-static {v8, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    .line 164
    .line 165
    iget-object v6, v0, Lcom/android/server/pm/ResolveIntentHelper;->mPreferredActivityHelper:Lcom/android/server/pm/PreferredActivityHelper;

    .line 166
    .line 167
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    .line 168
    .line 169
    .line 170
    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 171
    move-object/from16 v1, p2

    .line 172
    .line 173
    move-object/from16 v2, p3

    .line 174
    .line 175
    move-wide v3, v14

    .line 176
    move/from16 v5, p8

    .line 177
    .line 178
    :try_start_2
    invoke-interface/range {v0 .. v5}, Landroid/content/pm/IPackageManager;->queryIntentActivities(Landroid/content/Intent;Ljava/lang/String;JI)Landroid/content/pm/ParceledListSlice;

    .line 179
    .line 180
    .line 181
    move-result-object v0

    .line 182
    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    .line 183
    .line 184
    .line 185
    move-result-object v0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 186
    move-object v5, v0

    .line 187
    goto :goto_1

    .line 188
    :catch_0
    move-exception v0

    .line 189
    :try_start_3
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 190
    .line 191
    .line 192
    const/4 v5, 0x0

    .line 193
    :goto_1
    if-eqz v5, :cond_4

    .line 194
    .line 195
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    .line 196
    .line 197
    .line 198
    move-result v0

    .line 199
    if-eqz v0, :cond_2

    .line 200
    .line 201
    goto :goto_2

    .line 202
    :cond_2
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 203
    .line 204
    .line 205
    move-result v0

    .line 206
    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    .line 207
    .line 208
    .line 209
    move-result v0

    .line 210
    if-lt v0, v7, :cond_3

    .line 211
    .line 212
    move/from16 v16, v17

    .line 213
    .line 214
    :cond_3
    const/4 v8, 0x1

    .line 215
    const/4 v7, 0x1

    .line 216
    const/4 v9, 0x0

    .line 217
    move-object v0, v6

    .line 218
    move-object/from16 v1, p2

    .line 219
    .line 220
    move-object/from16 v2, p3

    .line 221
    .line 222
    move-wide v3, v14

    .line 223
    move v6, v7

    .line 224
    move v7, v9

    .line 225
    move/from16 v9, p8

    .line 226
    .line 227
    move/from16 v10, v16

    .line 228
    .line 229
    invoke-virtual/range {v0 .. v10}, Lcom/android/server/pm/PreferredActivityHelper;->findPreferredActivityNotLocked(Landroid/content/Intent;Ljava/lang/String;JLjava/util/List;ZZZIZ)Landroid/content/pm/ResolveInfo;

    .line 230
    .line 231
    .line 232
    move-result-object v14
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 233
    goto :goto_3

    .line 234
    :cond_4
    :goto_2
    const/4 v14, 0x0

    .line 235
    :goto_3
    invoke-static {v12, v13}, Landroid/os/Trace;->traceEnd(J)V

    .line 236
    .line 237
    .line 238
    return-object v14

    .line 239
    :catchall_0
    move-exception v0

    .line 240
    goto/16 :goto_4

    .line 241
    .line 242
    :cond_5
    move-object/from16 v10, p2

    .line 243
    .line 244
    :cond_6
    :try_start_4
    const-string/jumbo v1, "queryIntentActivities"

    .line 245
    .line 246
    .line 247
    invoke-static {v12, v13, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 248
    .line 249
    .line 250
    const/16 v20, 0x1

    .line 251
    .line 252
    move-object/from16 v1, p1

    .line 253
    .line 254
    move-object/from16 v2, p2

    .line 255
    .line 256
    move-object/from16 v3, p3

    .line 257
    .line 258
    move-wide v4, v14

    .line 259
    move/from16 v6, p10

    .line 260
    .line 261
    move v9, v7

    .line 262
    move/from16 v7, p11

    .line 263
    .line 264
    move/from16 v8, p8

    .line 265
    .line 266
    move/from16 v9, p9

    .line 267
    .line 268
    move/from16 v10, v20

    .line 269
    .line 270
    invoke-interface/range {v1 .. v10}, Lcom/android/server/pm/Computer;->queryIntentActivitiesInternal(Landroid/content/Intent;Ljava/lang/String;JIIIZZ)Ljava/util/List;

    .line 271
    .line 272
    .line 273
    move-result-object v9

    .line 274
    invoke-static {v12, v13}, Landroid/os/Trace;->traceEnd(J)V

    .line 275
    .line 276
    .line 277
    if-eqz p9, :cond_7

    .line 278
    .line 279
    new-instance v1, Lcom/android/server/pm/SaferIntentUtils$IntentArgs;

    .line 280
    .line 281
    const/16 v21, 0x0

    .line 282
    .line 283
    const/16 v26, 0x1

    .line 284
    .line 285
    move-object/from16 v20, v1

    .line 286
    .line 287
    move/from16 v22, p10

    .line 288
    .line 289
    move/from16 v23, p11

    .line 290
    .line 291
    move-object/from16 v24, p2

    .line 292
    .line 293
    move-object/from16 v25, p3

    .line 294
    .line 295
    invoke-direct/range {v20 .. v26}, Lcom/android/server/pm/SaferIntentUtils$IntentArgs;-><init>(ZIILandroid/content/Intent;Ljava/lang/String;Z)V

    .line 296
    .line 297
    .line 298
    iget-object v2, v0, Lcom/android/server/pm/ResolveIntentHelper;->mPlatformCompat:Lcom/android/server/compat/PlatformCompat;

    .line 299
    .line 300
    iput-object v2, v1, Lcom/android/server/pm/SaferIntentUtils$IntentArgs;->platformCompat:Lcom/android/server/compat/PlatformCompat;

    .line 301
    .line 302
    invoke-static {v1, v9}, Lcom/android/server/pm/SaferIntentUtils;->filterNonExportedComponents(Lcom/android/server/pm/SaferIntentUtils$IntentArgs;Ljava/util/List;)V

    .line 303
    .line 304
    .line 305
    :cond_7
    invoke-static/range {p10 .. p10}, Landroid/os/UserHandle;->getAppId(I)I

    .line 306
    .line 307
    .line 308
    move-result v1

    .line 309
    const/16 v2, 0x2710

    .line 310
    .line 311
    if-lt v1, v2, :cond_8

    .line 312
    .line 313
    if-nez p9, :cond_8

    .line 314
    .line 315
    move/from16 v16, v17

    .line 316
    .line 317
    :cond_8
    move-object/from16 v1, p0

    .line 318
    .line 319
    move-object/from16 v2, p1

    .line 320
    .line 321
    move-object/from16 v3, p2

    .line 322
    .line 323
    move-object/from16 v4, p3

    .line 324
    .line 325
    move-wide v5, v14

    .line 326
    move-wide/from16 v7, p6

    .line 327
    .line 328
    move/from16 v10, p8

    .line 329
    .line 330
    move/from16 v11, v16

    .line 331
    .line 332
    invoke-virtual/range {v1 .. v11}, Lcom/android/server/pm/ResolveIntentHelper;->chooseBestActivity(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;JJLjava/util/List;IZ)Landroid/content/pm/ResolveInfo;

    .line 333
    .line 334
    .line 335
    move-result-object v0

    .line 336
    const-wide/16 v1, 0x1

    .line 337
    .line 338
    and-long v1, p6, v1

    .line 339
    .line 340
    cmp-long v1, v1, v18

    .line 341
    .line 342
    if-eqz v1, :cond_9

    .line 343
    .line 344
    if-eqz v0, :cond_9

    .line 345
    .line 346
    iget-boolean v1, v0, Landroid/content/pm/ResolveInfo;->handleAllWebDataURI:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 347
    .line 348
    if-eqz v1, :cond_9

    .line 349
    .line 350
    invoke-static {v12, v13}, Landroid/os/Trace;->traceEnd(J)V

    .line 351
    .line 352
    .line 353
    const/4 v1, 0x0

    .line 354
    return-object v1

    .line 355
    :cond_9
    invoke-static {v12, v13}, Landroid/os/Trace;->traceEnd(J)V

    .line 356
    .line 357
    .line 358
    return-object v0

    .line 359
    :goto_4
    invoke-static {v12, v13}, Landroid/os/Trace;->traceEnd(J)V

    .line 360
    .line 361
    .line 362
    throw v0
.end method

.method public final resolveServiceInternal(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;JIIIZ)Landroid/content/pm/ResolveInfo;
    .locals 11

    .line 1
    move-object v0, p0

    .line 2
    iget-object v0, v0, Lcom/android/server/pm/ResolveIntentHelper;->mUserManager:Lcom/android/server/pm/UserManagerService;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/android/server/pm/UserManagerService;->mLocalService:Lcom/android/server/pm/UserManagerService$LocalService;

    .line 5
    .line 6
    move/from16 v8, p6

    .line 7
    .line 8
    invoke-virtual {v0, v8}, Lcom/android/server/pm/UserManagerService$LocalService;->exists(I)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const/4 v10, 0x0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    return-object v10

    .line 16
    :cond_0
    const/4 v6, 0x0

    .line 17
    const/4 v7, 0x0

    .line 18
    move-object v1, p1

    .line 19
    move/from16 v2, p6

    .line 20
    .line 21
    move/from16 v3, p7

    .line 22
    .line 23
    move-wide v4, p4

    .line 24
    invoke-interface/range {v1 .. v7}, Lcom/android/server/pm/Computer;->updateFlagsForResolve(IIJZZ)J

    .line 25
    .line 26
    .line 27
    move-result-wide v4

    .line 28
    move-object v2, p2

    .line 29
    move-object v3, p3

    .line 30
    move/from16 v6, p6

    .line 31
    .line 32
    move/from16 v7, p7

    .line 33
    .line 34
    move/from16 v8, p8

    .line 35
    .line 36
    move/from16 v9, p9

    .line 37
    .line 38
    invoke-interface/range {v1 .. v9}, Lcom/android/server/pm/Computer;->queryIntentServicesInternal(Landroid/content/Intent;Ljava/lang/String;JIIIZ)Ljava/util/List;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    if-eqz v0, :cond_1

    .line 43
    .line 44
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    const/4 v2, 0x1

    .line 49
    if-lt v1, v2, :cond_1

    .line 50
    .line 51
    const/4 v1, 0x0

    .line 52
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 57
    .line 58
    return-object v0

    .line 59
    :cond_1
    return-object v10
.end method
