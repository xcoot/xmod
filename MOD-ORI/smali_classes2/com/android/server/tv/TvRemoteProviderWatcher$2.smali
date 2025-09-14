.class public final Lcom/android/server/tv/TvRemoteProviderWatcher$2;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/server/tv/TvRemoteProviderWatcher;


# direct methods
.method public constructor <init>(Lcom/android/server/tv/TvRemoteProviderWatcher;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/tv/TvRemoteProviderWatcher$2;->this$0:Lcom/android/server/tv/TvRemoteProviderWatcher;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 13

    .line 1
    iget-object p0, p0, Lcom/android/server/tv/TvRemoteProviderWatcher$2;->this$0:Lcom/android/server/tv/TvRemoteProviderWatcher;

    .line 2
    .line 3
    iget-boolean v0, p0, Lcom/android/server/tv/TvRemoteProviderWatcher;->mRunning:Z

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto/16 :goto_4

    .line 8
    .line 9
    :cond_0
    sget-boolean v0, Lcom/android/server/tv/TvRemoteProviderWatcher;->DEBUG:Z

    .line 10
    .line 11
    const-string v1, "TvRemoteProviderWatcher"

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    const-string/jumbo v2, "scanPackages()"

    .line 16
    .line 17
    .line 18
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    :cond_1
    new-instance v2, Landroid/content/Intent;

    .line 22
    .line 23
    const-string v3, "com.android.media.tv.remoteprovider.TvRemoteProvider"

    .line 24
    .line 25
    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    iget-object v3, p0, Lcom/android/server/tv/TvRemoteProviderWatcher;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 29
    .line 30
    const/4 v4, 0x0

    .line 31
    iget v5, p0, Lcom/android/server/tv/TvRemoteProviderWatcher;->mUserId:I

    .line 32
    .line 33
    invoke-virtual {v3, v2, v4, v5}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    move v3, v4

    .line 42
    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 43
    .line 44
    .line 45
    move-result v6

    .line 46
    if-eqz v6, :cond_7

    .line 47
    .line 48
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v6

    .line 52
    check-cast v6, Landroid/content/pm/ResolveInfo;

    .line 53
    .line 54
    iget-object v6, v6, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 55
    .line 56
    if-eqz v6, :cond_2

    .line 57
    .line 58
    invoke-virtual {p0, v6}, Lcom/android/server/tv/TvRemoteProviderWatcher;->verifyServiceTrusted(Landroid/content/pm/ServiceInfo;)Z

    .line 59
    .line 60
    .line 61
    move-result v7

    .line 62
    if-eqz v7, :cond_2

    .line 63
    .line 64
    iget-object v7, v6, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 65
    .line 66
    iget-object v8, v6, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 67
    .line 68
    iget-object v9, p0, Lcom/android/server/tv/TvRemoteProviderWatcher;->mProviderProxies:Ljava/util/ArrayList;

    .line 69
    .line 70
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    .line 71
    .line 72
    .line 73
    move-result v9

    .line 74
    move v10, v4

    .line 75
    :goto_1
    if-ge v10, v9, :cond_4

    .line 76
    .line 77
    iget-object v11, p0, Lcom/android/server/tv/TvRemoteProviderWatcher;->mProviderProxies:Ljava/util/ArrayList;

    .line 78
    .line 79
    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v11

    .line 83
    check-cast v11, Lcom/android/server/tv/TvRemoteProviderProxy;

    .line 84
    .line 85
    iget-object v12, v11, Lcom/android/server/tv/TvRemoteProviderProxy;->mComponentName:Landroid/content/ComponentName;

    .line 86
    .line 87
    invoke-virtual {v12}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v12

    .line 91
    invoke-virtual {v12, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    move-result v12

    .line 95
    if-eqz v12, :cond_3

    .line 96
    .line 97
    iget-object v11, v11, Lcom/android/server/tv/TvRemoteProviderProxy;->mComponentName:Landroid/content/ComponentName;

    .line 98
    .line 99
    invoke-virtual {v11}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v11

    .line 103
    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 104
    .line 105
    .line 106
    move-result v11

    .line 107
    if-eqz v11, :cond_3

    .line 108
    .line 109
    goto :goto_2

    .line 110
    :cond_3
    add-int/lit8 v10, v10, 0x1

    .line 111
    .line 112
    goto :goto_1

    .line 113
    :cond_4
    const/4 v10, -0x1

    .line 114
    :goto_2
    if-gez v10, :cond_5

    .line 115
    .line 116
    new-instance v7, Lcom/android/server/tv/TvRemoteProviderProxy;

    .line 117
    .line 118
    iget-object v8, p0, Lcom/android/server/tv/TvRemoteProviderWatcher;->mContext:Landroid/content/Context;

    .line 119
    .line 120
    new-instance v9, Landroid/content/ComponentName;

    .line 121
    .line 122
    iget-object v10, v6, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 123
    .line 124
    iget-object v11, v6, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 125
    .line 126
    invoke-direct {v9, v10, v11}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    iget-object v6, v6, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 130
    .line 131
    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 132
    .line 133
    iget-object v6, p0, Lcom/android/server/tv/TvRemoteProviderWatcher;->mLock:Ljava/lang/Object;

    .line 134
    .line 135
    invoke-direct {v7, v8, v6, v9, v5}, Lcom/android/server/tv/TvRemoteProviderProxy;-><init>(Landroid/content/Context;Ljava/lang/Object;Landroid/content/ComponentName;I)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v7}, Lcom/android/server/tv/TvRemoteProviderProxy;->start()V

    .line 139
    .line 140
    .line 141
    iget-object v6, p0, Lcom/android/server/tv/TvRemoteProviderWatcher;->mProviderProxies:Ljava/util/ArrayList;

    .line 142
    .line 143
    add-int/lit8 v8, v3, 0x1

    .line 144
    .line 145
    invoke-virtual {v6, v3, v7}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 146
    .line 147
    .line 148
    move v3, v8

    .line 149
    goto :goto_0

    .line 150
    :cond_5
    if-lt v10, v3, :cond_2

    .line 151
    .line 152
    iget-object v6, p0, Lcom/android/server/tv/TvRemoteProviderWatcher;->mProviderProxies:Ljava/util/ArrayList;

    .line 153
    .line 154
    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    move-result-object v6

    .line 158
    check-cast v6, Lcom/android/server/tv/TvRemoteProviderProxy;

    .line 159
    .line 160
    invoke-virtual {v6}, Lcom/android/server/tv/TvRemoteProviderProxy;->start()V

    .line 161
    .line 162
    .line 163
    iget-boolean v7, v6, Lcom/android/server/tv/TvRemoteProviderProxy;->mRunning:Z

    .line 164
    .line 165
    if-eqz v7, :cond_6

    .line 166
    .line 167
    iget-boolean v7, v6, Lcom/android/server/tv/TvRemoteProviderProxy;->mConnected:Z

    .line 168
    .line 169
    if-nez v7, :cond_6

    .line 170
    .line 171
    invoke-virtual {v6}, Lcom/android/server/tv/TvRemoteProviderProxy;->unbind()V

    .line 172
    .line 173
    .line 174
    invoke-virtual {v6}, Lcom/android/server/tv/TvRemoteProviderProxy;->bind()V

    .line 175
    .line 176
    .line 177
    :cond_6
    iget-object v6, p0, Lcom/android/server/tv/TvRemoteProviderWatcher;->mProviderProxies:Ljava/util/ArrayList;

    .line 178
    .line 179
    add-int/lit8 v7, v3, 0x1

    .line 180
    .line 181
    invoke-static {v6, v10, v3}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    .line 182
    .line 183
    .line 184
    move v3, v7

    .line 185
    goto/16 :goto_0

    .line 186
    .line 187
    :cond_7
    if-eqz v0, :cond_8

    .line 188
    .line 189
    const-string/jumbo v0, "scanPackages() targetIndex "

    .line 190
    .line 191
    .line 192
    invoke-static {v3, v0, v1}, Lcom/android/server/NetworkScorerAppManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 193
    .line 194
    .line 195
    :cond_8
    iget-object v0, p0, Lcom/android/server/tv/TvRemoteProviderWatcher;->mProviderProxies:Ljava/util/ArrayList;

    .line 196
    .line 197
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 198
    .line 199
    .line 200
    move-result v0

    .line 201
    if-ge v3, v0, :cond_b

    .line 202
    .line 203
    iget-object v0, p0, Lcom/android/server/tv/TvRemoteProviderWatcher;->mProviderProxies:Ljava/util/ArrayList;

    .line 204
    .line 205
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 206
    .line 207
    .line 208
    move-result v0

    .line 209
    add-int/lit8 v0, v0, -0x1

    .line 210
    .line 211
    :goto_3
    if-lt v0, v3, :cond_b

    .line 212
    .line 213
    iget-object v1, p0, Lcom/android/server/tv/TvRemoteProviderWatcher;->mProviderProxies:Ljava/util/ArrayList;

    .line 214
    .line 215
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 216
    .line 217
    .line 218
    move-result-object v1

    .line 219
    check-cast v1, Lcom/android/server/tv/TvRemoteProviderProxy;

    .line 220
    .line 221
    iget-object v2, p0, Lcom/android/server/tv/TvRemoteProviderWatcher;->mProviderProxies:Ljava/util/ArrayList;

    .line 222
    .line 223
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 224
    .line 225
    .line 226
    iget-boolean v2, v1, Lcom/android/server/tv/TvRemoteProviderProxy;->mRunning:Z

    .line 227
    .line 228
    if-eqz v2, :cond_a

    .line 229
    .line 230
    sget-boolean v2, Lcom/android/server/tv/TvRemoteProviderProxy;->DEBUG:Z

    .line 231
    .line 232
    if-eqz v2, :cond_9

    .line 233
    .line 234
    new-instance v2, Ljava/lang/StringBuilder;

    .line 235
    .line 236
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 237
    .line 238
    .line 239
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 240
    .line 241
    .line 242
    const-string v5, ": Stopping"

    .line 243
    .line 244
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    .line 246
    .line 247
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 248
    .line 249
    .line 250
    move-result-object v2

    .line 251
    const-string v5, "TvRemoteProviderProxy"

    .line 252
    .line 253
    invoke-static {v5, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    .line 255
    .line 256
    :cond_9
    iput-boolean v4, v1, Lcom/android/server/tv/TvRemoteProviderProxy;->mRunning:Z

    .line 257
    .line 258
    invoke-virtual {v1}, Lcom/android/server/tv/TvRemoteProviderProxy;->unbind()V

    .line 259
    .line 260
    .line 261
    :cond_a
    add-int/lit8 v0, v0, -0x1

    .line 262
    .line 263
    goto :goto_3

    .line 264
    :cond_b
    :goto_4
    return-void
.end method
