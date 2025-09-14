.class public final Lcom/android/server/pm/resolution/ComponentResolver;
.super Lcom/android/server/pm/resolution/ComponentResolverLocked;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/utils/Snappable;


# static fields
.field public static final PROTECTED_ACTIONS:Ljava/util/Set;

.field public static final RESOLVE_PRIORITY_SORTER:Lcom/android/server/pm/resolution/ComponentResolver$$ExternalSyntheticLambda0;


# instance fields
.field public mDeferProtectedFilters:Z

.field public mProtectedFilters:Ljava/util/List;

.field public final mSnapshot:Lcom/android/server/pm/resolution/ComponentResolver$1;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroid/util/ArraySet;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/android/server/pm/resolution/ComponentResolver;->PROTECTED_ACTIONS:Ljava/util/Set;

    .line 7
    .line 8
    const-string v1, "android.intent.action.SEND"

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    const-string v1, "android.intent.action.SENDTO"

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    const-string v1, "android.intent.action.SEND_MULTIPLE"

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    const-string v1, "android.intent.action.VIEW"

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    new-instance v0, Lcom/android/server/pm/resolution/ComponentResolver$$ExternalSyntheticLambda0;

    .line 29
    .line 30
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 31
    .line 32
    .line 33
    sput-object v0, Lcom/android/server/pm/resolution/ComponentResolver;->RESOLVE_PRIORITY_SORTER:Lcom/android/server/pm/resolution/ComponentResolver$$ExternalSyntheticLambda0;

    .line 34
    .line 35
    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/UserManagerService;Lcom/android/server/pm/UserNeedsBadgingCache;)V
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Lcom/android/server/pm/resolution/ComponentResolverLocked;-><init>(Lcom/android/server/pm/UserManagerService;)V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/android/server/pm/resolution/ComponentResolver;->mDeferProtectedFilters:Z

    .line 6
    .line 7
    new-instance v1, Lcom/android/server/pm/resolution/ComponentResolver$ActivityIntentResolver;

    .line 8
    .line 9
    invoke-direct {v1, p1, p2}, Lcom/android/server/pm/resolution/ComponentResolver$ActivityIntentResolver;-><init>(Lcom/android/server/pm/UserManagerService;Lcom/android/server/pm/UserNeedsBadgingCache;)V

    .line 10
    .line 11
    .line 12
    iput-object v1, p0, Lcom/android/server/pm/resolution/ComponentResolverBase;->mActivities:Lcom/android/server/pm/resolution/ComponentResolver$ActivityIntentResolver;

    .line 13
    .line 14
    new-instance v1, Lcom/android/server/pm/resolution/ComponentResolver$ServiceIntentResolver;

    .line 15
    .line 16
    const/4 v2, 0x1

    .line 17
    invoke-direct {v1, p1, v2}, Lcom/android/server/pm/resolution/ComponentResolver$ServiceIntentResolver;-><init>(Lcom/android/server/pm/UserManagerService;I)V

    .line 18
    .line 19
    .line 20
    iput-object v1, p0, Lcom/android/server/pm/resolution/ComponentResolverBase;->mProviders:Lcom/android/server/pm/resolution/ComponentResolver$ServiceIntentResolver;

    .line 21
    .line 22
    new-instance v1, Lcom/android/server/pm/resolution/ComponentResolver$ReceiverIntentResolver;

    .line 23
    .line 24
    invoke-direct {v1, p1, p2}, Lcom/android/server/pm/resolution/ComponentResolver$ActivityIntentResolver;-><init>(Lcom/android/server/pm/UserManagerService;Lcom/android/server/pm/UserNeedsBadgingCache;)V

    .line 25
    .line 26
    .line 27
    iput-object v1, p0, Lcom/android/server/pm/resolution/ComponentResolverBase;->mReceivers:Lcom/android/server/pm/resolution/ComponentResolver$ReceiverIntentResolver;

    .line 28
    .line 29
    new-instance v1, Lcom/android/server/pm/resolution/ComponentResolver$ServiceIntentResolver;

    .line 30
    .line 31
    const/4 v2, 0x0

    .line 32
    invoke-direct {v1, p1, v2}, Lcom/android/server/pm/resolution/ComponentResolver$ServiceIntentResolver;-><init>(Lcom/android/server/pm/UserManagerService;I)V

    .line 33
    .line 34
    .line 35
    iput-object v1, p0, Lcom/android/server/pm/resolution/ComponentResolverBase;->mServices:Lcom/android/server/pm/resolution/ComponentResolver$ServiceIntentResolver;

    .line 36
    .line 37
    new-instance p1, Landroid/util/ArrayMap;

    .line 38
    .line 39
    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    .line 40
    .line 41
    .line 42
    iput-object p1, p0, Lcom/android/server/pm/resolution/ComponentResolverBase;->mProvidersByAuthority:Landroid/util/ArrayMap;

    .line 43
    .line 44
    iput-boolean v0, p0, Lcom/android/server/pm/resolution/ComponentResolver;->mDeferProtectedFilters:Z

    .line 45
    .line 46
    new-instance p1, Lcom/android/server/pm/resolution/ComponentResolver$1;

    .line 47
    .line 48
    invoke-direct {p1, p0, p0, p0, p2}, Lcom/android/server/pm/resolution/ComponentResolver$1;-><init>(Lcom/android/server/pm/resolution/ComponentResolver;Lcom/android/server/pm/resolution/ComponentResolverApi;Lcom/android/server/utils/Watchable;Lcom/android/server/pm/UserNeedsBadgingCache;)V

    .line 49
    .line 50
    .line 51
    iput-object p1, p0, Lcom/android/server/pm/resolution/ComponentResolver;->mSnapshot:Lcom/android/server/pm/resolution/ComponentResolver$1;

    .line 52
    .line 53
    return-void
.end method

