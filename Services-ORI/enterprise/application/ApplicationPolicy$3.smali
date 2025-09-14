.class public final Lcom/android/server/enterprise/application/ApplicationPolicy$3;
.super Ljava/lang/Thread;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

.field public final synthetic val$uid:I

.field public final synthetic val$userId:I


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/application/ApplicationPolicy;II)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$3;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 2
    .line 3
    iput p2, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$3;->val$userId:I

    .line 4
    .line 5
    iput p3, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$3;->val$uid:I

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$3;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 2
    .line 3
    iget v1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$3;->val$userId:I

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->refreshWidgetStatus(I)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$3;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 9
    .line 10
    iget v1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$3;->val$userId:I

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->reconcileApplicationsState(I)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$3;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 16
    .line 17
    iget v1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$3;->val$uid:I

    .line 18
    .line 19
    iget-object v2, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mEdmService:Lcom/samsung/android/knox/IEnterpriseDeviceManager;

    .line 20
    .line 21
    if-nez v2, :cond_0

    .line 22
    .line 23
    const-string/jumbo v2, "enterprise_policy"

    .line 24
    .line 25
    .line 26
    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-static {v2}, Lcom/samsung/android/knox/IEnterpriseDeviceManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/IEnterpriseDeviceManager;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    iput-object v2, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mEdmService:Lcom/samsung/android/knox/IEnterpriseDeviceManager;

    .line 35
    .line 36
    :cond_0
    iget-object v2, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mEdmService:Lcom/samsung/android/knox/IEnterpriseDeviceManager;

    .line 37
    .line 38
    const-string v3, "ApplicationPolicy"

    .line 39
    .line 40
    if-eqz v2, :cond_1

    .line 41
    .line 42
    :try_start_0
    invoke-interface {v2}, Lcom/samsung/android/knox/IEnterpriseDeviceManager;->isMdmAdminPresent()Z

    .line 43
    .line 44
    .line 45
    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    goto :goto_0

    .line 47
    :catch_0
    move-exception v2

    .line 48
    const-string v4, "Failed talking with enterprise policy service"

    .line 49
    .line 50
    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 51
    .line 52
    .line 53
    :cond_1
    const/4 v2, 0x1

    .line 54
    :goto_0
    const-string v4, "ApplicationIcon"

    .line 55
    .line 56
    const-string/jumbo v5, "pkgname"

    .line 57
    .line 58
    .line 59
    const/4 v6, 0x0

    .line 60
    if-nez v2, :cond_7

    .line 61
    .line 62
    const-string/jumbo v2, "clearApplicationData"

    .line 63
    .line 64
    .line 65
    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    .line 67
    .line 68
    iget-object v2, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppIconDb:Lcom/android/server/enterprise/application/ApplicationIconDb;

    .line 69
    .line 70
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 71
    .line 72
    .line 73
    new-instance v3, Ljava/util/ArrayList;

    .line 74
    .line 75
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 76
    .line 77
    .line 78
    :try_start_1
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    if-eqz v2, :cond_4

    .line 83
    .line 84
    const-string v7, "SELECT * FROM ApplicationIcon"

    .line 85
    .line 86
    invoke-virtual {v2, v7, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    .line 87
    .line 88
    .line 89
    move-result-object v7
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 90
    :try_start_2
    invoke-interface {v7, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 91
    .line 92
    .line 93
    move-result v5

    .line 94
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 95
    .line 96
    .line 97
    move-result v8

    .line 98
    if-eqz v8, :cond_3

    .line 99
    .line 100
    :cond_2
    invoke-interface {v7, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v8

    .line 104
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 105
    .line 106
    .line 107
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    .line 108
    .line 109
    .line 110
    move-result v8

    .line 111
    if-nez v8, :cond_2

    .line 112
    .line 113
    goto :goto_1

    .line 114
    :catchall_0
    move-exception p0

    .line 115
    move-object v6, v7

    .line 116
    goto :goto_6

    .line 117
    :catch_1
    move-exception v2

    .line 118
    move-object v6, v7

    .line 119
    goto :goto_4

    .line 120
    :cond_3
    :goto_1
    invoke-virtual {v2, v4, v6, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 121
    .line 122
    .line 123
    move-object v6, v7

    .line 124
    goto :goto_2

    .line 125
    :catchall_1
    move-exception p0

    .line 126
    goto :goto_6

    .line 127
    :catch_2
    move-exception v2

    .line 128
    goto :goto_4

    .line 129
    :cond_4
    :goto_2
    if-eqz v6, :cond_5

    .line 130
    .line 131
    :goto_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 132
    .line 133
    .line 134
    goto :goto_5

    .line 135
    :goto_4
    :try_start_3
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 136
    .line 137
    .line 138
    if-eqz v6, :cond_5

    .line 139
    .line 140
    goto :goto_3

    .line 141
    :cond_5
    :goto_5
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    .line 142
    .line 143
    .line 144
    move-result v2

    .line 145
    invoke-virtual {v0, v2, v3}, Lcom/android/server/enterprise/application/ApplicationPolicy;->updateHashMapAndNotifyApplication(ILjava/util/List;)V

    .line 146
    .line 147
    .line 148
    iget-object v2, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppNameChangedPkgNameMap:Ljava/util/HashMap;

    .line 149
    .line 150
    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 151
    .line 152
    .line 153
    iget-object v2, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppIconChangedPkgNameMap:Ljava/util/HashMap;

    .line 154
    .line 155
    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 156
    .line 157
    .line 158
    goto/16 :goto_c

    .line 159
    .line 160
    :goto_6
    if-eqz v6, :cond_6

    .line 161
    .line 162
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 163
    .line 164
    .line 165
    :cond_6
    throw p0

    .line 166
    :cond_7
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 167
    .line 168
    .line 169
    move-result v2

    .line 170
    const-string/jumbo v7, "clearApplicationDataForUid - uid = "

    .line 171
    .line 172
    .line 173
    invoke-static {v1, v7, v3}, Lcom/android/server/NetworkScorerAppManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    iget-object v3, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppIconDb:Lcom/android/server/enterprise/application/ApplicationIconDb;

    .line 177
    .line 178
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 179
    .line 180
    .line 181
    const-string v7, "SELECT * FROM ApplicationIcon WHERE nameowner = "

    .line 182
    .line 183
    new-instance v8, Ljava/util/ArrayList;

    .line 184
    .line 185
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 186
    .line 187
    .line 188
    :try_start_4
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 189
    .line 190
    .line 191
    move-result-object v3

    .line 192
    if-eqz v3, :cond_a

    .line 193
    .line 194
    new-instance v9, Ljava/lang/StringBuilder;

    .line 195
    .line 196
    invoke-direct {v9, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 197
    .line 198
    .line 199
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 200
    .line 201
    .line 202
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v7

    .line 206
    invoke-virtual {v3, v7, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    .line 207
    .line 208
    .line 209
    move-result-object v7
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 210
    :try_start_5
    invoke-interface {v7, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 211
    .line 212
    .line 213
    move-result v5

    .line 214
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 215
    .line 216
    .line 217
    move-result v9

    .line 218
    if-eqz v9, :cond_9

    .line 219
    .line 220
    :cond_8
    invoke-interface {v7, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object v9

    .line 224
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 225
    .line 226
    .line 227
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    .line 228
    .line 229
    .line 230
    move-result v9

    .line 231
    if-nez v9, :cond_8

    .line 232
    .line 233
    goto :goto_7

    .line 234
    :catchall_2
    move-exception p0

    .line 235
    move-object v6, v7

    .line 236
    goto :goto_d

    .line 237
    :catch_3
    move-exception v3

    .line 238
    move-object v6, v7

    .line 239
    goto :goto_a

    .line 240
    :cond_9
    :goto_7
    new-instance v5, Ljava/lang/StringBuilder;

    .line 241
    .line 242
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 243
    .line 244
    .line 245
    const-string/jumbo v9, "nameowner = "

    .line 246
    .line 247
    .line 248
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    .line 250
    .line 251
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 252
    .line 253
    .line 254
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 255
    .line 256
    .line 257
    move-result-object v5

    .line 258
    invoke-virtual {v3, v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 259
    .line 260
    .line 261
    move-object v6, v7

    .line 262
    goto :goto_8

    .line 263
    :catchall_3
    move-exception p0

    .line 264
    goto :goto_d

    .line 265
    :catch_4
    move-exception v3

    .line 266
    goto :goto_a

    .line 267
    :cond_a
    :goto_8
    if-eqz v6, :cond_b

    .line 268
    .line 269
    :goto_9
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 270
    .line 271
    .line 272
    goto :goto_b

    .line 273
    :goto_a
    :try_start_6
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 274
    .line 275
    .line 276
    if-eqz v6, :cond_b

    .line 277
    .line 278
    goto :goto_9

    .line 279
    :cond_b
    :goto_b
    invoke-virtual {v0, v2, v8}, Lcom/android/server/enterprise/application/ApplicationPolicy;->updateHashMapAndNotifyApplication(ILjava/util/List;)V

    .line 280
    .line 281
    .line 282
    :goto_c
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 283
    .line 284
    .line 285
    move-result v1

    .line 286
    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->updateSystemUIMonitor(I)V

    .line 287
    .line 288
    .line 289
    iget-object v0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$3;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 290
    .line 291
    iget p0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$3;->val$userId:I

    .line 292
    .line 293
    invoke-virtual {v0, p0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->reconcileComponentsState(I)V

    .line 294
    .line 295
    .line 296
    return-void

    .line 297
    :goto_d
    if-eqz v6, :cond_c

    .line 298
    .line 299
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 300
    .line 301
    .line 302
    :cond_c
    throw p0
.end method
