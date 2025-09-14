.class public final Lcom/android/server/enterprise/firewall/DomainFilter$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/server/enterprise/firewall/DomainFilter;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/enterprise/firewall/DomainFilter;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/enterprise/firewall/DomainFilter$1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/enterprise/firewall/DomainFilter$1;->this$0:Lcom/android/server/enterprise/firewall/DomainFilter;

    .line 4
    .line 5
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private final onReceive$com$android$server$enterprise$firewall$DomainFilter$2(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8

    .line 1
    sget p1, Lcom/android/server/enterprise/firewall/DomainFilter;->MAX_LIST_SIZE_IN_BYTES:I

    .line 2
    .line 3
    const-string p1, "DomainFilter"

    .line 4
    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string/jumbo v1, "onReceive() - "

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    .line 22
    .line 23
    const-string p1, "android.intent.action.USER_REMOVED"

    .line 24
    .line 25
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    const/4 v0, -0x1

    .line 34
    if-eqz p1, :cond_0

    .line 35
    .line 36
    iget-object v1, p0, Lcom/android/server/enterprise/firewall/DomainFilter$1;->this$0:Lcom/android/server/enterprise/firewall/DomainFilter;

    .line 37
    .line 38
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    .line 40
    .line 41
    const-string p0, "DomainFilter"

    .line 42
    .line 43
    const-string/jumbo p1, "onUserRemoved()"

    .line 44
    .line 45
    .line 46
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    .line 48
    .line 49
    const-string p0, "android.intent.extra.user_handle"

    .line 50
    .line 51
    invoke-virtual {p2, p0, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 52
    .line 53
    .line 54
    move-result p0

    .line 55
    if-eq p0, v0, :cond_6

    .line 56
    .line 57
    const-string p1, "DomainFilter"

    .line 58
    .line 59
    new-instance p2, Ljava/lang/StringBuilder;

    .line 60
    .line 61
    const-string/jumbo v0, "onUserRemoved() - userId = "

    .line 62
    .line 63
    .line 64
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p2

    .line 74
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    .line 76
    .line 77
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    iget-object p2, v1, Lcom/android/server/enterprise/firewall/DomainFilter;->mUserIdMapLock:Ljava/lang/Object;

    .line 82
    .line 83
    monitor-enter p2

    .line 84
    :try_start_0
    iget-object v0, v1, Lcom/android/server/enterprise/firewall/DomainFilter;->mUserIdMap:Ljava/util/Map;

    .line 85
    .line 86
    check-cast v0, Ljava/util/HashMap;

    .line 87
    .line 88
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    iget-object p2, v1, Lcom/android/server/enterprise/firewall/DomainFilter;->mDomainReportCache:Ljava/util/Set;

    .line 93
    .line 94
    check-cast p2, Ljava/util/HashSet;

    .line 95
    .line 96
    invoke-virtual {p2, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    move-result p2

    .line 100
    if-eqz p2, :cond_6

    .line 101
    .line 102
    iget-object p2, v1, Lcom/android/server/enterprise/firewall/DomainFilter;->mDomainReportCache:Ljava/util/Set;

    .line 103
    .line 104
    check-cast p2, Ljava/util/HashSet;

    .line 105
    .line 106
    invoke-virtual {p2, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 107
    .line 108
    .line 109
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v3

    .line 113
    const/4 v6, 0x0

    .line 114
    const/4 v7, 0x0

    .line 115
    const/4 v2, 0x2

    .line 116
    const/4 v4, 0x0

    .line 117
    const/4 v5, 0x0

    .line 118
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/enterprise/firewall/DomainFilter;->sendToCache(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    goto/16 :goto_5

    .line 122
    .line 123
    :catchall_0
    move-exception p0

    .line 124
    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 125
    throw p0

    .line 126
    :cond_0
    const-string p1, "android.intent.action.USER_ADDED"

    .line 127
    .line 128
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v1

    .line 132
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 133
    .line 134
    .line 135
    move-result p1

    .line 136
    if-eqz p1, :cond_6

    .line 137
    .line 138
    iget-object p0, p0, Lcom/android/server/enterprise/firewall/DomainFilter$1;->this$0:Lcom/android/server/enterprise/firewall/DomainFilter;

    .line 139
    .line 140
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 141
    .line 142
    .line 143
    const-string p1, "DomainFilter"

    .line 144
    .line 145
    const-string/jumbo v1, "onUserAdded()"

    .line 146
    .line 147
    .line 148
    invoke-static {p1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    .line 150
    .line 151
    const-string p1, "android.intent.extra.user_handle"

    .line 152
    .line 153
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 154
    .line 155
    .line 156
    move-result p1

    .line 157
    if-eq p1, v0, :cond_6

    .line 158
    .line 159
    const-string p2, "DomainFilter"

    .line 160
    .line 161
    const-string/jumbo v0, "onUserAdded() - userId = "

    .line 162
    .line 163
    .line 164
    invoke-static {p1, v0, p2}, Lcom/android/server/DirEncryptService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    iget-object p2, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mUserIdMapLock:Ljava/lang/Object;

    .line 168
    .line 169
    monitor-enter p2

    .line 170
    :try_start_2
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mUserIdMap:Ljava/util/Map;

    .line 171
    .line 172
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 173
    .line 174
    .line 175
    move-result-object v1

    .line 176
    check-cast v0, Ljava/util/HashMap;

    .line 177
    .line 178
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    .line 180
    .line 181
    move-result-object v0

    .line 182
    check-cast v0, Ljava/util/Map;

    .line 183
    .line 184
    if-nez v0, :cond_2

    .line 185
    .line 186
    new-instance v0, Ljava/util/HashMap;

    .line 187
    .line 188
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 189
    .line 190
    .line 191
    iget-object v1, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mContext:Landroid/content/Context;

    .line 192
    .line 193
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 194
    .line 195
    .line 196
    move-result-object v1

    .line 197
    const/16 v2, 0x40

    .line 198
    .line 199
    invoke-virtual {v1, v2, p1}, Landroid/content/pm/PackageManager;->getInstalledPackagesAsUser(II)Ljava/util/List;

    .line 200
    .line 201
    .line 202
    move-result-object v1

    .line 203
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 204
    .line 205
    .line 206
    move-result-object v2

    .line 207
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 208
    .line 209
    .line 210
    move-result v3

    .line 211
    if-eqz v3, :cond_1

    .line 212
    .line 213
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 214
    .line 215
    .line 216
    move-result-object v3

    .line 217
    check-cast v3, Landroid/content/pm/PackageInfo;

    .line 218
    .line 219
    iget-object v3, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 220
    .line 221
    iget-object v4, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 222
    .line 223
    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 224
    .line 225
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 226
    .line 227
    .line 228
    move-result-object v3

    .line 229
    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    .line 231
    .line 232
    goto :goto_0

    .line 233
    :catchall_1
    move-exception p0

    .line 234
    goto :goto_4

    .line 235
    :cond_1
    iget-object v2, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mUserIdMap:Ljava/util/Map;

    .line 236
    .line 237
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 238
    .line 239
    .line 240
    move-result-object p1

    .line 241
    check-cast v2, Ljava/util/HashMap;

    .line 242
    .line 243
    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    .line 245
    .line 246
    goto :goto_1

    .line 247
    :cond_2
    const/4 v1, 0x0

    .line 248
    :goto_1
    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 249
    iget-object p1, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mExceptionListLock:Ljava/lang/Object;

    .line 250
    .line 251
    monitor-enter p1

    .line 252
    :try_start_3
    iget-boolean p2, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mIsExceptionListApplied:Z

    .line 253
    .line 254
    if-nez p2, :cond_3

    .line 255
    .line 256
    monitor-exit p1

    .line 257
    goto :goto_5

    .line 258
    :catchall_2
    move-exception p0

    .line 259
    goto :goto_3

    .line 260
    :cond_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 261
    if-eqz v1, :cond_4

    .line 262
    .line 263
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 264
    .line 265
    .line 266
    move-result p1

    .line 267
    if-nez p1, :cond_4

    .line 268
    .line 269
    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/firewall/DomainFilter;->processPackageExceptionList(Ljava/util/List;)V

    .line 270
    .line 271
    .line 272
    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/firewall/DomainFilter;->processPlatformPackageExceptionList(Ljava/util/List;)V

    .line 273
    .line 274
    .line 275
    :cond_4
    iget-object p2, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mKGExceptionListLock:Ljava/lang/Object;

    .line 276
    .line 277
    monitor-enter p2

    .line 278
    :try_start_4
    iget-boolean p1, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mIsKGExceptionApplied:Z

    .line 279
    .line 280
    if-nez p1, :cond_5

    .line 281
    .line 282
    monitor-exit p2

    .line 283
    goto :goto_5

    .line 284
    :catchall_3
    move-exception p0

    .line 285
    goto :goto_2

    .line 286
    :cond_5
    monitor-exit p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 287
    if-eqz v1, :cond_6

    .line 288
    .line 289
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 290
    .line 291
    .line 292
    move-result p1

    .line 293
    if-nez p1, :cond_6

    .line 294
    .line 295
    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/firewall/DomainFilter;->processKGPackageException(Ljava/util/List;)V

    .line 296
    .line 297
    .line 298
    goto :goto_5

    .line 299
    :goto_2
    :try_start_5
    monitor-exit p2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 300
    throw p0

    .line 301
    :goto_3
    :try_start_6
    monitor-exit p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 302
    throw p0

    .line 303
    :goto_4
    :try_start_7
    monitor-exit p2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 304
    throw p0

    .line 305
    :cond_6
    :goto_5
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8

    .line 1
    iget v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter$1;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    sget p1, Lcom/android/server/enterprise/firewall/DomainFilter;->MAX_LIST_SIZE_IN_BYTES:I

    .line 7
    .line 8
    new-instance p1, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    const-string/jumbo v0, "onReceive() - "

    .line 11
    .line 12
    .line 13
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    const-string v0, "DomainFilter"

    .line 24
    .line 25
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    const-string v0, "android.intent.action.LOCKED_BOOT_COMPLETED"

    .line 33
    .line 34
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    if-nez p1, :cond_0

    .line 39
    .line 40
    const-string/jumbo p1, "com.samsung.android.knox.intent.action.EDM_BOOT_COMPLETED_INTERNAL"

    .line 41
    .line 42
    .line 43
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p2

    .line 47
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    if-eqz p1, :cond_1

    .line 52
    .line 53
    :cond_0
    new-instance p1, Ljava/lang/Thread;

    .line 54
    .line 55
    new-instance p2, Lcom/android/server/enterprise/firewall/DomainFilter$4;

    .line 56
    .line 57
    const/4 v0, 0x1

    .line 58
    invoke-direct {p2, v0, p0}, Lcom/android/server/enterprise/firewall/DomainFilter$4;-><init>(ILjava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    invoke-direct {p1, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 65
    .line 66
    .line 67
    :cond_1
    return-void

    .line 68
    :pswitch_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/firewall/DomainFilter$1;->onReceive$com$android$server$enterprise$firewall$DomainFilter$2(Landroid/content/Context;Landroid/content/Intent;)V

    .line 69
    .line 70
    .line 71
    return-void

    .line 72
    :pswitch_1
    sget p1, Lcom/android/server/enterprise/firewall/DomainFilter;->MAX_LIST_SIZE_IN_BYTES:I

    .line 73
    .line 74
    const-string p1, "DomainFilter"

    .line 75
    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    .line 77
    .line 78
    const-string/jumbo v1, "onReceive() - "

    .line 79
    .line 80
    .line 81
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    .line 93
    .line 94
    const-string p1, "android.intent.action.PACKAGE_ADDED"

    .line 95
    .line 96
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 101
    .line 102
    .line 103
    move-result p1

    .line 104
    if-eqz p1, :cond_2

    .line 105
    .line 106
    iget-object p0, p0, Lcom/android/server/enterprise/firewall/DomainFilter$1;->this$0:Lcom/android/server/enterprise/firewall/DomainFilter;

    .line 107
    .line 108
    invoke-virtual {p0, p2}, Lcom/android/server/enterprise/firewall/DomainFilter;->packageAdded(Landroid/content/Intent;)V

    .line 109
    .line 110
    .line 111
    goto/16 :goto_5

    .line 112
    .line 113
    :cond_2
    const-string p1, "android.intent.action.PACKAGE_REMOVED"

    .line 114
    .line 115
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 120
    .line 121
    .line 122
    move-result p1

    .line 123
    const/4 v0, -0x1

    .line 124
    if-eqz p1, :cond_7

    .line 125
    .line 126
    iget-object v1, p0, Lcom/android/server/enterprise/firewall/DomainFilter$1;->this$0:Lcom/android/server/enterprise/firewall/DomainFilter;

    .line 127
    .line 128
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 129
    .line 130
    .line 131
    const-string p0, "android.intent.extra.user_handle"

    .line 132
    .line 133
    invoke-virtual {p2, p0, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 134
    .line 135
    .line 136
    move-result p0

    .line 137
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 138
    .line 139
    .line 140
    move-result-object p1

    .line 141
    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object p1

    .line 145
    const-string p2, "DomainFilter"

    .line 146
    .line 147
    new-instance v2, Ljava/lang/StringBuilder;

    .line 148
    .line 149
    const-string/jumbo v3, "packageRemoved() - packageName: "

    .line 150
    .line 151
    .line 152
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    const-string v3, " uid: "

    .line 159
    .line 160
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v2

    .line 170
    invoke-static {p2, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    .line 172
    .line 173
    if-eq p0, v0, :cond_d

    .line 174
    .line 175
    if-eqz p1, :cond_d

    .line 176
    .line 177
    iget-object p2, v1, Lcom/android/server/enterprise/firewall/DomainFilter;->mUserIdMapLock:Ljava/lang/Object;

    .line 178
    .line 179
    monitor-enter p2

    .line 180
    :try_start_0
    iget-object v2, v1, Lcom/android/server/enterprise/firewall/DomainFilter;->mUserIdMap:Ljava/util/Map;

    .line 181
    .line 182
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 183
    .line 184
    .line 185
    move-result-object v3

    .line 186
    check-cast v2, Ljava/util/HashMap;

    .line 187
    .line 188
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    .line 190
    .line 191
    move-result-object v2

    .line 192
    check-cast v2, Ljava/util/Map;

    .line 193
    .line 194
    if-eqz v2, :cond_3

    .line 195
    .line 196
    invoke-interface {v2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 197
    .line 198
    .line 199
    move-result v3

    .line 200
    if-eqz v3, :cond_3

    .line 201
    .line 202
    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    .line 204
    .line 205
    move-result-object v3

    .line 206
    check-cast v3, Ljava/lang/Integer;

    .line 207
    .line 208
    invoke-virtual {v3}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object v3

    .line 212
    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    .line 214
    .line 215
    goto :goto_0

    .line 216
    :catchall_0
    move-exception p0

    .line 217
    goto/16 :goto_2

    .line 218
    .line 219
    :cond_3
    const/4 v2, 0x0

    .line 220
    move-object v3, v2

    .line 221
    :goto_0
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 222
    if-eqz v3, :cond_d

    .line 223
    .line 224
    new-instance p2, Landroid/content/ContentValues;

    .line 225
    .line 226
    invoke-direct {p2}, Landroid/content/ContentValues;-><init>()V

    .line 227
    .line 228
    .line 229
    const/4 v2, 0x0

    .line 230
    invoke-static {v2, p0}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getAdminLUIDWhereIn(II)Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object p0

    .line 234
    const-string v4, "#SelectClause#"

    .line 235
    .line 236
    invoke-virtual {p2, p0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    .line 238
    .line 239
    const-string/jumbo p0, "packageName"

    .line 240
    .line 241
    .line 242
    invoke-virtual {p2, p0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    .line 244
    .line 245
    iget-object p0, v1, Lcom/android/server/enterprise/firewall/DomainFilter;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 246
    .line 247
    const-string p1, "DomainFilterTable"

    .line 248
    .line 249
    const-string/jumbo v4, "networkId"

    .line 250
    .line 251
    .line 252
    filled-new-array {v4}, [Ljava/lang/String;

    .line 253
    .line 254
    .line 255
    move-result-object v4

    .line 256
    invoke-virtual {p0, p1, v4, p2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getValues(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    .line 257
    .line 258
    .line 259
    move-result-object p0

    .line 260
    check-cast p0, Ljava/util/ArrayList;

    .line 261
    .line 262
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 263
    .line 264
    .line 265
    move-result p1

    .line 266
    if-eqz p1, :cond_4

    .line 267
    .line 268
    goto/16 :goto_5

    .line 269
    .line 270
    :cond_4
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 271
    .line 272
    .line 273
    move-result-object p0

    .line 274
    check-cast p0, Landroid/content/ContentValues;

    .line 275
    .line 276
    const-string/jumbo p1, "networkId"

    .line 277
    .line 278
    .line 279
    invoke-virtual {p0, p1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    .line 280
    .line 281
    .line 282
    move-result-object p1

    .line 283
    if-eqz p1, :cond_5

    .line 284
    .line 285
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 286
    .line 287
    .line 288
    move-result p1

    .line 289
    goto :goto_1

    .line 290
    :cond_5
    move p1, v0

    .line 291
    :goto_1
    if-eq p1, v0, :cond_6

    .line 292
    .line 293
    iget-object v4, v1, Lcom/android/server/enterprise/firewall/DomainFilter;->mNetworkHandler:Lcom/android/server/enterprise/firewall/DomainFilter$NetworkManagementHandler;

    .line 294
    .line 295
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 296
    .line 297
    .line 298
    move-result-object v5

    .line 299
    invoke-static {v4, v2, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    .line 300
    .line 301
    .line 302
    move-result-object v2

    .line 303
    iget-object v4, v1, Lcom/android/server/enterprise/firewall/DomainFilter;->mNetworkHandler:Lcom/android/server/enterprise/firewall/DomainFilter$NetworkManagementHandler;

    .line 304
    .line 305
    invoke-virtual {v4, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 306
    .line 307
    .line 308
    const-string/jumbo v2, "networkId"

    .line 309
    .line 310
    .line 311
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 312
    .line 313
    .line 314
    move-result-object v0

    .line 315
    invoke-virtual {p0, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 316
    .line 317
    .line 318
    iget-object v0, v1, Lcom/android/server/enterprise/firewall/DomainFilter;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 319
    .line 320
    const-string v2, "DomainFilterTable"

    .line 321
    .line 322
    invoke-virtual {v0, v2, p0, p2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->put(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    .line 323
    .line 324
    .line 325
    :cond_6
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 326
    .line 327
    .line 328
    move-result-object v7

    .line 329
    const/4 v2, 0x2

    .line 330
    const/4 v6, 0x0

    .line 331
    const/4 v4, 0x0

    .line 332
    const/4 v5, 0x0

    .line 333
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/enterprise/firewall/DomainFilter;->sendToCache(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    .line 334
    .line 335
    .line 336
    goto/16 :goto_5

    .line 337
    .line 338
    :goto_2
    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 339
    throw p0

    .line 340
    :cond_7
    const-string p1, "android.intent.action.PACKAGE_REPLACED"

    .line 341
    .line 342
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 343
    .line 344
    .line 345
    move-result-object v1

    .line 346
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 347
    .line 348
    .line 349
    move-result p1

    .line 350
    if-eqz p1, :cond_d

    .line 351
    .line 352
    iget-object v1, p0, Lcom/android/server/enterprise/firewall/DomainFilter$1;->this$0:Lcom/android/server/enterprise/firewall/DomainFilter;

    .line 353
    .line 354
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 355
    .line 356
    .line 357
    const-string p0, "android.intent.extra.user_handle"

    .line 358
    .line 359
    invoke-virtual {p2, p0, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 360
    .line 361
    .line 362
    move-result p0

    .line 363
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 364
    .line 365
    .line 366
    move-result-object p1

    .line 367
    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    .line 368
    .line 369
    .line 370
    move-result-object p1

    .line 371
    if-eq p0, v0, :cond_c

    .line 372
    .line 373
    if-nez p1, :cond_8

    .line 374
    .line 375
    goto/16 :goto_4

    .line 376
    .line 377
    :cond_8
    iget-object v2, v1, Lcom/android/server/enterprise/firewall/DomainFilter;->mUserIdMapLock:Ljava/lang/Object;

    .line 378
    .line 379
    monitor-enter v2

    .line 380
    :try_start_2
    iget-object v3, v1, Lcom/android/server/enterprise/firewall/DomainFilter;->mUserIdMap:Ljava/util/Map;

    .line 381
    .line 382
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 383
    .line 384
    .line 385
    move-result-object v4

    .line 386
    check-cast v3, Ljava/util/HashMap;

    .line 387
    .line 388
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 389
    .line 390
    .line 391
    move-result-object v3

    .line 392
    check-cast v3, Ljava/util/Map;

    .line 393
    .line 394
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 395
    if-eqz v3, :cond_b

    .line 396
    .line 397
    invoke-interface {v3, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 398
    .line 399
    .line 400
    move-result v2

    .line 401
    if-nez v2, :cond_9

    .line 402
    .line 403
    goto :goto_3

    .line 404
    :cond_9
    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 405
    .line 406
    .line 407
    move-result-object p2

    .line 408
    check-cast p2, Ljava/lang/Integer;

    .line 409
    .line 410
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 411
    .line 412
    .line 413
    move-result p2

    .line 414
    invoke-virtual {v1, p0, p1}, Lcom/android/server/enterprise/firewall/DomainFilter;->getApplicationUid(ILjava/lang/String;)I

    .line 415
    .line 416
    .line 417
    move-result v2

    .line 418
    const-string v3, "DomainFilter"

    .line 419
    .line 420
    const-string/jumbo v4, "packageReplaced() - packageName: "

    .line 421
    .line 422
    .line 423
    const-string v5, " oldUid: "

    .line 424
    .line 425
    const-string v6, " newUid:"

    .line 426
    .line 427
    invoke-static {p2, v4, p1, v5, v6}, Lcom/android/server/StorageManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 428
    .line 429
    .line 430
    move-result-object v4

    .line 431
    invoke-static {v4, v2, v3}, Lcom/android/server/UiModeManagerService$13$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 432
    .line 433
    .line 434
    if-ne v2, v0, :cond_a

    .line 435
    .line 436
    const-string p0, "DomainFilter"

    .line 437
    .line 438
    const-string p1, "ackageReplaced() - Failed to retrieve app info"

    .line 439
    .line 440
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    .line 442
    .line 443
    goto :goto_5

    .line 444
    :cond_a
    iget-object v0, v1, Lcom/android/server/enterprise/firewall/DomainFilter;->mUserIdMapLock:Ljava/lang/Object;

    .line 445
    .line 446
    monitor-enter v0

    .line 447
    :try_start_3
    iget-object v3, v1, Lcom/android/server/enterprise/firewall/DomainFilter;->mUserIdMap:Ljava/util/Map;

    .line 448
    .line 449
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 450
    .line 451
    .line 452
    move-result-object p0

    .line 453
    check-cast v3, Ljava/util/HashMap;

    .line 454
    .line 455
    invoke-virtual {v3, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 456
    .line 457
    .line 458
    move-result-object p0

    .line 459
    check-cast p0, Ljava/util/Map;

    .line 460
    .line 461
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 462
    .line 463
    .line 464
    move-result-object v3

    .line 465
    invoke-interface {p0, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 466
    .line 467
    .line 468
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 469
    if-eq p2, v2, :cond_d

    .line 470
    .line 471
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 472
    .line 473
    .line 474
    move-result-object v3

    .line 475
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 476
    .line 477
    .line 478
    move-result-object v4

    .line 479
    const/4 v6, 0x0

    .line 480
    const/4 v7, 0x0

    .line 481
    const/4 v2, 0x3

    .line 482
    const/4 v5, 0x0

    .line 483
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/enterprise/firewall/DomainFilter;->sendToCache(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    .line 484
    .line 485
    .line 486
    goto :goto_5

    .line 487
    :catchall_1
    move-exception p0

    .line 488
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 489
    throw p0

    .line 490
    :cond_b
    :goto_3
    invoke-virtual {v1, p2}, Lcom/android/server/enterprise/firewall/DomainFilter;->packageAdded(Landroid/content/Intent;)V

    .line 491
    .line 492
    .line 493
    goto :goto_5

    .line 494
    :catchall_2
    move-exception p0

    .line 495
    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 496
    throw p0

    .line 497
    :cond_c
    :goto_4
    const-string p0, "DomainFilter"

    .line 498
    .line 499
    const-string/jumbo p1, "packageReplaced() - Received invalid user id or package name, can\'t retrieve application info"

    .line 500
    .line 501
    .line 502
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    .line 504
    .line 505
    :cond_d
    :goto_5
    return-void

    .line 506
    nop

    .line 507
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