.method public static getIntentListSubset(Ljava/util/List;Ljava/util/function/Function;Ljava/util/Iterator;)V
    .locals 4

    .line 1
    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_4

    .line 6
    .line 7
    move-object v0, p0

    .line 8
    check-cast v0, Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-nez v1, :cond_1

    .line 15
    .line 16
    goto :goto_1

    .line 17
    :cond_1
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-eqz v2, :cond_0

    .line 30
    .line 31
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    check-cast v2, Lcom/android/internal/pm/pkg/component/ParsedIntentInfo;

    .line 36
    .line 37
    invoke-interface {v2}, Lcom/android/internal/pm/pkg/component/ParsedIntentInfo;->getIntentFilter()Landroid/content/IntentFilter;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    invoke-interface {p1, v2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    check-cast v2, Ljava/util/Iterator;

    .line 46
    .line 47
    :cond_2
    if-eqz v2, :cond_3

    .line 48
    .line 49
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 50
    .line 51
    .line 52
    move-result v3

    .line 53
    if-eqz v3, :cond_3

    .line 54
    .line 55
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    if-eqz v3, :cond_2

    .line 60
    .line 61
    invoke-virtual {v3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result v3

    .line 65
    if-eqz v3, :cond_2

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 69
    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_4
    :goto_1
    return-void
.end method


# virtual methods
.method public final addAllComponents(Lcom/android/server/pm/pkg/AndroidPackage;ZLjava/lang/String;Lcom/android/server/pm/Computer;)V
    .locals 11

    .line 1
    const/4 p2, 0x0

    .line 2
    const/4 v0, 0x1

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 6
    .line 7
    .line 8
    iget-object v2, p0, Lcom/android/server/pm/resolution/ComponentResolverLocked;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 9
    .line 10
    sget-boolean v3, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 11
    .line 12
    monitor-enter v2

    .line 13
    :try_start_0
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getActivities()Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    invoke-static {v3}, Lcom/android/internal/util/ArrayUtils;->size(Ljava/util/Collection;)I

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    move v4, p2

    .line 22
    :goto_0
    if-ge v4, v3, :cond_0

    .line 23
    .line 24
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getActivities()Ljava/util/List;

    .line 25
    .line 26
    .line 27
    move-result-object v5

    .line 28
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v5

    .line 32
    check-cast v5, Lcom/android/internal/pm/pkg/component/ParsedActivity;

    .line 33
    .line 34
    iget-object v6, p0, Lcom/android/server/pm/resolution/ComponentResolverBase;->mActivities:Lcom/android/server/pm/resolution/ComponentResolver$ActivityIntentResolver;

    .line 35
    .line 36
    const-string v7, "activity"

    .line 37
    .line 38
    invoke-virtual {v6, p4, v5, v7, v1}, Lcom/android/server/pm/resolution/ComponentResolver$ActivityIntentResolver;->addActivity(Lcom/android/server/pm/Computer;Lcom/android/internal/pm/pkg/component/ParsedActivity;Ljava/lang/String;Ljava/util/List;)V

    .line 39
    .line 40
    .line 41
    add-int/2addr v4, v0

    .line 42
    goto :goto_0

    .line 43
    :cond_0
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getReceivers()Ljava/util/List;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    invoke-static {v3}, Lcom/android/internal/util/ArrayUtils;->size(Ljava/util/Collection;)I

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    move v4, p2

    .line 52
    :goto_1
    const/4 v5, 0x0

    .line 53
    if-ge v4, v3, :cond_1

    .line 54
    .line 55
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getReceivers()Ljava/util/List;

    .line 56
    .line 57
    .line 58
    move-result-object v6

    .line 59
    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v6

    .line 63
    check-cast v6, Lcom/android/internal/pm/pkg/component/ParsedActivity;

    .line 64
    .line 65
    iget-object v7, p0, Lcom/android/server/pm/resolution/ComponentResolverBase;->mReceivers:Lcom/android/server/pm/resolution/ComponentResolver$ReceiverIntentResolver;

    .line 66
    .line 67
    const-string/jumbo v8, "receiver"

    .line 68
    .line 69
    .line 70
    invoke-virtual {v7, p4, v6, v8, v5}, Lcom/android/server/pm/resolution/ComponentResolver$ActivityIntentResolver;->addActivity(Lcom/android/server/pm/Computer;Lcom/android/internal/pm/pkg/component/ParsedActivity;Ljava/lang/String;Ljava/util/List;)V

    .line 71
    .line 72
    .line 73
    add-int/2addr v4, v0

    .line 74
    goto :goto_1

    .line 75
    :cond_1
    invoke-virtual {p0, p4, p1}, Lcom/android/server/pm/resolution/ComponentResolver;->addProvidersLocked(Lcom/android/server/pm/Computer;Lcom/android/server/pm/pkg/AndroidPackage;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p0, p4, p1}, Lcom/android/server/pm/resolution/ComponentResolver;->addServicesLocked(Lcom/android/server/pm/Computer;Lcom/android/server/pm/pkg/AndroidPackage;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {p0, p0}, Lcom/android/server/utils/WatchableImpl;->dispatchChange(Lcom/android/server/utils/Watchable;)V

    .line 82
    .line 83
    .line 84
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    sget-boolean p1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 86
    .line 87
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 88
    .line 89
    .line 90
    move-result p1

    .line 91
    sub-int/2addr p1, v0

    .line 92
    :goto_2
    if-ltz p1, :cond_18

    .line 93
    .line 94
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v2

    .line 98
    check-cast v2, Landroid/util/Pair;

    .line 99
    .line 100
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 101
    .line 102
    check-cast v3, Lcom/android/internal/pm/pkg/component/ParsedActivity;

    .line 103
    .line 104
    invoke-interface {v3}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getPackageName()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v3

    .line 108
    invoke-interface {p4, v3}, Lcom/android/server/pm/Computer;->getDisabledSystemPackage(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    .line 109
    .line 110
    .line 111
    move-result-object v3

    .line 112
    if-nez v3, :cond_2

    .line 113
    .line 114
    move-object v3, v5

    .line 115
    goto :goto_3

    .line 116
    :cond_2
    iget-object v3, v3, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    .line 117
    .line 118
    :goto_3
    if-eqz v3, :cond_3

    .line 119
    .line 120
    invoke-interface {v3}, Lcom/android/server/pm/pkg/AndroidPackage;->getActivities()Ljava/util/List;

    .line 121
    .line 122
    .line 123
    move-result-object v3

    .line 124
    goto :goto_4

    .line 125
    :cond_3
    move-object v3, v5

    .line 126
    :goto_4
    iget-object v4, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 127
    .line 128
    check-cast v4, Lcom/android/internal/pm/pkg/component/ParsedActivity;

    .line 129
    .line 130
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 131
    .line 132
    check-cast v2, Lcom/android/internal/pm/pkg/component/ParsedIntentInfo;

    .line 133
    .line 134
    invoke-interface {v2}, Lcom/android/internal/pm/pkg/component/ParsedIntentInfo;->getIntentFilter()Landroid/content/IntentFilter;

    .line 135
    .line 136
    .line 137
    move-result-object v6

    .line 138
    invoke-virtual {v6}, Landroid/content/IntentFilter;->getPriority()I

    .line 139
    .line 140
    .line 141
    move-result v7

    .line 142
    if-gtz v7, :cond_4

    .line 143
    .line 144
    goto/16 :goto_7

    .line 145
    .line 146
    :cond_4
    invoke-interface {v4}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getPackageName()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v7

    .line 150
    invoke-interface {p4, v7}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    .line 151
    .line 152
    .line 153
    move-result-object v8

    .line 154
    invoke-virtual {v8}, Lcom/android/server/pm/PackageSetting;->isPrivileged()Z

    .line 155
    .line 156
    .line 157
    move-result v8

    .line 158
    invoke-interface {v4}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getClassName()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    if-nez v8, :cond_5

    .line 162
    .line 163
    invoke-virtual {v6, p2}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 164
    .line 165
    .line 166
    goto/16 :goto_7

    .line 167
    .line 168
    :cond_5
    invoke-virtual {v6}, Landroid/content/IntentFilter;->actionsIterator()Ljava/util/Iterator;

    .line 169
    .line 170
    .line 171
    move-result-object v8

    .line 172
    :cond_6
    if-eqz v8, :cond_a

    .line 173
    .line 174
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 175
    .line 176
    .line 177
    move-result v9

    .line 178
    if-eqz v9, :cond_a

    .line 179
    .line 180
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 181
    .line 182
    .line 183
    move-result-object v9

    .line 184
    check-cast v9, Ljava/lang/String;

    .line 185
    .line 186
    sget-object v10, Lcom/android/server/pm/resolution/ComponentResolver;->PROTECTED_ACTIONS:Ljava/util/Set;

    .line 187
    .line 188
    check-cast v10, Landroid/util/ArraySet;

    .line 189
    .line 190
    invoke-virtual {v10, v9}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 191
    .line 192
    .line 193
    move-result v9

    .line 194
    if-eqz v9, :cond_6

    .line 195
    .line 196
    iget-boolean v3, p0, Lcom/android/server/pm/resolution/ComponentResolver;->mDeferProtectedFilters:Z

    .line 197
    .line 198
    if-eqz v3, :cond_8

    .line 199
    .line 200
    iget-object v3, p0, Lcom/android/server/pm/resolution/ComponentResolver;->mProtectedFilters:Ljava/util/List;

    .line 201
    .line 202
    if-nez v3, :cond_7

    .line 203
    .line 204
    new-instance v3, Ljava/util/ArrayList;

    .line 205
    .line 206
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 207
    .line 208
    .line 209
    iput-object v3, p0, Lcom/android/server/pm/resolution/ComponentResolver;->mProtectedFilters:Ljava/util/List;

    .line 210
    .line 211
    :cond_7
    iget-object v3, p0, Lcom/android/server/pm/resolution/ComponentResolver;->mProtectedFilters:Ljava/util/List;

    .line 212
    .line 213
    invoke-static {v4, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 214
    .line 215
    .line 216
    move-result-object v2

    .line 217
    check-cast v3, Ljava/util/ArrayList;

    .line 218
    .line 219
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 220
    .line 221
    .line 222
    goto/16 :goto_7

    .line 223
    .line 224
    :cond_8
    invoke-virtual {v7, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 225
    .line 226
    .line 227
    move-result v2

    .line 228
    if-eqz v2, :cond_9

    .line 229
    .line 230
    goto/16 :goto_7

    .line 231
    .line 232
    :cond_9
    invoke-virtual {v6, p2}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 233
    .line 234
    .line 235
    goto/16 :goto_7

    .line 236
    .line 237
    :cond_a
    if-nez v3, :cond_b

    .line 238
    .line 239
    goto/16 :goto_7

    .line 240
    .line 241
    :cond_b
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 242
    .line 243
    .line 244
    move-result-object v2

    .line 245
    :cond_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 246
    .line 247
    .line 248
    move-result v3

    .line 249
    if-eqz v3, :cond_10

    .line 250
    .line 251
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 252
    .line 253
    .line 254
    move-result-object v3

    .line 255
    check-cast v3, Lcom/android/internal/pm/pkg/component/ParsedActivity;

    .line 256
    .line 257
    invoke-interface {v3}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getName()Ljava/lang/String;

    .line 258
    .line 259
    .line 260
    move-result-object v7

    .line 261
    invoke-interface {v4}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getName()Ljava/lang/String;

    .line 262
    .line 263
    .line 264
    move-result-object v8

    .line 265
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 266
    .line 267
    .line 268
    move-result v7

    .line 269
    if-eqz v7, :cond_d

    .line 270
    .line 271
    goto :goto_5

    .line 272
    :cond_d
    invoke-interface {v3}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getName()Ljava/lang/String;

    .line 273
    .line 274
    .line 275
    move-result-object v7

    .line 276
    invoke-interface {v4}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getTargetActivity()Ljava/lang/String;

    .line 277
    .line 278
    .line 279
    move-result-object v8

    .line 280
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 281
    .line 282
    .line 283
    move-result v7

    .line 284
    if-eqz v7, :cond_e

    .line 285
    .line 286
    goto :goto_5

    .line 287
    :cond_e
    invoke-interface {v3}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getTargetActivity()Ljava/lang/String;

    .line 288
    .line 289
    .line 290
    move-result-object v7

    .line 291
    if-eqz v7, :cond_c

    .line 292
    .line 293
    invoke-interface {v3}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getTargetActivity()Ljava/lang/String;

    .line 294
    .line 295
    .line 296
    move-result-object v7

    .line 297
    invoke-interface {v4}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getName()Ljava/lang/String;

    .line 298
    .line 299
    .line 300
    move-result-object v8

    .line 301
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 302
    .line 303
    .line 304
    move-result v7

    .line 305
    if-eqz v7, :cond_f

    .line 306
    .line 307
    goto :goto_5

    .line 308
    :cond_f
    invoke-interface {v3}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getTargetActivity()Ljava/lang/String;

    .line 309
    .line 310
    .line 311
    move-result-object v7

    .line 312
    invoke-interface {v4}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getTargetActivity()Ljava/lang/String;

    .line 313
    .line 314
    .line 315
    move-result-object v8

    .line 316
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 317
    .line 318
    .line 319
    move-result v7

    .line 320
    if-eqz v7, :cond_c

    .line 321
    .line 322
    goto :goto_5

    .line 323
    :cond_10
    move-object v3, v5

    .line 324
    :goto_5
    if-nez v3, :cond_11

    .line 325
    .line 326
    invoke-virtual {v6, p2}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 327
    .line 328
    .line 329
    goto/16 :goto_7

    .line 330
    .line 331
    :cond_11
    new-instance v2, Ljava/util/ArrayList;

    .line 332
    .line 333
    invoke-interface {v3}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getIntents()Ljava/util/List;

    .line 334
    .line 335
    .line 336
    move-result-object v3

    .line 337
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 338
    .line 339
    .line 340
    invoke-virtual {v6}, Landroid/content/IntentFilter;->actionsIterator()Ljava/util/Iterator;

    .line 341
    .line 342
    .line 343
    move-result-object v3

    .line 344
    if-eqz v3, :cond_12

    .line 345
    .line 346
    new-instance v4, Lcom/android/server/pm/resolution/ComponentResolver$$ExternalSyntheticLambda1;

    .line 347
    .line 348
    invoke-direct {v4, p2}, Lcom/android/server/pm/resolution/ComponentResolver$$ExternalSyntheticLambda1;-><init>(I)V

    .line 349
    .line 350
    .line 351
    invoke-static {v2, v4, v3}, Lcom/android/server/pm/resolution/ComponentResolver;->getIntentListSubset(Ljava/util/List;Ljava/util/function/Function;Ljava/util/Iterator;)V

    .line 352
    .line 353
    .line 354
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 355
    .line 356
    .line 357
    move-result v3

    .line 358
    if-nez v3, :cond_12

    .line 359
    .line 360
    invoke-virtual {v6, p2}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 361
    .line 362
    .line 363
    goto/16 :goto_7

    .line 364
    .line 365
    :cond_12
    invoke-virtual {v6}, Landroid/content/IntentFilter;->categoriesIterator()Ljava/util/Iterator;

    .line 366
    .line 367
    .line 368
    move-result-object v3

    .line 369
    if-eqz v3, :cond_13

    .line 370
    .line 371
    new-instance v4, Lcom/android/server/pm/resolution/ComponentResolver$$ExternalSyntheticLambda1;

    .line 372
    .line 373
    invoke-direct {v4, v0}, Lcom/android/server/pm/resolution/ComponentResolver$$ExternalSyntheticLambda1;-><init>(I)V

    .line 374
    .line 375
    .line 376
    invoke-static {v2, v4, v3}, Lcom/android/server/pm/resolution/ComponentResolver;->getIntentListSubset(Ljava/util/List;Ljava/util/function/Function;Ljava/util/Iterator;)V

    .line 377
    .line 378
    .line 379
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 380
    .line 381
    .line 382
    move-result v3

    .line 383
    if-nez v3, :cond_13

    .line 384
    .line 385
    invoke-virtual {v6, p2}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 386
    .line 387
    .line 388
    goto :goto_7

    .line 389
    :cond_13
    invoke-virtual {v6}, Landroid/content/IntentFilter;->schemesIterator()Ljava/util/Iterator;

    .line 390
    .line 391
    .line 392
    move-result-object v3

    .line 393
    if-eqz v3, :cond_14

    .line 394
    .line 395
    new-instance v4, Lcom/android/server/pm/resolution/ComponentResolver$$ExternalSyntheticLambda1;

    .line 396
    .line 397
    const/4 v7, 0x2

    .line 398
    invoke-direct {v4, v7}, Lcom/android/server/pm/resolution/ComponentResolver$$ExternalSyntheticLambda1;-><init>(I)V

    .line 399
    .line 400
    .line 401
    invoke-static {v2, v4, v3}, Lcom/android/server/pm/resolution/ComponentResolver;->getIntentListSubset(Ljava/util/List;Ljava/util/function/Function;Ljava/util/Iterator;)V

    .line 402
    .line 403
    .line 404
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 405
    .line 406
    .line 407
    move-result v3

    .line 408
    if-nez v3, :cond_14

    .line 409
    .line 410
    invoke-virtual {v6, p2}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 411
    .line 412
    .line 413
    goto :goto_7

    .line 414
    :cond_14
    invoke-virtual {v6}, Landroid/content/IntentFilter;->authoritiesIterator()Ljava/util/Iterator;

    .line 415
    .line 416
    .line 417
    move-result-object v3

    .line 418
    if-eqz v3, :cond_15

    .line 419
    .line 420
    new-instance v4, Lcom/android/server/pm/resolution/ComponentResolver$$ExternalSyntheticLambda1;

    .line 421
    .line 422
    const/4 v7, 0x3

    .line 423
    invoke-direct {v4, v7}, Lcom/android/server/pm/resolution/ComponentResolver$$ExternalSyntheticLambda1;-><init>(I)V

    .line 424
    .line 425
    .line 426
    invoke-static {v2, v4, v3}, Lcom/android/server/pm/resolution/ComponentResolver;->getIntentListSubset(Ljava/util/List;Ljava/util/function/Function;Ljava/util/Iterator;)V

    .line 427
    .line 428
    .line 429
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 430
    .line 431
    .line 432
    move-result v3

    .line 433
    if-nez v3, :cond_15

    .line 434
    .line 435
    invoke-virtual {v6, p2}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 436
    .line 437
    .line 438
    goto :goto_7

    .line 439
    :cond_15
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 440
    .line 441
    .line 442
    move-result v3

    .line 443
    sub-int/2addr v3, v0

    .line 444
    move v4, p2

    .line 445
    :goto_6
    if-ltz v3, :cond_16

    .line 446
    .line 447
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 448
    .line 449
    .line 450
    move-result-object v7

    .line 451
    check-cast v7, Lcom/android/internal/pm/pkg/component/ParsedIntentInfo;

    .line 452
    .line 453
    invoke-interface {v7}, Lcom/android/internal/pm/pkg/component/ParsedIntentInfo;->getIntentFilter()Landroid/content/IntentFilter;

    .line 454
    .line 455
    .line 456
    move-result-object v7

    .line 457
    invoke-virtual {v7}, Landroid/content/IntentFilter;->getPriority()I

    .line 458
    .line 459
    .line 460
    move-result v7

    .line 461
    invoke-static {v4, v7}, Ljava/lang/Math;->max(II)I

    .line 462
    .line 463
    .line 464
    move-result v4

    .line 465
    add-int/lit8 v3, v3, -0x1

    .line 466
    .line 467
    goto :goto_6

    .line 468
    :cond_16
    invoke-virtual {v6}, Landroid/content/IntentFilter;->getPriority()I

    .line 469
    .line 470
    .line 471
    move-result v2

    .line 472
    if-le v2, v4, :cond_17

    .line 473
    .line 474
    invoke-virtual {v6, v4}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 475
    .line 476
    .line 477
    :cond_17
    :goto_7
    invoke-virtual {p0, p0}, Lcom/android/server/utils/WatchableImpl;->dispatchChange(Lcom/android/server/utils/Watchable;)V

    .line 478
    .line 479
    .line 480
    add-int/lit8 p1, p1, -0x1

    .line 481
    .line 482
    goto/16 :goto_2

    .line 483
    .line 484
    :cond_18
    return-void

    .line 485
    :catchall_0
    move-exception p0

    .line 486
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 487
    sget-boolean p1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 488
    .line 489
    throw p0
.end method

.method public final addProvidersLocked(Lcom/android/server/pm/Computer;Lcom/android/server/pm/pkg/AndroidPackage;)V
    .locals 12

    .line 1
    invoke-interface {p2}, Lcom/android/server/pm/pkg/AndroidPackage;->getProviders()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->size(Ljava/util/Collection;)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    move v2, v1

    .line 11
    :goto_0
    if-ge v2, v0, :cond_9

    .line 12
    .line 13
    invoke-interface {p2}, Lcom/android/server/pm/pkg/AndroidPackage;->getProviders()Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    check-cast v3, Lcom/android/internal/pm/pkg/component/ParsedProvider;

    .line 22
    .line 23
    iget-object v4, p0, Lcom/android/server/pm/resolution/ComponentResolverBase;->mProviders:Lcom/android/server/pm/resolution/ComponentResolver$ServiceIntentResolver;

    .line 24
    .line 25
    iget-object v5, v4, Lcom/android/server/pm/resolution/ComponentResolver$ServiceIntentResolver;->mServices:Ljava/lang/Object;

    .line 26
    .line 27
    check-cast v5, Landroid/util/ArrayMap;

    .line 28
    .line 29
    invoke-interface {v3}, Lcom/android/internal/pm/pkg/component/ParsedProvider;->getComponentName()Landroid/content/ComponentName;

    .line 30
    .line 31
    .line 32
    move-result-object v6

    .line 33
    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v5

    .line 37
    const-string v6, "PackageManager"

    .line 38
    .line 39
    if-eqz v5, :cond_0

    .line 40
    .line 41
    new-instance v4, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    const-string v5, "Provider "

    .line 44
    .line 45
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-interface {v3}, Lcom/android/internal/pm/pkg/component/ParsedProvider;->getComponentName()Landroid/content/ComponentName;

    .line 49
    .line 50
    .line 51
    move-result-object v5

    .line 52
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    const-string v5, " already defined; ignoring"

    .line 56
    .line 57
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v4

    .line 64
    invoke-static {v6, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    .line 66
    .line 67
    goto :goto_2

    .line 68
    :cond_0
    iget-object v5, v4, Lcom/android/server/pm/resolution/ComponentResolver$ServiceIntentResolver;->mServices:Ljava/lang/Object;

    .line 69
    .line 70
    check-cast v5, Landroid/util/ArrayMap;

    .line 71
    .line 72
    invoke-interface {v3}, Lcom/android/internal/pm/pkg/component/ParsedProvider;->getComponentName()Landroid/content/ComponentName;

    .line 73
    .line 74
    .line 75
    move-result-object v7

    .line 76
    invoke-virtual {v5, v7, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    invoke-interface {v3}, Lcom/android/internal/pm/pkg/component/ParsedProvider;->getIntents()Ljava/util/List;

    .line 80
    .line 81
    .line 82
    move-result-object v5

    .line 83
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 84
    .line 85
    .line 86
    move-result v5

    .line 87
    move v7, v1

    .line 88
    :goto_1
    if-ge v7, v5, :cond_2

    .line 89
    .line 90
    invoke-interface {v3}, Lcom/android/internal/pm/pkg/component/ParsedProvider;->getIntents()Ljava/util/List;

    .line 91
    .line 92
    .line 93
    move-result-object v8

    .line 94
    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v8

    .line 98
    check-cast v8, Lcom/android/internal/pm/pkg/component/ParsedIntentInfo;

    .line 99
    .line 100
    invoke-interface {v8}, Lcom/android/internal/pm/pkg/component/ParsedIntentInfo;->getIntentFilter()Landroid/content/IntentFilter;

    .line 101
    .line 102
    .line 103
    move-result-object v9

    .line 104
    invoke-virtual {v9}, Landroid/content/IntentFilter;->debugCheck()Z

    .line 105
    .line 106
    .line 107
    move-result v9

    .line 108
    if-nez v9, :cond_1

    .line 109
    .line 110
    new-instance v9, Ljava/lang/StringBuilder;

    .line 111
    .line 112
    const-string v10, "==> For Provider "

    .line 113
    .line 114
    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    invoke-interface {v3}, Lcom/android/internal/pm/pkg/component/ParsedProvider;->getName()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v10

    .line 121
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v9

    .line 128
    invoke-static {v6, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    .line 130
    .line 131
    :cond_1
    invoke-static {v3, v8}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 132
    .line 133
    .line 134
    move-result-object v8

    .line 135
    invoke-virtual {v4, p1, v8}, Lcom/android/server/pm/resolution/ComponentResolver$MimeGroupsAwareIntentResolver;->addFilter(Lcom/android/server/pm/snapshot/PackageDataSnapshot;Landroid/util/Pair;)V

    .line 136
    .line 137
    .line 138
    add-int/lit8 v7, v7, 0x1

    .line 139
    .line 140
    goto :goto_1

    .line 141
    :cond_2
    :goto_2
    invoke-interface {v3}, Lcom/android/internal/pm/pkg/component/ParsedProvider;->getAuthority()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v4

    .line 145
    if-eqz v4, :cond_8

    .line 146
    .line 147
    invoke-interface {v3}, Lcom/android/internal/pm/pkg/component/ParsedProvider;->getAuthority()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v4

    .line 151
    const-string v5, ";"

    .line 152
    .line 153
    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v4

    .line 157
    const/4 v7, 0x0

    .line 158
    invoke-static {v3, v7}, Lcom/android/internal/pm/pkg/component/ComponentMutateUtils;->setAuthority(Lcom/android/internal/pm/pkg/component/ParsedProvider;Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    move v8, v1

    .line 162
    :goto_3
    array-length v9, v4

    .line 163
    if-ge v8, v9, :cond_8

    .line 164
    .line 165
    const/4 v9, 0x1

    .line 166
    if-ne v8, v9, :cond_3

    .line 167
    .line 168
    invoke-interface {v3}, Lcom/android/internal/pm/pkg/component/ParsedProvider;->isSyncable()Z

    .line 169
    .line 170
    .line 171
    move-result v9

    .line 172
    if-eqz v9, :cond_3

    .line 173
    .line 174
    new-instance v9, Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;

    .line 175
    .line 176
    invoke-direct {v9, v3}, Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;-><init>(Lcom/android/internal/pm/pkg/component/ParsedProvider;)V

    .line 177
    .line 178
    .line 179
    invoke-static {v9, v1}, Lcom/android/internal/pm/pkg/component/ComponentMutateUtils;->setSyncable(Lcom/android/internal/pm/pkg/component/ParsedProvider;Z)V

    .line 180
    .line 181
    .line 182
    move-object v3, v9

    .line 183
    :cond_3
    iget-object v9, p0, Lcom/android/server/pm/resolution/ComponentResolverBase;->mProvidersByAuthority:Landroid/util/ArrayMap;

    .line 184
    .line 185
    aget-object v10, v4, v8

    .line 186
    .line 187
    invoke-virtual {v9, v10}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 188
    .line 189
    .line 190
    move-result v9

    .line 191
    if-nez v9, :cond_5

    .line 192
    .line 193
    iget-object v9, p0, Lcom/android/server/pm/resolution/ComponentResolverBase;->mProvidersByAuthority:Landroid/util/ArrayMap;

    .line 194
    .line 195
    aget-object v10, v4, v8

    .line 196
    .line 197
    invoke-virtual {v9, v10, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    .line 199
    .line 200
    invoke-interface {v3}, Lcom/android/internal/pm/pkg/component/ParsedProvider;->getAuthority()Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v9

    .line 204
    if-nez v9, :cond_4

    .line 205
    .line 206
    aget-object v9, v4, v8

    .line 207
    .line 208
    invoke-static {v3, v9}, Lcom/android/internal/pm/pkg/component/ComponentMutateUtils;->setAuthority(Lcom/android/internal/pm/pkg/component/ParsedProvider;Ljava/lang/String;)V

    .line 209
    .line 210
    .line 211
    goto :goto_6

    .line 212
    :cond_4
    new-instance v9, Ljava/lang/StringBuilder;

    .line 213
    .line 214
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 215
    .line 216
    .line 217
    invoke-interface {v3}, Lcom/android/internal/pm/pkg/component/ParsedProvider;->getAuthority()Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object v10

    .line 221
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    .line 223
    .line 224
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    .line 226
    .line 227
    aget-object v10, v4, v8

    .line 228
    .line 229
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    .line 231
    .line 232
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object v9

    .line 236
    invoke-static {v3, v9}, Lcom/android/internal/pm/pkg/component/ComponentMutateUtils;->setAuthority(Lcom/android/internal/pm/pkg/component/ParsedProvider;Ljava/lang/String;)V

    .line 237
    .line 238
    .line 239
    goto :goto_6

    .line 240
    :cond_5
    iget-object v9, p0, Lcom/android/server/pm/resolution/ComponentResolverBase;->mProvidersByAuthority:Landroid/util/ArrayMap;

    .line 241
    .line 242
    aget-object v10, v4, v8

    .line 243
    .line 244
    invoke-virtual {v9, v10}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    .line 246
    .line 247
    move-result-object v9

    .line 248
    check-cast v9, Lcom/android/internal/pm/pkg/component/ParsedProvider;

    .line 249
    .line 250
    if-eqz v9, :cond_6

    .line 251
    .line 252
    invoke-interface {v9}, Lcom/android/internal/pm/pkg/component/ParsedProvider;->getComponentName()Landroid/content/ComponentName;

    .line 253
    .line 254
    .line 255
    move-result-object v10

    .line 256
    if-eqz v10, :cond_6

    .line 257
    .line 258
    invoke-interface {v9}, Lcom/android/internal/pm/pkg/component/ParsedProvider;->getComponentName()Landroid/content/ComponentName;

    .line 259
    .line 260
    .line 261
    move-result-object v9

    .line 262
    goto :goto_4

    .line 263
    :cond_6
    move-object v9, v7

    .line 264
    :goto_4
    if-eqz v9, :cond_7

    .line 265
    .line 266
    invoke-virtual {v9}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 267
    .line 268
    .line 269
    move-result-object v9

    .line 270
    goto :goto_5

    .line 271
    :cond_7
    const-string v9, "?"

    .line 272
    .line 273
    :goto_5
    new-instance v10, Ljava/lang/StringBuilder;

    .line 274
    .line 275
    const-string v11, "Skipping provider name "

    .line 276
    .line 277
    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 278
    .line 279
    .line 280
    aget-object v11, v4, v8

    .line 281
    .line 282
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    .line 284
    .line 285
    const-string v11, " (in package "

    .line 286
    .line 287
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 288
    .line 289
    .line 290
    invoke-interface {p2}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    .line 291
    .line 292
    .line 293
    move-result-object v11

    .line 294
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    .line 296
    .line 297
    const-string v11, "): name already used by "

    .line 298
    .line 299
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    .line 301
    .line 302
    invoke-static {v10, v9, v6}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    .line 304
    .line 305
    :goto_6
    add-int/lit8 v8, v8, 0x1

    .line 306
    .line 307
    goto/16 :goto_3

    .line 308
    .line 309
    :cond_8
    add-int/lit8 v2, v2, 0x1

    .line 310
    .line 311
    goto/16 :goto_0

    .line 312
    .line 313
    :cond_9
    return-void
.end method

.method public final addServicesLocked(Lcom/android/server/pm/Computer;Lcom/android/server/pm/pkg/AndroidPackage;)V
    .locals 10

    .line 1
    invoke-interface {p2}, Lcom/android/server/pm/pkg/AndroidPackage;->getServices()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->size(Ljava/util/Collection;)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    move v2, v1

    .line 11
    :goto_0
    if-ge v2, v0, :cond_2

    .line 12
    .line 13
    invoke-interface {p2}, Lcom/android/server/pm/pkg/AndroidPackage;->getServices()Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    check-cast v3, Lcom/android/internal/pm/pkg/component/ParsedService;

    .line 22
    .line 23
    iget-object v4, p0, Lcom/android/server/pm/resolution/ComponentResolverBase;->mServices:Lcom/android/server/pm/resolution/ComponentResolver$ServiceIntentResolver;

    .line 24
    .line 25
    iget-object v5, v4, Lcom/android/server/pm/resolution/ComponentResolver$ServiceIntentResolver;->mServices:Ljava/lang/Object;

    .line 26
    .line 27
    check-cast v5, Ljava/util/HashMap;

    .line 28
    .line 29
    invoke-interface {v3}, Lcom/android/internal/pm/pkg/component/ParsedService;->getComponentName()Landroid/content/ComponentName;

    .line 30
    .line 31
    .line 32
    move-result-object v6

    .line 33
    invoke-virtual {v5, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    invoke-interface {v3}, Lcom/android/internal/pm/pkg/component/ParsedService;->getIntents()Ljava/util/List;

    .line 37
    .line 38
    .line 39
    move-result-object v5

    .line 40
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 41
    .line 42
    .line 43
    move-result v5

    .line 44
    move v6, v1

    .line 45
    :goto_1
    if-ge v6, v5, :cond_1

    .line 46
    .line 47
    invoke-interface {v3}, Lcom/android/internal/pm/pkg/component/ParsedService;->getIntents()Ljava/util/List;

    .line 48
    .line 49
    .line 50
    move-result-object v7

    .line 51
    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v7

    .line 55
    check-cast v7, Lcom/android/internal/pm/pkg/component/ParsedIntentInfo;

    .line 56
    .line 57
    invoke-interface {v7}, Lcom/android/internal/pm/pkg/component/ParsedIntentInfo;->getIntentFilter()Landroid/content/IntentFilter;

    .line 58
    .line 59
    .line 60
    move-result-object v8

    .line 61
    invoke-virtual {v8}, Landroid/content/IntentFilter;->debugCheck()Z

    .line 62
    .line 63
    .line 64
    move-result v8

    .line 65
    if-nez v8, :cond_0

    .line 66
    .line 67
    new-instance v8, Ljava/lang/StringBuilder;

    .line 68
    .line 69
    const-string v9, "==> For Service "

    .line 70
    .line 71
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    invoke-interface {v3}, Lcom/android/internal/pm/pkg/component/ParsedService;->getName()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v9

    .line 78
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v8

    .line 85
    const-string v9, "PackageManager"

    .line 86
    .line 87
    invoke-static {v9, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    .line 89
    .line 90
    :cond_0
    invoke-static {v3, v7}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 91
    .line 92
    .line 93
    move-result-object v7

    .line 94
    invoke-virtual {v4, p1, v7}, Lcom/android/server/pm/resolution/ComponentResolver$MimeGroupsAwareIntentResolver;->addFilter(Lcom/android/server/pm/snapshot/PackageDataSnapshot;Landroid/util/Pair;)V

    .line 95
    .line 96
    .line 97
    add-int/lit8 v6, v6, 0x1

    .line 98
    .line 99
    goto :goto_1

    .line 100
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 101
    .line 102
    goto :goto_0

    .line 103
    :cond_2
    return-void
.end method

.method public final assertProvidersNotDefined(Lcom/android/server/pm/pkg/AndroidPackage;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/resolution/ComponentResolverLocked;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 2
    .line 3
    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getProviders()Ljava/util/List;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->size(Ljava/util/Collection;)I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    const/4 v2, 0x0

    .line 15
    move v3, v2

    .line 16
    :goto_0
    if-ge v3, v1, :cond_4

    .line 17
    .line 18
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getProviders()Ljava/util/List;

    .line 19
    .line 20
    .line 21
    move-result-object v4

    .line 22
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v4

    .line 26
    check-cast v4, Lcom/android/internal/pm/pkg/component/ParsedProvider;

    .line 27
    .line 28
    invoke-interface {v4}, Lcom/android/internal/pm/pkg/component/ParsedProvider;->getAuthority()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v5

    .line 32
    if-eqz v5, :cond_3

    .line 33
    .line 34
    invoke-interface {v4}, Lcom/android/internal/pm/pkg/component/ParsedProvider;->getAuthority()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    const-string v5, ";"

    .line 39
    .line 40
    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v4

    .line 44
    move v5, v2

    .line 45
    :goto_1
    array-length v6, v4

    .line 46
    if-ge v5, v6, :cond_3

    .line 47
    .line 48
    iget-object v6, p0, Lcom/android/server/pm/resolution/ComponentResolverBase;->mProvidersByAuthority:Landroid/util/ArrayMap;

    .line 49
    .line 50
    aget-object v7, v4, v5

    .line 51
    .line 52
    invoke-virtual {v6, v7}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result v6

    .line 56
    if-eqz v6, :cond_2

    .line 57
    .line 58
    iget-object v6, p0, Lcom/android/server/pm/resolution/ComponentResolverBase;->mProvidersByAuthority:Landroid/util/ArrayMap;

    .line 59
    .line 60
    aget-object v7, v4, v5

    .line 61
    .line 62
    invoke-virtual {v6, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v6

    .line 66
    check-cast v6, Lcom/android/internal/pm/pkg/component/ParsedProvider;

    .line 67
    .line 68
    if-eqz v6, :cond_0

    .line 69
    .line 70
    invoke-interface {v6}, Lcom/android/internal/pm/pkg/component/ParsedProvider;->getComponentName()Landroid/content/ComponentName;

    .line 71
    .line 72
    .line 73
    move-result-object v7

    .line 74
    if-eqz v7, :cond_0

    .line 75
    .line 76
    invoke-interface {v6}, Lcom/android/internal/pm/pkg/component/ParsedProvider;->getComponentName()Landroid/content/ComponentName;

    .line 77
    .line 78
    .line 79
    move-result-object v6

    .line 80
    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v6

    .line 84
    goto :goto_2

    .line 85
    :catchall_0
    move-exception p0

    .line 86
    goto :goto_4

    .line 87
    :cond_0
    const-string v6, "?"

    .line 88
    .line 89
    :goto_2
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v7

    .line 93
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    move-result v7

    .line 97
    if-eqz v7, :cond_1

    .line 98
    .line 99
    goto :goto_3

    .line 100
    :cond_1
    new-instance p0, Lcom/android/server/pm/PackageManagerException;

    .line 101
    .line 102
    new-instance v1, Ljava/lang/StringBuilder;

    .line 103
    .line 104
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 105
    .line 106
    .line 107
    const-string v2, "Can\'t install because provider name "

    .line 108
    .line 109
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    aget-object v2, v4, v5

    .line 113
    .line 114
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    const-string v2, " (in package "

    .line 118
    .line 119
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object p1

    .line 126
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    const-string p1, ") is already used by "

    .line 130
    .line 131
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object p1

    .line 141
    const/16 v1, -0xd

    .line 142
    .line 143
    invoke-direct {p0, v1, p1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    .line 144
    .line 145
    .line 146
    throw p0

    .line 147
    :cond_2
    :goto_3
    add-int/lit8 v5, v5, 0x1

    .line 148
    .line 149
    goto :goto_1

    .line 150
    :cond_3
    add-int/lit8 v3, v3, 0x1

    .line 151
    .line 152
    goto/16 :goto_0

    .line 153
    .line 154
    :cond_4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 155
    sget-boolean p0, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 156
    .line 157
    return-void

    .line 158
    :goto_4
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 159
    sget-boolean p1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 160
    .line 161
    throw p0
.end method

.method public final fixProtectedFilterPriorities(Ljava/lang/String;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/resolution/ComponentResolverLocked;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 2
    .line 3
    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/pm/resolution/ComponentResolver;->mDeferProtectedFilters:Z

    .line 7
    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    monitor-exit v0

    .line 11
    return-void

    .line 12
    :catchall_0
    move-exception p0

    .line 13
    goto :goto_3

    .line 14
    :cond_0
    const/4 v1, 0x0

    .line 15
    iput-boolean v1, p0, Lcom/android/server/pm/resolution/ComponentResolver;->mDeferProtectedFilters:Z

    .line 16
    .line 17
    iget-object v2, p0, Lcom/android/server/pm/resolution/ComponentResolver;->mProtectedFilters:Ljava/util/List;

    .line 18
    .line 19
    if-eqz v2, :cond_4

    .line 20
    .line 21
    check-cast v2, Ljava/util/ArrayList;

    .line 22
    .line 23
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-nez v2, :cond_1

    .line 28
    .line 29
    goto :goto_2

    .line 30
    :cond_1
    iget-object v2, p0, Lcom/android/server/pm/resolution/ComponentResolver;->mProtectedFilters:Ljava/util/List;

    .line 31
    .line 32
    const/4 v3, 0x0

    .line 33
    iput-object v3, p0, Lcom/android/server/pm/resolution/ComponentResolver;->mProtectedFilters:Ljava/util/List;

    .line 34
    .line 35
    check-cast v2, Ljava/util/ArrayList;

    .line 36
    .line 37
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    add-int/lit8 v3, v3, -0x1

    .line 42
    .line 43
    :goto_0
    if-ltz v3, :cond_3

    .line 44
    .line 45
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    check-cast v4, Landroid/util/Pair;

    .line 50
    .line 51
    iget-object v5, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 52
    .line 53
    check-cast v5, Lcom/android/internal/pm/pkg/component/ParsedMainComponent;

    .line 54
    .line 55
    iget-object v4, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 56
    .line 57
    check-cast v4, Lcom/android/internal/pm/pkg/component/ParsedIntentInfo;

    .line 58
    .line 59
    invoke-interface {v4}, Lcom/android/internal/pm/pkg/component/ParsedIntentInfo;->getIntentFilter()Landroid/content/IntentFilter;

    .line 60
    .line 61
    .line 62
    move-result-object v4

    .line 63
    invoke-interface {v5}, Lcom/android/internal/pm/pkg/component/ParsedMainComponent;->getPackageName()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v6

    .line 67
    invoke-interface {v5}, Lcom/android/internal/pm/pkg/component/ParsedMainComponent;->getClassName()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    move-result v5

    .line 74
    if-eqz v5, :cond_2

    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_2
    invoke-virtual {v4, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 78
    .line 79
    .line 80
    :goto_1
    add-int/lit8 v3, v3, -0x1

    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_3
    invoke-virtual {p0, p0}, Lcom/android/server/utils/WatchableImpl;->dispatchChange(Lcom/android/server/utils/Watchable;)V

    .line 84
    .line 85
    .line 86
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    sget-boolean p0, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 88
    .line 89
    return-void

    .line 90
    :cond_4
    :goto_2
    :try_start_1
    monitor-exit v0

    .line 91
    return-void

    .line 92
    :goto_3
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 93
    sget-boolean p1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 94
    .line 95
    throw p0
.end method

.method public final removeAllComponentsLocked(Lcom/android/server/pm/pkg/AndroidPackage;)V
    .locals 8

    .line 1
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getActivities()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->size(Ljava/util/Collection;)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    move v2, v1

    .line 11
    :goto_0
    if-ge v2, v0, :cond_0

    .line 12
    .line 13
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getActivities()Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    check-cast v3, Lcom/android/internal/pm/pkg/component/ParsedActivity;

    .line 22
    .line 23
    iget-object v4, p0, Lcom/android/server/pm/resolution/ComponentResolverBase;->mActivities:Lcom/android/server/pm/resolution/ComponentResolver$ActivityIntentResolver;

    .line 24
    .line 25
    invoke-virtual {v4, v3}, Lcom/android/server/pm/resolution/ComponentResolver$ActivityIntentResolver;->removeActivity(Lcom/android/internal/pm/pkg/component/ParsedActivity;)V

    .line 26
    .line 27
    .line 28
    add-int/lit8 v2, v2, 0x1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getProviders()Ljava/util/List;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->size(Ljava/util/Collection;)I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    move v2, v1

    .line 40
    :goto_1
    if-ge v2, v0, :cond_5

    .line 41
    .line 42
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getProviders()Ljava/util/List;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    check-cast v3, Lcom/android/internal/pm/pkg/component/ParsedProvider;

    .line 51
    .line 52
    iget-object v4, p0, Lcom/android/server/pm/resolution/ComponentResolverBase;->mProviders:Lcom/android/server/pm/resolution/ComponentResolver$ServiceIntentResolver;

    .line 53
    .line 54
    iget-object v5, v4, Lcom/android/server/pm/resolution/ComponentResolver$ServiceIntentResolver;->mServices:Ljava/lang/Object;

    .line 55
    .line 56
    check-cast v5, Landroid/util/ArrayMap;

    .line 57
    .line 58
    invoke-interface {v3}, Lcom/android/internal/pm/pkg/component/ParsedProvider;->getComponentName()Landroid/content/ComponentName;

    .line 59
    .line 60
    .line 61
    move-result-object v6

    .line 62
    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    invoke-interface {v3}, Lcom/android/internal/pm/pkg/component/ParsedProvider;->getIntents()Ljava/util/List;

    .line 66
    .line 67
    .line 68
    move-result-object v5

    .line 69
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 70
    .line 71
    .line 72
    move-result v5

    .line 73
    move v6, v1

    .line 74
    :goto_2
    if-ge v6, v5, :cond_1

    .line 75
    .line 76
    invoke-interface {v3}, Lcom/android/internal/pm/pkg/component/ParsedProvider;->getIntents()Ljava/util/List;

    .line 77
    .line 78
    .line 79
    move-result-object v7

    .line 80
    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v7

    .line 84
    check-cast v7, Lcom/android/internal/pm/pkg/component/ParsedIntentInfo;

    .line 85
    .line 86
    invoke-interface {v7}, Lcom/android/internal/pm/pkg/component/ParsedIntentInfo;->getIntentFilter()Landroid/content/IntentFilter;

    .line 87
    .line 88
    .line 89
    invoke-static {v3, v7}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 90
    .line 91
    .line 92
    move-result-object v7

    .line 93
    invoke-virtual {v4, v7}, Lcom/android/server/IntentResolver;->removeFilter(Ljava/lang/Object;)V

    .line 94
    .line 95
    .line 96
    add-int/lit8 v6, v6, 0x1

    .line 97
    .line 98
    goto :goto_2

    .line 99
    :cond_1
    invoke-interface {v3}, Lcom/android/internal/pm/pkg/component/ParsedProvider;->getAuthority()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v4

    .line 103
    if-nez v4, :cond_2

    .line 104
    .line 105
    goto :goto_4

    .line 106
    :cond_2
    invoke-interface {v3}, Lcom/android/internal/pm/pkg/component/ParsedProvider;->getAuthority()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v4

    .line 110
    const-string v5, ";"

    .line 111
    .line 112
    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v4

    .line 116
    move v5, v1

    .line 117
    :goto_3
    array-length v6, v4

    .line 118
    if-ge v5, v6, :cond_4

    .line 119
    .line 120
    iget-object v6, p0, Lcom/android/server/pm/resolution/ComponentResolverBase;->mProvidersByAuthority:Landroid/util/ArrayMap;

    .line 121
    .line 122
    aget-object v7, v4, v5

    .line 123
    .line 124
    invoke-virtual {v6, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object v6

    .line 128
    if-ne v6, v3, :cond_3

    .line 129
    .line 130
    iget-object v6, p0, Lcom/android/server/pm/resolution/ComponentResolverBase;->mProvidersByAuthority:Landroid/util/ArrayMap;

    .line 131
    .line 132
    aget-object v7, v4, v5

    .line 133
    .line 134
    invoke-virtual {v6, v7}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    :cond_3
    add-int/lit8 v5, v5, 0x1

    .line 138
    .line 139
    goto :goto_3

    .line 140
    :cond_4
    :goto_4
    add-int/lit8 v2, v2, 0x1

    .line 141
    .line 142
    goto :goto_1

    .line 143
    :cond_5
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getReceivers()Ljava/util/List;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->size(Ljava/util/Collection;)I

    .line 148
    .line 149
    .line 150
    move-result v0

    .line 151
    move v2, v1

    .line 152
    :goto_5
    if-ge v2, v0, :cond_6

    .line 153
    .line 154
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getReceivers()Ljava/util/List;

    .line 155
    .line 156
    .line 157
    move-result-object v3

    .line 158
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 159
    .line 160
    .line 161
    move-result-object v3

    .line 162
    check-cast v3, Lcom/android/internal/pm/pkg/component/ParsedActivity;

    .line 163
    .line 164
    iget-object v4, p0, Lcom/android/server/pm/resolution/ComponentResolverBase;->mReceivers:Lcom/android/server/pm/resolution/ComponentResolver$ReceiverIntentResolver;

    .line 165
    .line 166
    invoke-virtual {v4, v3}, Lcom/android/server/pm/resolution/ComponentResolver$ActivityIntentResolver;->removeActivity(Lcom/android/internal/pm/pkg/component/ParsedActivity;)V

    .line 167
    .line 168
    .line 169
    add-int/lit8 v2, v2, 0x1

    .line 170
    .line 171
    goto :goto_5

    .line 172
    :cond_6
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getServices()Ljava/util/List;

    .line 173
    .line 174
    .line 175
    move-result-object v0

    .line 176
    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->size(Ljava/util/Collection;)I

    .line 177
    .line 178
    .line 179
    move-result v0

    .line 180
    move v2, v1

    .line 181
    :goto_6
    if-ge v2, v0, :cond_8

    .line 182
    .line 183
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getServices()Ljava/util/List;

    .line 184
    .line 185
    .line 186
    move-result-object v3

    .line 187
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 188
    .line 189
    .line 190
    move-result-object v3

    .line 191
    check-cast v3, Lcom/android/internal/pm/pkg/component/ParsedService;

    .line 192
    .line 193
    iget-object v4, p0, Lcom/android/server/pm/resolution/ComponentResolverBase;->mServices:Lcom/android/server/pm/resolution/ComponentResolver$ServiceIntentResolver;

    .line 194
    .line 195
    iget-object v5, v4, Lcom/android/server/pm/resolution/ComponentResolver$ServiceIntentResolver;->mServices:Ljava/lang/Object;

    .line 196
    .line 197
    check-cast v5, Ljava/util/HashMap;

    .line 198
    .line 199
    invoke-interface {v3}, Lcom/android/internal/pm/pkg/component/ParsedService;->getComponentName()Landroid/content/ComponentName;

    .line 200
    .line 201
    .line 202
    move-result-object v6

    .line 203
    invoke-virtual {v5, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    .line 205
    .line 206
    invoke-interface {v3}, Lcom/android/internal/pm/pkg/component/ParsedService;->getIntents()Ljava/util/List;

    .line 207
    .line 208
    .line 209
    move-result-object v5

    .line 210
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 211
    .line 212
    .line 213
    move-result v5

    .line 214
    move v6, v1

    .line 215
    :goto_7
    if-ge v6, v5, :cond_7

    .line 216
    .line 217
    invoke-interface {v3}, Lcom/android/internal/pm/pkg/component/ParsedService;->getIntents()Ljava/util/List;

    .line 218
    .line 219
    .line 220
    move-result-object v7

    .line 221
    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 222
    .line 223
    .line 224
    move-result-object v7

    .line 225
    check-cast v7, Lcom/android/internal/pm/pkg/component/ParsedIntentInfo;

    .line 226
    .line 227
    invoke-interface {v7}, Lcom/android/internal/pm/pkg/component/ParsedIntentInfo;->getIntentFilter()Landroid/content/IntentFilter;

    .line 228
    .line 229
    .line 230
    invoke-static {v3, v7}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 231
    .line 232
    .line 233
    move-result-object v7

    .line 234
    invoke-virtual {v4, v7}, Lcom/android/server/IntentResolver;->removeFilter(Ljava/lang/Object;)V

    .line 235
    .line 236
    .line 237
    add-int/lit8 v6, v6, 0x1

    .line 238
    .line 239
    goto :goto_7

    .line 240
    :cond_7
    add-int/lit8 v2, v2, 0x1

    .line 241
    .line 242
    goto :goto_6

    .line 243
    :cond_8
    return-void
.end method

.method public final snapshot()Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/resolution/ComponentResolver;->mSnapshot:Lcom/android/server/pm/resolution/ComponentResolver$1;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/utils/SnapshotCache;->snapshot()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/server/pm/resolution/ComponentResolverApi;

    .line 8
    .line 9
    return-object p0
.end method
