.class public final Lcom/android/server/usb/UsbUserSettingsManager;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mLock:Ljava/lang/Object;

.field public final mPackageManager:Landroid/content/pm/PackageManager;

.field public final mUser:Landroid/os/UserHandle;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/UserHandle;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/usb/UsbUserSettingsManager;->mLock:Ljava/lang/Object;

    .line 10
    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const-string v1, "Creating settings for "

    .line 14
    .line 15
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    const-string v1, "UsbUserSettingsManager"

    .line 26
    .line 27
    invoke-static {v1, v0}, Landroid/util/sysfwutil/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    :try_start_0
    const-string v0, "android"

    .line 31
    .line 32
    const/4 v1, 0x0

    .line 33
    invoke-virtual {p1, v0, v1, p2}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    .line 34
    .line 35
    .line 36
    move-result-object p1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    iput-object p1, p0, Lcom/android/server/usb/UsbUserSettingsManager;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 42
    .line 43
    iput-object p2, p0, Lcom/android/server/usb/UsbUserSettingsManager;->mUser:Landroid/os/UserHandle;

    .line 44
    .line 45
    return-void

    .line 46
    :catch_0
    new-instance p0, Ljava/lang/RuntimeException;

    .line 47
    .line 48
    const-string p1, "Missing android package"

    .line 49
    .line 50
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    throw p0
.end method


