.class public final Lcom/android/server/chimera/GPUMemoryReclaimer;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static FEATURE_ENABLED:Z

.field public static INSTANCE:Lcom/android/server/chimera/GPUMemoryReclaimer;

.field public static __Async:Ljava/lang/Boolean;

.field public static __EnabledSwapIn:Ljava/lang/Boolean;

.field public static __EnabledSwapOut:Ljava/lang/Boolean;

.field public static __MaxReclaimSize:J

.field public static __VendorPluginName:Ljava/lang/String;


# instance fields
.field public final mDump:Lcom/android/server/chimera/GPUMemoryReclaimer$Dump;

.field public mSwapInHandler:Lcom/android/server/chimera/GPUMemoryReclaimer$SwapInHandler;

.field public mSwapInThread:Lcom/android/server/ServiceThread;

.field public mSwapOutHandler:Lcom/android/server/chimera/GPUMemoryReclaimer$SwapInHandler;

.field public mSwapOutThread:Lcom/android/server/ServiceThread;

.field public final mUtils:Lcom/android/server/chimera/GPUMemoryReclaimer$Utils;

.field public final mVendorPlugin:Lcom/android/server/chimera/GPUMemoryReclaimer$VendorPlugin;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-string/jumbo v0, "ro.sys.kernelmemory.gmr.enabled"

    .line 2
    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    sput-boolean v0, Lcom/android/server/chimera/GPUMemoryReclaimer;->FEATURE_ENABLED:Z

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    sput-object v0, Lcom/android/server/chimera/GPUMemoryReclaimer;->__VendorPluginName:Ljava/lang/String;

    .line 13
    .line 14
    sput-object v0, Lcom/android/server/chimera/GPUMemoryReclaimer;->__EnabledSwapOut:Ljava/lang/Boolean;

    .line 15
    .line 16
    sput-object v0, Lcom/android/server/chimera/GPUMemoryReclaimer;->__EnabledSwapIn:Ljava/lang/Boolean;

    .line 17
    .line 18
    const-wide/16 v1, 0x0

    .line 19
    .line 20
    sput-wide v1, Lcom/android/server/chimera/GPUMemoryReclaimer;->__MaxReclaimSize:J

    .line 21
    .line 22
    sput-object v0, Lcom/android/server/chimera/GPUMemoryReclaimer;->__Async:Ljava/lang/Boolean;

    .line 23
    .line 24
    sput-object v0, Lcom/android/server/chimera/GPUMemoryReclaimer;->INSTANCE:Lcom/android/server/chimera/GPUMemoryReclaimer;

    .line 25
    .line 26
    return-void
.end method

