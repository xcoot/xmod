.class public final Lcom/android/server/pm/MovePackageHelper$1;
.super Landroid/content/pm/IPackageInstallObserver2$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/pm/MovePackageHelper;

.field public final synthetic val$freezer:Lcom/android/server/pm/PackageFreezer;

.field public final synthetic val$installedLatch:Ljava/util/concurrent/CountDownLatch;

.field public final synthetic val$isCurrentLocationExternal:Z

.field public final synthetic val$moveId:I

.field public final synthetic val$packageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/MovePackageHelper;Lcom/android/server/pm/PackageFreezer;Ljava/util/concurrent/CountDownLatch;ILjava/lang/String;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/pm/MovePackageHelper$1;->this$0:Lcom/android/server/pm/MovePackageHelper;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/server/pm/MovePackageHelper$1;->val$freezer:Lcom/android/server/pm/PackageFreezer;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/android/server/pm/MovePackageHelper$1;->val$installedLatch:Ljava/util/concurrent/CountDownLatch;

    .line 6
    .line 7
    iput p4, p0, Lcom/android/server/pm/MovePackageHelper$1;->val$moveId:I

    .line 8
    .line 9
    iput-object p5, p0, Lcom/android/server/pm/MovePackageHelper$1;->val$packageName:Ljava/lang/String;

    .line 10
    .line 11
    iput-boolean p6, p0, Lcom/android/server/pm/MovePackageHelper$1;->val$isCurrentLocationExternal:Z

    .line 12
    .line 13
    invoke-direct {p0}, Landroid/content/pm/IPackageInstallObserver2$Stub;-><init>()V

    .line 14
    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final onPackageInstalled(Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/android/server/pm/MovePackageHelper$1;->val$installedLatch:Ljava/util/concurrent/CountDownLatch;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/android/server/pm/MovePackageHelper$1;->val$freezer:Lcom/android/server/pm/PackageFreezer;

    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/android/server/pm/PackageFreezer;->close()V

    .line 9
    .line 10
    .line 11
    sget-boolean p1, Lcom/samsung/android/rune/PMRune;->PM_INSTALL_TO_SDCARD:Z

    .line 12
    .line 13
    const/4 p3, 0x0

    .line 14
    const/4 p4, -0x6

    .line 15
    if-eqz p1, :cond_3

    .line 16
    .line 17
    sget-object p1, Lcom/android/server/pm/MovePackageHelper;->sMoveIdMapForSd:Ljava/util/Map;

    .line 18
    .line 19
    monitor-enter p1

    .line 20
    :try_start_0
    sget-boolean v0, Lcom/android/server/pm/AsecInstallHelper;->sPreMounted:Z

    .line 21
    .line 22
    if-nez v0, :cond_1

    .line 23
    .line 24
    sget-object v0, Lcom/android/server/pm/MovePackageHelper;->sPendingMoves:Ljava/util/ArrayList;

    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-lez v1, :cond_0

    .line 31
    .line 32
    iget-object v1, p0, Lcom/android/server/pm/MovePackageHelper$1;->this$0:Lcom/android/server/pm/MovePackageHelper;

    .line 33
    .line 34
    iget-object v1, v1, Lcom/android/server/pm/MovePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 35
    .line 36
    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mMoveCallbacks:Lcom/android/server/pm/MovePackageHelper$MoveCallbacks;

    .line 37
    .line 38
    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    check-cast v2, Lcom/android/server/pm/MovePackageHelper$SdcardParams;

    .line 43
    .line 44
    iget v2, v2, Lcom/android/server/pm/MovePackageHelper$SdcardParams;->moveId:I

    .line 45
    .line 46
    invoke-virtual {v1, v2, p4}, Lcom/android/server/pm/MovePackageHelper$MoveCallbacks;->notifyStatusChanged(II)V

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :catchall_0
    move-exception p0

    .line 51
    goto :goto_2

    .line 52
    :cond_0
    :goto_0
    move-object v1, p1

    .line 53
    check-cast v1, Ljava/util/HashMap;

    .line 54
    .line 55
    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 59
    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_1
    iget v0, p0, Lcom/android/server/pm/MovePackageHelper$1;->val$moveId:I

    .line 63
    .line 64
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    move-object v1, p1

    .line 69
    check-cast v1, Ljava/util/HashMap;

    .line 70
    .line 71
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    if-eqz v0, :cond_2

    .line 76
    .line 77
    sget-object v0, Lcom/android/server/pm/MovePackageHelper;->sPendingMoves:Ljava/util/ArrayList;

    .line 78
    .line 79
    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 83
    .line 84
    .line 85
    move-result v1

    .line 86
    if-lez v1, :cond_2

    .line 87
    .line 88
    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    check-cast v0, Lcom/android/server/pm/MovePackageHelper$SdcardParams;

    .line 93
    .line 94
    iget-object v1, p0, Lcom/android/server/pm/MovePackageHelper$1;->this$0:Lcom/android/server/pm/MovePackageHelper;

    .line 95
    .line 96
    iget-object v2, v1, Lcom/android/server/pm/MovePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 97
    .line 98
    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    .line 99
    .line 100
    new-instance v3, Lcom/android/server/pm/MovePackageHelper$2;

    .line 101
    .line 102
    invoke-direct {v3, v1, v0}, Lcom/android/server/pm/MovePackageHelper$2;-><init>(Lcom/android/server/pm/MovePackageHelper;Lcom/android/server/pm/MovePackageHelper$SdcardParams;)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 106
    .line 107
    .line 108
    :cond_2
    :goto_1
    monitor-exit p1

    .line 109
    goto :goto_3

    .line 110
    :goto_2
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 111
    throw p0

    .line 112
    :cond_3
    :goto_3
    invoke-static {p2}, Landroid/content/pm/PackageManager;->installStatusToPublicStatus(I)I

    .line 113
    .line 114
    .line 115
    move-result p1

    .line 116
    if-eqz p1, :cond_5

    .line 117
    .line 118
    const/4 p2, 0x6

    .line 119
    if-eq p1, p2, :cond_4

    .line 120
    .line 121
    iget-object p1, p0, Lcom/android/server/pm/MovePackageHelper$1;->this$0:Lcom/android/server/pm/MovePackageHelper;

    .line 122
    .line 123
    iget-object p1, p1, Lcom/android/server/pm/MovePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 124
    .line 125
    iget-object p1, p1, Lcom/android/server/pm/PackageManagerService;->mMoveCallbacks:Lcom/android/server/pm/MovePackageHelper$MoveCallbacks;

    .line 126
    .line 127
    iget p0, p0, Lcom/android/server/pm/MovePackageHelper$1;->val$moveId:I

    .line 128
    .line 129
    invoke-virtual {p1, p0, p4}, Lcom/android/server/pm/MovePackageHelper$MoveCallbacks;->notifyStatusChanged(II)V

    .line 130
    .line 131
    .line 132
    goto/16 :goto_5

    .line 133
    .line 134
    :cond_4
    iget-object p1, p0, Lcom/android/server/pm/MovePackageHelper$1;->this$0:Lcom/android/server/pm/MovePackageHelper;

    .line 135
    .line 136
    iget-object p1, p1, Lcom/android/server/pm/MovePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 137
    .line 138
    iget-object p1, p1, Lcom/android/server/pm/PackageManagerService;->mMoveCallbacks:Lcom/android/server/pm/MovePackageHelper$MoveCallbacks;

    .line 139
    .line 140
    iget p0, p0, Lcom/android/server/pm/MovePackageHelper$1;->val$moveId:I

    .line 141
    .line 142
    const/4 p2, -0x1

    .line 143
    invoke-virtual {p1, p0, p2}, Lcom/android/server/pm/MovePackageHelper$MoveCallbacks;->notifyStatusChanged(II)V

    .line 144
    .line 145
    .line 146
    goto/16 :goto_5

    .line 147
    .line 148
    :cond_5
    iget-object p1, p0, Lcom/android/server/pm/MovePackageHelper$1;->this$0:Lcom/android/server/pm/MovePackageHelper;

    .line 149
    .line 150
    iget-object p1, p1, Lcom/android/server/pm/MovePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 151
    .line 152
    iget-object p1, p1, Lcom/android/server/pm/PackageManagerService;->mMoveCallbacks:Lcom/android/server/pm/MovePackageHelper$MoveCallbacks;

    .line 153
    .line 154
    iget p2, p0, Lcom/android/server/pm/MovePackageHelper$1;->val$moveId:I

    .line 155
    .line 156
    const/16 p4, 0x64

    .line 157
    .line 158
    invoke-virtual {p1, p2, p4}, Lcom/android/server/pm/MovePackageHelper$MoveCallbacks;->notifyStatusChanged(II)V

    .line 159
    .line 160
    .line 161
    iget-object p1, p0, Lcom/android/server/pm/MovePackageHelper$1;->this$0:Lcom/android/server/pm/MovePackageHelper;

    .line 162
    .line 163
    iget-object p1, p1, Lcom/android/server/pm/MovePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 164
    .line 165
    iget-object p1, p1, Lcom/android/server/pm/PackageManagerService;->mMoveCallbacks:Lcom/android/server/pm/MovePackageHelper$MoveCallbacks;

    .line 166
    .line 167
    iget p2, p0, Lcom/android/server/pm/MovePackageHelper$1;->val$moveId:I

    .line 168
    .line 169
    const/16 p4, -0x64

    .line 170
    .line 171
    invoke-virtual {p1, p2, p4}, Lcom/android/server/pm/MovePackageHelper$MoveCallbacks;->notifyStatusChanged(II)V

    .line 172
    .line 173
    .line 174
    iget-object p1, p0, Lcom/android/server/pm/MovePackageHelper$1;->this$0:Lcom/android/server/pm/MovePackageHelper;

    .line 175
    .line 176
    iget-object p2, p0, Lcom/android/server/pm/MovePackageHelper$1;->val$packageName:Ljava/lang/String;

    .line 177
    .line 178
    iget-boolean p0, p0, Lcom/android/server/pm/MovePackageHelper$1;->val$isCurrentLocationExternal:Z

    .line 179
    .line 180
    iget-object p1, p1, Lcom/android/server/pm/MovePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 181
    .line 182
    invoke-virtual {p1}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 183
    .line 184
    .line 185
    move-result-object p4

    .line 186
    invoke-interface {p4, p2}, Lcom/android/server/pm/Computer;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/AndroidPackage;

    .line 187
    .line 188
    .line 189
    move-result-object p4

    .line 190
    if-nez p4, :cond_6

    .line 191
    .line 192
    goto :goto_5

    .line 193
    :cond_6
    const-class v0, Landroid/os/storage/StorageManager;

    .line 194
    .line 195
    iget-object p1, p1, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    .line 196
    .line 197
    iget-object p1, p1, Lcom/android/server/pm/PackageManagerServiceInjector;->mGetSystemServiceProducer:Lcom/android/server/pm/PackageManagerServiceInjector$ServiceProducer;

    .line 198
    .line 199
    invoke-interface {p1, v0}, Lcom/android/server/pm/PackageManagerServiceInjector$ServiceProducer;->produce(Ljava/lang/Class;)Ljava/lang/Object;

    .line 200
    .line 201
    .line 202
    move-result-object p1

    .line 203
    check-cast p1, Landroid/os/storage/StorageManager;

    .line 204
    .line 205
    invoke-interface {p4}, Lcom/android/server/pm/pkg/AndroidPackage;->getVolumeUuid()Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v0

    .line 209
    invoke-static {v0}, Landroid/os/storage/StorageManager;->convert(Ljava/lang/String;)Ljava/util/UUID;

    .line 210
    .line 211
    .line 212
    move-result-object v0

    .line 213
    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object v0

    .line 217
    invoke-virtual {p1, v0}, Landroid/os/storage/StorageManager;->findVolumeByUuid(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    .line 218
    .line 219
    .line 220
    move-result-object p1

    .line 221
    invoke-interface {p4}, Lcom/android/server/pm/pkg/AndroidPackage;->isExternalStorage()Z

    .line 222
    .line 223
    .line 224
    move-result v0

    .line 225
    sget-boolean v1, Lcom/android/server/pm/PackageManagerServiceUtils;->DEBUG:Z

    .line 226
    .line 227
    const/4 v1, 0x2

    .line 228
    const/4 v2, 0x1

    .line 229
    if-eqz p1, :cond_9

    .line 230
    .line 231
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getDisk()Landroid/os/storage/DiskInfo;

    .line 232
    .line 233
    .line 234
    move-result-object p1

    .line 235
    if-eqz p1, :cond_9

    .line 236
    .line 237
    invoke-virtual {p1}, Landroid/os/storage/DiskInfo;->isSd()Z

    .line 238
    .line 239
    .line 240
    move-result v3

    .line 241
    if-eqz v3, :cond_7

    .line 242
    .line 243
    move p3, v2

    .line 244
    goto :goto_4

    .line 245
    :cond_7
    invoke-virtual {p1}, Landroid/os/storage/DiskInfo;->isUsb()Z

    .line 246
    .line 247
    .line 248
    move-result p1

    .line 249
    if-eqz p1, :cond_8

    .line 250
    .line 251
    move p3, v1

    .line 252
    goto :goto_4

    .line 253
    :cond_8
    if-eqz v0, :cond_9

    .line 254
    .line 255
    const/4 p3, 0x3

    .line 256
    :cond_9
    :goto_4
    const/16 p1, 0xb7

    .line 257
    .line 258
    if-nez p0, :cond_a

    .line 259
    .line 260
    invoke-interface {p4}, Lcom/android/server/pm/pkg/AndroidPackage;->isExternalStorage()Z

    .line 261
    .line 262
    .line 263
    move-result v0

    .line 264
    if-eqz v0, :cond_a

    .line 265
    .line 266
    invoke-static {p1, p3, v2, p2}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIILjava/lang/String;)V

    .line 267
    .line 268
    .line 269
    goto :goto_5

    .line 270
    :cond_a
    if-eqz p0, :cond_b

    .line 271
    .line 272
    invoke-interface {p4}, Lcom/android/server/pm/pkg/AndroidPackage;->isExternalStorage()Z

    .line 273
    .line 274
    .line 275
    move-result p0

    .line 276
    if-nez p0, :cond_b

    .line 277
    .line 278
    invoke-static {p1, p3, v1, p2}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIILjava/lang/String;)V

    .line 279
    .line 280
    .line 281
    :cond_b
    :goto_5
    return-void
.end method

.method public final onUserActionRequired(Landroid/content/Intent;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/MovePackageHelper$1;->val$freezer:Lcom/android/server/pm/PackageFreezer;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/pm/PackageFreezer;->close()V

    .line 4
    .line 5
    .line 6
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 7
    .line 8
    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    .line 9
    .line 10
    .line 11
    throw p0
.end method