# virtual methods
.method public final dump(Lcom/android/internal/util/dump/DualDumpOutputStream;)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const-string/jumbo v2, "user_settings"

    .line 6
    .line 7
    .line 8
    const-wide v3, 0x20b00000001L

    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, v2, v3, v4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    .line 14
    .line 15
    .line 16
    move-result-wide v2

    .line 17
    iget-object v4, v0, Lcom/android/server/usb/UsbUserSettingsManager;->mLock:Ljava/lang/Object;

    .line 18
    .line 19
    monitor-enter v4

    .line 20
    :try_start_0
    const-string/jumbo v5, "user_id"

    .line 21
    .line 22
    .line 23
    iget-object v6, v0, Lcom/android/server/usb/UsbUserSettingsManager;->mUser:Landroid/os/UserHandle;

    .line 24
    .line 25
    invoke-virtual {v6}, Landroid/os/UserHandle;->getIdentifier()I

    .line 26
    .line 27
    .line 28
    move-result v6

    .line 29
    const-wide v7, 0x10500000001L

    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    invoke-virtual {v1, v5, v7, v8, v6}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 35
    .line 36
    .line 37
    new-instance v5, Landroid/content/Intent;

    .line 38
    .line 39
    const-string v6, "android.hardware.usb.action.USB_DEVICE_ATTACHED"

    .line 40
    .line 41
    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    iget-object v6, v0, Lcom/android/server/usb/UsbUserSettingsManager;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 45
    .line 46
    iget-object v7, v0, Lcom/android/server/usb/UsbUserSettingsManager;->mUser:Landroid/os/UserHandle;

    .line 47
    .line 48
    invoke-virtual {v7}, Landroid/os/UserHandle;->getIdentifier()I

    .line 49
    .line 50
    .line 51
    move-result v7

    .line 52
    const/16 v8, 0x80

    .line 53
    .line 54
    invoke-virtual {v6, v5, v8, v7}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    .line 55
    .line 56
    .line 57
    move-result-object v5

    .line 58
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 59
    .line 60
    .line 61
    move-result v6

    .line 62
    const/4 v9, 0x0

    .line 63
    :goto_0
    if-ge v9, v6, :cond_1

    .line 64
    .line 65
    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v14

    .line 69
    check-cast v14, Landroid/content/pm/ResolveInfo;

    .line 70
    .line 71
    const-string v15, "device_attached_activities"

    .line 72
    .line 73
    const-wide v7, 0x20b00000004L

    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    invoke-virtual {v1, v15, v7, v8}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    .line 79
    .line 80
    .line 81
    move-result-wide v7

    .line 82
    const-string v15, "activity"

    .line 83
    .line 84
    new-instance v10, Landroid/content/ComponentName;

    .line 85
    .line 86
    iget-object v11, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 87
    .line 88
    iget-object v12, v11, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 89
    .line 90
    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 91
    .line 92
    invoke-direct {v10, v12, v11}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    const-wide v11, 0x10b00000001L

    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    invoke-static {v1, v15, v11, v12, v10}, Lcom/android/internal/util/dump/DumpUtils;->writeComponentName(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JLandroid/content/ComponentName;)V

    .line 101
    .line 102
    .line 103
    iget-object v10, v0, Lcom/android/server/usb/UsbUserSettingsManager;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 104
    .line 105
    invoke-static {v10, v14}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->getDeviceFilters(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;)Ljava/util/ArrayList;

    .line 106
    .line 107
    .line 108
    move-result-object v10

    .line 109
    if-eqz v10, :cond_0

    .line 110
    .line 111
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    .line 112
    .line 113
    .line 114
    move-result v11

    .line 115
    const/4 v12, 0x0

    .line 116
    :goto_1
    if-ge v12, v11, :cond_0

    .line 117
    .line 118
    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object v13

    .line 122
    check-cast v13, Landroid/hardware/usb/DeviceFilter;

    .line 123
    .line 124
    const-string v14, "filters"

    .line 125
    .line 126
    move-object v15, v5

    .line 127
    move/from16 v17, v6

    .line 128
    .line 129
    const-wide v5, 0x20b00000002L

    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    invoke-virtual {v13, v1, v14, v5, v6}, Landroid/hardware/usb/DeviceFilter;->dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V

    .line 135
    .line 136
    .line 137
    add-int/lit8 v12, v12, 0x1

    .line 138
    .line 139
    move-object v5, v15

    .line 140
    move/from16 v6, v17

    .line 141
    .line 142
    goto :goto_1

    .line 143
    :catchall_0
    move-exception v0

    .line 144
    goto/16 :goto_4

    .line 145
    .line 146
    :cond_0
    move-object v15, v5

    .line 147
    move/from16 v17, v6

    .line 148
    .line 149
    invoke-virtual {v1, v7, v8}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    .line 150
    .line 151
    .line 152
    add-int/lit8 v9, v9, 0x1

    .line 153
    .line 154
    move-object v5, v15

    .line 155
    move/from16 v6, v17

    .line 156
    .line 157
    const/16 v8, 0x80

    .line 158
    .line 159
    goto :goto_0

    .line 160
    :cond_1
    new-instance v5, Landroid/content/Intent;

    .line 161
    .line 162
    const-string v6, "android.hardware.usb.action.USB_ACCESSORY_ATTACHED"

    .line 163
    .line 164
    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    iget-object v6, v0, Lcom/android/server/usb/UsbUserSettingsManager;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 168
    .line 169
    iget-object v7, v0, Lcom/android/server/usb/UsbUserSettingsManager;->mUser:Landroid/os/UserHandle;

    .line 170
    .line 171
    invoke-virtual {v7}, Landroid/os/UserHandle;->getIdentifier()I

    .line 172
    .line 173
    .line 174
    move-result v7

    .line 175
    const/16 v8, 0x80

    .line 176
    .line 177
    invoke-virtual {v6, v5, v8, v7}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    .line 178
    .line 179
    .line 180
    move-result-object v5

    .line 181
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 182
    .line 183
    .line 184
    move-result v6

    .line 185
    const/4 v7, 0x0

    .line 186
    :goto_2
    if-ge v7, v6, :cond_3

    .line 187
    .line 188
    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 189
    .line 190
    .line 191
    move-result-object v8

    .line 192
    check-cast v8, Landroid/content/pm/ResolveInfo;

    .line 193
    .line 194
    const-string v9, "accessory_attached_activities"

    .line 195
    .line 196
    const-wide v10, 0x20b00000005L

    .line 197
    .line 198
    .line 199
    .line 200
    .line 201
    invoke-virtual {v1, v9, v10, v11}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    .line 202
    .line 203
    .line 204
    move-result-wide v9

    .line 205
    const-string v11, "activity"

    .line 206
    .line 207
    new-instance v12, Landroid/content/ComponentName;

    .line 208
    .line 209
    iget-object v13, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 210
    .line 211
    iget-object v14, v13, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 212
    .line 213
    iget-object v13, v13, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 214
    .line 215
    invoke-direct {v12, v14, v13}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    .line 217
    .line 218
    const-wide v13, 0x10b00000001L

    .line 219
    .line 220
    .line 221
    .line 222
    .line 223
    invoke-static {v1, v11, v13, v14, v12}, Lcom/android/internal/util/dump/DumpUtils;->writeComponentName(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JLandroid/content/ComponentName;)V

    .line 224
    .line 225
    .line 226
    iget-object v11, v0, Lcom/android/server/usb/UsbUserSettingsManager;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 227
    .line 228
    invoke-static {v11, v8}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->getAccessoryFilters(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;)Ljava/util/ArrayList;

    .line 229
    .line 230
    .line 231
    move-result-object v8

    .line 232
    if-eqz v8, :cond_2

    .line 233
    .line 234
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 235
    .line 236
    .line 237
    move-result v11

    .line 238
    const/4 v12, 0x0

    .line 239
    :goto_3
    if-ge v12, v11, :cond_2

    .line 240
    .line 241
    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 242
    .line 243
    .line 244
    move-result-object v15

    .line 245
    check-cast v15, Landroid/hardware/usb/AccessoryFilter;

    .line 246
    .line 247
    const-string v13, "filters"

    .line 248
    .line 249
    move-object v14, v5

    .line 250
    move/from16 v16, v6

    .line 251
    .line 252
    const-wide v5, 0x20b00000002L

    .line 253
    .line 254
    .line 255
    .line 256
    .line 257
    invoke-virtual {v15, v1, v13, v5, v6}, Landroid/hardware/usb/AccessoryFilter;->dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V

    .line 258
    .line 259
    .line 260
    add-int/lit8 v12, v12, 0x1

    .line 261
    .line 262
    move-object v5, v14

    .line 263
    move/from16 v6, v16

    .line 264
    .line 265
    const-wide v13, 0x10b00000001L

    .line 266
    .line 267
    .line 268
    .line 269
    .line 270
    goto :goto_3

    .line 271
    :cond_2
    move-object v14, v5

    .line 272
    move/from16 v16, v6

    .line 273
    .line 274
    const-wide v5, 0x20b00000002L

    .line 275
    .line 276
    .line 277
    .line 278
    .line 279
    invoke-virtual {v1, v9, v10}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    .line 280
    .line 281
    .line 282
    add-int/lit8 v7, v7, 0x1

    .line 283
    .line 284
    move-object v5, v14

    .line 285
    move/from16 v6, v16

    .line 286
    .line 287
    goto :goto_2

    .line 288
    :cond_3
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 289
    invoke-virtual {v1, v2, v3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    .line 290
    .line 291
    .line 292
    return-void

    .line 293
    :goto_4
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 294
    throw v0
.end method
