.class public final Lcom/android/server/media/MediaRoute2ProviderWatcher;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final DEBUG:Z

.field public static final RESOLVE_INFO_FLAGS:Landroid/content/pm/PackageManager$ResolveInfoFlags;


# instance fields
.field public final mCallback:Lcom/android/server/media/MediaRoute2ProviderWatcher$Callback;

.field public final mContext:Landroid/content/Context;

.field public final mHandler:Landroid/os/Handler;

.field public final mPackageManager:Landroid/content/pm/PackageManager;

.field public final mProxies:Ljava/util/ArrayList;

.field public mRunning:Z

.field public final mScanPackagesReceiver:Lcom/android/server/media/MediaRoute2ProviderWatcher$1;

.field public final mUserId:I


# direct methods
.method public static $r8$lambda$uxDP7YbvEhxettSyL1qhqc8pTDY(Lcom/android/server/media/MediaRoute2ProviderWatcher;)V
    .locals 14

    .line 1
    iget-boolean v0, p0, Lcom/android/server/media/MediaRoute2ProviderWatcher;->mRunning:Z

    .line 3
    if-nez v0, :cond_0

    .line 5
    goto/16 :goto_6

    .line 7
    :cond_0
    new-instance v0, Landroid/content/Intent;

    .line 9
    const-string v1, "android.media.MediaRoute2ProviderService"

    .line 11
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 14
    iget-object v1, p0, Lcom/android/server/media/MediaRoute2ProviderWatcher;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 16
    sget-object v2, Lcom/android/server/media/MediaRoute2ProviderWatcher;->RESOLVE_INFO_FLAGS:Landroid/content/pm/PackageManager$ResolveInfoFlags;

    .line 18
    iget v3, p0, Lcom/android/server/media/MediaRoute2ProviderWatcher;->mUserId:I

    .line 20
    invoke-virtual {v1, v0, v2, v3}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;Landroid/content/pm/PackageManager$ResolveInfoFlags;I)Ljava/util/List;

    .line 23
    move-result-object v0

    .line 24
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 27
    move-result-object v0

    .line 28
    const/4 v1, 0x0

    .line 29
    move v2, v1

    .line 30
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 33
    move-result v3

    .line 34
    iget-object v4, p0, Lcom/android/server/media/MediaRoute2ProviderWatcher;->mCallback:Lcom/android/server/media/MediaRoute2ProviderWatcher$Callback;

    .line 36
    const-string v5, "MR2ProviderWatcher"

    .line 38
    if-eqz v3, :cond_7

    .line 40
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 43
    move-result-object v3

    .line 44
    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 46
    iget-object v6, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 48
    if-eqz v6, :cond_1

    .line 50
    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    .line 52
    invoke-virtual {v3}, Landroid/content/IntentFilter;->categoriesIterator()Ljava/util/Iterator;

    .line 55
    move-result-object v3

    .line 56
    if-eqz v3, :cond_3

    .line 58
    move v7, v1

    .line 59
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 62
    move-result v8

    .line 63
    if-eqz v8, :cond_2

    .line 65
    const-string v8, "android.media.MediaRoute2ProviderService.SELF_SCAN_ONLY"

    .line 67
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 70
    move-result-object v9

    .line 71
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 74
    move-result v8

    .line 75
    or-int/2addr v7, v8

    .line 76
    goto :goto_1

    .line 77
    :cond_2
    move v12, v7

    .line 78
    goto :goto_2

    .line 79
    :cond_3
    move v12, v1

    .line 80
    :goto_2
    iget-object v3, v6, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 82
    iget-object v7, v6, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 84
    iget-object v8, p0, Lcom/android/server/media/MediaRoute2ProviderWatcher;->mProxies:Ljava/util/ArrayList;

    .line 86
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 89
    move-result v8

    .line 90
    move v9, v1

    .line 91
    :goto_3
    if-ge v9, v8, :cond_5

    .line 93
    iget-object v10, p0, Lcom/android/server/media/MediaRoute2ProviderWatcher;->mProxies:Ljava/util/ArrayList;

    .line 95
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 98
    move-result-object v10

    .line 99
    check-cast v10, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;

    .line 101
    iget-object v11, v10, Lcom/android/server/media/MediaRoute2Provider;->mComponentName:Landroid/content/ComponentName;

    .line 103
    invoke-virtual {v11}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 106
    move-result-object v11

    .line 107
    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 110
    move-result v11

    .line 111
    if-eqz v11, :cond_4

    .line 113
    iget-object v10, v10, Lcom/android/server/media/MediaRoute2Provider;->mComponentName:Landroid/content/ComponentName;

    .line 115
    invoke-virtual {v10}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    .line 118
    move-result-object v10

    .line 119
    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 122
    move-result v10

    .line 123
    if-eqz v10, :cond_4

    .line 125
    goto :goto_4

    .line 126
    :cond_4
    add-int/lit8 v9, v9, 0x1

    .line 128
    goto :goto_3

    .line 129
    :cond_5
    const/4 v9, -0x1

    .line 130
    :goto_4
    if-gez v9, :cond_6

    .line 132
    new-instance v3, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;

    .line 134
    iget-object v9, p0, Lcom/android/server/media/MediaRoute2ProviderWatcher;->mContext:Landroid/content/Context;

    .line 136
    iget-object v7, p0, Lcom/android/server/media/MediaRoute2ProviderWatcher;->mHandler:Landroid/os/Handler;

    .line 138
    invoke-virtual {v7}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 141
    move-result-object v10

    .line 142
    new-instance v11, Landroid/content/ComponentName;

    .line 144
    iget-object v7, v6, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 146
    iget-object v6, v6, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 148
    invoke-direct {v11, v7, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    iget v13, p0, Lcom/android/server/media/MediaRoute2ProviderWatcher;->mUserId:I

    .line 153
    move-object v8, v3

    .line 154
    invoke-direct/range {v8 .. v13}, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;-><init>(Landroid/content/Context;Landroid/os/Looper;Landroid/content/ComponentName;ZI)V

    .line 157
    new-instance v6, Ljava/lang/StringBuilder;

    .line 159
    const-string v7, "Enabling proxy for MediaRoute2ProviderService: "

    .line 161
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 164
    iget-object v7, v3, Lcom/android/server/media/MediaRoute2Provider;->mComponentName:Landroid/content/ComponentName;

    .line 166
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 169
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 172
    move-result-object v6

    .line 173
    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    invoke-virtual {v3, v1}, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->start(Z)V

    .line 179
    iget-object v5, p0, Lcom/android/server/media/MediaRoute2ProviderWatcher;->mProxies:Ljava/util/ArrayList;

    .line 181
    add-int/lit8 v6, v2, 0x1

    .line 183
    invoke-virtual {v5, v2, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 186
    check-cast v4, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    .line 188
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 191
    iput-object v4, v3, Lcom/android/server/media/MediaRoute2Provider;->mCallback:Lcom/android/server/media/MediaRoute2Provider$Callback;

    .line 193
    iget-object v2, v4, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mRouteProviders:Ljava/util/ArrayList;

    .line 195
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 198
    iget-object v2, v4, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mUserRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    .line 200
    iget-object v4, v2, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mActivelyScanningPackages:Ljava/util/Set;

    .line 202
    iget-object v2, v2, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mCompositeDiscoveryPreference:Landroid/media/RouteDiscoveryPreference;

    .line 204
    invoke-virtual {v3, v4, v2}, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->updateDiscoveryPreference(Ljava/util/Set;Landroid/media/RouteDiscoveryPreference;)V

    .line 207
    move v2, v6

    .line 208
    goto/16 :goto_0

    .line 210
    :cond_6
    if-lt v9, v2, :cond_1

    .line 212
    iget-object v3, p0, Lcom/android/server/media/MediaRoute2ProviderWatcher;->mProxies:Ljava/util/ArrayList;

    .line 214
    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 217
    move-result-object v3

    .line 218
    check-cast v3, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;

    .line 220
    invoke-static {}, Lcom/android/media/flags/Flags;->enablePreventionOfKeepAliveRouteProviders()Z

    .line 223
    move-result v4

    .line 224
    xor-int/lit8 v4, v4, 0x1

    .line 226
    invoke-virtual {v3, v4}, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->start(Z)V

    .line 229
    iget-object v3, p0, Lcom/android/server/media/MediaRoute2ProviderWatcher;->mProxies:Ljava/util/ArrayList;

    .line 231
    add-int/lit8 v4, v2, 0x1

    .line 233
    invoke-static {v3, v9, v2}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    .line 236
    move v2, v4

    .line 237
    goto/16 :goto_0

    .line 239
    :cond_7
    iget-object v0, p0, Lcom/android/server/media/MediaRoute2ProviderWatcher;->mProxies:Ljava/util/ArrayList;

    .line 241
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 244
    move-result v0

    .line 245
    if-ge v2, v0, :cond_8

    .line 247
    iget-object v0, p0, Lcom/android/server/media/MediaRoute2ProviderWatcher;->mProxies:Ljava/util/ArrayList;

    .line 249
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 252
    move-result v0

    .line 253
    add-int/lit8 v0, v0, -0x1

    .line 255
    :goto_5
    if-lt v0, v2, :cond_8

    .line 257
    iget-object v1, p0, Lcom/android/server/media/MediaRoute2ProviderWatcher;->mProxies:Ljava/util/ArrayList;

    .line 259
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 262
    move-result-object v1

    .line 263
    check-cast v1, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;

    .line 265
    new-instance v3, Ljava/lang/StringBuilder;

    .line 267
    const-string v6, "Disabling proxy for MediaRoute2ProviderService: "

    .line 269
    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 272
    iget-object v6, v1, Lcom/android/server/media/MediaRoute2Provider;->mComponentName:Landroid/content/ComponentName;

    .line 274
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 277
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 280
    move-result-object v3

    .line 281
    invoke-static {v5, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    move-object v3, v4

    .line 285
    check-cast v3, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    .line 287
    iget-object v3, v3, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mRouteProviders:Ljava/util/ArrayList;

    .line 289
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 292
    iget-object v3, p0, Lcom/android/server/media/MediaRoute2ProviderWatcher;->mProxies:Ljava/util/ArrayList;

    .line 294
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 297
    invoke-virtual {v1}, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->stop()V

    .line 300
    add-int/lit8 v0, v0, -0x1

    .line 302
    goto :goto_5

    .line 303
    :cond_8
    :goto_6
    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "MR2ProviderWatcher"

    .line 3
    const/4 v1, 0x3

    .line 4
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 7
    move-result v0

    .line 8
    sput-boolean v0, Lcom/android/server/media/MediaRoute2ProviderWatcher;->DEBUG:Z

    .line 10
    const-wide/16 v0, 0x40

    .line 12
    invoke-static {v0, v1}, Landroid/content/pm/PackageManager$ResolveInfoFlags;->of(J)Landroid/content/pm/PackageManager$ResolveInfoFlags;

    .line 15
    move-result-object v0

    .line 16
    sput-object v0, Lcom/android/server/media/MediaRoute2ProviderWatcher;->RESOLVE_INFO_FLAGS:Landroid/content/pm/PackageManager$ResolveInfoFlags;

    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/media/MediaRoute2ProviderWatcher$Callback;Landroid/os/Handler;I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/android/server/media/MediaRoute2ProviderWatcher;->mProxies:Ljava/util/ArrayList;

    .line 11
    new-instance v0, Lcom/android/server/media/MediaRoute2ProviderWatcher$1;

    .line 13
    invoke-direct {v0, p0}, Lcom/android/server/media/MediaRoute2ProviderWatcher$1;-><init>(Lcom/android/server/media/MediaRoute2ProviderWatcher;)V

    .line 16
    iput-object v0, p0, Lcom/android/server/media/MediaRoute2ProviderWatcher;->mScanPackagesReceiver:Lcom/android/server/media/MediaRoute2ProviderWatcher$1;

    .line 18
    iput-object p1, p0, Lcom/android/server/media/MediaRoute2ProviderWatcher;->mContext:Landroid/content/Context;

    .line 20
    iput-object p2, p0, Lcom/android/server/media/MediaRoute2ProviderWatcher;->mCallback:Lcom/android/server/media/MediaRoute2ProviderWatcher$Callback;

    .line 22
    iput-object p3, p0, Lcom/android/server/media/MediaRoute2ProviderWatcher;->mHandler:Landroid/os/Handler;

    .line 24
    iput p4, p0, Lcom/android/server/media/MediaRoute2ProviderWatcher;->mUserId:I

    .line 26
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 29
    move-result-object p1

    .line 30
    iput-object p1, p0, Lcom/android/server/media/MediaRoute2ProviderWatcher;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 32
    return-void
.end method
