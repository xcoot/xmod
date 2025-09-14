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

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto/16 :goto_6

    .line 6
    .line 7
    :cond_0
    new-instance v0, Landroid/content/Intent;

    .line 8
    .line 9
    const-string v1, "android.media.MediaRoute2ProviderService"

    .line 10
    .line 11
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iget-object v1, p0, Lcom/android/server/media/MediaRoute2ProviderWatcher;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 15
    .line 16
    sget-object v2, Lcom/android/server/media/MediaRoute2ProviderWatcher;->RESOLVE_INFO_FLAGS:Landroid/content/pm/PackageManager$ResolveInfoFlags;

    .line 17
    .line 18
    iget v3, p0, Lcom/android/server/media/MediaRoute2ProviderWatcher;->mUserId:I

    .line 19
    .line 20
    invoke-virtual {v1, v0, v2, v3}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;Landroid/content/pm/PackageManager$ResolveInfoFlags;I)Ljava/util/List;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 25
    .line 26
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

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    iget-object v4, p0, Lcom/android/server/media/MediaRoute2ProviderWatcher;->mCallback:Lcom/android/server/media/MediaRoute2ProviderWatcher$Callback;

    .line 35
    .line 36
    const-string v5, "MR2ProviderWatcher"

    .line 37
    .line 38
    if-eqz v3, :cond_7

    .line 39
    .line 40
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 45
    .line 46
    iget-object v6, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 47
    .line 48
    if-eqz v6, :cond_1

    .line 49
    .line 50
    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    .line 51
    .line 52
    invoke-virtual {v3}, Landroid/content/IntentFilter;->categoriesIterator()Ljava/util/Iterator;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    if-eqz v3, :cond_3

    .line 57
    .line 58
    move v7, v1

    .line 59
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 60
    .line 61
    .line 62
    move-result v8

    .line 63
    if-eqz v8, :cond_2

    .line 64
    .line 65
    const-string v8, "android.media.MediaRoute2ProviderService.SELF_SCAN_ONLY"

    .line 66
    .line 67
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v9

    .line 71
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 72
    .line 73
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

    .line 81
    .line 82
    iget-object v7, v6, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 83
    .line 84
    iget-object v8, p0, Lcom/android/server/media/MediaRoute2ProviderWatcher;->mProxies:Ljava/util/ArrayList;

    .line 85
    .line 86
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 87
    .line 88
    .line 89
    move-result v8

    .line 90
    move v9, v1

    .line 91
    :goto_3
    if-ge v9, v8, :cond_5

    .line 92
    .line 93
    iget-object v10, p0, Lcom/android/server/media/MediaRoute2ProviderWatcher;->mProxies:Ljava/util/ArrayList;

    .line 94
    .line 95
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v10

    .line 99
    check-cast v10, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;

    .line 100
    .line 101
    iget-object v11, v10, Lcom/android/server/media/MediaRoute2Provider;->mComponentName:Landroid/content/ComponentName;

    .line 102
    .line 103
    invoke-virtual {v11}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v11

    .line 107
    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 108
    .line 109
    .line 110
    move-result v11

    .line 111
    if-eqz v11, :cond_4

    .line 112
    .line 113
    iget-object v10, v10, Lcom/android/server/media/MediaRoute2Provider;->mComponentName:Landroid/content/ComponentName;

    .line 114
    .line 115
    invoke-virtual {v10}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v10

    .line 119
    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 120
    .line 121
    .line 122
    move-result v10

    .line 123
    if-eqz v10, :cond_4

    .line 124
    .line 125
    goto :goto_4

    .line 126
    :cond_4
    add-int/lit8 v9, v9, 0x1

    .line 127
    .line 128
    goto :goto_3

    .line 129
    :cond_5
    const/4 v9, -0x1

    .line 130
    :goto_4
    if-gez v9, :cond_6

    .line 131
    .line 132
    new-instance v3, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;

    .line 133
    .line 134
    iget-object v9, p0, Lcom/android/server/media/MediaRoute2ProviderWatcher;->mContext:Landroid/content/Context;

    .line 135
    .line 136
    iget-object v7, p0, Lcom/android/server/media/MediaRoute2ProviderWatcher;->mHandler:Landroid/os/Handler;

    .line 137
    .line 138
    invoke-virtual {v7}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 139
    .line 140
    .line 141
    move-result-object v10

    .line 142
    new-instance v11, Landroid/content/ComponentName;

    .line 143
    .line 144
    iget-object v7, v6, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 145
    .line 146
    iget-object v6, v6, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 147
    .line 148
    invoke-direct {v11, v7, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    iget v13, p0, Lcom/android/server/media/MediaRoute2ProviderWatcher;->mUserId:I

    .line 152
    .line 153
    move-object v8, v3

    .line 154
    invoke-direct/range {v8 .. v13}, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;-><init>(Landroid/content/Context;Landroid/os/Looper;Landroid/content/ComponentName;ZI)V

    .line 155
    .line 156
    .line 157
    new-instance v6, Ljava/lang/StringBuilder;

    .line 158
    .line 159
    const-string v7, "Enabling proxy for MediaRoute2ProviderService: "

    .line 160
    .line 161
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    iget-object v7, v3, Lcom/android/server/media/MediaRoute2Provider;->mComponentName:Landroid/content/ComponentName;

    .line 165
    .line 166
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v6

    .line 173
    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    .line 175
    .line 176
    invoke-virtual {v3, v1}, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->start(Z)V

    .line 177
    .line 178
    .line 179
    iget-object v5, p0, Lcom/android/server/media/MediaRoute2ProviderWatcher;->mProxies:Ljava/util/ArrayList;

    .line 180
    .line 181
    add-int/lit8 v6, v2, 0x1

    .line 182
    .line 183
    invoke-virtual {v5, v2, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 184
    .line 185
    .line 186
    check-cast v4, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    .line 187
    .line 188
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 189
    .line 190
    .line 191
    iput-object v4, v3, Lcom/android/server/media/MediaRoute2Provider;->mCallback:Lcom/android/server/media/MediaRoute2Provider$Callback;

    .line 192
    .line 193
    iget-object v2, v4, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mRouteProviders:Ljava/util/ArrayList;

    .line 194
    .line 195
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 196
    .line 197
    .line 198
    iget-object v2, v4, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mUserRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    .line 199
    .line 200
    iget-object v4, v2, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mActivelyScanningPackages:Ljava/util/Set;

    .line 201
    .line 202
    iget-object v2, v2, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mCompositeDiscoveryPreference:Landroid/media/RouteDiscoveryPreference;

    .line 203
    .line 204
    invoke-virtual {v3, v4, v2}, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->updateDiscoveryPreference(Ljava/util/Set;Landroid/media/RouteDiscoveryPreference;)V

    .line 205
    .line 206
    .line 207
    move v2, v6

    .line 208
    goto/16 :goto_0

    .line 209
    .line 210
    :cond_6
    if-lt v9, v2, :cond_1

    .line 211
    .line 212
    iget-object v3, p0, Lcom/android/server/media/MediaRoute2ProviderWatcher;->mProxies:Ljava/util/ArrayList;

    .line 213
    .line 214
    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 215
    .line 216
    .line 217
    move-result-object v3

    .line 218
    check-cast v3, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;

    .line 219
    .line 220
    invoke-static {}, Lcom/android/media/flags/Flags;->enablePreventionOfKeepAliveRouteProviders()Z

    .line 221
    .line 222
    .line 223
    move-result v4

    .line 224
    xor-int/lit8 v4, v4, 0x1

    .line 225
    .line 226
    invoke-virtual {v3, v4}, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->start(Z)V

    .line 227
    .line 228
    .line 229
    iget-object v3, p0, Lcom/android/server/media/MediaRoute2ProviderWatcher;->mProxies:Ljava/util/ArrayList;

    .line 230
    .line 231
    add-int/lit8 v4, v2, 0x1

    .line 232
    .line 233
    invoke-static {v3, v9, v2}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    .line 234
    .line 235
    .line 236
    move v2, v4

    .line 237
    goto/16 :goto_0

    .line 238
    .line 239
    :cond_7
    iget-object v0, p0, Lcom/android/server/media/MediaRoute2ProviderWatcher;->mProxies:Ljava/util/ArrayList;

    .line 240
    .line 241
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 242
    .line 243
    .line 244
    move-result v0

    .line 245
    if-ge v2, v0, :cond_8

    .line 246
    .line 247
    iget-object v0, p0, Lcom/android/server/media/MediaRoute2ProviderWatcher;->mProxies:Ljava/util/ArrayList;

    .line 248
    .line 249
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 250
    .line 251
    .line 252
    move-result v0

    .line 253
    add-int/lit8 v0, v0, -0x1

    .line 254
    .line 255
    :goto_5
    if-lt v0, v2, :cond_8

    .line 256
    .line 257
    iget-object v1, p0, Lcom/android/server/media/MediaRoute2ProviderWatcher;->mProxies:Ljava/util/ArrayList;

    .line 258
    .line 259
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 260
    .line 261
    .line 262
    move-result-object v1

    .line 263
    check-cast v1, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;

    .line 264
    .line 265
    new-instance v3, Ljava/lang/StringBuilder;

    .line 266
    .line 267
    const-string v6, "Disabling proxy for MediaRoute2ProviderService: "

    .line 268
    .line 269
    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 270
    .line 271
    .line 272
    iget-object v6, v1, Lcom/android/server/media/MediaRoute2Provider;->mComponentName:Landroid/content/ComponentName;

    .line 273
    .line 274
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 275
    .line 276
    .line 277
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 278
    .line 279
    .line 280
    move-result-object v3

    .line 281
    invoke-static {v5, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    .line 283
    .line 284
    move-object v3, v4

    .line 285
    check-cast v3, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    .line 286
    .line 287
    iget-object v3, v3, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mRouteProviders:Ljava/util/ArrayList;

    .line 288
    .line 289
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 290
    .line 291
    .line 292
    iget-object v3, p0, Lcom/android/server/media/MediaRoute2ProviderWatcher;->mProxies:Ljava/util/ArrayList;

    .line 293
    .line 294
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 295
    .line 296
    .line 297
    invoke-virtual {v1}, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->stop()V

    .line 298
    .line 299
    .line 300
    add-int/lit8 v0, v0, -0x1

    .line 301
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

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    sput-boolean v0, Lcom/android/server/media/MediaRoute2ProviderWatcher;->DEBUG:Z

    .line 9
    .line 10
    const-wide/16 v0, 0x40

    .line 11
    .line 12
    invoke-static {v0, v1}, Landroid/content/pm/PackageManager$ResolveInfoFlags;->of(J)Landroid/content/pm/PackageManager$ResolveInfoFlags;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    sput-object v0, Lcom/android/server/media/MediaRoute2ProviderWatcher;->RESOLVE_INFO_FLAGS:Landroid/content/pm/PackageManager$ResolveInfoFlags;

    .line 17
    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/media/MediaRoute2ProviderWatcher$Callback;Landroid/os/Handler;I)V
    .locals 1

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
    iput-object v0, p0, Lcom/android/server/media/MediaRoute2ProviderWatcher;->mProxies:Ljava/util/ArrayList;

    .line 10
    .line 11
    new-instance v0, Lcom/android/server/media/MediaRoute2ProviderWatcher$1;

    .line 12
    .line 13
    invoke-direct {v0, p0}, Lcom/android/server/media/MediaRoute2ProviderWatcher$1;-><init>(Lcom/android/server/media/MediaRoute2ProviderWatcher;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/server/media/MediaRoute2ProviderWatcher;->mScanPackagesReceiver:Lcom/android/server/media/MediaRoute2ProviderWatcher$1;

    .line 17
    .line 18
    iput-object p1, p0, Lcom/android/server/media/MediaRoute2ProviderWatcher;->mContext:Landroid/content/Context;

    .line 19
    .line 20
    iput-object p2, p0, Lcom/android/server/media/MediaRoute2ProviderWatcher;->mCallback:Lcom/android/server/media/MediaRoute2ProviderWatcher$Callback;

    .line 21
    .line 22
    iput-object p3, p0, Lcom/android/server/media/MediaRoute2ProviderWatcher;->mHandler:Landroid/os/Handler;

    .line 23
    .line 24
    iput p4, p0, Lcom/android/server/media/MediaRoute2ProviderWatcher;->mUserId:I

    .line 25
    .line 26
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    iput-object p1, p0, Lcom/android/server/media/MediaRoute2ProviderWatcher;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 31
    .line 32
    return-void
.end method
