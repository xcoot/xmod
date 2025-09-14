.class public final synthetic Lcom/android/server/am/UserController$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(IILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda9;->$r8$classId:I

    .line 3
    iput-object p3, p0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda9;->f$0:Ljava/lang/Object;

    .line 5
    iput p1, p0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda9;->f$1:I

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 3
    iget v1, v0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda9;->$r8$classId:I

    .line 5
    packed-switch v1, :pswitch_data_0

    .line 8
    iget-object v1, v0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda9;->f$0:Ljava/lang/Object;

    .line 10
    check-cast v1, Landroid/appwidget/AppWidgetManagerInternal;

    .line 12
    iget v0, v0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda9;->f$1:I

    .line 14
    invoke-virtual {v1, v0}, Landroid/appwidget/AppWidgetManagerInternal;->unlockUser(I)V

    .line 17
    return-void

    .line 18
    :pswitch_0
    iget-object v1, v0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda9;->f$0:Ljava/lang/Object;

    .line 20
    check-cast v1, Landroid/app/IStopUserCallback;

    .line 22
    iget v0, v0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda9;->f$1:I

    .line 24
    :try_start_0
    invoke-interface {v1, v0}, Landroid/app/IStopUserCallback;->userStopped(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    :catch_0
    return-void

    .line 28
    :pswitch_1
    iget-object v1, v0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda9;->f$0:Ljava/lang/Object;

    .line 30
    check-cast v1, Lcom/android/server/am/UserController;

    .line 32
    iget v2, v0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda9;->f$1:I

    .line 34
    iget-object v0, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 36
    iget-object v0, v0, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 38
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 40
    move-object v1, v0

    .line 41
    check-cast v1, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;

    .line 43
    iget-object v0, v1, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 45
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    .line 47
    invoke-virtual {v0, v2}, Lcom/android/server/wm/RecentTasks;->loadRecentTasksIfNeeded(I)V

    .line 50
    iget-object v0, v1, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 52
    iget-object v3, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mPackageConfigPersister:Lcom/android/server/wm/PackageConfigPersister;

    .line 54
    const-string/jumbo v0, "loadPackages: empty list files from "

    .line 57
    iget-object v4, v3, Lcom/android/server/wm/PackageConfigPersister;->mLock:Ljava/lang/Object;

    .line 59
    monitor-enter v4

    .line 60
    :try_start_1
    new-instance v5, Ljava/io/File;

    .line 62
    invoke-static {v2}, Landroid/os/Environment;->getDataSystemCeDirectory(I)Ljava/io/File;

    .line 65
    move-result-object v6

    .line 66
    const-string/jumbo v7, "package_configs"

    .line 69
    invoke-direct {v5, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 72
    invoke-virtual {v5}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 75
    move-result-object v6

    .line 76
    const/4 v7, 0x1

    .line 77
    if-nez v6, :cond_0

    .line 79
    const-string v2, "PackageConfigPersister"

    .line 81
    new-instance v3, Ljava/lang/StringBuilder;

    .line 83
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 86
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 89
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 92
    move-result-object v0

    .line 93
    invoke-static {v2, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    monitor-exit v4

    .line 97
    goto/16 :goto_c

    .line 99
    :catchall_0
    move-exception v0

    .line 100
    goto/16 :goto_e

    .line 102
    :cond_0
    const/4 v5, 0x0

    .line 103
    :goto_0
    array-length v0, v6

    .line 104
    if-ge v5, v0, :cond_c

    .line 106
    aget-object v0, v6, v5

    .line 108
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 111
    move-result-object v9

    .line 112
    const-string v10, "_config.xml"

    .line 114
    invoke-virtual {v9, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 117
    move-result v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 118
    if-nez v9, :cond_1

    .line 120
    goto/16 :goto_b

    .line 122
    :cond_1
    :try_start_2
    new-instance v9, Ljava/io/FileInputStream;

    .line 124
    invoke-direct {v9, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 127
    :try_start_3
    invoke-static {v9}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Lcom/android/modules/utils/TypedXmlPullParser;

    .line 130
    move-result-object v0

    .line 131
    const/4 v10, 0x0

    .line 132
    move-object v11, v10

    .line 133
    move-object v12, v11

    .line 134
    :goto_1
    invoke-interface {v0}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    .line 137
    move-result v13

    .line 138
    if-eq v13, v7, :cond_a

    .line 140
    const/4 v14, 0x3

    .line 141
    if-eq v13, v14, :cond_a

    .line 143
    invoke-interface {v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    .line 146
    move-result-object v14

    .line 147
    const/4 v15, 0x2

    .line 148
    if-ne v13, v15, :cond_9

    .line 150
    const-string/jumbo v13, "config"

    .line 153
    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 156
    move-result v13

    .line 157
    if-eqz v13, :cond_9

    .line 159
    invoke-interface {v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeCount()I

    .line 162
    move-result v13

    .line 163
    sub-int/2addr v13, v7

    .line 164
    :goto_2
    if-ltz v13, :cond_9

    .line 166
    invoke-interface {v0, v13}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeName(I)Ljava/lang/String;

    .line 169
    move-result-object v14

    .line 170
    invoke-interface {v0, v13}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    .line 173
    move-result-object v16

    .line 174
    invoke-virtual {v14}, Ljava/lang/String;->hashCode()I

    .line 177
    move-result v8

    .line 178
    const v15, -0x6fe3451c

    .line 181
    if-eq v8, v15, :cond_4

    .line 183
    const v15, -0x23dea296

    .line 186
    if-eq v8, v15, :cond_3

    .line 188
    const v15, 0x72044363

    .line 191
    if-eq v8, v15, :cond_2

    .line 193
    goto :goto_3

    .line 194
    :cond_2
    const-string/jumbo v8, "locale_list"

    .line 197
    invoke-virtual {v14, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 200
    move-result v8

    .line 201
    if-eqz v8, :cond_5

    .line 203
    const/4 v8, 0x2

    .line 204
    goto :goto_4

    .line 205
    :catchall_1
    move-exception v0

    .line 206
    move-object v8, v0

    .line 207
    goto :goto_6

    .line 208
    :cond_3
    const-string/jumbo v8, "night_mode"

    .line 211
    invoke-virtual {v14, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 214
    move-result v8

    .line 215
    if-eqz v8, :cond_5

    .line 217
    move v8, v7

    .line 218
    goto :goto_4

    .line 219
    :cond_4
    const-string/jumbo v8, "package_name"

    .line 222
    invoke-virtual {v14, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 225
    move-result v8

    .line 226
    if-eqz v8, :cond_5

    .line 228
    const/4 v8, 0x0

    .line 229
    goto :goto_4

    .line 230
    :cond_5
    :goto_3
    const/4 v8, -0x1

    .line 231
    :goto_4
    if-eqz v8, :cond_8

    .line 233
    if-eq v8, v7, :cond_7

    .line 235
    const/4 v14, 0x2

    .line 236
    if-eq v8, v14, :cond_6

    .line 238
    goto :goto_5

    .line 239
    :cond_6
    invoke-static/range {v16 .. v16}, Landroid/os/LocaleList;->forLanguageTags(Ljava/lang/String;)Landroid/os/LocaleList;

    .line 242
    move-result-object v8

    .line 243
    move-object v12, v8

    .line 244
    goto :goto_5

    .line 245
    :cond_7
    const/4 v14, 0x2

    .line 246
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 249
    move-result v8

    .line 250
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 253
    move-result-object v8

    .line 254
    move-object v11, v8

    .line 255
    goto :goto_5

    .line 256
    :cond_8
    const/4 v14, 0x2

    .line 257
    move-object/from16 v10, v16

    .line 259
    :goto_5
    add-int/lit8 v13, v13, -0x1

    .line 261
    move v15, v14

    .line 262
    goto :goto_2

    .line 263
    :cond_9
    invoke-static {v0}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 266
    goto/16 :goto_1

    .line 268
    :cond_a
    if-eqz v10, :cond_b

    .line 270
    iget-object v0, v3, Lcom/android/server/wm/PackageConfigPersister;->mModified:Landroid/util/SparseArray;

    .line 272
    invoke-static {v0, v10, v2}, Lcom/android/server/wm/PackageConfigPersister;->findRecordOrCreate(Landroid/util/SparseArray;Ljava/lang/String;I)Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;

    .line 275
    move-result-object v0

    .line 276
    iput-object v11, v0, Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;->mNightMode:Ljava/lang/Integer;

    .line 278
    iput-object v12, v0, Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;->mLocales:Landroid/os/LocaleList;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 280
    :cond_b
    :try_start_4
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 283
    goto :goto_b

    .line 284
    :catch_1
    move-exception v0

    .line 285
    goto :goto_8

    .line 286
    :catch_2
    move-exception v0

    .line 287
    goto :goto_9

    .line 288
    :catch_3
    move-exception v0

    .line 289
    goto :goto_a

    .line 290
    :goto_6
    :try_start_5
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 293
    goto :goto_7

    .line 294
    :catchall_2
    move-exception v0

    .line 295
    move-object v9, v0

    .line 296
    :try_start_6
    invoke-virtual {v8, v9}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 299
    :goto_7
    throw v8
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 300
    :goto_8
    :try_start_7
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    .line 303
    goto :goto_b

    .line 304
    :goto_9
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 307
    goto :goto_b

    .line 308
    :goto_a
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 311
    :goto_b
    add-int/lit8 v5, v5, 0x1

    .line 313
    goto/16 :goto_0

    .line 315
    :cond_c
    monitor-exit v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 316
    :goto_c
    iget-object v0, v1, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 318
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    .line 320
    invoke-static {v0}, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper;->getInstance(Landroid/content/Context;)Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper;

    .line 323
    move-result-object v0

    .line 324
    :try_start_8
    iget-object v1, v0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper;->mContext:Landroid/content/Context;

    .line 326
    if-eqz v1, :cond_d

    .line 328
    const/4 v1, 0x0

    .line 329
    invoke-virtual {v0, v1, v7}, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper;->init(ZZ)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    .line 332
    goto :goto_d

    .line 333
    :catch_4
    move-exception v0

    .line 334
    const-string v1, "Error while starting LOM: "

    .line 336
    const-string v2, "LocaleManagerService"

    .line 338
    invoke-static {v0, v1, v2}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    :cond_d
    :goto_d
    return-void

    .line 342
    :goto_e
    :try_start_9
    monitor-exit v4
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 343
    throw v0

    .line 344
    nop

    .line 345
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
