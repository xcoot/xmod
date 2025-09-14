.class public final Lcom/android/server/media/MediaResourceMonitorService$MediaResourceMonitorImpl;
.super Landroid/media/IMediaResourceMonitor$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/media/MediaResourceMonitorService;


# direct methods
.method public constructor <init>(Lcom/android/server/media/MediaResourceMonitorService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/media/MediaResourceMonitorService$MediaResourceMonitorImpl;->this$0:Lcom/android/server/media/MediaResourceMonitorService;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/media/IMediaResourceMonitor$Stub;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final getBroadcastIntent(ILandroid/media/MediaMonitorEvent;)Landroid/content/Intent;
    .locals 12

    .line 1
    const-string/jumbo v0, "tracking_id"

    .line 2
    .line 3
    .line 4
    const-string v1, "4H9-399-505457"

    .line 5
    .line 6
    invoke-static {v0, v1}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iget-object v1, p2, Landroid/media/MediaMonitorEvent;->mName:Ljava/lang/String;

    .line 11
    .line 12
    const-string/jumbo v2, "feature"

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    const-string/jumbo v1, "is_summary"

    .line 19
    .line 20
    .line 21
    const-string/jumbo v2, "true"

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    const v1, 0x1d524

    .line 28
    .line 29
    .line 30
    sget v2, Landroid/os/Build$VERSION;->SEM_PLATFORM_INT:I

    .line 31
    .line 32
    const-string v3, ", "

    .line 33
    .line 34
    const-string v4, ","

    .line 35
    .line 36
    const/4 v5, 0x1

    .line 37
    const/4 v6, 0x0

    .line 38
    if-gt v1, v2, :cond_5

    .line 39
    .line 40
    new-instance v1, Ljava/util/HashMap;

    .line 41
    .line 42
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 43
    .line 44
    .line 45
    iget-object p2, p2, Landroid/media/MediaMonitorEvent;->mCustomDimensions:[Landroid/media/MediaMonitorDimension;

    .line 46
    .line 47
    array-length v2, p2

    .line 48
    move v7, v6

    .line 49
    :goto_0
    if-ge v7, v2, :cond_4

    .line 50
    .line 51
    aget-object v8, p2, v7

    .line 52
    .line 53
    iget v9, v8, Landroid/media/MediaMonitorDimension;->mType:I

    .line 54
    .line 55
    iget-object v10, v8, Landroid/media/MediaMonitorDimension;->mName:Ljava/lang/String;

    .line 56
    .line 57
    if-nez v9, :cond_2

    .line 58
    .line 59
    invoke-virtual {v8}, Landroid/media/MediaMonitorDimension;->getText()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v8

    .line 63
    const-string v9, "1003"

    .line 64
    .line 65
    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result v9

    .line 69
    if-eqz v9, :cond_0

    .line 70
    .line 71
    invoke-static {v8, v4}, Lcom/android/internal/util/jobs/Preconditions$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    move-result-object v8

    .line 75
    invoke-virtual {p0, p1}, Lcom/android/server/media/MediaResourceMonitorService$MediaResourceMonitorImpl;->getPackageName(I)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v9

    .line 79
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v8

    .line 86
    goto :goto_1

    .line 87
    :cond_0
    const-string v9, "2001"

    .line 88
    .line 89
    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    move-result v9

    .line 93
    if-eqz v9, :cond_1

    .line 94
    .line 95
    invoke-virtual {p0, p1}, Lcom/android/server/media/MediaResourceMonitorService$MediaResourceMonitorImpl;->getPackageNamesFromPid(I)[Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v9

    .line 99
    if-eqz v9, :cond_1

    .line 100
    .line 101
    array-length v11, v9

    .line 102
    if-lez v11, :cond_1

    .line 103
    .line 104
    invoke-static {v8, v3}, Lcom/android/internal/util/jobs/Preconditions$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    move-result-object v8

    .line 108
    aget-object v9, v9, v6

    .line 109
    .line 110
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v8

    .line 117
    :cond_1
    :goto_1
    invoke-virtual {v1, v10, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    goto :goto_2

    .line 121
    :cond_2
    if-ne v9, v5, :cond_3

    .line 122
    .line 123
    invoke-virtual {v8}, Landroid/media/MediaMonitorDimension;->getNumber()J

    .line 124
    .line 125
    .line 126
    move-result-wide v8

    .line 127
    invoke-virtual {v0, v10, v8, v9}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 128
    .line 129
    .line 130
    :goto_2
    add-int/lit8 v7, v7, 0x1

    .line 131
    .line 132
    goto :goto_0

    .line 133
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 134
    .line 135
    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 136
    .line 137
    .line 138
    throw p0

    .line 139
    :cond_4
    const-string/jumbo p0, "dimension"

    .line 140
    .line 141
    .line 142
    invoke-virtual {v0, p0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 143
    .line 144
    .line 145
    goto :goto_6

    .line 146
    :cond_5
    iget-object v1, p2, Landroid/media/MediaMonitorEvent;->mCustomDimensions:[Landroid/media/MediaMonitorDimension;

    .line 147
    .line 148
    array-length v2, v1

    .line 149
    move v7, v6

    .line 150
    :goto_3
    if-ge v7, v2, :cond_a

    .line 151
    .line 152
    aget-object v8, v1, v7

    .line 153
    .line 154
    iget v9, v8, Landroid/media/MediaMonitorDimension;->mType:I

    .line 155
    .line 156
    iget-object v10, v8, Landroid/media/MediaMonitorDimension;->mName:Ljava/lang/String;

    .line 157
    .line 158
    if-nez v9, :cond_8

    .line 159
    .line 160
    invoke-virtual {v8}, Landroid/media/MediaMonitorDimension;->getText()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v8

    .line 164
    iget-object v9, p2, Landroid/media/MediaMonitorEvent;->mName:Ljava/lang/String;

    .line 165
    .line 166
    const-string v11, "MMIF_PACKAGE"

    .line 167
    .line 168
    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 169
    .line 170
    .line 171
    move-result v9

    .line 172
    if-eqz v9, :cond_6

    .line 173
    .line 174
    invoke-static {v8, v4}, Lcom/android/internal/util/jobs/Preconditions$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    move-result-object v8

    .line 178
    invoke-virtual {p0, p1}, Lcom/android/server/media/MediaResourceMonitorService$MediaResourceMonitorImpl;->getPackageName(I)Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v9

    .line 182
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v8

    .line 189
    goto :goto_4

    .line 190
    :cond_6
    iget-object v9, p2, Landroid/media/MediaMonitorEvent;->mName:Ljava/lang/String;

    .line 191
    .line 192
    const-string v11, "MMER"

    .line 193
    .line 194
    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 195
    .line 196
    .line 197
    move-result v9

    .line 198
    if-eqz v9, :cond_7

    .line 199
    .line 200
    invoke-virtual {p0, p1}, Lcom/android/server/media/MediaResourceMonitorService$MediaResourceMonitorImpl;->getPackageNamesFromPid(I)[Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v9

    .line 204
    if-eqz v9, :cond_7

    .line 205
    .line 206
    array-length v11, v9

    .line 207
    if-lez v11, :cond_7

    .line 208
    .line 209
    new-instance v11, Ljava/lang/StringBuilder;

    .line 210
    .line 211
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 212
    .line 213
    .line 214
    aget-object v9, v9, v6

    .line 215
    .line 216
    invoke-static {v11, v9, v3, v8}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object v8

    .line 220
    :cond_7
    :goto_4
    invoke-virtual {v0, v10, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    .line 222
    .line 223
    goto :goto_5

    .line 224
    :cond_8
    if-ne v9, v5, :cond_9

    .line 225
    .line 226
    invoke-virtual {v8}, Landroid/media/MediaMonitorDimension;->getNumber()J

    .line 227
    .line 228
    .line 229
    move-result-wide v8

    .line 230
    invoke-virtual {v0, v10, v8, v9}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 231
    .line 232
    .line 233
    :goto_5
    add-int/lit8 v7, v7, 0x1

    .line 234
    .line 235
    goto :goto_3

    .line 236
    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 237
    .line 238
    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 239
    .line 240
    .line 241
    throw p0

    .line 242
    :cond_a
    :goto_6
    const-string/jumbo p0, "type"

    .line 243
    .line 244
    .line 245
    const-string/jumbo p1, "ev"

    .line 246
    .line 247
    .line 248
    invoke-virtual {v0, p0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    .line 250
    .line 251
    const-string/jumbo p0, "pkg_name"

    .line 252
    .line 253
    .line 254
    const-string/jumbo p1, "com.samsung.android.mmfw"

    .line 255
    .line 256
    .line 257
    invoke-virtual {v0, p0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    .line 259
    .line 260
    new-instance p0, Landroid/content/Intent;

    .line 261
    .line 262
    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    .line 263
    .line 264
    .line 265
    const-string/jumbo p1, "com.sec.android.diagmonagent.intent.USE_APP_FEATURE_SURVEY"

    .line 266
    .line 267
    .line 268
    invoke-virtual {p0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 269
    .line 270
    .line 271
    invoke-virtual {p0, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 272
    .line 273
    .line 274
    const-string/jumbo p1, "com.sec.android.diagmonagent"

    .line 275
    .line 276
    .line 277
    invoke-virtual {p0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 278
    .line 279
    .line 280
    return-object p0
.end method

.method public final getPackageName(I)Ljava/lang/String;
    .locals 2

    .line 1
    const/4 v0, -0x1

    .line 2
    const-string v1, ""

    .line 3
    .line 4
    if-ne p1, v0, :cond_0

    .line 5
    .line 6
    return-object v1

    .line 7
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/media/MediaResourceMonitorService$MediaResourceMonitorImpl;->getPackageNamesFromPid(I)[Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    if-eqz p0, :cond_2

    .line 12
    .line 13
    array-length p1, p0

    .line 14
    if-gtz p1, :cond_1

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_1
    const/4 p1, 0x0

    .line 18
    aget-object p0, p0, p1

    .line 19
    .line 20
    const-string p1, "."

    .line 21
    .line 22
    invoke-virtual {p0, p1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    add-int/lit8 p1, p1, 0x1

    .line 27
    .line 28
    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    return-object p0

    .line 33
    :cond_2
    :goto_0
    return-object v1
.end method

.method public final getPackageNamesFromPid(I)[Ljava/lang/String;
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/media/MediaResourceMonitorService$MediaResourceMonitorImpl;->this$0:Lcom/android/server/media/MediaResourceMonitorService;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    const-class v0, Landroid/app/ActivityManager;

    .line 8
    .line 9
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    check-cast p0, Landroid/app/ActivityManager;

    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 34
    .line 35
    iget v1, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    .line 36
    .line 37
    if-ne v1, p1, :cond_0

    .line 38
    .line 39
    iget-object p0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    .line 40
    .line 41
    return-object p0

    .line 42
    :cond_1
    const/4 p0, 0x0

    .line 43
    return-object p0
.end method

.method public final notifyMediaInfo(ILandroid/media/MediaMonitorEvent;)V
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/media/MediaResourceMonitorService$MediaResourceMonitorImpl;->getBroadcastIntent(ILandroid/media/MediaMonitorEvent;)Landroid/content/Intent;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    sget-boolean p2, Lcom/android/server/media/MediaResourceMonitorService;->mServiceEnabled:Z

    .line 10
    .line 11
    if-eqz p2, :cond_0

    .line 12
    .line 13
    iget-object p0, p0, Lcom/android/server/media/MediaResourceMonitorService$MediaResourceMonitorImpl;->this$0:Lcom/android/server/media/MediaResourceMonitorService;

    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    invoke-virtual {p0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :catchall_0
    move-exception p0

    .line 24
    goto :goto_2

    .line 25
    :cond_0
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 26
    .line 27
    .line 28
    goto :goto_1

    .line 29
    :catch_0
    :try_start_1
    const-string p0, "MediaResourceMonitor"

    .line 30
    .line 31
    const-string/jumbo p1, "sendBroadcast fail"

    .line 32
    .line 33
    .line 34
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :goto_1
    return-void

    .line 39
    :goto_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 40
    .line 41
    .line 42
    throw p0
.end method

.method public final notifyResourceGranted(II)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/media/MediaResourceMonitorService$MediaResourceMonitorImpl;->this$0:Lcom/android/server/media/MediaResourceMonitorService;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    iput-object v1, v0, Lcom/android/server/media/MediaResourceMonitorService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 12
    .line 13
    iget-object v0, p0, Lcom/android/server/media/MediaResourceMonitorService$MediaResourceMonitorImpl;->this$0:Lcom/android/server/media/MediaResourceMonitorService;

    .line 14
    .line 15
    iget-object v0, v0, Lcom/android/server/media/MediaResourceMonitorService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 16
    .line 17
    const-string v1, "android.software.picture_in_picture"

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_0

    .line 24
    .line 25
    return-void

    .line 26
    :cond_0
    sget-boolean v0, Lcom/android/server/media/MediaResourceMonitorService;->DEBUG:Z

    .line 27
    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    const-string/jumbo v0, "notifyResourceGranted(pid="

    .line 31
    .line 32
    .line 33
    const-string v1, ", type="

    .line 34
    .line 35
    const-string v2, ")"

    .line 36
    .line 37
    invoke-static {p1, p2, v0, v1, v2}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    const-string v1, "MediaResourceMonitor"

    .line 42
    .line 43
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    .line 45
    .line 46
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 47
    .line 48
    .line 49
    move-result-wide v0

    .line 50
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/media/MediaResourceMonitorService$MediaResourceMonitorImpl;->getPackageNamesFromPid(I)[Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    if-nez p1, :cond_2

    .line 55
    .line 56
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 57
    .line 58
    .line 59
    return-void

    .line 60
    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/android/server/media/MediaResourceMonitorService$MediaResourceMonitorImpl;->this$0:Lcom/android/server/media/MediaResourceMonitorService;

    .line 61
    .line 62
    invoke-virtual {v2}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    .line 67
    .line 68
    .line 69
    move-result v3

    .line 70
    invoke-static {v3}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    const/4 v4, 0x0

    .line 75
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    const-class v3, Landroid/os/UserManager;

    .line 80
    .line 81
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    check-cast v2, Landroid/os/UserManager;

    .line 86
    .line 87
    invoke-virtual {v2}, Landroid/os/UserManager;->getEnabledProfiles()Ljava/util/List;

    .line 88
    .line 89
    .line 90
    move-result-object v2

    .line 91
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 92
    .line 93
    .line 94
    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 95
    if-eqz v3, :cond_3

    .line 96
    .line 97
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 98
    .line 99
    .line 100
    return-void

    .line 101
    :cond_3
    :try_start_2
    new-instance v3, Landroid/content/Intent;

    .line 102
    .line 103
    const-string v4, "android.intent.action.MEDIA_RESOURCE_GRANTED"

    .line 104
    .line 105
    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    const-string v4, "android.intent.extra.PACKAGES"

    .line 109
    .line 110
    invoke-virtual {v3, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 111
    .line 112
    .line 113
    const-string p1, "android.intent.extra.MEDIA_RESOURCE_TYPE"

    .line 114
    .line 115
    invoke-virtual {v3, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 116
    .line 117
    .line 118
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 123
    .line 124
    .line 125
    move-result p2

    .line 126
    if-eqz p2, :cond_4

    .line 127
    .line 128
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    move-result-object p2

    .line 132
    check-cast p2, Landroid/os/UserHandle;

    .line 133
    .line 134
    iget-object v2, p0, Lcom/android/server/media/MediaResourceMonitorService$MediaResourceMonitorImpl;->this$0:Lcom/android/server/media/MediaResourceMonitorService;

    .line 135
    .line 136
    invoke-virtual {v2}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 137
    .line 138
    .line 139
    move-result-object v2

    .line 140
    const-string v4, "android.permission.RECEIVE_MEDIA_RESOURCE_USAGE"

    .line 141
    .line 142
    invoke-virtual {v2, v3, p2, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 143
    .line 144
    .line 145
    goto :goto_0

    .line 146
    :catchall_0
    move-exception p0

    .line 147
    goto :goto_1

    .line 148
    :cond_4
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 149
    .line 150
    .line 151
    return-void

    .line 152
    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 153
    .line 154
    .line 155
    throw p0
.end method
