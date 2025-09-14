.class public final Lcom/android/server/sepunion/VDCObserverService;
.super Lcom/samsung/android/sepunion/IVDCObserverService$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/sepunion/AbsSemSystemService;


# static fields
.field public static final VDC_OBSERVER_URI:Landroid/net/Uri;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mForegroundServiceObserver:Lcom/android/server/sepunion/VDCObserverService$1;

.field public final mHandler:Lcom/android/server/sepunion/VDCObserverService$MyHandler;

.field public mObserverRegisterState:I

.field public mRegisteredComponentList:Ljava/util/List;

.field public final mUsageStatsWatcher:Lcom/android/server/sepunion/VDCObserverService$3;


# direct methods
.method public static -$$Nest$mhandleUsageStatsChanged(Lcom/android/server/sepunion/VDCObserverService;IILandroid/content/ComponentName;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const/16 v1, 0x14

    .line 9
    .line 10
    iput v1, v0, Landroid/os/Message;->what:I

    .line 11
    .line 12
    new-instance v1, Landroid/os/Bundle;

    .line 13
    .line 14
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 15
    .line 16
    .line 17
    const-string v2, "event_type"

    .line 18
    .line 19
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 20
    .line 21
    .line 22
    const-string/jumbo p1, "user_id"

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    const-string/jumbo p2, "pkg_name"

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1, p2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    const-string p1, "class_name"

    .line 39
    .line 40
    invoke-virtual {p3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p2

    .line 44
    invoke-virtual {v1, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 48
    .line 49
    .line 50
    iget-object p0, p0, Lcom/android/server/sepunion/VDCObserverService;->mHandler:Lcom/android/server/sepunion/VDCObserverService$MyHandler;

    .line 51
    .line 52
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 53
    .line 54
    .line 55
    return-void
.end method

.method public static -$$Nest$mregisterUsageStatsWatcher(Lcom/android/server/sepunion/VDCObserverService;)V
    .locals 11

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const-string v0, "contentResolver query: "

    .line 5
    .line 6
    new-instance v1, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    .line 11
    iget-object v2, p0, Lcom/android/server/sepunion/VDCObserverService;->mContext:Landroid/content/Context;

    .line 12
    .line 13
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    const-string v3, "VDCObserverService"

    .line 18
    .line 19
    const/4 v4, 0x0

    .line 20
    if-nez v2, :cond_0

    .line 21
    .line 22
    const-string v0, "get ContentResolver null"

    .line 23
    .line 24
    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    :goto_0
    move-object v1, v4

    .line 28
    goto/16 :goto_8

    .line 29
    .line 30
    :cond_0
    :try_start_0
    sget-object v5, Lcom/android/server/sepunion/VDCObserverService;->VDC_OBSERVER_URI:Landroid/net/Uri;

    .line 31
    .line 32
    const-string/jumbo v6, "video_call_app_info"

    .line 33
    .line 34
    .line 35
    invoke-static {v5, v6}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    .line 36
    .line 37
    .line 38
    move-result-object v5

    .line 39
    invoke-virtual {v2, v5, v4, v4, v4}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    .line 40
    .line 41
    .line 42
    move-result-object v2
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    if-eqz v2, :cond_5

    .line 44
    .line 45
    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    .line 46
    .line 47
    .line 48
    move-result v5

    .line 49
    if-lez v5, :cond_5

    .line 50
    .line 51
    new-instance v5, Ljava/lang/StringBuilder;

    .line 52
    .line 53
    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    .line 69
    .line 70
    const-string/jumbo v0, "package_name"

    .line 71
    .line 72
    .line 73
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    const-string v5, "activities_name"

    .line 78
    .line 79
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 80
    .line 81
    .line 82
    move-result v5

    .line 83
    if-ltz v0, :cond_4

    .line 84
    .line 85
    if-gez v5, :cond_1

    .line 86
    .line 87
    goto :goto_4

    .line 88
    :cond_1
    :goto_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    .line 89
    .line 90
    .line 91
    move-result v4

    .line 92
    if-eqz v4, :cond_5

    .line 93
    .line 94
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v4

    .line 98
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v6

    .line 102
    if-eqz v6, :cond_1

    .line 103
    .line 104
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    .line 105
    .line 106
    .line 107
    move-result v7

    .line 108
    if-nez v7, :cond_1

    .line 109
    .line 110
    const-string/jumbo v7, "null"

    .line 111
    .line 112
    .line 113
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 114
    .line 115
    .line 116
    move-result v7

    .line 117
    if-eqz v7, :cond_2

    .line 118
    .line 119
    goto :goto_1

    .line 120
    :cond_2
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 121
    .line 122
    .line 123
    move-result v7

    .line 124
    const/4 v8, 0x1

    .line 125
    sub-int/2addr v7, v8

    .line 126
    invoke-virtual {v6, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v6

    .line 130
    const-string v7, "\""

    .line 131
    .line 132
    const-string v8, ""

    .line 133
    .line 134
    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v6

    .line 138
    const-string v7, ","

    .line 139
    .line 140
    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v6

    .line 144
    array-length v7, v6

    .line 145
    const/4 v8, 0x0

    .line 146
    :goto_2
    if-ge v8, v7, :cond_1

    .line 147
    .line 148
    aget-object v9, v6, v8

    .line 149
    .line 150
    if-eqz v9, :cond_3

    .line 151
    .line 152
    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    .line 153
    .line 154
    .line 155
    move-result v10

    .line 156
    if-nez v10, :cond_3

    .line 157
    .line 158
    new-instance v10, Landroid/content/ComponentName;

    .line 159
    .line 160
    invoke-direct {v10, v4, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 164
    .line 165
    .line 166
    goto :goto_3

    .line 167
    :catchall_0
    move-exception v0

    .line 168
    goto :goto_5

    .line 169
    :cond_3
    :goto_3
    add-int/lit8 v8, v8, 0x1

    .line 170
    .line 171
    goto :goto_2

    .line 172
    :cond_4
    :goto_4
    :try_start_2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 173
    .line 174
    .line 175
    goto/16 :goto_0

    .line 176
    .line 177
    :catch_0
    move-exception v0

    .line 178
    goto :goto_7

    .line 179
    :goto_5
    :try_start_3
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 180
    .line 181
    .line 182
    goto :goto_6

    .line 183
    :catchall_1
    move-exception v2

    .line 184
    :try_start_4
    invoke-virtual {v0, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 185
    .line 186
    .line 187
    :goto_6
    throw v0

    .line 188
    :cond_5
    if-eqz v2, :cond_6

    .line 189
    .line 190
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_0

    .line 191
    .line 192
    .line 193
    goto :goto_8

    .line 194
    :goto_7
    const-string v2, "getComponentList() failed: "

    .line 195
    .line 196
    invoke-static {v3, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 197
    .line 198
    .line 199
    :cond_6
    :goto_8
    if-eqz v1, :cond_9

    .line 200
    .line 201
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 202
    .line 203
    .line 204
    move-result v0

    .line 205
    if-eqz v0, :cond_7

    .line 206
    .line 207
    goto :goto_9

    .line 208
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 209
    .line 210
    const-string/jumbo v2, "registerUsageStatsWatcher: "

    .line 211
    .line 212
    .line 213
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 214
    .line 215
    .line 216
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 217
    .line 218
    .line 219
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object v0

    .line 223
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    .line 225
    .line 226
    iget-object v0, p0, Lcom/android/server/sepunion/VDCObserverService;->mContext:Landroid/content/Context;

    .line 227
    .line 228
    const-string/jumbo v2, "usagestats"

    .line 229
    .line 230
    .line 231
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 232
    .line 233
    .line 234
    move-result-object v0

    .line 235
    check-cast v0, Landroid/app/usage/UsageStatsManager;

    .line 236
    .line 237
    if-eqz v0, :cond_8

    .line 238
    .line 239
    iget-object v2, p0, Lcom/android/server/sepunion/VDCObserverService;->mUsageStatsWatcher:Lcom/android/server/sepunion/VDCObserverService$3;

    .line 240
    .line 241
    invoke-virtual {v0, v2, v1}, Landroid/app/usage/UsageStatsManager;->registerUsageStatsWatcher(Lcom/samsung/android/app/usage/IUsageStatsWatcher;Ljava/util/List;)V

    .line 242
    .line 243
    .line 244
    iget v0, p0, Lcom/android/server/sepunion/VDCObserverService;->mObserverRegisterState:I

    .line 245
    .line 246
    or-int/lit8 v0, v0, 0x8

    .line 247
    .line 248
    iput v0, p0, Lcom/android/server/sepunion/VDCObserverService;->mObserverRegisterState:I

    .line 249
    .line 250
    iput-object v1, p0, Lcom/android/server/sepunion/VDCObserverService;->mRegisteredComponentList:Ljava/util/List;

    .line 251
    .line 252
    goto :goto_a

    .line 253
    :cond_8
    const-string p0, "get UsageStatsManager null"

    .line 254
    .line 255
    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    .line 257
    .line 258
    goto :goto_a

    .line 259
    :cond_9
    :goto_9
    const-string/jumbo p0, "registerUsageStatsWatcher: fail"

    .line 260
    .line 261
    .line 262
    invoke-static {v3, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    .line 264
    .line 265
    :goto_a
    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "content://com.samsung.android.vdc.observer"

    .line 2
    .line 3
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lcom/android/server/sepunion/VDCObserverService;->VDC_OBSERVER_URI:Landroid/net/Uri;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/sepunion/IVDCObserverService$Stub;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/android/server/sepunion/VDCObserverService;->mObserverRegisterState:I

    .line 6
    .line 7
    new-instance v0, Lcom/android/server/sepunion/VDCObserverService$1;

    .line 8
    .line 9
    invoke-direct {v0, p0}, Lcom/android/server/sepunion/VDCObserverService$1;-><init>(Lcom/android/server/sepunion/VDCObserverService;)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lcom/android/server/sepunion/VDCObserverService;->mForegroundServiceObserver:Lcom/android/server/sepunion/VDCObserverService$1;

    .line 13
    .line 14
    new-instance v0, Lcom/android/server/sepunion/VDCObserverService$3;

    .line 15
    .line 16
    invoke-direct {v0, p0}, Lcom/android/server/sepunion/VDCObserverService$3;-><init>(Lcom/android/server/sepunion/VDCObserverService;)V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Lcom/android/server/sepunion/VDCObserverService;->mUsageStatsWatcher:Lcom/android/server/sepunion/VDCObserverService$3;

    .line 20
    .line 21
    iput-object p1, p0, Lcom/android/server/sepunion/VDCObserverService;->mContext:Landroid/content/Context;

    .line 22
    .line 23
    const-string p1, "VDCObserverService"

    .line 24
    .line 25
    invoke-static {p1}, Lcom/android/server/KnoxCaptureInputFilter$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Landroid/os/HandlerThread;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    new-instance v0, Lcom/android/server/sepunion/VDCObserverService$MyHandler;

    .line 30
    .line 31
    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-direct {v0, p0, p1}, Lcom/android/server/sepunion/VDCObserverService$MyHandler;-><init>(Lcom/android/server/sepunion/VDCObserverService;Landroid/os/Looper;)V

    .line 36
    .line 37
    .line 38
    iput-object v0, p0, Lcom/android/server/sepunion/VDCObserverService;->mHandler:Lcom/android/server/sepunion/VDCObserverService$MyHandler;

    .line 39
    .line 40
    return-void
.end method


# virtual methods
.method public final dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    .line 1
    const-string p1, "\n##### VDCObserverService #####\n##### (dumpsys sepunion VDCObserverService) #####\n"

    .line 2
    .line 3
    const-string p3, "Observer register state: "

    .line 4
    .line 5
    invoke-static {p2, p1, p3}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m$1(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    iget p3, p0, Lcom/android/server/sepunion/VDCObserverService;->mObserverRegisterState:I

    .line 10
    .line 11
    invoke-static {p3}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p3

    .line 15
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    new-instance p1, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    const-string p3, "componentList: "

    .line 28
    .line 29
    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    iget-object p0, p0, Lcom/android/server/sepunion/VDCObserverService;->mRegisteredComponentList:Ljava/util/List;

    .line 33
    .line 34
    if-nez p0, :cond_0

    .line 35
    .line 36
    const-string/jumbo p0, "null"

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    :goto_0
    invoke-static {p1, p0, p2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 45
    .line 46
    .line 47
    return-void
.end method

.method public final getSemSystemService(Ljava/lang/String;)Lcom/android/server/sepunion/AbsSemSystemService;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method

.method public final onBootPhase(I)V
    .locals 1

    .line 1
    const/16 v0, 0x3e8

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Lcom/android/server/sepunion/VDCObserverService;->mHandler:Lcom/android/server/sepunion/VDCObserverService$MyHandler;

    .line 6
    .line 7
    new-instance v0, Lcom/android/server/sepunion/VDCObserverService$$ExternalSyntheticLambda0;

    .line 8
    .line 9
    invoke-direct {v0, p0}, Lcom/android/server/sepunion/VDCObserverService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/sepunion/VDCObserverService;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public final onCleanupUser(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    const-string p0, "VDCObserverService"

    .line 2
    .line 3
    const-string/jumbo p1, "onCreate"

    .line 4
    .line 5
    .line 6
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final onDestroy()V
    .locals 1

    .line 1
    const-string p0, "VDCObserverService"

    .line 2
    .line 3
    const-string/jumbo v0, "onDestroy"

    .line 4
    .line 5
    .line 6
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final onStart()V
    .locals 1

    .line 1
    const-string p0, "VDCObserverService"

    .line 2
    .line 3
    const-string/jumbo v0, "onStart"

    .line 4
    .line 5
    .line 6
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final onStartUser(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onStopUser(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onSwitchUser(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onUnlockUser(I)V
    .locals 0

    .line 1
    return-void
.end method
