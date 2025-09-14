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

    .line 4
    const/4 v1, 0x0

    .line 5
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 8
    move-result v0

    .line 9
    sput-boolean v0, Lcom/android/server/chimera/GPUMemoryReclaimer;->FEATURE_ENABLED:Z

    .line 11
    const/4 v0, 0x0

    .line 12
    sput-object v0, Lcom/android/server/chimera/GPUMemoryReclaimer;->__VendorPluginName:Ljava/lang/String;

    .line 14
    sput-object v0, Lcom/android/server/chimera/GPUMemoryReclaimer;->__EnabledSwapOut:Ljava/lang/Boolean;

    .line 16
    sput-object v0, Lcom/android/server/chimera/GPUMemoryReclaimer;->__EnabledSwapIn:Ljava/lang/Boolean;

    .line 18
    const-wide/16 v1, 0x0

    .line 20
    sput-wide v1, Lcom/android/server/chimera/GPUMemoryReclaimer;->__MaxReclaimSize:J

    .line 22
    sput-object v0, Lcom/android/server/chimera/GPUMemoryReclaimer;->__Async:Ljava/lang/Boolean;

    .line 24
    sput-object v0, Lcom/android/server/chimera/GPUMemoryReclaimer;->INSTANCE:Lcom/android/server/chimera/GPUMemoryReclaimer;

    .line 26
    return-void
.end method

