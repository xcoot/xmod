.class public final Lcom/android/server/pm/DumpHelper;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mAvailableFeatures:Landroid/util/ArrayMap;

.field public final mChangedPackagesTracker:Lcom/android/server/pm/ChangedPackagesTracker;

.field public final mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

.field public final mInstallerService:Lcom/android/server/pm/PackageInstallerService;

.field public final mKnownPackages:Lcom/android/server/pm/KnownPackages;

.field public final mPerUidReadTimeouts:[Landroid/os/incremental/PerUidReadTimeouts;

.field public final mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;

.field public final mProtectedBroadcasts:Landroid/util/ArraySet;

.field public final mRequiredVerifierPackages:[Ljava/lang/String;

.field public final mSnapshotStatistics:Lcom/android/server/pm/SnapshotStatistics;

.field public final mStorageEventHelper:Lcom/android/server/pm/StorageEventHelper;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;Lcom/android/server/pm/StorageEventHelper;Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;Lcom/android/server/pm/PackageInstallerService;[Ljava/lang/String;Lcom/android/server/pm/KnownPackages;Lcom/android/server/pm/ChangedPackagesTracker;Landroid/util/ArrayMap;Landroid/util/ArraySet;[Landroid/os/incremental/PerUidReadTimeouts;Lcom/android/server/pm/SnapshotStatistics;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/pm/DumpHelper;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/pm/DumpHelper;->mStorageEventHelper:Lcom/android/server/pm/StorageEventHelper;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/pm/DumpHelper;->mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/server/pm/DumpHelper;->mInstallerService:Lcom/android/server/pm/PackageInstallerService;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/android/server/pm/DumpHelper;->mRequiredVerifierPackages:[Ljava/lang/String;

    .line 13
    .line 14
    iput-object p6, p0, Lcom/android/server/pm/DumpHelper;->mKnownPackages:Lcom/android/server/pm/KnownPackages;

    .line 15
    .line 16
    iput-object p7, p0, Lcom/android/server/pm/DumpHelper;->mChangedPackagesTracker:Lcom/android/server/pm/ChangedPackagesTracker;

    .line 17
    .line 18
    iput-object p8, p0, Lcom/android/server/pm/DumpHelper;->mAvailableFeatures:Landroid/util/ArrayMap;

    .line 19
    .line 20
    iput-object p9, p0, Lcom/android/server/pm/DumpHelper;->mProtectedBroadcasts:Landroid/util/ArraySet;

    .line 21
    .line 22
    iput-object p10, p0, Lcom/android/server/pm/DumpHelper;->mPerUidReadTimeouts:[Landroid/os/incremental/PerUidReadTimeouts;

    .line 23
    .line 24
    iput-object p11, p0, Lcom/android/server/pm/DumpHelper;->mSnapshotStatistics:Lcom/android/server/pm/SnapshotStatistics;

    .line 25
    .line 26
    return-void
.end method


# virtual methods
.method public final doDump(Lcom/android/server/pm/Computer;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 18
    .annotation build Ldalvik/annotation/optimization/NeverCompile;
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v7, p1

    .line 4
    .line 5
    move-object/from16 v8, p2

    .line 6
    .line 7
    move-object/from16 v9, p3

    .line 8
    .line 9
    move-object/from16 v1, p4

    .line 10
    .line 11
    const/4 v2, 0x2

    .line 12
    const/4 v10, 0x0

    .line 13
    const/4 v11, 0x1

    .line 14
    new-instance v12, Lcom/android/server/pm/DumpState;

    .line 15
    .line 16
    invoke-direct {v12}, Ljava/lang/Object;-><init>()V

    .line 17
    .line 18
    .line 19
    move v3, v10

    .line 20
    :goto_0
    array-length v4, v1

    .line 21
    const/16 v5, 0x8

    .line 22
    .line 23
    const-wide/32 v13, 0x10000000

    .line 24
    .line 25
    .line 26
    if-ge v3, v4, :cond_e

    .line 27
    .line 28
    aget-object v4, v1, v3

    .line 29
    .line 30
    if-eqz v4, :cond_e

    .line 31
    .line 32
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 33
    .line 34
    .line 35
    move-result v6

    .line 36
    if-lez v6, :cond_e

    .line 37
    .line 38
    invoke-virtual {v4, v10}, Ljava/lang/String;->charAt(I)C

    .line 39
    .line 40
    .line 41
    move-result v6

    .line 42
    const/16 v15, 0x2d

    .line 43
    .line 44
    if-eq v6, v15, :cond_0

    .line 45
    .line 46
    goto/16 :goto_7

    .line 47
    .line 48
    :cond_0
    add-int/2addr v3, v11

    .line 49
    const-string v6, "-a"

    .line 50
    .line 51
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v6

    .line 55
    if-eqz v6, :cond_1

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_1
    const-string v6, "-h"

    .line 59
    .line 60
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    move-result v6

    .line 64
    if-eqz v6, :cond_2

    .line 65
    .line 66
    const-string v0, "Package manager dump options:"

    .line 67
    .line 68
    const-string v1, "  [-h] [-f] [--checkin] [--all-components] [cmd] ..."

    .line 69
    .line 70
    const-string v2, "    --checkin: dump for a checkin"

    .line 71
    .line 72
    const-string v3, "    -f: print details of intent filters"

    .line 73
    .line 74
    invoke-static {v9, v0, v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    const-string v0, "    -h: print this help"

    .line 78
    .line 79
    const-string v1, "    --proto: dump data to proto"

    .line 80
    .line 81
    const-string v2, "    --all-components: include all component names in package dump"

    .line 82
    .line 83
    const-string v3, "    --include-apex: includes the apex packages in package dump"

    .line 84
    .line 85
    invoke-static {v9, v0, v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    const-string v0, "  cmd may be one of:"

    .line 89
    .line 90
    const-string v1, "    apex: list active APEXes and APEX session state"

    .line 91
    .line 92
    const-string v2, "    l[ibraries]: list known shared libraries"

    .line 93
    .line 94
    const-string v3, "    f[eatures]: list device features"

    .line 95
    .line 96
    invoke-static {v9, v0, v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    const-string v0, "    k[eysets]: print known keysets"

    .line 100
    .line 101
    const-string v1, "    r[esolvers] [activity|service|receiver|content]: dump intent resolvers"

    .line 102
    .line 103
    const-string v2, "    perm[issions]: dump permissions"

    .line 104
    .line 105
    const-string v3, "    permission [name ...]: dump declaration and use of given permission"

    .line 106
    .line 107
    invoke-static {v9, v0, v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    const-string v0, "    pref[erred]: print preferred package settings"

    .line 111
    .line 112
    const-string v1, "    preferred-xml [--full]: print preferred package settings as xml"

    .line 113
    .line 114
    const-string v2, "    prov[iders]: dump content providers"

    .line 115
    .line 116
    const-string v3, "    p[ackages]: dump installed packages"

    .line 117
    .line 118
    invoke-static {v9, v0, v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    const-string v0, "    q[ueries]: dump app queryability calculations"

    .line 122
    .line 123
    const-string v1, "    s[hared-users] [noperm]: dump shared user IDs"

    .line 124
    .line 125
    const-string v2, "    m[essages]: print collected runtime messages"

    .line 126
    .line 127
    const-string v3, "    v[erifiers]: print package verifier info"

    .line 128
    .line 129
    invoke-static {v9, v0, v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    const-string v0, "    d[omain-preferred-apps]: print domains preferred apps"

    .line 133
    .line 134
    const-string v1, "    i[ntent-filter-verifiers]|ifv: print intent filter verifier info"

    .line 135
    .line 136
    const-string v2, "    t[imeouts]: print read timeouts for known digesters"

    .line 137
    .line 138
    const-string v3, "    version: print database version info"

    .line 139
    .line 140
    invoke-static {v9, v0, v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    const-string v0, "    write: write current settings now"

    .line 144
    .line 145
    const-string v1, "    installs: details about install sessions"

    .line 146
    .line 147
    const-string v2, "    check-permission <permission> <package> [<user>]: does pkg hold perm?"

    .line 148
    .line 149
    const-string v3, "    dexopt: dump dexopt state"

    .line 150
    .line 151
    invoke-static {v9, v0, v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    const-string v0, "    compiler-stats: dump compiler statistics"

    .line 155
    .line 156
    const-string v1, "    service-permissions: dump permissions required by services"

    .line 157
    .line 158
    const-string v2, "    snapshot [--full|--brief]: dump snapshot statistics"

    .line 159
    .line 160
    const-string v3, "    protected-broadcasts: print list of protected broadcast actions"

    .line 161
    .line 162
    invoke-static {v9, v0, v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    const-string v0, "    known-packages: dump known packages"

    .line 166
    .line 167
    const-string v1, "    changes: dump the packages that have been changed"

    .line 168
    .line 169
    const-string v2, "    frozen: dump the frozen packages"

    .line 170
    .line 171
    const-string v3, "    volumes: dump the loaded volumes"

    .line 172
    .line 173
    invoke-static {v9, v0, v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    const-string v0, "    <package.name>: info about given package"

    .line 177
    .line 178
    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 179
    .line 180
    .line 181
    return-void

    .line 182
    :cond_2
    const-string v6, "--checkin"

    .line 183
    .line 184
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 185
    .line 186
    .line 187
    move-result v6

    .line 188
    if-eqz v6, :cond_3

    .line 189
    .line 190
    iput-boolean v11, v12, Lcom/android/server/pm/DumpState;->mCheckIn:Z

    .line 191
    .line 192
    goto/16 :goto_0

    .line 193
    .line 194
    :cond_3
    const-string v6, "--all-components"

    .line 195
    .line 196
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 197
    .line 198
    .line 199
    move-result v6

    .line 200
    if-eqz v6, :cond_4

    .line 201
    .line 202
    iget v4, v12, Lcom/android/server/pm/DumpState;->mOptions:I

    .line 203
    .line 204
    or-int/2addr v4, v2

    .line 205
    iput v4, v12, Lcom/android/server/pm/DumpState;->mOptions:I

    .line 206
    .line 207
    goto/16 :goto_0

    .line 208
    .line 209
    :cond_4
    const-string v6, "-f"

    .line 210
    .line 211
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 212
    .line 213
    .line 214
    move-result v6

    .line 215
    if-eqz v6, :cond_5

    .line 216
    .line 217
    iget v4, v12, Lcom/android/server/pm/DumpState;->mOptions:I

    .line 218
    .line 219
    or-int/2addr v4, v11

    .line 220
    iput v4, v12, Lcom/android/server/pm/DumpState;->mOptions:I

    .line 221
    .line 222
    goto/16 :goto_0

    .line 223
    .line 224
    :cond_5
    const-string v6, "--include-apex"

    .line 225
    .line 226
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 227
    .line 228
    .line 229
    move-result v6

    .line 230
    if-eqz v6, :cond_6

    .line 231
    .line 232
    iget v4, v12, Lcom/android/server/pm/DumpState;->mOptions:I

    .line 233
    .line 234
    or-int/2addr v4, v5

    .line 235
    iput v4, v12, Lcom/android/server/pm/DumpState;->mOptions:I

    .line 236
    .line 237
    goto/16 :goto_0

    .line 238
    .line 239
    :cond_6
    const-string v5, "--proto"

    .line 240
    .line 241
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 242
    .line 243
    .line 244
    move-result v5

    .line 245
    if-eqz v5, :cond_d

    .line 246
    .line 247
    new-instance v1, Landroid/util/proto/ProtoOutputStream;

    .line 248
    .line 249
    invoke-direct {v1, v8}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 250
    .line 251
    .line 252
    iget-object v2, v0, Lcom/android/server/pm/DumpHelper;->mRequiredVerifierPackages:[Ljava/lang/String;

    .line 253
    .line 254
    array-length v3, v2

    .line 255
    move v4, v10

    .line 256
    :goto_1
    const-wide v8, 0x10900000001L

    .line 257
    .line 258
    .line 259
    .line 260
    .line 261
    if-ge v4, v3, :cond_7

    .line 262
    .line 263
    aget-object v12, v2, v4

    .line 264
    .line 265
    const-wide v5, 0x10b00000001L

    .line 266
    .line 267
    .line 268
    .line 269
    .line 270
    invoke-virtual {v1, v5, v6}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    .line 271
    .line 272
    .line 273
    move-result-wide v5

    .line 274
    invoke-virtual {v1, v8, v9, v12}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 275
    .line 276
    .line 277
    invoke-interface {v7, v12, v13, v14, v10}, Lcom/android/server/pm/Computer;->getPackageUid(Ljava/lang/String;JI)I

    .line 278
    .line 279
    .line 280
    move-result v8

    .line 281
    const-wide v13, 0x10500000002L

    .line 282
    .line 283
    .line 284
    .line 285
    .line 286
    invoke-virtual {v1, v13, v14, v8}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 287
    .line 288
    .line 289
    invoke-virtual {v1, v5, v6}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 290
    .line 291
    .line 292
    add-int/2addr v4, v11

    .line 293
    const-wide/32 v13, 0x10000000

    .line 294
    .line 295
    .line 296
    goto :goto_1

    .line 297
    :cond_7
    iget-object v2, v0, Lcom/android/server/pm/DumpHelper;->mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

    .line 298
    .line 299
    check-cast v2, Lcom/android/server/pm/verify/domain/DomainVerificationService;

    .line 300
    .line 301
    iget-object v2, v2, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mProxy:Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxy;

    .line 302
    .line 303
    invoke-interface {v2}, Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxy;->getComponentName()Landroid/content/ComponentName;

    .line 304
    .line 305
    .line 306
    move-result-object v2

    .line 307
    if-eqz v2, :cond_8

    .line 308
    .line 309
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 310
    .line 311
    .line 312
    move-result-object v2

    .line 313
    const-wide v3, 0x10b00000002L

    .line 314
    .line 315
    .line 316
    .line 317
    .line 318
    invoke-virtual {v1, v3, v4}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    .line 319
    .line 320
    .line 321
    move-result-wide v3

    .line 322
    invoke-virtual {v1, v8, v9, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 323
    .line 324
    .line 325
    const-wide/32 v5, 0x10000000

    .line 326
    .line 327
    .line 328
    invoke-interface {v7, v2, v5, v6, v10}, Lcom/android/server/pm/Computer;->getPackageUid(Ljava/lang/String;JI)I

    .line 329
    .line 330
    .line 331
    move-result v2

    .line 332
    const-wide v5, 0x10500000002L

    .line 333
    .line 334
    .line 335
    .line 336
    .line 337
    invoke-virtual {v1, v5, v6, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 338
    .line 339
    .line 340
    invoke-virtual {v1, v3, v4}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 341
    .line 342
    .line 343
    :cond_8
    invoke-interface {v7, v1}, Lcom/android/server/pm/Computer;->dumpSharedLibrariesProto(Landroid/util/proto/ProtoOutputStream;)V

    .line 344
    .line 345
    .line 346
    iget-object v2, v0, Lcom/android/server/pm/DumpHelper;->mAvailableFeatures:Landroid/util/ArrayMap;

    .line 347
    .line 348
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    .line 349
    .line 350
    .line 351
    move-result v2

    .line 352
    :goto_2
    if-ge v10, v2, :cond_9

    .line 353
    .line 354
    iget-object v3, v0, Lcom/android/server/pm/DumpHelper;->mAvailableFeatures:Landroid/util/ArrayMap;

    .line 355
    .line 356
    invoke-virtual {v3, v10}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 357
    .line 358
    .line 359
    move-result-object v3

    .line 360
    check-cast v3, Landroid/content/pm/FeatureInfo;

    .line 361
    .line 362
    const-wide v4, 0x20b00000004L

    .line 363
    .line 364
    .line 365
    .line 366
    .line 367
    invoke-virtual {v3, v1, v4, v5}, Landroid/content/pm/FeatureInfo;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 368
    .line 369
    .line 370
    add-int/2addr v10, v11

    .line 371
    goto :goto_2

    .line 372
    :cond_9
    invoke-interface {v7, v1}, Lcom/android/server/pm/Computer;->dumpPackagesProto(Landroid/util/proto/ProtoOutputStream;)V

    .line 373
    .line 374
    .line 375
    invoke-interface {v7, v1}, Lcom/android/server/pm/Computer;->dumpSharedUsersProto(Landroid/util/proto/ProtoOutputStream;)V

    .line 376
    .line 377
    .line 378
    invoke-static {}, Lcom/android/server/pm/PackageManagerServiceUtils;->getSettingsProblemFile()Ljava/io/File;

    .line 379
    .line 380
    .line 381
    move-result-object v0

    .line 382
    invoke-virtual {v0}, Ljava/io/File;->length()J

    .line 383
    .line 384
    .line 385
    move-result-wide v2

    .line 386
    const-wide/32 v4, 0x2dc6c0

    .line 387
    .line 388
    .line 389
    sub-long/2addr v2, v4

    .line 390
    :try_start_0
    new-instance v4, Ljava/io/BufferedReader;

    .line 391
    .line 392
    new-instance v5, Ljava/io/FileReader;

    .line 393
    .line 394
    invoke-direct {v5, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    .line 395
    .line 396
    .line 397
    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 398
    .line 399
    .line 400
    const-wide/16 v5, 0x0

    .line 401
    .line 402
    cmp-long v0, v2, v5

    .line 403
    .line 404
    if-lez v0, :cond_a

    .line 405
    .line 406
    :try_start_1
    invoke-virtual {v4, v2, v3}, Ljava/io/BufferedReader;->skip(J)J

    .line 407
    .line 408
    .line 409
    goto :goto_3

    .line 410
    :catchall_0
    move-exception v0

    .line 411
    move-object v2, v0

    .line 412
    goto :goto_4

    .line 413
    :cond_a
    :goto_3
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 414
    .line 415
    .line 416
    move-result-object v0

    .line 417
    if-eqz v0, :cond_c

    .line 418
    .line 419
    const-string v2, "ignored: updated version"

    .line 420
    .line 421
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 422
    .line 423
    .line 424
    move-result v2

    .line 425
    if-eqz v2, :cond_b

    .line 426
    .line 427
    goto :goto_3

    .line 428
    :cond_b
    const-wide v2, 0x20900000007L

    .line 429
    .line 430
    .line 431
    .line 432
    .line 433
    invoke-virtual {v1, v2, v3, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 434
    .line 435
    .line 436
    goto :goto_3

    .line 437
    :cond_c
    :try_start_2
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 438
    .line 439
    .line 440
    goto :goto_6

    .line 441
    :goto_4
    :try_start_3
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 442
    .line 443
    .line 444
    goto :goto_5

    .line 445
    :catchall_1
    move-exception v0

    .line 446
    move-object v3, v0

    .line 447
    :try_start_4
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 448
    .line 449
    .line 450
    :goto_5
    throw v2
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 451
    :catch_0
    :goto_6
    invoke-virtual {v1}, Landroid/util/proto/ProtoOutputStream;->flush()V

    .line 452
    .line 453
    .line 454
    return-void

    .line 455
    :cond_d
    const-string v5, "Unknown argument: "

    .line 456
    .line 457
    const-string v6, "; use -h for help"

    .line 458
    .line 459
    invoke-static {v9, v5, v4, v6}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    .line 461
    .line 462
    goto/16 :goto_0

    .line 463
    .line 464
    :cond_e
    :goto_7
    array-length v4, v1

    .line 465
    const/high16 v10, 0x10000

    .line 466
    .line 467
    const/high16 v15, 0x80000

    .line 468
    .line 469
    const v5, 0x8000

    .line 470
    .line 471
    .line 472
    const/16 v13, 0x2000

    .line 473
    .line 474
    if-ge v3, v4, :cond_20

    .line 475
    .line 476
    aget-object v4, v1, v3

    .line 477
    .line 478
    add-int/lit8 v14, v3, 0x1

    .line 479
    .line 480
    const-string v6, "android"

    .line 481
    .line 482
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 483
    .line 484
    .line 485
    move-result v6

    .line 486
    if-nez v6, :cond_f

    .line 487
    .line 488
    const-string v6, "."

    .line 489
    .line 490
    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 491
    .line 492
    .line 493
    move-result v6

    .line 494
    if-eqz v6, :cond_10

    .line 495
    .line 496
    :cond_f
    const/16 v6, 0x100

    .line 497
    .line 498
    const/high16 v14, 0x10000000

    .line 499
    .line 500
    goto/16 :goto_23

    .line 501
    .line 502
    :cond_10
    const-string v6, "check-permission"

    .line 503
    .line 504
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 505
    .line 506
    .line 507
    move-result v6

    .line 508
    if-eqz v6, :cond_14

    .line 509
    .line 510
    array-length v4, v1

    .line 511
    if-lt v14, v4, :cond_11

    .line 512
    .line 513
    const-string v0, "Error: check-permission missing permission argument"

    .line 514
    .line 515
    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 516
    .line 517
    .line 518
    return-void

    .line 519
    :cond_11
    aget-object v4, v1, v14

    .line 520
    .line 521
    add-int/2addr v2, v3

    .line 522
    array-length v5, v1

    .line 523
    if-lt v2, v5, :cond_12

    .line 524
    .line 525
    const-string v0, "Error: check-permission missing package argument"

    .line 526
    .line 527
    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 528
    .line 529
    .line 530
    return-void

    .line 531
    :cond_12
    aget-object v2, v1, v2

    .line 532
    .line 533
    add-int/lit8 v3, v3, 0x3

    .line 534
    .line 535
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 536
    .line 537
    .line 538
    move-result v5

    .line 539
    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    .line 540
    .line 541
    .line 542
    move-result v5

    .line 543
    array-length v6, v1

    .line 544
    if-ge v3, v6, :cond_13

    .line 545
    .line 546
    :try_start_5
    aget-object v5, v1, v3

    .line 547
    .line 548
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 549
    .line 550
    .line 551
    move-result v5
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_1

    .line 552
    goto :goto_8

    .line 553
    :catch_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 554
    .line 555
    const-string v2, "Error: check-permission user argument is not a number: "

    .line 556
    .line 557
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 558
    .line 559
    .line 560
    aget-object v1, v1, v3

    .line 561
    .line 562
    invoke-static {v0, v1, v9}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 563
    .line 564
    .line 565
    return-void

    .line 566
    :cond_13
    :goto_8
    const-wide/16 v10, -0x1

    .line 567
    .line 568
    invoke-interface {v7, v10, v11, v2}, Lcom/android/server/pm/Computer;->resolveInternalPackageName(JLjava/lang/String;)Ljava/lang/String;

    .line 569
    .line 570
    .line 571
    move-result-object v1

    .line 572
    iget-object v0, v0, Lcom/android/server/pm/DumpHelper;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;

    .line 573
    .line 574
    const-string v2, "default:0"

    .line 575
    .line 576
    iget-object v0, v0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    .line 577
    .line 578
    invoke-virtual {v0, v1, v4, v2, v5}, Lcom/android/server/pm/permission/PermissionManagerService;->checkPermission(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    .line 579
    .line 580
    .line 581
    move-result v0

    .line 582
    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 583
    .line 584
    .line 585
    return-void

    .line 586
    :cond_14
    const-string v3, "l"

    .line 587
    .line 588
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 589
    .line 590
    .line 591
    move-result v3

    .line 592
    if-nez v3, :cond_15

    .line 593
    .line 594
    const-string v3, "libraries"

    .line 595
    .line 596
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 597
    .line 598
    .line 599
    move-result v3

    .line 600
    if-eqz v3, :cond_16

    .line 601
    .line 602
    :cond_15
    const/16 v6, 0x100

    .line 603
    .line 604
    goto/16 :goto_22

    .line 605
    .line 606
    :cond_16
    const-string v3, "f"

    .line 607
    .line 608
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 609
    .line 610
    .line 611
    move-result v3

    .line 612
    if-nez v3, :cond_17

    .line 613
    .line 614
    const-string v3, "features"

    .line 615
    .line 616
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 617
    .line 618
    .line 619
    move-result v3

    .line 620
    if-eqz v3, :cond_18

    .line 621
    .line 622
    :cond_17
    const/16 v6, 0x100

    .line 623
    .line 624
    goto/16 :goto_21

    .line 625
    .line 626
    :cond_18
    const-string/jumbo v3, "r"

    .line 627
    .line 628
    .line 629
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 630
    .line 631
    .line 632
    move-result v3

    .line 633
    if-nez v3, :cond_19

    .line 634
    .line 635
    const-string/jumbo v3, "resolvers"

    .line 636
    .line 637
    .line 638
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 639
    .line 640
    .line 641
    move-result v3

    .line 642
    if-eqz v3, :cond_1a

    .line 643
    .line 644
    :cond_19
    const/high16 v4, 0x10000000

    .line 645
    .line 646
    const/16 v6, 0x100

    .line 647
    .line 648
    goto/16 :goto_1a

    .line 649
    .line 650
    :cond_1a
    const-string/jumbo v3, "perm"

    .line 651
    .line 652
    .line 653
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 654
    .line 655
    .line 656
    move-result v3

    .line 657
    if-nez v3, :cond_44

    .line 658
    .line 659
    const-string/jumbo v3, "permissions"

    .line 660
    .line 661
    .line 662
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 663
    .line 664
    .line 665
    move-result v3

    .line 666
    if-eqz v3, :cond_1b

    .line 667
    .line 668
    const/16 v1, 0x40

    .line 669
    .line 670
    const/high16 v4, 0x10000000

    .line 671
    .line 672
    const/16 v6, 0x100

    .line 673
    .line 674
    goto/16 :goto_19

    .line 675
    .line 676
    :cond_1b
    const-string/jumbo v3, "permission"

    .line 677
    .line 678
    .line 679
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 680
    .line 681
    .line 682
    move-result v3

    .line 683
    if-eqz v3, :cond_1e

    .line 684
    .line 685
    array-length v3, v1

    .line 686
    if-lt v14, v3, :cond_1c

    .line 687
    .line 688
    const-string v0, "Error: permission requires permission name"

    .line 689
    .line 690
    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 691
    .line 692
    .line 693
    return-void

    .line 694
    :cond_1c
    new-instance v3, Landroid/util/ArraySet;

    .line 695
    .line 696
    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    .line 697
    .line 698
    .line 699
    :goto_9
    array-length v4, v1

    .line 700
    if-ge v14, v4, :cond_1d

    .line 701
    .line 702
    aget-object v4, v1, v14

    .line 703
    .line 704
    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 705
    .line 706
    .line 707
    add-int/2addr v14, v11

    .line 708
    goto :goto_9

    .line 709
    :cond_1d
    const/16 v1, 0x1c0

    .line 710
    .line 711
    invoke-virtual {v12, v1}, Lcom/android/server/pm/DumpState;->setDump(I)V

    .line 712
    .line 713
    .line 714
    move-object v4, v3

    .line 715
    const/16 v6, 0x100

    .line 716
    .line 717
    const/high16 v14, 0x10000000

    .line 718
    .line 719
    goto/16 :goto_25

    .line 720
    .line 721
    :cond_1e
    const-string/jumbo v3, "pref"

    .line 722
    .line 723
    .line 724
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 725
    .line 726
    .line 727
    move-result v3

    .line 728
    if-nez v3, :cond_43

    .line 729
    .line 730
    const-string/jumbo v3, "preferred"

    .line 731
    .line 732
    .line 733
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 734
    .line 735
    .line 736
    move-result v3

    .line 737
    if-eqz v3, :cond_1f

    .line 738
    .line 739
    const/16 v1, 0x1000

    .line 740
    .line 741
    const/high16 v4, 0x10000000

    .line 742
    .line 743
    const/16 v6, 0x100

    .line 744
    .line 745
    goto/16 :goto_18

    .line 746
    .line 747
    :cond_1f
    const-string/jumbo v3, "preferred-xml"

    .line 748
    .line 749
    .line 750
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 751
    .line 752
    .line 753
    move-result v3

    .line 754
    if-eqz v3, :cond_21

    .line 755
    .line 756
    invoke-virtual {v12, v13}, Lcom/android/server/pm/DumpState;->setDump(I)V

    .line 757
    .line 758
    .line 759
    array-length v3, v1

    .line 760
    if-ge v14, v3, :cond_20

    .line 761
    .line 762
    const-string v3, "--full"

    .line 763
    .line 764
    aget-object v1, v1, v14

    .line 765
    .line 766
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 767
    .line 768
    .line 769
    move-result v1

    .line 770
    if-eqz v1, :cond_20

    .line 771
    .line 772
    iput-boolean v11, v12, Lcom/android/server/pm/DumpState;->mFullPreferred:Z

    .line 773
    .line 774
    :cond_20
    :goto_a
    const/16 v6, 0x100

    .line 775
    .line 776
    :goto_b
    const/high16 v14, 0x10000000

    .line 777
    .line 778
    goto/16 :goto_24

    .line 779
    .line 780
    :cond_21
    const-string v3, "d"

    .line 781
    .line 782
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 783
    .line 784
    .line 785
    move-result v3

    .line 786
    if-nez v3, :cond_42

    .line 787
    .line 788
    const-string v3, "domain-preferred-apps"

    .line 789
    .line 790
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 791
    .line 792
    .line 793
    move-result v3

    .line 794
    if-eqz v3, :cond_22

    .line 795
    .line 796
    const/high16 v1, 0x40000

    .line 797
    .line 798
    const/high16 v4, 0x10000000

    .line 799
    .line 800
    const/16 v6, 0x100

    .line 801
    .line 802
    goto/16 :goto_17

    .line 803
    .line 804
    :cond_22
    const-string/jumbo v3, "p"

    .line 805
    .line 806
    .line 807
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 808
    .line 809
    .line 810
    move-result v3

    .line 811
    if-nez v3, :cond_41

    .line 812
    .line 813
    const-string/jumbo v3, "packages"

    .line 814
    .line 815
    .line 816
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 817
    .line 818
    .line 819
    move-result v3

    .line 820
    if-eqz v3, :cond_23

    .line 821
    .line 822
    const/16 v1, 0x80

    .line 823
    .line 824
    const/high16 v4, 0x10000000

    .line 825
    .line 826
    const/16 v6, 0x100

    .line 827
    .line 828
    goto/16 :goto_16

    .line 829
    .line 830
    :cond_23
    const-string/jumbo v3, "q"

    .line 831
    .line 832
    .line 833
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 834
    .line 835
    .line 836
    move-result v3

    .line 837
    if-nez v3, :cond_40

    .line 838
    .line 839
    const-string/jumbo v3, "queries"

    .line 840
    .line 841
    .line 842
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 843
    .line 844
    .line 845
    move-result v3

    .line 846
    if-eqz v3, :cond_24

    .line 847
    .line 848
    const/high16 v1, 0x4000000

    .line 849
    .line 850
    const/high16 v4, 0x10000000

    .line 851
    .line 852
    const/16 v6, 0x100

    .line 853
    .line 854
    goto/16 :goto_15

    .line 855
    .line 856
    :cond_24
    const-string/jumbo v3, "s"

    .line 857
    .line 858
    .line 859
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 860
    .line 861
    .line 862
    move-result v3

    .line 863
    if-nez v3, :cond_25

    .line 864
    .line 865
    const-string/jumbo v3, "shared-users"

    .line 866
    .line 867
    .line 868
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 869
    .line 870
    .line 871
    move-result v3

    .line 872
    if-eqz v3, :cond_26

    .line 873
    .line 874
    :cond_25
    const/high16 v3, 0x40000000    # 2.0f

    .line 875
    .line 876
    const/high16 v4, 0x10000000

    .line 877
    .line 878
    const/16 v6, 0x100

    .line 879
    .line 880
    goto/16 :goto_13

    .line 881
    .line 882
    :cond_26
    const-string/jumbo v3, "prov"

    .line 883
    .line 884
    .line 885
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 886
    .line 887
    .line 888
    move-result v3

    .line 889
    if-nez v3, :cond_3e

    .line 890
    .line 891
    const-string/jumbo v3, "providers"

    .line 892
    .line 893
    .line 894
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 895
    .line 896
    .line 897
    move-result v3

    .line 898
    if-eqz v3, :cond_27

    .line 899
    .line 900
    const/16 v1, 0x400

    .line 901
    .line 902
    const/high16 v3, 0x40000000    # 2.0f

    .line 903
    .line 904
    const/high16 v4, 0x10000000

    .line 905
    .line 906
    const/high16 v6, 0x800000

    .line 907
    .line 908
    goto/16 :goto_12

    .line 909
    .line 910
    :cond_27
    const-string v3, "m"

    .line 911
    .line 912
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 913
    .line 914
    .line 915
    move-result v3

    .line 916
    if-nez v3, :cond_3d

    .line 917
    .line 918
    const-string/jumbo v3, "messages"

    .line 919
    .line 920
    .line 921
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 922
    .line 923
    .line 924
    move-result v3

    .line 925
    if-eqz v3, :cond_28

    .line 926
    .line 927
    const/16 v1, 0x200

    .line 928
    .line 929
    const/high16 v3, 0x40000000    # 2.0f

    .line 930
    .line 931
    const/high16 v4, 0x10000000

    .line 932
    .line 933
    const/high16 v6, 0x800000

    .line 934
    .line 935
    goto/16 :goto_11

    .line 936
    .line 937
    :cond_28
    const-string/jumbo v3, "v"

    .line 938
    .line 939
    .line 940
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 941
    .line 942
    .line 943
    move-result v3

    .line 944
    if-nez v3, :cond_3c

    .line 945
    .line 946
    const-string/jumbo v3, "verifiers"

    .line 947
    .line 948
    .line 949
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 950
    .line 951
    .line 952
    move-result v3

    .line 953
    if-eqz v3, :cond_29

    .line 954
    .line 955
    const/16 v1, 0x800

    .line 956
    .line 957
    const/high16 v3, 0x40000000    # 2.0f

    .line 958
    .line 959
    const/high16 v4, 0x10000000

    .line 960
    .line 961
    const/high16 v6, 0x800000

    .line 962
    .line 963
    goto/16 :goto_10

    .line 964
    .line 965
    :cond_29
    const-string v3, "dv"

    .line 966
    .line 967
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 968
    .line 969
    .line 970
    move-result v3

    .line 971
    if-nez v3, :cond_3b

    .line 972
    .line 973
    const-string v3, "domain-verifier"

    .line 974
    .line 975
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 976
    .line 977
    .line 978
    move-result v3

    .line 979
    if-eqz v3, :cond_2a

    .line 980
    .line 981
    const/high16 v1, 0x20000

    .line 982
    .line 983
    const/high16 v3, 0x40000000    # 2.0f

    .line 984
    .line 985
    const/high16 v4, 0x10000000

    .line 986
    .line 987
    const/high16 v6, 0x800000

    .line 988
    .line 989
    goto/16 :goto_f

    .line 990
    .line 991
    :cond_2a
    const-string/jumbo v3, "version"

    .line 992
    .line 993
    .line 994
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 995
    .line 996
    .line 997
    move-result v3

    .line 998
    if-eqz v3, :cond_2b

    .line 999
    .line 1000
    invoke-virtual {v12, v5}, Lcom/android/server/pm/DumpState;->setDump(I)V

    .line 1001
    .line 1002
    .line 1003
    goto/16 :goto_a

    .line 1004
    .line 1005
    :cond_2b
    const-string v3, "k"

    .line 1006
    .line 1007
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1008
    .line 1009
    .line 1010
    move-result v3

    .line 1011
    if-nez v3, :cond_3a

    .line 1012
    .line 1013
    const-string v3, "keysets"

    .line 1014
    .line 1015
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1016
    .line 1017
    .line 1018
    move-result v3

    .line 1019
    if-eqz v3, :cond_2c

    .line 1020
    .line 1021
    const/16 v1, 0x4000

    .line 1022
    .line 1023
    const/high16 v3, 0x40000000    # 2.0f

    .line 1024
    .line 1025
    const/high16 v4, 0x10000000

    .line 1026
    .line 1027
    const/high16 v6, 0x800000

    .line 1028
    .line 1029
    goto/16 :goto_e

    .line 1030
    .line 1031
    :cond_2c
    const-string v3, "installs"

    .line 1032
    .line 1033
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1034
    .line 1035
    .line 1036
    move-result v3

    .line 1037
    if-eqz v3, :cond_2d

    .line 1038
    .line 1039
    invoke-virtual {v12, v10}, Lcom/android/server/pm/DumpState;->setDump(I)V

    .line 1040
    .line 1041
    .line 1042
    goto/16 :goto_a

    .line 1043
    .line 1044
    :cond_2d
    const-string v3, "frozen"

    .line 1045
    .line 1046
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1047
    .line 1048
    .line 1049
    move-result v3

    .line 1050
    if-eqz v3, :cond_2e

    .line 1051
    .line 1052
    invoke-virtual {v12, v15}, Lcom/android/server/pm/DumpState;->setDump(I)V

    .line 1053
    .line 1054
    .line 1055
    goto/16 :goto_a

    .line 1056
    .line 1057
    :cond_2e
    const-string/jumbo v3, "volumes"

    .line 1058
    .line 1059
    .line 1060
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1061
    .line 1062
    .line 1063
    move-result v3

    .line 1064
    if-eqz v3, :cond_2f

    .line 1065
    .line 1066
    const/high16 v6, 0x800000

    .line 1067
    .line 1068
    invoke-virtual {v12, v6}, Lcom/android/server/pm/DumpState;->setDump(I)V

    .line 1069
    .line 1070
    .line 1071
    goto/16 :goto_a

    .line 1072
    .line 1073
    :cond_2f
    const/high16 v6, 0x800000

    .line 1074
    .line 1075
    const-string v3, "dexopt"

    .line 1076
    .line 1077
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1078
    .line 1079
    .line 1080
    move-result v3

    .line 1081
    if-eqz v3, :cond_30

    .line 1082
    .line 1083
    const/high16 v3, 0x100000

    .line 1084
    .line 1085
    invoke-virtual {v12, v3}, Lcom/android/server/pm/DumpState;->setDump(I)V

    .line 1086
    .line 1087
    .line 1088
    goto/16 :goto_a

    .line 1089
    .line 1090
    :cond_30
    const-string v3, "compiler-stats"

    .line 1091
    .line 1092
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1093
    .line 1094
    .line 1095
    move-result v3

    .line 1096
    if-eqz v3, :cond_31

    .line 1097
    .line 1098
    const/high16 v3, 0x200000

    .line 1099
    .line 1100
    invoke-virtual {v12, v3}, Lcom/android/server/pm/DumpState;->setDump(I)V

    .line 1101
    .line 1102
    .line 1103
    goto/16 :goto_a

    .line 1104
    .line 1105
    :cond_31
    const-string v3, "changes"

    .line 1106
    .line 1107
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1108
    .line 1109
    .line 1110
    move-result v3

    .line 1111
    if-eqz v3, :cond_32

    .line 1112
    .line 1113
    const/high16 v3, 0x400000

    .line 1114
    .line 1115
    invoke-virtual {v12, v3}, Lcom/android/server/pm/DumpState;->setDump(I)V

    .line 1116
    .line 1117
    .line 1118
    goto/16 :goto_a

    .line 1119
    .line 1120
    :cond_32
    const-string/jumbo v3, "service-permissions"

    .line 1121
    .line 1122
    .line 1123
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1124
    .line 1125
    .line 1126
    move-result v3

    .line 1127
    if-eqz v3, :cond_33

    .line 1128
    .line 1129
    const/high16 v3, 0x1000000

    .line 1130
    .line 1131
    invoke-virtual {v12, v3}, Lcom/android/server/pm/DumpState;->setDump(I)V

    .line 1132
    .line 1133
    .line 1134
    goto/16 :goto_a

    .line 1135
    .line 1136
    :cond_33
    const-string v3, "known-packages"

    .line 1137
    .line 1138
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1139
    .line 1140
    .line 1141
    move-result v3

    .line 1142
    if-eqz v3, :cond_34

    .line 1143
    .line 1144
    const/high16 v3, 0x8000000

    .line 1145
    .line 1146
    invoke-virtual {v12, v3}, Lcom/android/server/pm/DumpState;->setDump(I)V

    .line 1147
    .line 1148
    .line 1149
    goto/16 :goto_a

    .line 1150
    .line 1151
    :cond_34
    const-string/jumbo v3, "t"

    .line 1152
    .line 1153
    .line 1154
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1155
    .line 1156
    .line 1157
    move-result v3

    .line 1158
    if-nez v3, :cond_35

    .line 1159
    .line 1160
    const-string/jumbo v3, "timeouts"

    .line 1161
    .line 1162
    .line 1163
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1164
    .line 1165
    .line 1166
    move-result v3

    .line 1167
    if-eqz v3, :cond_36

    .line 1168
    .line 1169
    :cond_35
    const/high16 v3, 0x40000000    # 2.0f

    .line 1170
    .line 1171
    const/high16 v4, 0x10000000

    .line 1172
    .line 1173
    goto :goto_c

    .line 1174
    :cond_36
    const-string/jumbo v3, "snapshot"

    .line 1175
    .line 1176
    .line 1177
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1178
    .line 1179
    .line 1180
    move-result v3

    .line 1181
    if-eqz v3, :cond_38

    .line 1182
    .line 1183
    const/high16 v3, 0x20000000

    .line 1184
    .line 1185
    invoke-virtual {v12, v3}, Lcom/android/server/pm/DumpState;->setDump(I)V

    .line 1186
    .line 1187
    .line 1188
    array-length v3, v1

    .line 1189
    if-ge v14, v3, :cond_20

    .line 1190
    .line 1191
    const-string v3, "--full"

    .line 1192
    .line 1193
    aget-object v4, v1, v14

    .line 1194
    .line 1195
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1196
    .line 1197
    .line 1198
    move-result v3

    .line 1199
    if-eqz v3, :cond_37

    .line 1200
    .line 1201
    const/4 v3, 0x0

    .line 1202
    iput-boolean v3, v12, Lcom/android/server/pm/DumpState;->mBrief:Z

    .line 1203
    .line 1204
    goto/16 :goto_a

    .line 1205
    .line 1206
    :cond_37
    const-string v3, "--brief"

    .line 1207
    .line 1208
    aget-object v1, v1, v14

    .line 1209
    .line 1210
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1211
    .line 1212
    .line 1213
    move-result v1

    .line 1214
    if-eqz v1, :cond_20

    .line 1215
    .line 1216
    iput-boolean v11, v12, Lcom/android/server/pm/DumpState;->mBrief:Z

    .line 1217
    .line 1218
    goto/16 :goto_a

    .line 1219
    .line 1220
    :cond_38
    const-string/jumbo v1, "protected-broadcasts"

    .line 1221
    .line 1222
    .line 1223
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1224
    .line 1225
    .line 1226
    move-result v1

    .line 1227
    if-eqz v1, :cond_39

    .line 1228
    .line 1229
    const/high16 v3, 0x40000000    # 2.0f

    .line 1230
    .line 1231
    invoke-virtual {v12, v3}, Lcom/android/server/pm/DumpState;->setDump(I)V

    .line 1232
    .line 1233
    .line 1234
    goto/16 :goto_a

    .line 1235
    .line 1236
    :cond_39
    const/high16 v3, 0x40000000    # 2.0f

    .line 1237
    .line 1238
    const-string/jumbo v1, "pu"

    .line 1239
    .line 1240
    .line 1241
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1242
    .line 1243
    .line 1244
    move-result v1

    .line 1245
    if-eqz v1, :cond_20

    .line 1246
    .line 1247
    const/high16 v1, -0x80000000

    .line 1248
    .line 1249
    invoke-virtual {v12, v1}, Lcom/android/server/pm/DumpState;->setDump(I)V

    .line 1250
    .line 1251
    .line 1252
    goto/16 :goto_a

    .line 1253
    .line 1254
    :goto_c
    invoke-virtual {v12, v4}, Lcom/android/server/pm/DumpState;->setDump(I)V

    .line 1255
    .line 1256
    .line 1257
    :goto_d
    move v14, v4

    .line 1258
    const/16 v6, 0x100

    .line 1259
    .line 1260
    goto/16 :goto_24

    .line 1261
    .line 1262
    :cond_3a
    const/high16 v3, 0x40000000    # 2.0f

    .line 1263
    .line 1264
    const/high16 v4, 0x10000000

    .line 1265
    .line 1266
    const/high16 v6, 0x800000

    .line 1267
    .line 1268
    const/16 v1, 0x4000

    .line 1269
    .line 1270
    :goto_e
    invoke-virtual {v12, v1}, Lcom/android/server/pm/DumpState;->setDump(I)V

    .line 1271
    .line 1272
    .line 1273
    goto :goto_d

    .line 1274
    :cond_3b
    const/high16 v3, 0x40000000    # 2.0f

    .line 1275
    .line 1276
    const/high16 v4, 0x10000000

    .line 1277
    .line 1278
    const/high16 v6, 0x800000

    .line 1279
    .line 1280
    const/high16 v1, 0x20000

    .line 1281
    .line 1282
    :goto_f
    invoke-virtual {v12, v1}, Lcom/android/server/pm/DumpState;->setDump(I)V

    .line 1283
    .line 1284
    .line 1285
    goto :goto_d

    .line 1286
    :cond_3c
    const/high16 v3, 0x40000000    # 2.0f

    .line 1287
    .line 1288
    const/high16 v4, 0x10000000

    .line 1289
    .line 1290
    const/high16 v6, 0x800000

    .line 1291
    .line 1292
    const/16 v1, 0x800

    .line 1293
    .line 1294
    :goto_10
    invoke-virtual {v12, v1}, Lcom/android/server/pm/DumpState;->setDump(I)V

    .line 1295
    .line 1296
    .line 1297
    goto :goto_d

    .line 1298
    :cond_3d
    const/high16 v3, 0x40000000    # 2.0f

    .line 1299
    .line 1300
    const/high16 v4, 0x10000000

    .line 1301
    .line 1302
    const/high16 v6, 0x800000

    .line 1303
    .line 1304
    const/16 v1, 0x200

    .line 1305
    .line 1306
    :goto_11
    invoke-virtual {v12, v1}, Lcom/android/server/pm/DumpState;->setDump(I)V

    .line 1307
    .line 1308
    .line 1309
    goto :goto_d

    .line 1310
    :cond_3e
    const/high16 v3, 0x40000000    # 2.0f

    .line 1311
    .line 1312
    const/high16 v4, 0x10000000

    .line 1313
    .line 1314
    const/high16 v6, 0x800000

    .line 1315
    .line 1316
    const/16 v1, 0x400

    .line 1317
    .line 1318
    :goto_12
    invoke-virtual {v12, v1}, Lcom/android/server/pm/DumpState;->setDump(I)V

    .line 1319
    .line 1320
    .line 1321
    goto :goto_d

    .line 1322
    :goto_13
    invoke-virtual {v12, v6}, Lcom/android/server/pm/DumpState;->setDump(I)V

    .line 1323
    .line 1324
    .line 1325
    array-length v3, v1

    .line 1326
    if-ge v14, v3, :cond_3f

    .line 1327
    .line 1328
    const-string/jumbo v3, "noperm"

    .line 1329
    .line 1330
    .line 1331
    aget-object v1, v1, v14

    .line 1332
    .line 1333
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1334
    .line 1335
    .line 1336
    move-result v1

    .line 1337
    if-eqz v1, :cond_3f

    .line 1338
    .line 1339
    iget v1, v12, Lcom/android/server/pm/DumpState;->mOptions:I

    .line 1340
    .line 1341
    const/4 v3, 0x4

    .line 1342
    or-int/2addr v1, v3

    .line 1343
    iput v1, v12, Lcom/android/server/pm/DumpState;->mOptions:I

    .line 1344
    .line 1345
    :cond_3f
    :goto_14
    move v14, v4

    .line 1346
    goto/16 :goto_24

    .line 1347
    .line 1348
    :cond_40
    const/high16 v4, 0x10000000

    .line 1349
    .line 1350
    const/16 v6, 0x100

    .line 1351
    .line 1352
    const/high16 v1, 0x4000000

    .line 1353
    .line 1354
    :goto_15
    invoke-virtual {v12, v1}, Lcom/android/server/pm/DumpState;->setDump(I)V

    .line 1355
    .line 1356
    .line 1357
    goto :goto_14

    .line 1358
    :cond_41
    const/high16 v4, 0x10000000

    .line 1359
    .line 1360
    const/16 v6, 0x100

    .line 1361
    .line 1362
    const/16 v1, 0x80

    .line 1363
    .line 1364
    :goto_16
    invoke-virtual {v12, v1}, Lcom/android/server/pm/DumpState;->setDump(I)V

    .line 1365
    .line 1366
    .line 1367
    goto :goto_14

    .line 1368
    :cond_42
    const/high16 v4, 0x10000000

    .line 1369
    .line 1370
    const/16 v6, 0x100

    .line 1371
    .line 1372
    const/high16 v1, 0x40000

    .line 1373
    .line 1374
    :goto_17
    invoke-virtual {v12, v1}, Lcom/android/server/pm/DumpState;->setDump(I)V

    .line 1375
    .line 1376
    .line 1377
    goto :goto_14

    .line 1378
    :cond_43
    const/high16 v4, 0x10000000

    .line 1379
    .line 1380
    const/16 v6, 0x100

    .line 1381
    .line 1382
    const/16 v1, 0x1000

    .line 1383
    .line 1384
    :goto_18
    invoke-virtual {v12, v1}, Lcom/android/server/pm/DumpState;->setDump(I)V

    .line 1385
    .line 1386
    .line 1387
    goto :goto_14

    .line 1388
    :cond_44
    const/high16 v4, 0x10000000

    .line 1389
    .line 1390
    const/16 v6, 0x100

    .line 1391
    .line 1392
    const/16 v1, 0x40

    .line 1393
    .line 1394
    :goto_19
    invoke-virtual {v12, v1}, Lcom/android/server/pm/DumpState;->setDump(I)V

    .line 1395
    .line 1396
    .line 1397
    goto :goto_14

    .line 1398
    :goto_1a
    array-length v3, v1

    .line 1399
    if-lt v14, v3, :cond_45

    .line 1400
    .line 1401
    const/16 v1, 0x3c

    .line 1402
    .line 1403
    invoke-virtual {v12, v1}, Lcom/android/server/pm/DumpState;->setDump(I)V

    .line 1404
    .line 1405
    .line 1406
    goto :goto_14

    .line 1407
    :cond_45
    :goto_1b
    array-length v3, v1

    .line 1408
    if-ge v14, v3, :cond_3f

    .line 1409
    .line 1410
    aget-object v3, v1, v14

    .line 1411
    .line 1412
    const-string v4, "a"

    .line 1413
    .line 1414
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1415
    .line 1416
    .line 1417
    move-result v4

    .line 1418
    if-nez v4, :cond_46

    .line 1419
    .line 1420
    const-string v4, "activity"

    .line 1421
    .line 1422
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1423
    .line 1424
    .line 1425
    move-result v4

    .line 1426
    if-eqz v4, :cond_47

    .line 1427
    .line 1428
    :cond_46
    const/4 v3, 0x4

    .line 1429
    goto :goto_1f

    .line 1430
    :cond_47
    const-string/jumbo v4, "s"

    .line 1431
    .line 1432
    .line 1433
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1434
    .line 1435
    .line 1436
    move-result v4

    .line 1437
    if-nez v4, :cond_48

    .line 1438
    .line 1439
    const-string/jumbo v4, "service"

    .line 1440
    .line 1441
    .line 1442
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1443
    .line 1444
    .line 1445
    move-result v4

    .line 1446
    if-eqz v4, :cond_49

    .line 1447
    .line 1448
    :cond_48
    const/16 v3, 0x8

    .line 1449
    .line 1450
    goto :goto_1e

    .line 1451
    :cond_49
    const-string/jumbo v4, "r"

    .line 1452
    .line 1453
    .line 1454
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1455
    .line 1456
    .line 1457
    move-result v4

    .line 1458
    if-nez v4, :cond_4a

    .line 1459
    .line 1460
    const-string/jumbo v4, "receiver"

    .line 1461
    .line 1462
    .line 1463
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1464
    .line 1465
    .line 1466
    move-result v4

    .line 1467
    if-eqz v4, :cond_4b

    .line 1468
    .line 1469
    :cond_4a
    const/16 v3, 0x10

    .line 1470
    .line 1471
    goto :goto_1d

    .line 1472
    :cond_4b
    const-string v4, "c"

    .line 1473
    .line 1474
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1475
    .line 1476
    .line 1477
    move-result v4

    .line 1478
    if-nez v4, :cond_4c

    .line 1479
    .line 1480
    const-string v4, "content"

    .line 1481
    .line 1482
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1483
    .line 1484
    .line 1485
    move-result v4

    .line 1486
    if-eqz v4, :cond_4d

    .line 1487
    .line 1488
    :cond_4c
    const/16 v3, 0x20

    .line 1489
    .line 1490
    goto :goto_1c

    .line 1491
    :cond_4d
    const-string v0, "Error: unknown resolver table type: "

    .line 1492
    .line 1493
    invoke-static {v9, v0, v3}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 1494
    .line 1495
    .line 1496
    return-void

    .line 1497
    :goto_1c
    invoke-virtual {v12, v3}, Lcom/android/server/pm/DumpState;->setDump(I)V

    .line 1498
    .line 1499
    .line 1500
    goto :goto_20

    .line 1501
    :goto_1d
    invoke-virtual {v12, v3}, Lcom/android/server/pm/DumpState;->setDump(I)V

    .line 1502
    .line 1503
    .line 1504
    goto :goto_20

    .line 1505
    :goto_1e
    invoke-virtual {v12, v3}, Lcom/android/server/pm/DumpState;->setDump(I)V

    .line 1506
    .line 1507
    .line 1508
    goto :goto_20

    .line 1509
    :goto_1f
    invoke-virtual {v12, v3}, Lcom/android/server/pm/DumpState;->setDump(I)V

    .line 1510
    .line 1511
    .line 1512
    :goto_20
    add-int/2addr v14, v11

    .line 1513
    const/high16 v4, 0x10000000

    .line 1514
    .line 1515
    goto :goto_1b

    .line 1516
    :goto_21
    invoke-virtual {v12, v2}, Lcom/android/server/pm/DumpState;->setDump(I)V

    .line 1517
    .line 1518
    .line 1519
    goto/16 :goto_b

    .line 1520
    .line 1521
    :goto_22
    invoke-virtual {v12, v11}, Lcom/android/server/pm/DumpState;->setDump(I)V

    .line 1522
    .line 1523
    .line 1524
    goto/16 :goto_b

    .line 1525
    .line 1526
    :goto_23
    iput-object v4, v12, Lcom/android/server/pm/DumpState;->mTargetPackageName:Ljava/lang/String;

    .line 1527
    .line 1528
    iget v1, v12, Lcom/android/server/pm/DumpState;->mOptions:I

    .line 1529
    .line 1530
    or-int/2addr v1, v11

    .line 1531
    iput v1, v12, Lcom/android/server/pm/DumpState;->mOptions:I

    .line 1532
    .line 1533
    :goto_24
    const/4 v4, 0x0

    .line 1534
    :goto_25
    iget-object v3, v12, Lcom/android/server/pm/DumpState;->mTargetPackageName:Ljava/lang/String;

    .line 1535
    .line 1536
    iget-boolean v1, v12, Lcom/android/server/pm/DumpState;->mCheckIn:Z

    .line 1537
    .line 1538
    if-eqz v3, :cond_4e

    .line 1539
    .line 1540
    invoke-interface {v7, v3}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    .line 1541
    .line 1542
    .line 1543
    move-result-object v17

    .line 1544
    if-nez v17, :cond_4e

    .line 1545
    .line 1546
    invoke-interface {v7, v3}, Lcom/android/server/pm/Computer;->isApexPackage(Ljava/lang/String;)Z

    .line 1547
    .line 1548
    .line 1549
    move-result v17

    .line 1550
    if-nez v17, :cond_4e

    .line 1551
    .line 1552
    const-string v0, "Unable to find package: "

    .line 1553
    .line 1554
    invoke-virtual {v0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 1555
    .line 1556
    .line 1557
    move-result-object v0

    .line 1558
    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1559
    .line 1560
    .line 1561
    return-void

    .line 1562
    :cond_4e
    if-eqz v1, :cond_4f

    .line 1563
    .line 1564
    const-string/jumbo v6, "vers,1"

    .line 1565
    .line 1566
    .line 1567
    invoke-virtual {v9, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1568
    .line 1569
    .line 1570
    :cond_4f
    if-nez v1, :cond_50

    .line 1571
    .line 1572
    invoke-virtual {v12, v5}, Lcom/android/server/pm/DumpState;->isDumping(I)Z

    .line 1573
    .line 1574
    .line 1575
    move-result v6

    .line 1576
    if-eqz v6, :cond_50

    .line 1577
    .line 1578
    if-nez v3, :cond_50

    .line 1579
    .line 1580
    invoke-interface {v7, v5, v8, v9, v12}, Lcom/android/server/pm/Computer;->dump(ILjava/io/FileDescriptor;Ljava/io/PrintWriter;Lcom/android/server/pm/DumpState;)V

    .line 1581
    .line 1582
    .line 1583
    :cond_50
    const/16 v6, 0x78

    .line 1584
    .line 1585
    if-nez v1, :cond_55

    .line 1586
    .line 1587
    const/high16 v5, 0x8000000

    .line 1588
    .line 1589
    invoke-virtual {v12, v5}, Lcom/android/server/pm/DumpState;->isDumping(I)Z

    .line 1590
    .line 1591
    .line 1592
    move-result v5

    .line 1593
    if-eqz v5, :cond_55

    .line 1594
    .line 1595
    if-nez v3, :cond_55

    .line 1596
    .line 1597
    iget-boolean v5, v12, Lcom/android/server/pm/DumpState;->mTitlePrinted:Z

    .line 1598
    .line 1599
    iput-boolean v11, v12, Lcom/android/server/pm/DumpState;->mTitlePrinted:Z

    .line 1600
    .line 1601
    if-eqz v5, :cond_51

    .line 1602
    .line 1603
    invoke-virtual/range {p3 .. p3}, Ljava/io/PrintWriter;->println()V

    .line 1604
    .line 1605
    .line 1606
    :cond_51
    new-instance v5, Lcom/android/internal/util/IndentingPrintWriter;

    .line 1607
    .line 1608
    const-string v14, "  "

    .line 1609
    .line 1610
    invoke-direct {v5, v9, v14, v6}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;I)V

    .line 1611
    .line 1612
    .line 1613
    const-string v14, "Known Packages:"

    .line 1614
    .line 1615
    invoke-virtual {v5, v14}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1616
    .line 1617
    .line 1618
    invoke-virtual {v5}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1619
    .line 1620
    .line 1621
    const/4 v14, 0x0

    .line 1622
    :goto_26
    const/16 v6, 0x13

    .line 1623
    .line 1624
    if-gt v14, v6, :cond_54

    .line 1625
    .line 1626
    packed-switch v14, :pswitch_data_0

    .line 1627
    .line 1628
    .line 1629
    const-string v6, "Unknown"

    .line 1630
    .line 1631
    goto :goto_27

    .line 1632
    :pswitch_0
    const-string v6, "Wearable sensing"

    .line 1633
    .line 1634
    goto :goto_27

    .line 1635
    :pswitch_1
    const-string v6, "Ambient Context Detection"

    .line 1636
    .line 1637
    goto :goto_27

    .line 1638
    :pswitch_2
    const-string v6, "Recents"

    .line 1639
    .line 1640
    goto :goto_27

    .line 1641
    :pswitch_3
    const-string v6, "Retail Demo"

    .line 1642
    .line 1643
    goto :goto_27

    .line 1644
    :pswitch_4
    const-string v6, "Companion"

    .line 1645
    .line 1646
    goto :goto_27

    .line 1647
    :pswitch_5
    const-string v6, "Wi-Fi"

    .line 1648
    .line 1649
    goto :goto_27

    .line 1650
    :pswitch_6
    const-string v6, "Overlay Config Signature"

    .line 1651
    .line 1652
    goto :goto_27

    .line 1653
    :pswitch_7
    const-string v6, "App Predictor"

    .line 1654
    .line 1655
    goto :goto_27

    .line 1656
    :pswitch_8
    const-string v6, "Incident Report Approver"

    .line 1657
    .line 1658
    goto :goto_27

    .line 1659
    :pswitch_9
    const-string v6, "Configurator"

    .line 1660
    .line 1661
    goto :goto_27

    .line 1662
    :pswitch_a
    const-string v6, "Documenter"

    .line 1663
    .line 1664
    goto :goto_27

    .line 1665
    :pswitch_b
    const-string v6, "Wellbeing"

    .line 1666
    .line 1667
    goto :goto_27

    .line 1668
    :pswitch_c
    const-string v6, "Permission Controller"

    .line 1669
    .line 1670
    goto :goto_27

    .line 1671
    :pswitch_d
    const-string v6, "System Text Classifier"

    .line 1672
    .line 1673
    goto :goto_27

    .line 1674
    :pswitch_e
    const-string v6, "Browser"

    .line 1675
    .line 1676
    goto :goto_27

    .line 1677
    :pswitch_f
    const-string v6, "Verifier"

    .line 1678
    .line 1679
    goto :goto_27

    .line 1680
    :pswitch_10
    const-string v6, "Uninstaller"

    .line 1681
    .line 1682
    goto :goto_27

    .line 1683
    :pswitch_11
    const-string v6, "Installer"

    .line 1684
    .line 1685
    goto :goto_27

    .line 1686
    :pswitch_12
    const-string v6, "Setup Wizard"

    .line 1687
    .line 1688
    goto :goto_27

    .line 1689
    :pswitch_13
    const-string v6, "System"

    .line 1690
    .line 1691
    :goto_27
    invoke-virtual {v5, v6}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1692
    .line 1693
    .line 1694
    const-string v6, ":"

    .line 1695
    .line 1696
    invoke-virtual {v5, v6}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1697
    .line 1698
    .line 1699
    iget-object v6, v0, Lcom/android/server/pm/DumpHelper;->mKnownPackages:Lcom/android/server/pm/KnownPackages;

    .line 1700
    .line 1701
    const/4 v10, 0x0

    .line 1702
    invoke-virtual {v6, v7, v14, v10}, Lcom/android/server/pm/KnownPackages;->getKnownPackageNames(Lcom/android/server/pm/Computer;II)[Ljava/lang/String;

    .line 1703
    .line 1704
    .line 1705
    move-result-object v6

    .line 1706
    invoke-virtual {v5}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1707
    .line 1708
    .line 1709
    invoke-static {v6}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    .line 1710
    .line 1711
    .line 1712
    move-result v10

    .line 1713
    if-eqz v10, :cond_52

    .line 1714
    .line 1715
    const-string/jumbo v6, "none"

    .line 1716
    .line 1717
    .line 1718
    invoke-virtual {v5, v6}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1719
    .line 1720
    .line 1721
    goto :goto_29

    .line 1722
    :cond_52
    array-length v10, v6

    .line 1723
    const/4 v15, 0x0

    .line 1724
    :goto_28
    if-ge v15, v10, :cond_53

    .line 1725
    .line 1726
    aget-object v13, v6, v15

    .line 1727
    .line 1728
    invoke-virtual {v5, v13}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1729
    .line 1730
    .line 1731
    add-int/2addr v15, v11

    .line 1732
    const/16 v13, 0x2000

    .line 1733
    .line 1734
    goto :goto_28

    .line 1735
    :cond_53
    :goto_29
    invoke-virtual {v5}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1736
    .line 1737
    .line 1738
    add-int/2addr v14, v11

    .line 1739
    const/high16 v10, 0x10000

    .line 1740
    .line 1741
    const/16 v13, 0x2000

    .line 1742
    .line 1743
    const/high16 v15, 0x80000

    .line 1744
    .line 1745
    goto :goto_26

    .line 1746
    :cond_54
    invoke-virtual {v5}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1747
    .line 1748
    .line 1749
    :cond_55
    const/16 v5, 0x800

    .line 1750
    .line 1751
    invoke-virtual {v12, v5}, Lcom/android/server/pm/DumpState;->isDumping(I)Z

    .line 1752
    .line 1753
    .line 1754
    move-result v5

    .line 1755
    if-eqz v5, :cond_59

    .line 1756
    .line 1757
    if-nez v3, :cond_59

    .line 1758
    .line 1759
    if-nez v1, :cond_57

    .line 1760
    .line 1761
    iget-object v5, v0, Lcom/android/server/pm/DumpHelper;->mRequiredVerifierPackages:[Ljava/lang/String;

    .line 1762
    .line 1763
    array-length v5, v5

    .line 1764
    if-lez v5, :cond_57

    .line 1765
    .line 1766
    iget-boolean v5, v12, Lcom/android/server/pm/DumpState;->mTitlePrinted:Z

    .line 1767
    .line 1768
    iput-boolean v11, v12, Lcom/android/server/pm/DumpState;->mTitlePrinted:Z

    .line 1769
    .line 1770
    if-eqz v5, :cond_56

    .line 1771
    .line 1772
    invoke-virtual/range {p3 .. p3}, Ljava/io/PrintWriter;->println()V

    .line 1773
    .line 1774
    .line 1775
    :cond_56
    const-string v5, "Verifiers:"

    .line 1776
    .line 1777
    invoke-virtual {v9, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1778
    .line 1779
    .line 1780
    :cond_57
    iget-object v5, v0, Lcom/android/server/pm/DumpHelper;->mRequiredVerifierPackages:[Ljava/lang/String;

    .line 1781
    .line 1782
    array-length v6, v5

    .line 1783
    const/4 v10, 0x0

    .line 1784
    :goto_2a
    if-ge v10, v6, :cond_59

    .line 1785
    .line 1786
    aget-object v13, v5, v10

    .line 1787
    .line 1788
    if-nez v1, :cond_58

    .line 1789
    .line 1790
    const-string v14, "  Required: "

    .line 1791
    .line 1792
    invoke-virtual {v9, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1793
    .line 1794
    .line 1795
    invoke-virtual {v9, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1796
    .line 1797
    .line 1798
    const-string v14, " (uid="

    .line 1799
    .line 1800
    invoke-virtual {v9, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1801
    .line 1802
    .line 1803
    const/4 v2, 0x0

    .line 1804
    const-wide/32 v14, 0x10000000

    .line 1805
    .line 1806
    .line 1807
    invoke-interface {v7, v13, v14, v15, v2}, Lcom/android/server/pm/Computer;->getPackageUid(Ljava/lang/String;JI)I

    .line 1808
    .line 1809
    .line 1810
    move-result v13

    .line 1811
    invoke-virtual {v9, v13}, Ljava/io/PrintWriter;->print(I)V

    .line 1812
    .line 1813
    .line 1814
    const-string v13, ")"

    .line 1815
    .line 1816
    invoke-virtual {v9, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1817
    .line 1818
    .line 1819
    move v2, v11

    .line 1820
    goto :goto_2b

    .line 1821
    :cond_58
    const/4 v2, 0x0

    .line 1822
    const-wide/32 v14, 0x10000000

    .line 1823
    .line 1824
    .line 1825
    const-string/jumbo v11, "vrfy,"

    .line 1826
    .line 1827
    .line 1828
    invoke-virtual {v9, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1829
    .line 1830
    .line 1831
    invoke-virtual {v9, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1832
    .line 1833
    .line 1834
    const-string v11, ","

    .line 1835
    .line 1836
    invoke-virtual {v9, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1837
    .line 1838
    .line 1839
    invoke-interface {v7, v13, v14, v15, v2}, Lcom/android/server/pm/Computer;->getPackageUid(Ljava/lang/String;JI)I

    .line 1840
    .line 1841
    .line 1842
    move-result v11

    .line 1843
    invoke-virtual {v9, v11}, Ljava/io/PrintWriter;->println(I)V

    .line 1844
    .line 1845
    .line 1846
    const/4 v2, 0x1

    .line 1847
    :goto_2b
    add-int/2addr v10, v2

    .line 1848
    move v11, v2

    .line 1849
    const/4 v2, 0x2

    .line 1850
    goto :goto_2a

    .line 1851
    :cond_59
    const/high16 v2, 0x20000

    .line 1852
    .line 1853
    invoke-virtual {v12, v2}, Lcom/android/server/pm/DumpState;->isDumping(I)Z

    .line 1854
    .line 1855
    .line 1856
    move-result v2

    .line 1857
    if-eqz v2, :cond_5c

    .line 1858
    .line 1859
    if-nez v3, :cond_5c

    .line 1860
    .line 1861
    iget-object v2, v0, Lcom/android/server/pm/DumpHelper;->mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

    .line 1862
    .line 1863
    check-cast v2, Lcom/android/server/pm/verify/domain/DomainVerificationService;

    .line 1864
    .line 1865
    iget-object v2, v2, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mProxy:Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxy;

    .line 1866
    .line 1867
    invoke-interface {v2}, Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxy;->getComponentName()Landroid/content/ComponentName;

    .line 1868
    .line 1869
    .line 1870
    move-result-object v2

    .line 1871
    if-eqz v2, :cond_5d

    .line 1872
    .line 1873
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 1874
    .line 1875
    .line 1876
    move-result-object v2

    .line 1877
    if-nez v1, :cond_5b

    .line 1878
    .line 1879
    iget-boolean v5, v12, Lcom/android/server/pm/DumpState;->mTitlePrinted:Z

    .line 1880
    .line 1881
    const/4 v6, 0x1

    .line 1882
    iput-boolean v6, v12, Lcom/android/server/pm/DumpState;->mTitlePrinted:Z

    .line 1883
    .line 1884
    if-eqz v5, :cond_5a

    .line 1885
    .line 1886
    invoke-virtual/range {p3 .. p3}, Ljava/io/PrintWriter;->println()V

    .line 1887
    .line 1888
    .line 1889
    :cond_5a
    const-string v5, "Domain Verifier:"

    .line 1890
    .line 1891
    invoke-virtual {v9, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1892
    .line 1893
    .line 1894
    const-string v5, "  Using: "

    .line 1895
    .line 1896
    invoke-virtual {v9, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1897
    .line 1898
    .line 1899
    invoke-virtual {v9, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1900
    .line 1901
    .line 1902
    const-string v5, " (uid="

    .line 1903
    .line 1904
    invoke-virtual {v9, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1905
    .line 1906
    .line 1907
    const-wide/32 v5, 0x10000000

    .line 1908
    .line 1909
    .line 1910
    const/4 v10, 0x0

    .line 1911
    invoke-interface {v7, v2, v5, v6, v10}, Lcom/android/server/pm/Computer;->getPackageUid(Ljava/lang/String;JI)I

    .line 1912
    .line 1913
    .line 1914
    move-result v2

    .line 1915
    invoke-virtual {v9, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 1916
    .line 1917
    .line 1918
    const-string v2, ")"

    .line 1919
    .line 1920
    invoke-virtual {v9, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1921
    .line 1922
    .line 1923
    goto :goto_2c

    .line 1924
    :cond_5b
    const-wide/32 v5, 0x10000000

    .line 1925
    .line 1926
    .line 1927
    const/4 v10, 0x0

    .line 1928
    if-eqz v2, :cond_5c

    .line 1929
    .line 1930
    const-string v11, "dv,"

    .line 1931
    .line 1932
    invoke-virtual {v9, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1933
    .line 1934
    .line 1935
    invoke-virtual {v9, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1936
    .line 1937
    .line 1938
    const-string v11, ","

    .line 1939
    .line 1940
    invoke-virtual {v9, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1941
    .line 1942
    .line 1943
    invoke-interface {v7, v2, v5, v6, v10}, Lcom/android/server/pm/Computer;->getPackageUid(Ljava/lang/String;JI)I

    .line 1944
    .line 1945
    .line 1946
    move-result v2

    .line 1947
    invoke-virtual {v9, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 1948
    .line 1949
    .line 1950
    :cond_5c
    :goto_2c
    const/4 v2, 0x1

    .line 1951
    goto :goto_2d

    .line 1952
    :cond_5d
    invoke-virtual/range {p3 .. p3}, Ljava/io/PrintWriter;->println()V

    .line 1953
    .line 1954
    .line 1955
    const-string v2, "No Domain Verifier available!"

    .line 1956
    .line 1957
    invoke-virtual {v9, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1958
    .line 1959
    .line 1960
    goto :goto_2c

    .line 1961
    :goto_2d
    invoke-virtual {v12, v2}, Lcom/android/server/pm/DumpState;->isDumping(I)Z

    .line 1962
    .line 1963
    .line 1964
    move-result v5

    .line 1965
    if-eqz v5, :cond_5e

    .line 1966
    .line 1967
    if-nez v3, :cond_5e

    .line 1968
    .line 1969
    invoke-interface {v7, v2, v8, v9, v12}, Lcom/android/server/pm/Computer;->dump(ILjava/io/FileDescriptor;Ljava/io/PrintWriter;Lcom/android/server/pm/DumpState;)V

    .line 1970
    .line 1971
    .line 1972
    :cond_5e
    const/4 v5, 0x2

    .line 1973
    invoke-virtual {v12, v5}, Lcom/android/server/pm/DumpState;->isDumping(I)Z

    .line 1974
    .line 1975
    .line 1976
    move-result v5

    .line 1977
    if-eqz v5, :cond_63

    .line 1978
    .line 1979
    if-nez v3, :cond_63

    .line 1980
    .line 1981
    iget-boolean v5, v12, Lcom/android/server/pm/DumpState;->mTitlePrinted:Z

    .line 1982
    .line 1983
    iput-boolean v2, v12, Lcom/android/server/pm/DumpState;->mTitlePrinted:Z

    .line 1984
    .line 1985
    if-eqz v5, :cond_5f

    .line 1986
    .line 1987
    invoke-virtual/range {p3 .. p3}, Ljava/io/PrintWriter;->println()V

    .line 1988
    .line 1989
    .line 1990
    :cond_5f
    if-nez v1, :cond_60

    .line 1991
    .line 1992
    const-string v2, "Features:"

    .line 1993
    .line 1994
    invoke-virtual {v9, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1995
    .line 1996
    .line 1997
    :cond_60
    iget-object v2, v0, Lcom/android/server/pm/DumpHelper;->mAvailableFeatures:Landroid/util/ArrayMap;

    .line 1998
    .line 1999
    invoke-virtual {v2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    .line 2000
    .line 2001
    .line 2002
    move-result-object v2

    .line 2003
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 2004
    .line 2005
    .line 2006
    move-result-object v2

    .line 2007
    :goto_2e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 2008
    .line 2009
    .line 2010
    move-result v5

    .line 2011
    if-eqz v5, :cond_63

    .line 2012
    .line 2013
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 2014
    .line 2015
    .line 2016
    move-result-object v5

    .line 2017
    check-cast v5, Landroid/content/pm/FeatureInfo;

    .line 2018
    .line 2019
    if-nez v1, :cond_62

    .line 2020
    .line 2021
    const-string v6, "  "

    .line 2022
    .line 2023
    invoke-virtual {v9, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2024
    .line 2025
    .line 2026
    iget-object v6, v5, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    .line 2027
    .line 2028
    invoke-virtual {v9, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2029
    .line 2030
    .line 2031
    iget v6, v5, Landroid/content/pm/FeatureInfo;->version:I

    .line 2032
    .line 2033
    if-lez v6, :cond_61

    .line 2034
    .line 2035
    const-string v6, " version="

    .line 2036
    .line 2037
    invoke-virtual {v9, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2038
    .line 2039
    .line 2040
    iget v5, v5, Landroid/content/pm/FeatureInfo;->version:I

    .line 2041
    .line 2042
    invoke-virtual {v9, v5}, Ljava/io/PrintWriter;->print(I)V

    .line 2043
    .line 2044
    .line 2045
    :cond_61
    invoke-virtual/range {p3 .. p3}, Ljava/io/PrintWriter;->println()V

    .line 2046
    .line 2047
    .line 2048
    goto :goto_2e

    .line 2049
    :cond_62
    const-string v6, "feat,"

    .line 2050
    .line 2051
    invoke-virtual {v9, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2052
    .line 2053
    .line 2054
    iget-object v6, v5, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    .line 2055
    .line 2056
    invoke-virtual {v9, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2057
    .line 2058
    .line 2059
    const-string v6, ","

    .line 2060
    .line 2061
    invoke-virtual {v9, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2062
    .line 2063
    .line 2064
    iget v5, v5, Landroid/content/pm/FeatureInfo;->version:I

    .line 2065
    .line 2066
    invoke-virtual {v9, v5}, Ljava/io/PrintWriter;->println(I)V

    .line 2067
    .line 2068
    .line 2069
    goto :goto_2e

    .line 2070
    :cond_63
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/Computer;->getComponentResolver()Lcom/android/server/pm/resolution/ComponentResolverApi;

    .line 2071
    .line 2072
    .line 2073
    move-result-object v10

    .line 2074
    if-nez v1, :cond_64

    .line 2075
    .line 2076
    const/4 v2, 0x4

    .line 2077
    invoke-virtual {v12, v2}, Lcom/android/server/pm/DumpState;->isDumping(I)Z

    .line 2078
    .line 2079
    .line 2080
    move-result v2

    .line 2081
    if-eqz v2, :cond_64

    .line 2082
    .line 2083
    invoke-interface {v10, v12, v9, v3}, Lcom/android/server/pm/resolution/ComponentResolverApi;->dumpActivityResolvers(Lcom/android/server/pm/DumpState;Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 2084
    .line 2085
    .line 2086
    :cond_64
    if-nez v1, :cond_65

    .line 2087
    .line 2088
    const/16 v2, 0x10

    .line 2089
    .line 2090
    invoke-virtual {v12, v2}, Lcom/android/server/pm/DumpState;->isDumping(I)Z

    .line 2091
    .line 2092
    .line 2093
    move-result v2

    .line 2094
    if-eqz v2, :cond_65

    .line 2095
    .line 2096
    invoke-interface {v10, v12, v9, v3}, Lcom/android/server/pm/resolution/ComponentResolverApi;->dumpReceiverResolvers(Lcom/android/server/pm/DumpState;Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 2097
    .line 2098
    .line 2099
    :cond_65
    if-nez v1, :cond_66

    .line 2100
    .line 2101
    const/16 v2, 0x8

    .line 2102
    .line 2103
    invoke-virtual {v12, v2}, Lcom/android/server/pm/DumpState;->isDumping(I)Z

    .line 2104
    .line 2105
    .line 2106
    move-result v2

    .line 2107
    if-eqz v2, :cond_66

    .line 2108
    .line 2109
    invoke-interface {v10, v12, v9, v3}, Lcom/android/server/pm/resolution/ComponentResolverApi;->dumpServiceResolvers(Lcom/android/server/pm/DumpState;Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 2110
    .line 2111
    .line 2112
    :cond_66
    if-nez v1, :cond_67

    .line 2113
    .line 2114
    const/16 v2, 0x20

    .line 2115
    .line 2116
    invoke-virtual {v12, v2}, Lcom/android/server/pm/DumpState;->isDumping(I)Z

    .line 2117
    .line 2118
    .line 2119
    move-result v2

    .line 2120
    if-eqz v2, :cond_67

    .line 2121
    .line 2122
    invoke-interface {v10, v12, v9, v3}, Lcom/android/server/pm/resolution/ComponentResolverApi;->dumpProviderResolvers(Lcom/android/server/pm/DumpState;Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 2123
    .line 2124
    .line 2125
    :cond_67
    if-nez v1, :cond_68

    .line 2126
    .line 2127
    const/16 v2, 0x1000

    .line 2128
    .line 2129
    invoke-virtual {v12, v2}, Lcom/android/server/pm/DumpState;->isDumping(I)Z

    .line 2130
    .line 2131
    .line 2132
    move-result v5

    .line 2133
    if-eqz v5, :cond_68

    .line 2134
    .line 2135
    invoke-interface {v7, v2, v8, v9, v12}, Lcom/android/server/pm/Computer;->dump(ILjava/io/FileDescriptor;Ljava/io/PrintWriter;Lcom/android/server/pm/DumpState;)V

    .line 2136
    .line 2137
    .line 2138
    :cond_68
    if-nez v1, :cond_69

    .line 2139
    .line 2140
    const/16 v2, 0x2000

    .line 2141
    .line 2142
    invoke-virtual {v12, v2}, Lcom/android/server/pm/DumpState;->isDumping(I)Z

    .line 2143
    .line 2144
    .line 2145
    move-result v5

    .line 2146
    if-eqz v5, :cond_69

    .line 2147
    .line 2148
    if-nez v3, :cond_69

    .line 2149
    .line 2150
    invoke-interface {v7, v2, v8, v9, v12}, Lcom/android/server/pm/Computer;->dump(ILjava/io/FileDescriptor;Ljava/io/PrintWriter;Lcom/android/server/pm/DumpState;)V

    .line 2151
    .line 2152
    .line 2153
    :cond_69
    if-nez v1, :cond_6a

    .line 2154
    .line 2155
    const/high16 v2, 0x40000

    .line 2156
    .line 2157
    invoke-virtual {v12, v2}, Lcom/android/server/pm/DumpState;->isDumping(I)Z

    .line 2158
    .line 2159
    .line 2160
    move-result v5

    .line 2161
    if-eqz v5, :cond_6a

    .line 2162
    .line 2163
    invoke-interface {v7, v2, v8, v9, v12}, Lcom/android/server/pm/Computer;->dump(ILjava/io/FileDescriptor;Ljava/io/PrintWriter;Lcom/android/server/pm/DumpState;)V

    .line 2164
    .line 2165
    .line 2166
    :cond_6a
    if-nez v1, :cond_6b

    .line 2167
    .line 2168
    const/16 v2, 0x40

    .line 2169
    .line 2170
    invoke-virtual {v12, v2}, Lcom/android/server/pm/DumpState;->isDumping(I)Z

    .line 2171
    .line 2172
    .line 2173
    move-result v2

    .line 2174
    if-eqz v2, :cond_6b

    .line 2175
    .line 2176
    invoke-interface {v7, v9, v3, v4, v12}, Lcom/android/server/pm/Computer;->dumpPermissions(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/ArraySet;Lcom/android/server/pm/DumpState;)V

    .line 2177
    .line 2178
    .line 2179
    :cond_6b
    if-nez v1, :cond_6c

    .line 2180
    .line 2181
    const/16 v2, 0x400

    .line 2182
    .line 2183
    invoke-virtual {v12, v2}, Lcom/android/server/pm/DumpState;->isDumping(I)Z

    .line 2184
    .line 2185
    .line 2186
    move-result v2

    .line 2187
    if-eqz v2, :cond_6c

    .line 2188
    .line 2189
    invoke-interface {v10, v7, v9, v12, v3}, Lcom/android/server/pm/resolution/ComponentResolverApi;->dumpContentProviders(Lcom/android/server/pm/Computer;Ljava/io/PrintWriter;Lcom/android/server/pm/DumpState;Ljava/lang/String;)V

    .line 2190
    .line 2191
    .line 2192
    :cond_6c
    if-nez v1, :cond_6d

    .line 2193
    .line 2194
    const/16 v2, 0x4000

    .line 2195
    .line 2196
    invoke-virtual {v12, v2}, Lcom/android/server/pm/DumpState;->isDumping(I)Z

    .line 2197
    .line 2198
    .line 2199
    move-result v2

    .line 2200
    if-eqz v2, :cond_6d

    .line 2201
    .line 2202
    invoke-interface {v7, v12, v9, v3}, Lcom/android/server/pm/Computer;->dumpKeySet(Lcom/android/server/pm/DumpState;Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 2203
    .line 2204
    .line 2205
    :cond_6d
    const/16 v2, 0x80

    .line 2206
    .line 2207
    invoke-virtual {v12, v2}, Lcom/android/server/pm/DumpState;->isDumping(I)Z

    .line 2208
    .line 2209
    .line 2210
    move-result v2

    .line 2211
    move v11, v1

    .line 2212
    if-eqz v2, :cond_6e

    .line 2213
    .line 2214
    move-object/from16 v1, p1

    .line 2215
    .line 2216
    move-object/from16 v2, p3

    .line 2217
    .line 2218
    move-object v13, v3

    .line 2219
    const/high16 v5, 0x400000

    .line 2220
    .line 2221
    const/high16 v6, 0x40000000    # 2.0f

    .line 2222
    .line 2223
    move-object v14, v4

    .line 2224
    const/16 v15, 0x100

    .line 2225
    .line 2226
    move-object v5, v12

    .line 2227
    move v6, v11

    .line 2228
    invoke-interface/range {v1 .. v6}, Lcom/android/server/pm/Computer;->dumpPackages(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/ArraySet;Lcom/android/server/pm/DumpState;Z)V

    .line 2229
    .line 2230
    .line 2231
    goto :goto_2f

    .line 2232
    :cond_6e
    move-object v13, v3

    .line 2233
    move-object v14, v4

    .line 2234
    const/16 v15, 0x100

    .line 2235
    .line 2236
    :goto_2f
    if-nez v11, :cond_6f

    .line 2237
    .line 2238
    const/high16 v1, 0x4000000

    .line 2239
    .line 2240
    invoke-virtual {v12, v1}, Lcom/android/server/pm/DumpState;->isDumping(I)Z

    .line 2241
    .line 2242
    .line 2243
    move-result v2

    .line 2244
    if-eqz v2, :cond_6f

    .line 2245
    .line 2246
    invoke-interface {v7, v1, v8, v9, v12}, Lcom/android/server/pm/Computer;->dump(ILjava/io/FileDescriptor;Ljava/io/PrintWriter;Lcom/android/server/pm/DumpState;)V

    .line 2247
    .line 2248
    .line 2249
    :cond_6f
    invoke-virtual {v12, v15}, Lcom/android/server/pm/DumpState;->isDumping(I)Z

    .line 2250
    .line 2251
    .line 2252
    move-result v1

    .line 2253
    if-eqz v1, :cond_70

    .line 2254
    .line 2255
    move-object/from16 v1, p1

    .line 2256
    .line 2257
    move-object/from16 v2, p3

    .line 2258
    .line 2259
    move-object v3, v13

    .line 2260
    move-object v4, v14

    .line 2261
    move-object v5, v12

    .line 2262
    move v6, v11

    .line 2263
    invoke-interface/range {v1 .. v6}, Lcom/android/server/pm/Computer;->dumpSharedUsers(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/ArraySet;Lcom/android/server/pm/DumpState;Z)V

    .line 2264
    .line 2265
    .line 2266
    :cond_70
    if-nez v11, :cond_72

    .line 2267
    .line 2268
    const/high16 v1, 0x400000

    .line 2269
    .line 2270
    invoke-virtual {v12, v1}, Lcom/android/server/pm/DumpState;->isDumping(I)Z

    .line 2271
    .line 2272
    .line 2273
    move-result v1

    .line 2274
    if-eqz v1, :cond_72

    .line 2275
    .line 2276
    if-nez v13, :cond_72

    .line 2277
    .line 2278
    iget-boolean v1, v12, Lcom/android/server/pm/DumpState;->mTitlePrinted:Z

    .line 2279
    .line 2280
    const/4 v2, 0x1

    .line 2281
    iput-boolean v2, v12, Lcom/android/server/pm/DumpState;->mTitlePrinted:Z

    .line 2282
    .line 2283
    if-eqz v1, :cond_71

    .line 2284
    .line 2285
    invoke-virtual/range {p3 .. p3}, Ljava/io/PrintWriter;->println()V

    .line 2286
    .line 2287
    .line 2288
    :cond_71
    const-string v1, "Package Changes:"

    .line 2289
    .line 2290
    invoke-virtual {v9, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2291
    .line 2292
    .line 2293
    iget-object v1, v0, Lcom/android/server/pm/DumpHelper;->mChangedPackagesTracker:Lcom/android/server/pm/ChangedPackagesTracker;

    .line 2294
    .line 2295
    new-instance v2, Lcom/android/server/pm/DumpHelper$$ExternalSyntheticLambda0;

    .line 2296
    .line 2297
    invoke-direct {v2, v9}, Lcom/android/server/pm/DumpHelper$$ExternalSyntheticLambda0;-><init>(Ljava/io/PrintWriter;)V

    .line 2298
    .line 2299
    .line 2300
    iget-object v3, v1, Lcom/android/server/pm/ChangedPackagesTracker;->mLock:Ljava/lang/Object;

    .line 2301
    .line 2302
    monitor-enter v3

    .line 2303
    :try_start_6
    iget v4, v1, Lcom/android/server/pm/ChangedPackagesTracker;->mChangedPackagesSequenceNumber:I

    .line 2304
    .line 2305
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2306
    .line 2307
    .line 2308
    move-result-object v4

    .line 2309
    iget-object v1, v1, Lcom/android/server/pm/ChangedPackagesTracker;->mUserIdToSequenceToPackage:Landroid/util/SparseArray;

    .line 2310
    .line 2311
    invoke-virtual {v2, v4, v1}, Lcom/android/server/pm/DumpHelper$$ExternalSyntheticLambda0;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2312
    .line 2313
    .line 2314
    monitor-exit v3

    .line 2315
    goto :goto_30

    .line 2316
    :catchall_2
    move-exception v0

    .line 2317
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 2318
    throw v0

    .line 2319
    :cond_72
    :goto_30
    if-nez v11, :cond_73

    .line 2320
    .line 2321
    const/high16 v1, 0x80000

    .line 2322
    .line 2323
    invoke-virtual {v12, v1}, Lcom/android/server/pm/DumpState;->isDumping(I)Z

    .line 2324
    .line 2325
    .line 2326
    move-result v2

    .line 2327
    if-eqz v2, :cond_73

    .line 2328
    .line 2329
    if-nez v13, :cond_73

    .line 2330
    .line 2331
    invoke-interface {v7, v1, v8, v9, v12}, Lcom/android/server/pm/Computer;->dump(ILjava/io/FileDescriptor;Ljava/io/PrintWriter;Lcom/android/server/pm/DumpState;)V

    .line 2332
    .line 2333
    .line 2334
    :cond_73
    if-nez v11, :cond_77

    .line 2335
    .line 2336
    const/high16 v1, 0x800000

    .line 2337
    .line 2338
    invoke-virtual {v12, v1}, Lcom/android/server/pm/DumpState;->isDumping(I)Z

    .line 2339
    .line 2340
    .line 2341
    move-result v1

    .line 2342
    if-eqz v1, :cond_77

    .line 2343
    .line 2344
    if-nez v13, :cond_77

    .line 2345
    .line 2346
    iget-object v1, v0, Lcom/android/server/pm/DumpHelper;->mStorageEventHelper:Lcom/android/server/pm/StorageEventHelper;

    .line 2347
    .line 2348
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2349
    .line 2350
    .line 2351
    iget-boolean v2, v12, Lcom/android/server/pm/DumpState;->mTitlePrinted:Z

    .line 2352
    .line 2353
    const/4 v3, 0x1

    .line 2354
    iput-boolean v3, v12, Lcom/android/server/pm/DumpState;->mTitlePrinted:Z

    .line 2355
    .line 2356
    if-eqz v2, :cond_74

    .line 2357
    .line 2358
    invoke-virtual/range {p3 .. p3}, Ljava/io/PrintWriter;->println()V

    .line 2359
    .line 2360
    .line 2361
    :cond_74
    new-instance v2, Lcom/android/internal/util/IndentingPrintWriter;

    .line 2362
    .line 2363
    const-string v3, "  "

    .line 2364
    .line 2365
    const/16 v4, 0x78

    .line 2366
    .line 2367
    invoke-direct {v2, v9, v3, v4}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;I)V

    .line 2368
    .line 2369
    .line 2370
    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 2371
    .line 2372
    .line 2373
    const-string v3, "Loaded volumes:"

    .line 2374
    .line 2375
    invoke-virtual {v2, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2376
    .line 2377
    .line 2378
    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2379
    .line 2380
    .line 2381
    iget-object v3, v1, Lcom/android/server/pm/StorageEventHelper;->mLoadedVolumes:Landroid/util/ArraySet;

    .line 2382
    .line 2383
    monitor-enter v3

    .line 2384
    :try_start_7
    iget-object v5, v1, Lcom/android/server/pm/StorageEventHelper;->mLoadedVolumes:Landroid/util/ArraySet;

    .line 2385
    .line 2386
    invoke-virtual {v5}, Landroid/util/ArraySet;->size()I

    .line 2387
    .line 2388
    .line 2389
    move-result v5

    .line 2390
    if-nez v5, :cond_75

    .line 2391
    .line 2392
    const-string v1, "(none)"

    .line 2393
    .line 2394
    invoke-virtual {v2, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2395
    .line 2396
    .line 2397
    goto :goto_32

    .line 2398
    :catchall_3
    move-exception v0

    .line 2399
    goto :goto_33

    .line 2400
    :cond_75
    const/4 v5, 0x0

    .line 2401
    :goto_31
    iget-object v6, v1, Lcom/android/server/pm/StorageEventHelper;->mLoadedVolumes:Landroid/util/ArraySet;

    .line 2402
    .line 2403
    invoke-virtual {v6}, Landroid/util/ArraySet;->size()I

    .line 2404
    .line 2405
    .line 2406
    move-result v6

    .line 2407
    if-ge v5, v6, :cond_76

    .line 2408
    .line 2409
    iget-object v6, v1, Lcom/android/server/pm/StorageEventHelper;->mLoadedVolumes:Landroid/util/ArraySet;

    .line 2410
    .line 2411
    invoke-virtual {v6, v5}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 2412
    .line 2413
    .line 2414
    move-result-object v6

    .line 2415
    check-cast v6, Ljava/lang/String;

    .line 2416
    .line 2417
    invoke-virtual {v2, v6}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2418
    .line 2419
    .line 2420
    const/4 v6, 0x1

    .line 2421
    add-int/2addr v5, v6

    .line 2422
    goto :goto_31

    .line 2423
    :cond_76
    :goto_32
    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 2424
    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2425
    .line 2426
    .line 2427
    goto :goto_34

    .line 2428
    :goto_33
    :try_start_8
    monitor-exit v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 2429
    throw v0

    .line 2430
    :cond_77
    const/16 v4, 0x78

    .line 2431
    .line 2432
    :goto_34
    if-nez v11, :cond_78

    .line 2433
    .line 2434
    const/high16 v1, 0x1000000

    .line 2435
    .line 2436
    invoke-virtual {v12, v1}, Lcom/android/server/pm/DumpState;->isDumping(I)Z

    .line 2437
    .line 2438
    .line 2439
    move-result v1

    .line 2440
    if-eqz v1, :cond_78

    .line 2441
    .line 2442
    if-nez v13, :cond_78

    .line 2443
    .line 2444
    invoke-interface {v10, v9, v12}, Lcom/android/server/pm/resolution/ComponentResolverApi;->dumpServicePermissions(Ljava/io/PrintWriter;Lcom/android/server/pm/DumpState;)V

    .line 2445
    .line 2446
    .line 2447
    :cond_78
    if-nez v11, :cond_79

    .line 2448
    .line 2449
    const/high16 v1, 0x100000

    .line 2450
    .line 2451
    invoke-virtual {v12, v1}, Lcom/android/server/pm/DumpState;->isDumping(I)Z

    .line 2452
    .line 2453
    .line 2454
    move-result v2

    .line 2455
    if-eqz v2, :cond_79

    .line 2456
    .line 2457
    invoke-interface {v7, v1, v8, v9, v12}, Lcom/android/server/pm/Computer;->dump(ILjava/io/FileDescriptor;Ljava/io/PrintWriter;Lcom/android/server/pm/DumpState;)V

    .line 2458
    .line 2459
    .line 2460
    :cond_79
    if-nez v11, :cond_7a

    .line 2461
    .line 2462
    const/high16 v1, -0x80000000

    .line 2463
    .line 2464
    invoke-virtual {v12, v1}, Lcom/android/server/pm/DumpState;->isDumping(I)Z

    .line 2465
    .line 2466
    .line 2467
    move-result v2

    .line 2468
    if-eqz v2, :cond_7a

    .line 2469
    .line 2470
    invoke-interface {v7, v1, v8, v9, v12}, Lcom/android/server/pm/Computer;->dump(ILjava/io/FileDescriptor;Ljava/io/PrintWriter;Lcom/android/server/pm/DumpState;)V

    .line 2471
    .line 2472
    .line 2473
    :cond_7a
    if-nez v11, :cond_7b

    .line 2474
    .line 2475
    const/high16 v1, 0x200000

    .line 2476
    .line 2477
    invoke-virtual {v12, v1}, Lcom/android/server/pm/DumpState;->isDumping(I)Z

    .line 2478
    .line 2479
    .line 2480
    move-result v2

    .line 2481
    if-eqz v2, :cond_7b

    .line 2482
    .line 2483
    invoke-interface {v7, v1, v8, v9, v12}, Lcom/android/server/pm/Computer;->dump(ILjava/io/FileDescriptor;Ljava/io/PrintWriter;Lcom/android/server/pm/DumpState;)V

    .line 2484
    .line 2485
    .line 2486
    :cond_7b
    const/16 v1, 0x200

    .line 2487
    .line 2488
    invoke-virtual {v12, v1}, Lcom/android/server/pm/DumpState;->isDumping(I)Z

    .line 2489
    .line 2490
    .line 2491
    move-result v2

    .line 2492
    if-eqz v2, :cond_7e

    .line 2493
    .line 2494
    if-nez v13, :cond_7e

    .line 2495
    .line 2496
    if-nez v11, :cond_7d

    .line 2497
    .line 2498
    iget-boolean v2, v12, Lcom/android/server/pm/DumpState;->mTitlePrinted:Z

    .line 2499
    .line 2500
    const/4 v3, 0x1

    .line 2501
    iput-boolean v3, v12, Lcom/android/server/pm/DumpState;->mTitlePrinted:Z

    .line 2502
    .line 2503
    if-eqz v2, :cond_7c

    .line 2504
    .line 2505
    invoke-virtual/range {p3 .. p3}, Ljava/io/PrintWriter;->println()V

    .line 2506
    .line 2507
    .line 2508
    :cond_7c
    invoke-interface {v7, v1, v8, v9, v12}, Lcom/android/server/pm/Computer;->dump(ILjava/io/FileDescriptor;Ljava/io/PrintWriter;Lcom/android/server/pm/DumpState;)V

    .line 2509
    .line 2510
    .line 2511
    invoke-virtual/range {p3 .. p3}, Ljava/io/PrintWriter;->println()V

    .line 2512
    .line 2513
    .line 2514
    const-string v1, "Package warning messages:"

    .line 2515
    .line 2516
    invoke-virtual {v9, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2517
    .line 2518
    .line 2519
    const/4 v1, 0x0

    .line 2520
    invoke-static {v9, v1}, Lcom/android/server/pm/PackageManagerServiceUtils;->dumpCriticalInfo(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 2521
    .line 2522
    .line 2523
    goto :goto_35

    .line 2524
    :cond_7d
    const-string/jumbo v1, "msg,"

    .line 2525
    .line 2526
    .line 2527
    invoke-static {v9, v1}, Lcom/android/server/pm/PackageManagerServiceUtils;->dumpCriticalInfo(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 2528
    .line 2529
    .line 2530
    :cond_7e
    :goto_35
    if-nez v11, :cond_80

    .line 2531
    .line 2532
    const/high16 v1, 0x10000

    .line 2533
    .line 2534
    invoke-virtual {v12, v1}, Lcom/android/server/pm/DumpState;->isDumping(I)Z

    .line 2535
    .line 2536
    .line 2537
    move-result v1

    .line 2538
    if-eqz v1, :cond_80

    .line 2539
    .line 2540
    if-nez v13, :cond_80

    .line 2541
    .line 2542
    iget-boolean v1, v12, Lcom/android/server/pm/DumpState;->mTitlePrinted:Z

    .line 2543
    .line 2544
    const/4 v2, 0x1

    .line 2545
    iput-boolean v2, v12, Lcom/android/server/pm/DumpState;->mTitlePrinted:Z

    .line 2546
    .line 2547
    if-eqz v1, :cond_7f

    .line 2548
    .line 2549
    invoke-virtual/range {p3 .. p3}, Ljava/io/PrintWriter;->println()V

    .line 2550
    .line 2551
    .line 2552
    :cond_7f
    iget-object v1, v0, Lcom/android/server/pm/DumpHelper;->mInstallerService:Lcom/android/server/pm/PackageInstallerService;

    .line 2553
    .line 2554
    new-instance v2, Lcom/android/internal/util/IndentingPrintWriter;

    .line 2555
    .line 2556
    const-string v3, "  "

    .line 2557
    .line 2558
    invoke-direct {v2, v9, v3, v4}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;I)V

    .line 2559
    .line 2560
    .line 2561
    invoke-virtual {v1, v2}, Lcom/android/server/pm/PackageInstallerService;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 2562
    .line 2563
    .line 2564
    :cond_80
    if-nez v11, :cond_81

    .line 2565
    .line 2566
    const/high16 v1, 0x2000000

    .line 2567
    .line 2568
    invoke-virtual {v12, v1}, Lcom/android/server/pm/DumpState;->isDumping(I)Z

    .line 2569
    .line 2570
    .line 2571
    move-result v2

    .line 2572
    if-eqz v2, :cond_81

    .line 2573
    .line 2574
    invoke-interface {v7, v1, v8, v9, v12}, Lcom/android/server/pm/Computer;->dump(ILjava/io/FileDescriptor;Ljava/io/PrintWriter;Lcom/android/server/pm/DumpState;)V

    .line 2575
    .line 2576
    .line 2577
    :cond_81
    if-nez v11, :cond_83

    .line 2578
    .line 2579
    const/high16 v1, 0x10000000

    .line 2580
    .line 2581
    invoke-virtual {v12, v1}, Lcom/android/server/pm/DumpState;->isDumping(I)Z

    .line 2582
    .line 2583
    .line 2584
    move-result v1

    .line 2585
    if-eqz v1, :cond_83

    .line 2586
    .line 2587
    if-nez v13, :cond_83

    .line 2588
    .line 2589
    iget-boolean v1, v12, Lcom/android/server/pm/DumpState;->mTitlePrinted:Z

    .line 2590
    .line 2591
    const/4 v2, 0x1

    .line 2592
    iput-boolean v2, v12, Lcom/android/server/pm/DumpState;->mTitlePrinted:Z

    .line 2593
    .line 2594
    if-eqz v1, :cond_82

    .line 2595
    .line 2596
    invoke-virtual/range {p3 .. p3}, Ljava/io/PrintWriter;->println()V

    .line 2597
    .line 2598
    .line 2599
    :cond_82
    const-string v1, "Per UID read timeouts:"

    .line 2600
    .line 2601
    const-string v2, "    Default timeouts flag: "

    .line 2602
    .line 2603
    invoke-static {v9, v1, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m$1(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2604
    .line 2605
    .line 2606
    move-result-object v1

    .line 2607
    sget-boolean v2, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 2608
    .line 2609
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 2610
    .line 2611
    .line 2612
    move-result-wide v2

    .line 2613
    :try_start_9
    const-string/jumbo v4, "package_manager_service"

    .line 2614
    .line 2615
    .line 2616
    const-string v5, "incfs_default_timeouts"

    .line 2617
    .line 2618
    const-string v6, ""

    .line 2619
    .line 2620
    invoke-static {v4, v5, v6}, Landroid/provider/DeviceConfig;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 2621
    .line 2622
    .line 2623
    move-result-object v4
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    .line 2624
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2625
    .line 2626
    .line 2627
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2628
    .line 2629
    .line 2630
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2631
    .line 2632
    .line 2633
    move-result-object v1

    .line 2634
    invoke-virtual {v9, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2635
    .line 2636
    .line 2637
    new-instance v1, Ljava/lang/StringBuilder;

    .line 2638
    .line 2639
    const-string v2, "    Known digesters list flag: "

    .line 2640
    .line 2641
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2642
    .line 2643
    .line 2644
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 2645
    .line 2646
    .line 2647
    move-result-wide v2

    .line 2648
    :try_start_a
    const-string/jumbo v4, "package_manager_service"

    .line 2649
    .line 2650
    .line 2651
    const-string v5, "known_digesters_list"

    .line 2652
    .line 2653
    const-string v6, ""

    .line 2654
    .line 2655
    invoke-static {v4, v5, v6}, Landroid/provider/DeviceConfig;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 2656
    .line 2657
    .line 2658
    move-result-object v4
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 2659
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2660
    .line 2661
    .line 2662
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2663
    .line 2664
    .line 2665
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2666
    .line 2667
    .line 2668
    move-result-object v1

    .line 2669
    invoke-virtual {v9, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2670
    .line 2671
    .line 2672
    new-instance v1, Ljava/lang/StringBuilder;

    .line 2673
    .line 2674
    const-string v2, "    Timeouts ("

    .line 2675
    .line 2676
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2677
    .line 2678
    .line 2679
    iget-object v2, v0, Lcom/android/server/pm/DumpHelper;->mPerUidReadTimeouts:[Landroid/os/incremental/PerUidReadTimeouts;

    .line 2680
    .line 2681
    array-length v2, v2

    .line 2682
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2683
    .line 2684
    .line 2685
    const-string v2, "):"

    .line 2686
    .line 2687
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2688
    .line 2689
    .line 2690
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2691
    .line 2692
    .line 2693
    move-result-object v1

    .line 2694
    invoke-virtual {v9, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2695
    .line 2696
    .line 2697
    iget-object v1, v0, Lcom/android/server/pm/DumpHelper;->mPerUidReadTimeouts:[Landroid/os/incremental/PerUidReadTimeouts;

    .line 2698
    .line 2699
    array-length v2, v1

    .line 2700
    const/4 v3, 0x0

    .line 2701
    :goto_36
    if-ge v3, v2, :cond_83

    .line 2702
    .line 2703
    aget-object v4, v1, v3

    .line 2704
    .line 2705
    const-string v5, "        ("

    .line 2706
    .line 2707
    const-string/jumbo v6, "uid="

    .line 2708
    .line 2709
    .line 2710
    invoke-static {v9, v5, v6}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2711
    .line 2712
    .line 2713
    move-result-object v5

    .line 2714
    iget v6, v4, Landroid/os/incremental/PerUidReadTimeouts;->uid:I

    .line 2715
    .line 2716
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2717
    .line 2718
    .line 2719
    const-string v6, ", "

    .line 2720
    .line 2721
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2722
    .line 2723
    .line 2724
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2725
    .line 2726
    .line 2727
    move-result-object v5

    .line 2728
    invoke-virtual {v9, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2729
    .line 2730
    .line 2731
    new-instance v5, Ljava/lang/StringBuilder;

    .line 2732
    .line 2733
    const-string/jumbo v6, "minTimeUs="

    .line 2734
    .line 2735
    .line 2736
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2737
    .line 2738
    .line 2739
    iget-wide v14, v4, Landroid/os/incremental/PerUidReadTimeouts;->minTimeUs:J

    .line 2740
    .line 2741
    invoke-virtual {v5, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2742
    .line 2743
    .line 2744
    const-string v6, ", "

    .line 2745
    .line 2746
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2747
    .line 2748
    .line 2749
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2750
    .line 2751
    .line 2752
    move-result-object v5

    .line 2753
    invoke-virtual {v9, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2754
    .line 2755
    .line 2756
    new-instance v5, Ljava/lang/StringBuilder;

    .line 2757
    .line 2758
    const-string/jumbo v6, "minPendingTimeUs="

    .line 2759
    .line 2760
    .line 2761
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2762
    .line 2763
    .line 2764
    iget-wide v14, v4, Landroid/os/incremental/PerUidReadTimeouts;->minPendingTimeUs:J

    .line 2765
    .line 2766
    invoke-virtual {v5, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2767
    .line 2768
    .line 2769
    const-string v6, ", "

    .line 2770
    .line 2771
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2772
    .line 2773
    .line 2774
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2775
    .line 2776
    .line 2777
    move-result-object v5

    .line 2778
    invoke-virtual {v9, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2779
    .line 2780
    .line 2781
    new-instance v5, Ljava/lang/StringBuilder;

    .line 2782
    .line 2783
    const-string/jumbo v6, "maxPendingTimeUs="

    .line 2784
    .line 2785
    .line 2786
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2787
    .line 2788
    .line 2789
    iget-wide v14, v4, Landroid/os/incremental/PerUidReadTimeouts;->maxPendingTimeUs:J

    .line 2790
    .line 2791
    invoke-virtual {v5, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2792
    .line 2793
    .line 2794
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2795
    .line 2796
    .line 2797
    move-result-object v4

    .line 2798
    invoke-virtual {v9, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2799
    .line 2800
    .line 2801
    const-string v4, ")"

    .line 2802
    .line 2803
    invoke-virtual {v9, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2804
    .line 2805
    .line 2806
    const/4 v4, 0x1

    .line 2807
    add-int/2addr v3, v4

    .line 2808
    goto :goto_36

    .line 2809
    :catchall_4
    move-exception v0

    .line 2810
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2811
    .line 2812
    .line 2813
    throw v0

    .line 2814
    :catchall_5
    move-exception v0

    .line 2815
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2816
    .line 2817
    .line 2818
    throw v0

    .line 2819
    :cond_83
    if-nez v11, :cond_86

    .line 2820
    .line 2821
    const/high16 v1, 0x20000000

    .line 2822
    .line 2823
    invoke-virtual {v12, v1}, Lcom/android/server/pm/DumpState;->isDumping(I)Z

    .line 2824
    .line 2825
    .line 2826
    move-result v1

    .line 2827
    if-eqz v1, :cond_86

    .line 2828
    .line 2829
    if-nez v13, :cond_86

    .line 2830
    .line 2831
    iget-boolean v1, v12, Lcom/android/server/pm/DumpState;->mTitlePrinted:Z

    .line 2832
    .line 2833
    const/4 v2, 0x1

    .line 2834
    iput-boolean v2, v12, Lcom/android/server/pm/DumpState;->mTitlePrinted:Z

    .line 2835
    .line 2836
    if-eqz v1, :cond_84

    .line 2837
    .line 2838
    invoke-virtual/range {p3 .. p3}, Ljava/io/PrintWriter;->println()V

    .line 2839
    .line 2840
    .line 2841
    :cond_84
    const-string v1, "Snapshot statistics:"

    .line 2842
    .line 2843
    invoke-virtual {v9, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2844
    .line 2845
    .line 2846
    iget-object v1, v0, Lcom/android/server/pm/DumpHelper;->mSnapshotStatistics:Lcom/android/server/pm/SnapshotStatistics;

    .line 2847
    .line 2848
    invoke-static {}, Landroid/os/SystemClock;->currentTimeMicro()J

    .line 2849
    .line 2850
    .line 2851
    move-result-wide v14

    .line 2852
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/Computer;->getUsed()I

    .line 2853
    .line 2854
    .line 2855
    move-result v2

    .line 2856
    iget-boolean v7, v12, Lcom/android/server/pm/DumpState;->mBrief:Z

    .line 2857
    .line 2858
    const-string v3, "   "

    .line 2859
    .line 2860
    iget-object v4, v1, Lcom/android/server/pm/SnapshotStatistics;->mLock:Ljava/lang/Object;

    .line 2861
    .line 2862
    monitor-enter v4

    .line 2863
    :try_start_b
    iget-object v5, v1, Lcom/android/server/pm/SnapshotStatistics;->mLong:[Lcom/android/server/pm/SnapshotStatistics$Stats;

    .line 2864
    .line 2865
    array-length v6, v5

    .line 2866
    invoke-static {v5, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 2867
    .line 2868
    .line 2869
    move-result-object v5

    .line 2870
    move-object v8, v5

    .line 2871
    check-cast v8, [Lcom/android/server/pm/SnapshotStatistics$Stats;

    .line 2872
    .line 2873
    new-instance v5, Lcom/android/server/pm/SnapshotStatistics$Stats;

    .line 2874
    .line 2875
    const/4 v6, 0x0

    .line 2876
    aget-object v10, v8, v6

    .line 2877
    .line 2878
    invoke-direct {v5, v1, v10}, Lcom/android/server/pm/SnapshotStatistics$Stats;-><init>(Lcom/android/server/pm/SnapshotStatistics;Lcom/android/server/pm/SnapshotStatistics$Stats;)V

    .line 2879
    .line 2880
    .line 2881
    aput-object v5, v8, v6

    .line 2882
    .line 2883
    iget-object v5, v1, Lcom/android/server/pm/SnapshotStatistics;->mShort:[Lcom/android/server/pm/SnapshotStatistics$Stats;

    .line 2884
    .line 2885
    array-length v6, v5

    .line 2886
    invoke-static {v5, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 2887
    .line 2888
    .line 2889
    move-result-object v5

    .line 2890
    move-object v10, v5

    .line 2891
    check-cast v10, [Lcom/android/server/pm/SnapshotStatistics$Stats;

    .line 2892
    .line 2893
    new-instance v5, Lcom/android/server/pm/SnapshotStatistics$Stats;

    .line 2894
    .line 2895
    const/16 v16, 0x0

    .line 2896
    .line 2897
    aget-object v6, v10, v16

    .line 2898
    .line 2899
    invoke-direct {v5, v1, v6}, Lcom/android/server/pm/SnapshotStatistics$Stats;-><init>(Lcom/android/server/pm/SnapshotStatistics;Lcom/android/server/pm/SnapshotStatistics$Stats;)V

    .line 2900
    .line 2901
    .line 2902
    aput-object v5, v10, v16

    .line 2903
    .line 2904
    monitor-exit v4
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    .line 2905
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 2906
    .line 2907
    const-string v4, "%s Unrecorded-hits: %d"

    .line 2908
    .line 2909
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2910
    .line 2911
    .line 2912
    move-result-object v2

    .line 2913
    filled-new-array {v3, v2}, [Ljava/lang/Object;

    .line 2914
    .line 2915
    .line 2916
    move-result-object v2

    .line 2917
    invoke-virtual {v9, v1, v4, v2}, Ljava/io/PrintWriter;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 2918
    .line 2919
    .line 2920
    invoke-virtual/range {p3 .. p3}, Ljava/io/PrintWriter;->println()V

    .line 2921
    .line 2922
    .line 2923
    const-string/jumbo v6, "stats"

    .line 2924
    .line 2925
    .line 2926
    move-object/from16 v1, p3

    .line 2927
    .line 2928
    move-wide v2, v14

    .line 2929
    move-object v4, v8

    .line 2930
    move-object v5, v10

    .line 2931
    invoke-static/range {v1 .. v6}, Lcom/android/server/pm/SnapshotStatistics;->dump(Ljava/io/PrintWriter;J[Lcom/android/server/pm/SnapshotStatistics$Stats;[Lcom/android/server/pm/SnapshotStatistics$Stats;Ljava/lang/String;)V

    .line 2932
    .line 2933
    .line 2934
    if-eqz v7, :cond_85

    .line 2935
    .line 2936
    goto :goto_37

    .line 2937
    :cond_85
    invoke-virtual/range {p3 .. p3}, Ljava/io/PrintWriter;->println()V

    .line 2938
    .line 2939
    .line 2940
    const-string/jumbo v6, "times"

    .line 2941
    .line 2942
    .line 2943
    move-object/from16 v1, p3

    .line 2944
    .line 2945
    move-wide v2, v14

    .line 2946
    move-object v4, v8

    .line 2947
    move-object v5, v10

    .line 2948
    invoke-static/range {v1 .. v6}, Lcom/android/server/pm/SnapshotStatistics;->dump(Ljava/io/PrintWriter;J[Lcom/android/server/pm/SnapshotStatistics$Stats;[Lcom/android/server/pm/SnapshotStatistics$Stats;Ljava/lang/String;)V

    .line 2949
    .line 2950
    .line 2951
    invoke-virtual/range {p3 .. p3}, Ljava/io/PrintWriter;->println()V

    .line 2952
    .line 2953
    .line 2954
    const-string/jumbo v6, "usage"

    .line 2955
    .line 2956
    .line 2957
    invoke-static/range {v1 .. v6}, Lcom/android/server/pm/SnapshotStatistics;->dump(Ljava/io/PrintWriter;J[Lcom/android/server/pm/SnapshotStatistics$Stats;[Lcom/android/server/pm/SnapshotStatistics$Stats;Ljava/lang/String;)V

    .line 2958
    .line 2959
    .line 2960
    goto :goto_37

    .line 2961
    :catchall_6
    move-exception v0

    .line 2962
    :try_start_c
    monitor-exit v4
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    .line 2963
    throw v0

    .line 2964
    :cond_86
    const/16 v16, 0x0

    .line 2965
    .line 2966
    :goto_37
    if-nez v11, :cond_88

    .line 2967
    .line 2968
    const/high16 v1, 0x40000000    # 2.0f

    .line 2969
    .line 2970
    invoke-virtual {v12, v1}, Lcom/android/server/pm/DumpState;->isDumping(I)Z

    .line 2971
    .line 2972
    .line 2973
    move-result v1

    .line 2974
    if-eqz v1, :cond_88

    .line 2975
    .line 2976
    if-nez v13, :cond_88

    .line 2977
    .line 2978
    iget-boolean v1, v12, Lcom/android/server/pm/DumpState;->mTitlePrinted:Z

    .line 2979
    .line 2980
    const/4 v2, 0x1

    .line 2981
    iput-boolean v2, v12, Lcom/android/server/pm/DumpState;->mTitlePrinted:Z

    .line 2982
    .line 2983
    if-eqz v1, :cond_87

    .line 2984
    .line 2985
    invoke-virtual/range {p3 .. p3}, Ljava/io/PrintWriter;->println()V

    .line 2986
    .line 2987
    .line 2988
    :cond_87
    const-string v1, "Protected broadcast actions:"

    .line 2989
    .line 2990
    invoke-virtual {v9, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2991
    .line 2992
    .line 2993
    move/from16 v10, v16

    .line 2994
    .line 2995
    :goto_38
    iget-object v1, v0, Lcom/android/server/pm/DumpHelper;->mProtectedBroadcasts:Landroid/util/ArraySet;

    .line 2996
    .line 2997
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    .line 2998
    .line 2999
    .line 3000
    move-result v1

    .line 3001
    if-ge v10, v1, :cond_88

    .line 3002
    .line 3003
    const-string v1, "  "

    .line 3004
    .line 3005
    invoke-virtual {v9, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3006
    .line 3007
    .line 3008
    iget-object v1, v0, Lcom/android/server/pm/DumpHelper;->mProtectedBroadcasts:Landroid/util/ArraySet;

    .line 3009
    .line 3010
    invoke-virtual {v1, v10}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 3011
    .line 3012
    .line 3013
    move-result-object v1

    .line 3014
    check-cast v1, Ljava/lang/String;

    .line 3015
    .line 3016
    invoke-virtual {v9, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3017
    .line 3018
    .line 3019
    const/4 v1, 0x1

    .line 3020
    add-int/2addr v10, v1

    .line 3021
    goto :goto_38

    .line 3022
    :cond_88
    return-void

    .line 3023
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