.method public constructor <init>()V
    .locals 11

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/android/server/chimera/GPUMemoryReclaimer;->mVendorPlugin:Lcom/android/server/chimera/GPUMemoryReclaimer$VendorPlugin;

    .line 6
    .line 7
    iput-object v0, p0, Lcom/android/server/chimera/GPUMemoryReclaimer;->mSwapInThread:Lcom/android/server/ServiceThread;

    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/chimera/GPUMemoryReclaimer;->mSwapOutThread:Lcom/android/server/ServiceThread;

    .line 10
    .line 11
    iput-object v0, p0, Lcom/android/server/chimera/GPUMemoryReclaimer;->mSwapInHandler:Lcom/android/server/chimera/GPUMemoryReclaimer$SwapInHandler;

    .line 12
    .line 13
    iput-object v0, p0, Lcom/android/server/chimera/GPUMemoryReclaimer;->mSwapOutHandler:Lcom/android/server/chimera/GPUMemoryReclaimer$SwapInHandler;

    .line 14
    .line 15
    new-instance v1, Lcom/android/server/chimera/GPUMemoryReclaimer$Dump;

    .line 16
    .line 17
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 18
    .line 19
    .line 20
    iput-object p0, v1, Lcom/android/server/chimera/GPUMemoryReclaimer$Dump;->self:Lcom/android/server/chimera/GPUMemoryReclaimer;

    .line 21
    .line 22
    iput-object v1, p0, Lcom/android/server/chimera/GPUMemoryReclaimer;->mDump:Lcom/android/server/chimera/GPUMemoryReclaimer$Dump;

    .line 23
    .line 24
    new-instance v1, Lcom/android/server/chimera/GPUMemoryReclaimer$Utils;

    .line 25
    .line 26
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 27
    .line 28
    .line 29
    iput-object v1, p0, Lcom/android/server/chimera/GPUMemoryReclaimer;->mUtils:Lcom/android/server/chimera/GPUMemoryReclaimer$Utils;

    .line 30
    .line 31
    const-string v1, "GMR"

    .line 32
    .line 33
    const-string/jumbo v2, "vendor_plugin is not defined or invalid: "

    .line 34
    .line 35
    .line 36
    const-string v3, "  async: "

    .line 37
    .line 38
    const-string v4, "  enabled_swap_in: "

    .line 39
    .line 40
    const-string v5, "  enabled_swap_out: "

    .line 41
    .line 42
    const-string v6, "  vendor_plugin: "

    .line 43
    .line 44
    const-string v7, "  feature enable: "

    .line 45
    .line 46
    const/4 v8, 0x0

    .line 47
    :try_start_0
    const-string/jumbo v9, "init start"

    .line 48
    .line 49
    .line 50
    invoke-static {v1, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    .line 52
    .line 53
    sget-boolean v9, Lcom/android/server/chimera/GPUMemoryReclaimer;->FEATURE_ENABLED:Z

    .line 54
    .line 55
    if-nez v9, :cond_0

    .line 56
    .line 57
    const-string/jumbo p0, "feature disabled"

    .line 58
    .line 59
    .line 60
    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    .line 62
    .line 63
    goto/16 :goto_3

    .line 64
    .line 65
    :catch_0
    move-exception p0

    .line 66
    goto/16 :goto_2

    .line 67
    .line 68
    :cond_0
    const-string/jumbo v9, "feature enabled"

    .line 69
    .line 70
    .line 71
    invoke-static {v1, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    .line 73
    .line 74
    const-string v9, "Configurations"

    .line 75
    .line 76
    invoke-static {v1, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    .line 78
    .line 79
    new-instance v9, Ljava/lang/StringBuilder;

    .line 80
    .line 81
    invoke-direct {v9, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    sget-boolean v7, Lcom/android/server/chimera/GPUMemoryReclaimer;->FEATURE_ENABLED:Z

    .line 85
    .line 86
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v7

    .line 93
    invoke-static {v1, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    .line 95
    .line 96
    new-instance v7, Ljava/lang/StringBuilder;

    .line 97
    .line 98
    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    sget-object v6, Lcom/android/server/chimera/GPUMemoryReclaimer;->__VendorPluginName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    .line 103
    const-string v9, ""

    .line 104
    .line 105
    const-string/jumbo v10, "ro.sys.kernelmemory.gmr.vendor_plugin"

    .line 106
    .line 107
    .line 108
    if-nez v6, :cond_1

    .line 109
    .line 110
    :try_start_1
    invoke-static {v10, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v6

    .line 114
    sput-object v6, Lcom/android/server/chimera/GPUMemoryReclaimer;->__VendorPluginName:Ljava/lang/String;

    .line 115
    .line 116
    :cond_1
    sget-object v6, Lcom/android/server/chimera/GPUMemoryReclaimer;->__VendorPluginName:Ljava/lang/String;

    .line 117
    .line 118
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v6

    .line 125
    invoke-static {v1, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    .line 127
    .line 128
    new-instance v6, Ljava/lang/StringBuilder;

    .line 129
    .line 130
    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    invoke-static {}, Lcom/android/server/chimera/GPUMemoryReclaimer;->isEnabledSwapOut()Ljava/lang/Boolean;

    .line 134
    .line 135
    .line 136
    move-result-object v5

    .line 137
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v5

    .line 144
    invoke-static {v1, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    .line 146
    .line 147
    new-instance v5, Ljava/lang/StringBuilder;

    .line 148
    .line 149
    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    invoke-static {}, Lcom/android/server/chimera/GPUMemoryReclaimer;->isEnabledSwapIn()Ljava/lang/Boolean;

    .line 153
    .line 154
    .line 155
    move-result-object v4

    .line 156
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v4

    .line 163
    invoke-static {v1, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    .line 165
    .line 166
    new-instance v4, Ljava/lang/StringBuilder;

    .line 167
    .line 168
    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    invoke-static {}, Lcom/android/server/chimera/GPUMemoryReclaimer;->isAsync()Ljava/lang/Boolean;

    .line 172
    .line 173
    .line 174
    move-result-object v3

    .line 175
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v3

    .line 182
    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    .line 184
    .line 185
    sget-object v3, Lcom/android/server/chimera/GPUMemoryReclaimer;->__VendorPluginName:Ljava/lang/String;

    .line 186
    .line 187
    if-nez v3, :cond_2

    .line 188
    .line 189
    invoke-static {v10, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object v3

    .line 193
    sput-object v3, Lcom/android/server/chimera/GPUMemoryReclaimer;->__VendorPluginName:Ljava/lang/String;

    .line 194
    .line 195
    :cond_2
    sget-object v3, Lcom/android/server/chimera/GPUMemoryReclaimer;->__VendorPluginName:Ljava/lang/String;

    .line 196
    .line 197
    const-string/jumbo v4, "kgsl"

    .line 198
    .line 199
    .line 200
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 201
    .line 202
    .line 203
    move-result v4

    .line 204
    if-eqz v4, :cond_3

    .line 205
    .line 206
    new-instance v4, Lcom/android/server/chimera/GPUMemoryReclaimer$KGSLPlugin;

    .line 207
    .line 208
    invoke-direct {v4, p0, p0}, Lcom/android/server/chimera/GPUMemoryReclaimer$KGSLPlugin;-><init>(Lcom/android/server/chimera/GPUMemoryReclaimer;Lcom/android/server/chimera/GPUMemoryReclaimer;)V

    .line 209
    .line 210
    .line 211
    iput-object v4, p0, Lcom/android/server/chimera/GPUMemoryReclaimer;->mVendorPlugin:Lcom/android/server/chimera/GPUMemoryReclaimer$VendorPlugin;

    .line 212
    .line 213
    goto :goto_0

    .line 214
    :cond_3
    const-string/jumbo v4, "sgpu"

    .line 215
    .line 216
    .line 217
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 218
    .line 219
    .line 220
    move-result v4

    .line 221
    if-eqz v4, :cond_4

    .line 222
    .line 223
    new-instance v4, Lcom/android/server/chimera/GPUMemoryReclaimer$SGPUPlugin;

    .line 224
    .line 225
    invoke-direct {v4, p0, p0}, Lcom/android/server/chimera/GPUMemoryReclaimer$SGPUPlugin;-><init>(Lcom/android/server/chimera/GPUMemoryReclaimer;Lcom/android/server/chimera/GPUMemoryReclaimer;)V

    .line 226
    .line 227
    .line 228
    iput-object v4, p0, Lcom/android/server/chimera/GPUMemoryReclaimer;->mVendorPlugin:Lcom/android/server/chimera/GPUMemoryReclaimer$VendorPlugin;

    .line 229
    .line 230
    :cond_4
    :goto_0
    iget-object v4, p0, Lcom/android/server/chimera/GPUMemoryReclaimer;->mVendorPlugin:Lcom/android/server/chimera/GPUMemoryReclaimer$VendorPlugin;

    .line 231
    .line 232
    if-eqz v4, :cond_6

    .line 233
    .line 234
    iget-boolean v4, v4, Lcom/android/server/chimera/GPUMemoryReclaimer$VendorPlugin;->mIsInitialized:Z

    .line 235
    .line 236
    if-nez v4, :cond_5

    .line 237
    .line 238
    goto :goto_1

    .line 239
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/chimera/GPUMemoryReclaimer;->initAsyncThreads()V

    .line 240
    .line 241
    .line 242
    const/4 p0, 0x1

    .line 243
    sput-boolean p0, Lcom/android/server/chimera/GPUMemoryReclaimer;->FEATURE_ENABLED:Z

    .line 244
    .line 245
    const-string/jumbo p0, "init success"

    .line 246
    .line 247
    .line 248
    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    .line 250
    .line 251
    goto :goto_3

    .line 252
    :cond_6
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    .line 253
    .line 254
    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 255
    .line 256
    .line 257
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    .line 259
    .line 260
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 261
    .line 262
    .line 263
    move-result-object v2

    .line 264
    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    .line 266
    .line 267
    iput-object v0, p0, Lcom/android/server/chimera/GPUMemoryReclaimer;->mVendorPlugin:Lcom/android/server/chimera/GPUMemoryReclaimer$VendorPlugin;

    .line 268
    .line 269
    sput-boolean v8, Lcom/android/server/chimera/GPUMemoryReclaimer;->FEATURE_ENABLED:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 270
    .line 271
    goto :goto_3

    .line 272
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 273
    .line 274
    const-string/jumbo v2, "init failed "

    .line 275
    .line 276
    .line 277
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 278
    .line 279
    .line 280
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    .line 281
    .line 282
    .line 283
    move-result-object p0

    .line 284
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    .line 286
    .line 287
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 288
    .line 289
    .line 290
    move-result-object p0

    .line 291
    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    .line 293
    .line 294
    sput-boolean v8, Lcom/android/server/chimera/GPUMemoryReclaimer;->FEATURE_ENABLED:Z

    .line 295
    .line 296
    :goto_3
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/android/server/chimera/GPUMemoryReclaimer;
    .locals 2

    .line 1
    const-class v0, Lcom/android/server/chimera/GPUMemoryReclaimer;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/android/server/chimera/GPUMemoryReclaimer;->INSTANCE:Lcom/android/server/chimera/GPUMemoryReclaimer;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    new-instance v1, Lcom/android/server/chimera/GPUMemoryReclaimer;

    .line 9
    .line 10
    invoke-direct {v1}, Lcom/android/server/chimera/GPUMemoryReclaimer;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v1, Lcom/android/server/chimera/GPUMemoryReclaimer;->INSTANCE:Lcom/android/server/chimera/GPUMemoryReclaimer;

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catchall_0
    move-exception v1

    .line 17
    goto :goto_1

    .line 18
    :cond_0
    :goto_0
    sget-object v1, Lcom/android/server/chimera/GPUMemoryReclaimer;->INSTANCE:Lcom/android/server/chimera/GPUMemoryReclaimer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    .line 20
    monitor-exit v0

    .line 21
    return-object v1

    .line 22
    :goto_1
    monitor-exit v0

    .line 23
    throw v1
.end method

.method public static final getMaxReclaimSize()J
    .locals 4

    .line 1
    sget-wide v0, Lcom/android/server/chimera/GPUMemoryReclaimer;->__MaxReclaimSize:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v0, v0, v2

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const-string/jumbo v0, "ro.sys.kernelmemory.gmr.max_size"

    .line 10
    .line 11
    .line 12
    const-wide/32 v1, 0x20000000

    .line 13
    .line 14
    .line 15
    invoke-static {v0, v1, v2}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    .line 16
    .line 17
    .line 18
    move-result-wide v0

    .line 19
    sput-wide v0, Lcom/android/server/chimera/GPUMemoryReclaimer;->__MaxReclaimSize:J

    .line 20
    .line 21
    :cond_0
    sget-wide v0, Lcom/android/server/chimera/GPUMemoryReclaimer;->__MaxReclaimSize:J

    .line 22
    .line 23
    return-wide v0
.end method

.method public static final isAsync()Ljava/lang/Boolean;
    .locals 2

    .line 1
    sget-object v0, Lcom/android/server/chimera/GPUMemoryReclaimer;->__Async:Ljava/lang/Boolean;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string/jumbo v0, "ro.sys.kernelmemory.gmr.async"

    .line 6
    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    sput-object v0, Lcom/android/server/chimera/GPUMemoryReclaimer;->__Async:Ljava/lang/Boolean;

    .line 18
    .line 19
    :cond_0
    sget-object v0, Lcom/android/server/chimera/GPUMemoryReclaimer;->__Async:Ljava/lang/Boolean;

    .line 20
    .line 21
    return-object v0
.end method

.method public static final isEnabledSwapIn()Ljava/lang/Boolean;
    .locals 2

    .line 1
    sget-object v0, Lcom/android/server/chimera/GPUMemoryReclaimer;->__EnabledSwapIn:Ljava/lang/Boolean;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string/jumbo v0, "ro.sys.kernelmemory.gmr.enabled_swap_in"

    .line 6
    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    sput-object v0, Lcom/android/server/chimera/GPUMemoryReclaimer;->__EnabledSwapIn:Ljava/lang/Boolean;

    .line 18
    .line 19
    :cond_0
    sget-object v0, Lcom/android/server/chimera/GPUMemoryReclaimer;->__EnabledSwapIn:Ljava/lang/Boolean;

    .line 20
    .line 21
    return-object v0
.end method

.method public static final isEnabledSwapOut()Ljava/lang/Boolean;
    .locals 2

    .line 1
    sget-object v0, Lcom/android/server/chimera/GPUMemoryReclaimer;->__EnabledSwapOut:Ljava/lang/Boolean;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string/jumbo v0, "ro.sys.kernelmemory.gmr.enabled_swap_out"

    .line 6
    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    sput-object v0, Lcom/android/server/chimera/GPUMemoryReclaimer;->__EnabledSwapOut:Ljava/lang/Boolean;

    .line 18
    .line 19
    :cond_0
    sget-object v0, Lcom/android/server/chimera/GPUMemoryReclaimer;->__EnabledSwapOut:Ljava/lang/Boolean;

    .line 20
    .line 21
    return-object v0
.end method


# virtual methods
.method public final dumpInfo(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6

    .line 1
    iget-object p0, p0, Lcom/android/server/chimera/GPUMemoryReclaimer;->mDump:Lcom/android/server/chimera/GPUMemoryReclaimer$Dump;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    const-string v0, "  async: "

    .line 7
    .line 8
    const-string v1, "  enabled_swap_in: "

    .line 9
    .line 10
    const-string v2, "  enabled_swap_out: "

    .line 11
    .line 12
    const-string v3, "  vendor_plugin: "

    .line 13
    .line 14
    const-string v4, "  feature enable: "

    .line 15
    .line 16
    :try_start_0
    array-length p2, p2

    .line 17
    const/4 v5, 0x1

    .line 18
    if-gt p2, v5, :cond_1

    .line 19
    .line 20
    const-string p2, "== GMR dump start =="

    .line 21
    .line 22
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    const-string p2, "Configurations"

    .line 26
    .line 27
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    new-instance p2, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    invoke-direct {p2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    sget-boolean v4, Lcom/android/server/chimera/GPUMemoryReclaimer;->FEATURE_ENABLED:Z

    .line 36
    .line 37
    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p2

    .line 44
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    new-instance p2, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    invoke-direct {p2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    sget-object v3, Lcom/android/server/chimera/GPUMemoryReclaimer;->__VendorPluginName:Ljava/lang/String;

    .line 53
    .line 54
    if-nez v3, :cond_0

    .line 55
    .line 56
    const-string/jumbo v3, "ro.sys.kernelmemory.gmr.vendor_plugin"

    .line 57
    .line 58
    .line 59
    const-string v4, ""

    .line 60
    .line 61
    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    sput-object v3, Lcom/android/server/chimera/GPUMemoryReclaimer;->__VendorPluginName:Ljava/lang/String;

    .line 66
    .line 67
    :cond_0
    sget-object v3, Lcom/android/server/chimera/GPUMemoryReclaimer;->__VendorPluginName:Ljava/lang/String;

    .line 68
    .line 69
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p2

    .line 76
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    new-instance p2, Ljava/lang/StringBuilder;

    .line 80
    .line 81
    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    invoke-static {}, Lcom/android/server/chimera/GPUMemoryReclaimer;->isEnabledSwapOut()Ljava/lang/Boolean;

    .line 85
    .line 86
    .line 87
    move-result-object v2

    .line 88
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object p2

    .line 95
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    new-instance p2, Ljava/lang/StringBuilder;

    .line 99
    .line 100
    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    invoke-static {}, Lcom/android/server/chimera/GPUMemoryReclaimer;->isEnabledSwapIn()Ljava/lang/Boolean;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object p2

    .line 114
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    new-instance p2, Ljava/lang/StringBuilder;

    .line 118
    .line 119
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    invoke-static {}, Lcom/android/server/chimera/GPUMemoryReclaimer;->isAsync()Ljava/lang/Boolean;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object p2

    .line 133
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {p0, p1}, Lcom/android/server/chimera/GPUMemoryReclaimer$Dump;->meminfo(Ljava/io/PrintWriter;)V

    .line 137
    .line 138
    .line 139
    const-string p0, "== GMR dump end =="

    .line 140
    .line 141
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    goto :goto_1

    .line 145
    :catch_0
    move-exception p0

    .line 146
    goto :goto_0

    .line 147
    :cond_1
    const-string/jumbo p0, "gmr: command failed in ship build"

    .line 148
    .line 149
    .line 150
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    .line 152
    .line 153
    goto :goto_1

    .line 154
    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    .line 155
    .line 156
    const-string/jumbo v0, "gmr: exception "

    .line 157
    .line 158
    .line 159
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v0

    .line 166
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object p2

    .line 173
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 177
    .line 178
    .line 179
    :goto_1
    return-void
.end method

.method public final initAsyncThreads()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/android/server/chimera/GPUMemoryReclaimer;->isAsync()Ljava/lang/Boolean;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/android/server/chimera/GPUMemoryReclaimer;->mSwapInThread:Lcom/android/server/ServiceThread;

    .line 13
    .line 14
    const/4 v1, 0x1

    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    new-instance v0, Lcom/android/server/ServiceThread;

    .line 18
    .line 19
    const-string v2, "GMRSwapInThread"

    .line 20
    .line 21
    const/4 v3, 0x0

    .line 22
    invoke-direct {v0, v3, v2, v1}, Lcom/android/server/ServiceThread;-><init>(ILjava/lang/String;Z)V

    .line 23
    .line 24
    .line 25
    iput-object v0, p0, Lcom/android/server/chimera/GPUMemoryReclaimer;->mSwapInThread:Lcom/android/server/ServiceThread;

    .line 26
    .line 27
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 28
    .line 29
    .line 30
    new-instance v0, Lcom/android/server/chimera/GPUMemoryReclaimer$SwapInHandler;

    .line 31
    .line 32
    const/4 v2, 0x0

    .line 33
    invoke-direct {v0, p0, p0, v2}, Lcom/android/server/chimera/GPUMemoryReclaimer$SwapInHandler;-><init>(Lcom/android/server/chimera/GPUMemoryReclaimer;Lcom/android/server/chimera/GPUMemoryReclaimer;I)V

    .line 34
    .line 35
    .line 36
    iput-object v0, p0, Lcom/android/server/chimera/GPUMemoryReclaimer;->mSwapInHandler:Lcom/android/server/chimera/GPUMemoryReclaimer$SwapInHandler;

    .line 37
    .line 38
    iget-object v0, p0, Lcom/android/server/chimera/GPUMemoryReclaimer;->mSwapInThread:Lcom/android/server/ServiceThread;

    .line 39
    .line 40
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getThreadId()I

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    invoke-static {v0, v3}, Landroid/os/Process;->setThreadGroupAndCpuset(II)V

    .line 45
    .line 46
    .line 47
    :cond_1
    iget-object v0, p0, Lcom/android/server/chimera/GPUMemoryReclaimer;->mSwapOutThread:Lcom/android/server/ServiceThread;

    .line 48
    .line 49
    if-nez v0, :cond_2

    .line 50
    .line 51
    new-instance v0, Lcom/android/server/ServiceThread;

    .line 52
    .line 53
    const-string v2, "GMRSwapOutThread"

    .line 54
    .line 55
    const/4 v3, 0x2

    .line 56
    invoke-direct {v0, v3, v2, v1}, Lcom/android/server/ServiceThread;-><init>(ILjava/lang/String;Z)V

    .line 57
    .line 58
    .line 59
    iput-object v0, p0, Lcom/android/server/chimera/GPUMemoryReclaimer;->mSwapOutThread:Lcom/android/server/ServiceThread;

    .line 60
    .line 61
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 62
    .line 63
    .line 64
    new-instance v0, Lcom/android/server/chimera/GPUMemoryReclaimer$SwapInHandler;

    .line 65
    .line 66
    const/4 v1, 0x1

    .line 67
    invoke-direct {v0, p0, p0, v1}, Lcom/android/server/chimera/GPUMemoryReclaimer$SwapInHandler;-><init>(Lcom/android/server/chimera/GPUMemoryReclaimer;Lcom/android/server/chimera/GPUMemoryReclaimer;I)V

    .line 68
    .line 69
    .line 70
    iput-object v0, p0, Lcom/android/server/chimera/GPUMemoryReclaimer;->mSwapOutHandler:Lcom/android/server/chimera/GPUMemoryReclaimer$SwapInHandler;

    .line 71
    .line 72
    iget-object p0, p0, Lcom/android/server/chimera/GPUMemoryReclaimer;->mSwapOutThread:Lcom/android/server/ServiceThread;

    .line 73
    .line 74
    invoke-virtual {p0}, Landroid/os/HandlerThread;->getThreadId()I

    .line 75
    .line 76
    .line 77
    move-result p0

    .line 78
    invoke-static {p0, v3}, Landroid/os/Process;->setThreadGroupAndCpuset(II)V

    .line 79
    .line 80
    .line 81
    :cond_2
    return-void
.end method