.method public constructor <init>()V
    .locals 11

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/android/server/chimera/GPUMemoryReclaimer;->mVendorPlugin:Lcom/android/server/chimera/GPUMemoryReclaimer$VendorPlugin;

    .line 7
    iput-object v0, p0, Lcom/android/server/chimera/GPUMemoryReclaimer;->mSwapInThread:Lcom/android/server/ServiceThread;

    .line 9
    iput-object v0, p0, Lcom/android/server/chimera/GPUMemoryReclaimer;->mSwapOutThread:Lcom/android/server/ServiceThread;

    .line 11
    iput-object v0, p0, Lcom/android/server/chimera/GPUMemoryReclaimer;->mSwapInHandler:Lcom/android/server/chimera/GPUMemoryReclaimer$SwapInHandler;

    .line 13
    iput-object v0, p0, Lcom/android/server/chimera/GPUMemoryReclaimer;->mSwapOutHandler:Lcom/android/server/chimera/GPUMemoryReclaimer$SwapInHandler;

    .line 15
    new-instance v1, Lcom/android/server/chimera/GPUMemoryReclaimer$Dump;

    .line 17
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p0, v1, Lcom/android/server/chimera/GPUMemoryReclaimer$Dump;->self:Lcom/android/server/chimera/GPUMemoryReclaimer;

    .line 22
    iput-object v1, p0, Lcom/android/server/chimera/GPUMemoryReclaimer;->mDump:Lcom/android/server/chimera/GPUMemoryReclaimer$Dump;

    .line 24
    new-instance v1, Lcom/android/server/chimera/GPUMemoryReclaimer$Utils;

    .line 26
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object v1, p0, Lcom/android/server/chimera/GPUMemoryReclaimer;->mUtils:Lcom/android/server/chimera/GPUMemoryReclaimer$Utils;

    .line 31
    const-string v1, "GMR"

    .line 33
    const-string/jumbo v2, "vendor_plugin is not defined or invalid: "

    .line 36
    const-string v3, "  async: "

    .line 38
    const-string v4, "  enabled_swap_in: "

    .line 40
    const-string v5, "  enabled_swap_out: "

    .line 42
    const-string v6, "  vendor_plugin: "

    .line 44
    const-string v7, "  feature enable: "

    .line 46
    const/4 v8, 0x0

    .line 47
    :try_start_0
    const-string/jumbo v9, "init start"

    .line 50
    invoke-static {v1, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    sget-boolean v9, Lcom/android/server/chimera/GPUMemoryReclaimer;->FEATURE_ENABLED:Z

    .line 55
    if-nez v9, :cond_0

    .line 57
    const-string/jumbo p0, "feature disabled"

    .line 60
    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    goto/16 :goto_3

    .line 65
    :catch_0
    move-exception p0

    .line 66
    goto/16 :goto_2

    .line 68
    :cond_0
    const-string/jumbo v9, "feature enabled"

    .line 71
    invoke-static {v1, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    const-string v9, "Configurations"

    .line 76
    invoke-static {v1, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    new-instance v9, Ljava/lang/StringBuilder;

    .line 81
    invoke-direct {v9, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 84
    sget-boolean v7, Lcom/android/server/chimera/GPUMemoryReclaimer;->FEATURE_ENABLED:Z

    .line 86
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 89
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 92
    move-result-object v7

    .line 93
    invoke-static {v1, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    new-instance v7, Ljava/lang/StringBuilder;

    .line 98
    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 101
    sget-object v6, Lcom/android/server/chimera/GPUMemoryReclaimer;->__VendorPluginName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    const-string v9, ""

    .line 105
    const-string/jumbo v10, "ro.sys.kernelmemory.gmr.vendor_plugin"

    .line 108
    if-nez v6, :cond_1

    .line 110
    :try_start_1
    invoke-static {v10, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 113
    move-result-object v6

    .line 114
    sput-object v6, Lcom/android/server/chimera/GPUMemoryReclaimer;->__VendorPluginName:Ljava/lang/String;

    .line 116
    :cond_1
    sget-object v6, Lcom/android/server/chimera/GPUMemoryReclaimer;->__VendorPluginName:Ljava/lang/String;

    .line 118
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 124
    move-result-object v6

    .line 125
    invoke-static {v1, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    new-instance v6, Ljava/lang/StringBuilder;

    .line 130
    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 133
    invoke-static {}, Lcom/android/server/chimera/GPUMemoryReclaimer;->isEnabledSwapOut()Ljava/lang/Boolean;

    .line 136
    move-result-object v5

    .line 137
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 140
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 143
    move-result-object v5

    .line 144
    invoke-static {v1, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    new-instance v5, Ljava/lang/StringBuilder;

    .line 149
    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 152
    invoke-static {}, Lcom/android/server/chimera/GPUMemoryReclaimer;->isEnabledSwapIn()Ljava/lang/Boolean;

    .line 155
    move-result-object v4

    .line 156
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 159
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 162
    move-result-object v4

    .line 163
    invoke-static {v1, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    new-instance v4, Ljava/lang/StringBuilder;

    .line 168
    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 171
    invoke-static {}, Lcom/android/server/chimera/GPUMemoryReclaimer;->isAsync()Ljava/lang/Boolean;

    .line 174
    move-result-object v3

    .line 175
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 178
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 181
    move-result-object v3

    .line 182
    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    sget-object v3, Lcom/android/server/chimera/GPUMemoryReclaimer;->__VendorPluginName:Ljava/lang/String;

    .line 187
    if-nez v3, :cond_2

    .line 189
    invoke-static {v10, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 192
    move-result-object v3

    .line 193
    sput-object v3, Lcom/android/server/chimera/GPUMemoryReclaimer;->__VendorPluginName:Ljava/lang/String;

    .line 195
    :cond_2
    sget-object v3, Lcom/android/server/chimera/GPUMemoryReclaimer;->__VendorPluginName:Ljava/lang/String;

    .line 197
    const-string/jumbo v4, "kgsl"

    .line 200
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 203
    move-result v4

    .line 204
    if-eqz v4, :cond_3

    .line 206
    new-instance v4, Lcom/android/server/chimera/GPUMemoryReclaimer$KGSLPlugin;

    .line 208
    invoke-direct {v4, p0, p0}, Lcom/android/server/chimera/GPUMemoryReclaimer$KGSLPlugin;-><init>(Lcom/android/server/chimera/GPUMemoryReclaimer;Lcom/android/server/chimera/GPUMemoryReclaimer;)V

    .line 211
    iput-object v4, p0, Lcom/android/server/chimera/GPUMemoryReclaimer;->mVendorPlugin:Lcom/android/server/chimera/GPUMemoryReclaimer$VendorPlugin;

    .line 213
    goto :goto_0

    .line 214
    :cond_3
    const-string/jumbo v4, "sgpu"

    .line 217
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 220
    move-result v4

    .line 221
    if-eqz v4, :cond_4

    .line 223
    new-instance v4, Lcom/android/server/chimera/GPUMemoryReclaimer$SGPUPlugin;

    .line 225
    invoke-direct {v4, p0, p0}, Lcom/android/server/chimera/GPUMemoryReclaimer$SGPUPlugin;-><init>(Lcom/android/server/chimera/GPUMemoryReclaimer;Lcom/android/server/chimera/GPUMemoryReclaimer;)V

    .line 228
    iput-object v4, p0, Lcom/android/server/chimera/GPUMemoryReclaimer;->mVendorPlugin:Lcom/android/server/chimera/GPUMemoryReclaimer$VendorPlugin;

    .line 230
    :cond_4
    :goto_0
    iget-object v4, p0, Lcom/android/server/chimera/GPUMemoryReclaimer;->mVendorPlugin:Lcom/android/server/chimera/GPUMemoryReclaimer$VendorPlugin;

    .line 232
    if-eqz v4, :cond_6

    .line 234
    iget-boolean v4, v4, Lcom/android/server/chimera/GPUMemoryReclaimer$VendorPlugin;->mIsInitialized:Z

    .line 236
    if-nez v4, :cond_5

    .line 238
    goto :goto_1

    .line 239
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/chimera/GPUMemoryReclaimer;->initAsyncThreads()V

    .line 242
    const/4 p0, 0x1

    .line 243
    sput-boolean p0, Lcom/android/server/chimera/GPUMemoryReclaimer;->FEATURE_ENABLED:Z

    .line 245
    const-string/jumbo p0, "init success"

    .line 248
    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    goto :goto_3

    .line 252
    :cond_6
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    .line 254
    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 257
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 263
    move-result-object v2

    .line 264
    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    iput-object v0, p0, Lcom/android/server/chimera/GPUMemoryReclaimer;->mVendorPlugin:Lcom/android/server/chimera/GPUMemoryReclaimer$VendorPlugin;

    .line 269
    sput-boolean v8, Lcom/android/server/chimera/GPUMemoryReclaimer;->FEATURE_ENABLED:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 271
    goto :goto_3

    .line 272
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 274
    const-string/jumbo v2, "init failed "

    .line 277
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 280
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    .line 283
    move-result-object p0

    .line 284
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 290
    move-result-object p0

    .line 291
    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    sput-boolean v8, Lcom/android/server/chimera/GPUMemoryReclaimer;->FEATURE_ENABLED:Z

    .line 296
    :goto_3
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/android/server/chimera/GPUMemoryReclaimer;
    .locals 2

    .line 1
    const-class v0, Lcom/android/server/chimera/GPUMemoryReclaimer;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/android/server/chimera/GPUMemoryReclaimer;->INSTANCE:Lcom/android/server/chimera/GPUMemoryReclaimer;

    .line 6
    if-nez v1, :cond_0

    .line 8
    new-instance v1, Lcom/android/server/chimera/GPUMemoryReclaimer;

    .line 10
    invoke-direct {v1}, Lcom/android/server/chimera/GPUMemoryReclaimer;-><init>()V

    .line 13
    sput-object v1, Lcom/android/server/chimera/GPUMemoryReclaimer;->INSTANCE:Lcom/android/server/chimera/GPUMemoryReclaimer;

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

    .line 3
    const-wide/16 v2, 0x0

    .line 5
    cmp-long v0, v0, v2

    .line 7
    if-nez v0, :cond_0

    .line 9
    const-string/jumbo v0, "ro.sys.kernelmemory.gmr.max_size"

    .line 12
    const-wide/32 v1, 0x20000000

    .line 15
    invoke-static {v0, v1, v2}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    .line 18
    move-result-wide v0

    .line 19
    sput-wide v0, Lcom/android/server/chimera/GPUMemoryReclaimer;->__MaxReclaimSize:J

    .line 21
    :cond_0
    sget-wide v0, Lcom/android/server/chimera/GPUMemoryReclaimer;->__MaxReclaimSize:J

    .line 23
    return-wide v0
.end method

.method public static final isAsync()Ljava/lang/Boolean;
    .locals 2

    .line 1
    sget-object v0, Lcom/android/server/chimera/GPUMemoryReclaimer;->__Async:Ljava/lang/Boolean;

    .line 3
    if-nez v0, :cond_0

    .line 5
    const-string/jumbo v0, "ro.sys.kernelmemory.gmr.async"

    .line 8
    const/4 v1, 0x1

    .line 9
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 12
    move-result v0

    .line 13
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 16
    move-result-object v0

    .line 17
    sput-object v0, Lcom/android/server/chimera/GPUMemoryReclaimer;->__Async:Ljava/lang/Boolean;

    .line 19
    :cond_0
    sget-object v0, Lcom/android/server/chimera/GPUMemoryReclaimer;->__Async:Ljava/lang/Boolean;

    .line 21
    return-object v0
.end method

.method public static final isEnabledSwapIn()Ljava/lang/Boolean;
    .locals 2

    .line 1
    sget-object v0, Lcom/android/server/chimera/GPUMemoryReclaimer;->__EnabledSwapIn:Ljava/lang/Boolean;

    .line 3
    if-nez v0, :cond_0

    .line 5
    const-string/jumbo v0, "ro.sys.kernelmemory.gmr.enabled_swap_in"

    .line 8
    const/4 v1, 0x1

    .line 9
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 12
    move-result v0

    .line 13
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 16
    move-result-object v0

    .line 17
    sput-object v0, Lcom/android/server/chimera/GPUMemoryReclaimer;->__EnabledSwapIn:Ljava/lang/Boolean;

    .line 19
    :cond_0
    sget-object v0, Lcom/android/server/chimera/GPUMemoryReclaimer;->__EnabledSwapIn:Ljava/lang/Boolean;

    .line 21
    return-object v0
.end method

.method public static final isEnabledSwapOut()Ljava/lang/Boolean;
    .locals 2

    .line 1
    sget-object v0, Lcom/android/server/chimera/GPUMemoryReclaimer;->__EnabledSwapOut:Ljava/lang/Boolean;

    .line 3
    if-nez v0, :cond_0

    .line 5
    const-string/jumbo v0, "ro.sys.kernelmemory.gmr.enabled_swap_out"

    .line 8
    const/4 v1, 0x1

    .line 9
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 12
    move-result v0

    .line 13
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 16
    move-result-object v0

    .line 17
    sput-object v0, Lcom/android/server/chimera/GPUMemoryReclaimer;->__EnabledSwapOut:Ljava/lang/Boolean;

    .line 19
    :cond_0
    sget-object v0, Lcom/android/server/chimera/GPUMemoryReclaimer;->__EnabledSwapOut:Ljava/lang/Boolean;

    .line 21
    return-object v0
.end method


# virtual methods
.method public final dumpInfo(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6

    .line 1
    iget-object p0, p0, Lcom/android/server/chimera/GPUMemoryReclaimer;->mDump:Lcom/android/server/chimera/GPUMemoryReclaimer$Dump;

    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    const-string v0, "  async: "

    .line 8
    const-string v1, "  enabled_swap_in: "

    .line 10
    const-string v2, "  enabled_swap_out: "

    .line 12
    const-string v3, "  vendor_plugin: "

    .line 14
    const-string v4, "  feature enable: "

    .line 16
    :try_start_0
    array-length p2, p2

    .line 17
    const/4 v5, 0x1

    .line 18
    if-gt p2, v5, :cond_1

    .line 20
    const-string p2, "== GMR dump start =="

    .line 22
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 25
    const-string p2, "Configurations"

    .line 27
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 30
    new-instance p2, Ljava/lang/StringBuilder;

    .line 32
    invoke-direct {p2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 35
    sget-boolean v4, Lcom/android/server/chimera/GPUMemoryReclaimer;->FEATURE_ENABLED:Z

    .line 37
    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 40
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    move-result-object p2

    .line 44
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 47
    new-instance p2, Ljava/lang/StringBuilder;

    .line 49
    invoke-direct {p2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 52
    sget-object v3, Lcom/android/server/chimera/GPUMemoryReclaimer;->__VendorPluginName:Ljava/lang/String;

    .line 54
    if-nez v3, :cond_0

    .line 56
    const-string/jumbo v3, "ro.sys.kernelmemory.gmr.vendor_plugin"

    .line 59
    const-string v4, ""

    .line 61
    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 64
    move-result-object v3

    .line 65
    sput-object v3, Lcom/android/server/chimera/GPUMemoryReclaimer;->__VendorPluginName:Ljava/lang/String;

    .line 67
    :cond_0
    sget-object v3, Lcom/android/server/chimera/GPUMemoryReclaimer;->__VendorPluginName:Ljava/lang/String;

    .line 69
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    move-result-object p2

    .line 76
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 79
    new-instance p2, Ljava/lang/StringBuilder;

    .line 81
    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 84
    invoke-static {}, Lcom/android/server/chimera/GPUMemoryReclaimer;->isEnabledSwapOut()Ljava/lang/Boolean;

    .line 87
    move-result-object v2

    .line 88
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 91
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 94
    move-result-object p2

    .line 95
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 98
    new-instance p2, Ljava/lang/StringBuilder;

    .line 100
    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 103
    invoke-static {}, Lcom/android/server/chimera/GPUMemoryReclaimer;->isEnabledSwapIn()Ljava/lang/Boolean;

    .line 106
    move-result-object v1

    .line 107
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 110
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 113
    move-result-object p2

    .line 114
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 117
    new-instance p2, Ljava/lang/StringBuilder;

    .line 119
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 122
    invoke-static {}, Lcom/android/server/chimera/GPUMemoryReclaimer;->isAsync()Ljava/lang/Boolean;

    .line 125
    move-result-object v0

    .line 126
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 129
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 132
    move-result-object p2

    .line 133
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 136
    invoke-virtual {p0, p1}, Lcom/android/server/chimera/GPUMemoryReclaimer$Dump;->meminfo(Ljava/io/PrintWriter;)V

    .line 139
    const-string p0, "== GMR dump end =="

    .line 141
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

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

    .line 150
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 153
    goto :goto_1

    .line 154
    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    .line 156
    const-string/jumbo v0, "gmr: exception "

    .line 159
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 162
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    .line 165
    move-result-object v0

    .line 166
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 172
    move-result-object p2

    .line 173
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 176
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 179
    :goto_1
    return-void
.end method

.method public final initAsyncThreads()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/android/server/chimera/GPUMemoryReclaimer;->isAsync()Ljava/lang/Boolean;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 11
    return-void

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/android/server/chimera/GPUMemoryReclaimer;->mSwapInThread:Lcom/android/server/ServiceThread;

    .line 14
    const/4 v1, 0x1

    .line 15
    if-nez v0, :cond_1

    .line 17
    new-instance v0, Lcom/android/server/ServiceThread;

    .line 19
    const-string v2, "GMRSwapInThread"

    .line 21
    const/4 v3, 0x0

    .line 22
    invoke-direct {v0, v3, v2, v1}, Lcom/android/server/ServiceThread;-><init>(ILjava/lang/String;Z)V

    .line 25
    iput-object v0, p0, Lcom/android/server/chimera/GPUMemoryReclaimer;->mSwapInThread:Lcom/android/server/ServiceThread;

    .line 27
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 30
    new-instance v0, Lcom/android/server/chimera/GPUMemoryReclaimer$SwapInHandler;

    .line 32
    const/4 v2, 0x0

    .line 33
    invoke-direct {v0, p0, p0, v2}, Lcom/android/server/chimera/GPUMemoryReclaimer$SwapInHandler;-><init>(Lcom/android/server/chimera/GPUMemoryReclaimer;Lcom/android/server/chimera/GPUMemoryReclaimer;I)V

    .line 36
    iput-object v0, p0, Lcom/android/server/chimera/GPUMemoryReclaimer;->mSwapInHandler:Lcom/android/server/chimera/GPUMemoryReclaimer$SwapInHandler;

    .line 38
    iget-object v0, p0, Lcom/android/server/chimera/GPUMemoryReclaimer;->mSwapInThread:Lcom/android/server/ServiceThread;

    .line 40
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getThreadId()I

    .line 43
    move-result v0

    .line 44
    invoke-static {v0, v3}, Landroid/os/Process;->setThreadGroupAndCpuset(II)V

    .line 47
    :cond_1
    iget-object v0, p0, Lcom/android/server/chimera/GPUMemoryReclaimer;->mSwapOutThread:Lcom/android/server/ServiceThread;

    .line 49
    if-nez v0, :cond_2

    .line 51
    new-instance v0, Lcom/android/server/ServiceThread;

    .line 53
    const-string v2, "GMRSwapOutThread"

    .line 55
    const/4 v3, 0x2

    .line 56
    invoke-direct {v0, v3, v2, v1}, Lcom/android/server/ServiceThread;-><init>(ILjava/lang/String;Z)V

    .line 59
    iput-object v0, p0, Lcom/android/server/chimera/GPUMemoryReclaimer;->mSwapOutThread:Lcom/android/server/ServiceThread;

    .line 61
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 64
    new-instance v0, Lcom/android/server/chimera/GPUMemoryReclaimer$SwapInHandler;

    .line 66
    const/4 v1, 0x1

    .line 67
    invoke-direct {v0, p0, p0, v1}, Lcom/android/server/chimera/GPUMemoryReclaimer$SwapInHandler;-><init>(Lcom/android/server/chimera/GPUMemoryReclaimer;Lcom/android/server/chimera/GPUMemoryReclaimer;I)V

    .line 70
    iput-object v0, p0, Lcom/android/server/chimera/GPUMemoryReclaimer;->mSwapOutHandler:Lcom/android/server/chimera/GPUMemoryReclaimer$SwapInHandler;

    .line 72
    iget-object p0, p0, Lcom/android/server/chimera/GPUMemoryReclaimer;->mSwapOutThread:Lcom/android/server/ServiceThread;

    .line 74
    invoke-virtual {p0}, Landroid/os/HandlerThread;->getThreadId()I

    .line 77
    move-result p0

    .line 78
    invoke-static {p0, v3}, Landroid/os/Process;->setThreadGroupAndCpuset(II)V

    .line 81
    :cond_2
    return-void
.end method
