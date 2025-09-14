.class public final synthetic Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/util/function/QuadFunction;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    iget p0, p0, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 3
    .line 4
    packed-switch p0, :pswitch_data_0

    .line 5
    .line 6
    .line 7
    check-cast p1, Ljava/lang/Integer;

    .line 8
    .line 9
    check-cast p2, Landroid/content/Context;

    .line 10
    .line 11
    check-cast p3, Ljava/lang/Integer;

    .line 12
    .line 13
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    .line 14
    .line 15
    .line 16
    check-cast p4, Landroid/app/admin/PolicyKey;

    .line 17
    .line 18
    sget-object p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->DELEGATIONS:[Ljava/lang/String;

    .line 19
    .line 20
    const-string p0, "PolicyEnforcerCallbacks"

    .line 21
    .line 22
    const-string p1, "Trying to enforce setPermissionGrantState while flag is off."

    .line 23
    .line 24
    invoke-static {p0, p1}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 28
    .line 29
    return-object p0

    .line 30
    :pswitch_0
    check-cast p1, Ljava/lang/Integer;

    .line 31
    .line 32
    check-cast p2, Landroid/content/Context;

    .line 33
    .line 34
    check-cast p3, Ljava/lang/Integer;

    .line 35
    .line 36
    check-cast p4, Landroid/app/admin/PolicyKey;

    .line 37
    .line 38
    new-instance p0, Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks$$ExternalSyntheticLambda6;

    .line 39
    .line 40
    invoke-direct {p0, p3, p1}, Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks$$ExternalSyntheticLambda6;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 41
    .line 42
    .line 43
    invoke-static {p0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 44
    .line 45
    .line 46
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 47
    .line 48
    return-object p0

    .line 49
    :pswitch_1
    check-cast p1, Ljava/lang/Boolean;

    .line 50
    .line 51
    check-cast p2, Landroid/content/Context;

    .line 52
    .line 53
    check-cast p3, Ljava/lang/Integer;

    .line 54
    .line 55
    check-cast p4, Landroid/app/admin/PolicyKey;

    .line 56
    .line 57
    new-instance p0, Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks$$ExternalSyntheticLambda2;

    .line 58
    .line 59
    invoke-direct {p0, p2, p1}, Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks$$ExternalSyntheticLambda2;-><init>(Landroid/content/Context;Ljava/lang/Boolean;)V

    .line 60
    .line 61
    .line 62
    invoke-static {p0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    check-cast p0, Ljava/lang/Boolean;

    .line 67
    .line 68
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 69
    .line 70
    .line 71
    return-object p0

    .line 72
    :pswitch_2
    check-cast p1, Ljava/lang/Boolean;

    .line 73
    .line 74
    check-cast p2, Landroid/content/Context;

    .line 75
    .line 76
    check-cast p3, Ljava/lang/Integer;

    .line 77
    .line 78
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    .line 79
    .line 80
    .line 81
    move-result p0

    .line 82
    check-cast p4, Landroid/app/admin/PolicyKey;

    .line 83
    .line 84
    new-instance p3, Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks$$ExternalSyntheticLambda0;

    .line 85
    .line 86
    invoke-direct {p3, p0, v0, p1, p2}, Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks$$ExternalSyntheticLambda0;-><init>(IILjava/lang/Object;Ljava/lang/Object;)V

    .line 87
    .line 88
    .line 89
    invoke-static {p3}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 90
    .line 91
    .line 92
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 93
    .line 94
    return-object p0

    .line 95
    :pswitch_3
    check-cast p1, Ljava/lang/Boolean;

    .line 96
    .line 97
    check-cast p2, Landroid/content/Context;

    .line 98
    .line 99
    check-cast p3, Ljava/lang/Integer;

    .line 100
    .line 101
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    .line 102
    .line 103
    .line 104
    move-result p0

    .line 105
    check-cast p4, Landroid/app/admin/PolicyKey;

    .line 106
    .line 107
    new-instance p2, Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks$$ExternalSyntheticLambda1;

    .line 108
    .line 109
    invoke-direct {p2, p0, p1}, Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Boolean;)V

    .line 110
    .line 111
    .line 112
    invoke-static {p2}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 113
    .line 114
    .line 115
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 116
    .line 117
    return-object p0

    .line 118
    :pswitch_4
    check-cast p1, Ljava/util/Set;

    .line 119
    .line 120
    check-cast p2, Landroid/content/Context;

    .line 121
    .line 122
    check-cast p3, Ljava/lang/Integer;

    .line 123
    .line 124
    check-cast p4, Landroid/app/admin/PolicyKey;

    .line 125
    .line 126
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 127
    .line 128
    return-object p0

    .line 129
    :pswitch_5
    check-cast p1, Ljava/lang/Boolean;

    .line 130
    .line 131
    check-cast p2, Landroid/content/Context;

    .line 132
    .line 133
    check-cast p3, Ljava/lang/Integer;

    .line 134
    .line 135
    check-cast p4, Landroid/app/admin/PolicyKey;

    .line 136
    .line 137
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 138
    .line 139
    return-object p0

    .line 140
    :pswitch_6
    check-cast p1, Ljava/lang/Boolean;

    .line 141
    .line 142
    check-cast p2, Landroid/content/Context;

    .line 143
    .line 144
    check-cast p3, Ljava/lang/Integer;

    .line 145
    .line 146
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    .line 147
    .line 148
    .line 149
    move-result p0

    .line 150
    check-cast p4, Landroid/app/admin/PolicyKey;

    .line 151
    .line 152
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 153
    .line 154
    new-instance p3, Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks$$ExternalSyntheticLambda3;

    .line 155
    .line 156
    invoke-direct {p3, p4, p1, p0, v0}, Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks$$ExternalSyntheticLambda3;-><init>(Landroid/app/admin/PolicyKey;Ljava/lang/Boolean;II)V

    .line 157
    .line 158
    .line 159
    invoke-static {p3}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    .line 160
    .line 161
    .line 162
    move-result-object p0

    .line 163
    invoke-virtual {p2, p0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    .line 164
    .line 165
    .line 166
    move-result p0

    .line 167
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 168
    .line 169
    .line 170
    move-result-object p0

    .line 171
    return-object p0

    .line 172
    :pswitch_7
    check-cast p1, Ljava/lang/Integer;

    .line 173
    .line 174
    check-cast p2, Landroid/content/Context;

    .line 175
    .line 176
    check-cast p3, Ljava/lang/Integer;

    .line 177
    .line 178
    check-cast p4, Landroid/app/admin/PolicyKey;

    .line 179
    .line 180
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 181
    .line 182
    return-object p0

    .line 183
    :pswitch_8
    check-cast p1, Ljava/lang/Boolean;

    .line 184
    .line 185
    check-cast p2, Landroid/content/Context;

    .line 186
    .line 187
    check-cast p3, Ljava/lang/Integer;

    .line 188
    .line 189
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    .line 190
    .line 191
    .line 192
    move-result p0

    .line 193
    check-cast p4, Landroid/app/admin/PolicyKey;

    .line 194
    .line 195
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 196
    .line 197
    new-instance p3, Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks$$ExternalSyntheticLambda3;

    .line 198
    .line 199
    invoke-direct {p3, p4, p0, p1}, Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks$$ExternalSyntheticLambda3;-><init>(Landroid/app/admin/PolicyKey;ILjava/lang/Boolean;)V

    .line 200
    .line 201
    .line 202
    invoke-static {p3}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    .line 203
    .line 204
    .line 205
    move-result-object p0

    .line 206
    invoke-virtual {p2, p0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    .line 207
    .line 208
    .line 209
    move-result p0

    .line 210
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 211
    .line 212
    .line 213
    move-result-object p0

    .line 214
    return-object p0

    .line 215
    :pswitch_9
    check-cast p1, Ljava/lang/Long;

    .line 216
    .line 217
    check-cast p2, Landroid/content/Context;

    .line 218
    .line 219
    check-cast p3, Ljava/lang/Integer;

    .line 220
    .line 221
    check-cast p4, Landroid/app/admin/PolicyKey;

    .line 222
    .line 223
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 224
    .line 225
    return-object p0

    .line 226
    :pswitch_a
    check-cast p1, Landroid/os/Bundle;

    .line 227
    .line 228
    check-cast p2, Landroid/content/Context;

    .line 229
    .line 230
    check-cast p3, Ljava/lang/Integer;

    .line 231
    .line 232
    check-cast p4, Landroid/app/admin/PolicyKey;

    .line 233
    .line 234
    new-instance p0, Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks$$ExternalSyntheticLambda4;

    .line 235
    .line 236
    invoke-direct {p0, p4, p2, p3}, Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks$$ExternalSyntheticLambda4;-><init>(Landroid/app/admin/PolicyKey;Landroid/content/Context;Ljava/lang/Integer;)V

    .line 237
    .line 238
    .line 239
    invoke-static {p0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 240
    .line 241
    .line 242
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 243
    .line 244
    return-object p0

    .line 245
    :pswitch_b
    check-cast p1, Ljava/lang/Boolean;

    .line 246
    .line 247
    check-cast p2, Landroid/content/Context;

    .line 248
    .line 249
    check-cast p3, Ljava/lang/Integer;

    .line 250
    .line 251
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    .line 252
    .line 253
    .line 254
    move-result p0

    .line 255
    check-cast p4, Landroid/app/admin/PolicyKey;

    .line 256
    .line 257
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 258
    .line 259
    new-instance p3, Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks$$ExternalSyntheticLambda3;

    .line 260
    .line 261
    const/4 v0, 0x1

    .line 262
    invoke-direct {p3, p4, p1, p0, v0}, Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks$$ExternalSyntheticLambda3;-><init>(Landroid/app/admin/PolicyKey;Ljava/lang/Boolean;II)V

    .line 263
    .line 264
    .line 265
    invoke-static {p3}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    .line 266
    .line 267
    .line 268
    move-result-object p0

    .line 269
    invoke-virtual {p2, p0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    .line 270
    .line 271
    .line 272
    move-result p0

    .line 273
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 274
    .line 275
    .line 276
    move-result-object p0

    .line 277
    return-object p0

    .line 278
    :pswitch_c
    check-cast p1, Landroid/content/ComponentName;

    .line 279
    .line 280
    check-cast p2, Landroid/content/Context;

    .line 281
    .line 282
    check-cast p3, Ljava/lang/Integer;

    .line 283
    .line 284
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    .line 285
    .line 286
    .line 287
    move-result p0

    .line 288
    check-cast p4, Landroid/app/admin/PolicyKey;

    .line 289
    .line 290
    new-instance p2, Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks$$ExternalSyntheticLambda0;

    .line 291
    .line 292
    const/4 p3, 0x2

    .line 293
    invoke-direct {p2, p0, p3, p4, p1}, Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks$$ExternalSyntheticLambda0;-><init>(IILjava/lang/Object;Ljava/lang/Object;)V

    .line 294
    .line 295
    .line 296
    invoke-static {p2}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 297
    .line 298
    .line 299
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 300
    .line 301
    return-object p0

    .line 302
    :pswitch_d
    check-cast p1, Ljava/util/Set;

    .line 303
    .line 304
    check-cast p2, Landroid/content/Context;

    .line 305
    .line 306
    check-cast p3, Ljava/lang/Integer;

    .line 307
    .line 308
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    .line 309
    .line 310
    .line 311
    move-result p0

    .line 312
    check-cast p4, Landroid/app/admin/PolicyKey;

    .line 313
    .line 314
    sget-object p3, Lcom/android/server/am/mars/filter/filter/ProtectedPackagesFilter$ProtectedPackagesFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/ProtectedPackagesFilter;

    .line 315
    .line 316
    if-nez p1, :cond_0

    .line 317
    .line 318
    const/4 p4, 0x0

    .line 319
    goto :goto_0

    .line 320
    :cond_0
    invoke-interface {p1}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    .line 321
    .line 322
    .line 323
    move-result-object p4

    .line 324
    invoke-interface {p4}, Ljava/util/stream/Stream;->toList()Ljava/util/List;

    .line 325
    .line 326
    .line 327
    move-result-object p4

    .line 328
    :goto_0
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 329
    .line 330
    .line 331
    const-string v1, "ProtectedPackagesFilter"

    .line 332
    .line 333
    new-instance v2, Ljava/lang/StringBuilder;

    .line 334
    .line 335
    const-string/jumbo v3, "updateProtectedPackages is called. userId "

    .line 336
    .line 337
    .line 338
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 339
    .line 340
    .line 341
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 342
    .line 343
    .line 344
    const-string v3, " package names : "

    .line 345
    .line 346
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 347
    .line 348
    .line 349
    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 350
    .line 351
    .line 352
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 353
    .line 354
    .line 355
    move-result-object v2

    .line 356
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    .line 358
    .line 359
    iget-object v1, p3, Lcom/android/server/am/mars/filter/filter/ProtectedPackagesFilter;->mProtectedPackages:Landroid/util/SparseArray;

    .line 360
    .line 361
    monitor-enter v1

    .line 362
    if-nez p4, :cond_1

    .line 363
    .line 364
    :try_start_0
    iget-object p3, p3, Lcom/android/server/am/mars/filter/filter/ProtectedPackagesFilter;->mProtectedPackages:Landroid/util/SparseArray;

    .line 365
    .line 366
    invoke-virtual {p3, p0}, Landroid/util/SparseArray;->remove(I)V

    .line 367
    .line 368
    .line 369
    goto :goto_1

    .line 370
    :catchall_0
    move-exception p0

    .line 371
    goto :goto_3

    .line 372
    :cond_1
    iget-object p3, p3, Lcom/android/server/am/mars/filter/filter/ProtectedPackagesFilter;->mProtectedPackages:Landroid/util/SparseArray;

    .line 373
    .line 374
    new-instance v2, Landroid/util/ArraySet;

    .line 375
    .line 376
    invoke-direct {v2, p4}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 377
    .line 378
    .line 379
    invoke-virtual {p3, p0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 380
    .line 381
    .line 382
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 383
    if-eqz p4, :cond_3

    .line 384
    .line 385
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 386
    .line 387
    .line 388
    move-result-object p3

    .line 389
    :cond_2
    :goto_2
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 390
    .line 391
    .line 392
    move-result p4

    .line 393
    if-eqz p4, :cond_3

    .line 394
    .line 395
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 396
    .line 397
    .line 398
    move-result-object p4

    .line 399
    check-cast p4, Ljava/lang/String;

    .line 400
    .line 401
    sget-boolean v1, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    .line 402
    .line 403
    sget-object v1, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    .line 404
    .line 405
    invoke-virtual {v1, p4, p0, v0}, Lcom/android/server/am/MARsPolicyManager;->cancelDisablePolicy(Ljava/lang/String;II)Z

    .line 406
    .line 407
    .line 408
    move-result v1

    .line 409
    if-nez v1, :cond_2

    .line 410
    .line 411
    const-string v1, "MARsPolicyManager"

    .line 412
    .line 413
    const-string/jumbo v2, "cancelDisablePolicy failed. package : "

    .line 414
    .line 415
    .line 416
    invoke-static {v2, p4, v1}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    .line 418
    .line 419
    goto :goto_2

    .line 420
    :cond_3
    new-instance p3, Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks$$ExternalSyntheticLambda0;

    .line 421
    .line 422
    invoke-direct {p3, p2, p0, p1}, Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;ILjava/util/Set;)V

    .line 423
    .line 424
    .line 425
    invoke-static {p3}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 426
    .line 427
    .line 428
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 429
    .line 430
    return-object p0

    .line 431
    :goto_3
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 432
    throw p0

    .line 433
    :pswitch_e
    check-cast p1, Landroid/app/admin/LockTaskPolicy;

    .line 434
    .line 435
    check-cast p2, Landroid/content/Context;

    .line 436
    .line 437
    check-cast p3, Ljava/lang/Integer;

    .line 438
    .line 439
    check-cast p4, Landroid/app/admin/PolicyKey;

    .line 440
    .line 441
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    .line 442
    .line 443
    .line 444
    move-result p0

    .line 445
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 446
    .line 447
    .line 448
    move-result-object p3

    .line 449
    if-eqz p1, :cond_4

    .line 450
    .line 451
    invoke-virtual {p1}, Landroid/app/admin/LockTaskPolicy;->getPackages()Ljava/util/Set;

    .line 452
    .line 453
    .line 454
    move-result-object p3

    .line 455
    invoke-static {p3}, Ljava/util/List;->copyOf(Ljava/util/Collection;)Ljava/util/List;

    .line 456
    .line 457
    .line 458
    move-result-object p3

    .line 459
    invoke-virtual {p1}, Landroid/app/admin/LockTaskPolicy;->getFlags()I

    .line 460
    .line 461
    .line 462
    move-result p1

    .line 463
    goto :goto_4

    .line 464
    :cond_4
    const/16 p1, 0x10

    .line 465
    .line 466
    :goto_4
    sget-object p4, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->DELEGATIONS:[Ljava/lang/String;

    .line 467
    .line 468
    new-instance p4, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda101;

    .line 469
    .line 470
    invoke-direct {p4, p0, p2, p3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda101;-><init>(ILandroid/content/Context;Ljava/util/List;)V

    .line 471
    .line 472
    .line 473
    invoke-static {p4}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 474
    .line 475
    .line 476
    new-instance p2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda204;

    .line 477
    .line 478
    invoke-direct {p2, p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda204;-><init>(II)V

    .line 479
    .line 480
    .line 481
    invoke-static {p2}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 482
    .line 483
    .line 484
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 485
    .line 486
    return-object p0

    .line 487
    :pswitch_f
    check-cast p1, Ljava/lang/Boolean;

    .line 488
    .line 489
    check-cast p2, Landroid/content/Context;

    .line 490
    .line 491
    check-cast p3, Ljava/lang/Integer;

    .line 492
    .line 493
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    .line 494
    .line 495
    .line 496
    check-cast p4, Landroid/app/admin/PolicyKey;

    .line 497
    .line 498
    const-class p0, Landroid/app/admin/DevicePolicyManagerInternal;

    .line 499
    .line 500
    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 501
    .line 502
    .line 503
    move-result-object p0

    .line 504
    check-cast p0, Landroid/app/admin/DevicePolicyManagerInternal;

    .line 505
    .line 506
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 507
    .line 508
    invoke-virtual {p2, p1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    .line 509
    .line 510
    .line 511
    move-result p1

    .line 512
    invoke-virtual {p0, p1}, Landroid/app/admin/DevicePolicyManagerInternal;->enforceAuditLoggingPolicy(Z)V

    .line 513
    .line 514
    .line 515
    return-object p2

    .line 516
    :pswitch_10
    check-cast p1, Ljava/lang/Boolean;

    .line 517
    .line 518
    check-cast p2, Landroid/content/Context;

    .line 519
    .line 520
    check-cast p3, Ljava/lang/Integer;

    .line 521
    .line 522
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    .line 523
    .line 524
    .line 525
    check-cast p4, Landroid/app/admin/PolicyKey;

    .line 526
    .line 527
    const-class p0, Landroid/app/admin/DevicePolicyManagerInternal;

    .line 528
    .line 529
    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 530
    .line 531
    .line 532
    move-result-object p0

    .line 533
    check-cast p0, Landroid/app/admin/DevicePolicyManagerInternal;

    .line 534
    .line 535
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 536
    .line 537
    invoke-virtual {p2, p1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    .line 538
    .line 539
    .line 540
    move-result p1

    .line 541
    invoke-virtual {p0, p1}, Landroid/app/admin/DevicePolicyManagerInternal;->enforceSecurityLoggingPolicy(Z)V

    .line 542
    .line 543
    .line 544
    return-object p2

    .line 545
    :pswitch_11
    check-cast p1, Ljava/lang/Boolean;

    .line 546
    .line 547
    check-cast p2, Landroid/content/Context;

    .line 548
    .line 549
    check-cast p3, Ljava/lang/Integer;

    .line 550
    .line 551
    check-cast p4, Landroid/app/admin/PolicyKey;

    .line 552
    .line 553
    sget-object p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->DELEGATIONS:[Ljava/lang/String;

    .line 554
    .line 555
    const-string p0, "PolicyEnforcerCallbacks"

    .line 556
    .line 557
    const-string p1, "Trying to enforce setAutoTimezoneEnabled while flag is off."

    .line 558
    .line 559
    invoke-static {p0, p1}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    .line 561
    .line 562
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 563
    .line 564
    return-object p0

    .line 565
    :pswitch_data_0
    .packed-switch 0x0
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
