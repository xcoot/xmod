.class public final Lcom/android/server/chimera/GPUMemoryReclaimer$SGPUPlugin;
.super Lcom/android/server/chimera/GPUMemoryReclaimer$VendorPlugin;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final mSkiplistPackages:[Ljava/lang/String;


# instance fields
.field public final TAG:Ljava/lang/String;

.field public final synthetic this$0:Lcom/android/server/chimera/GPUMemoryReclaimer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string/jumbo v0, "com.sec.android.gallery3d"

    .line 4
    filled-new-array {v0}, [Ljava/lang/String;

    .line 7
    move-result-object v0

    .line 8
    sput-object v0, Lcom/android/server/chimera/GPUMemoryReclaimer$SGPUPlugin;->mSkiplistPackages:[Ljava/lang/String;

    .line 10
    return-void
.end method

.method public constructor <init>(Lcom/android/server/chimera/GPUMemoryReclaimer;Lcom/android/server/chimera/GPUMemoryReclaimer;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/server/chimera/GPUMemoryReclaimer$VendorPlugin;-><init>()V

    .line 4
    const-class p1, Lcom/android/server/chimera/GPUMemoryReclaimer$SGPUPlugin;

    .line 6
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 9
    move-result-object p1

    .line 10
    const-string v0, "GMR "

    .line 12
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 15
    move-result-object p1

    .line 16
    iput-object p1, p0, Lcom/android/server/chimera/GPUMemoryReclaimer$SGPUPlugin;->TAG:Ljava/lang/String;

    .line 18
    iput-object p2, p0, Lcom/android/server/chimera/GPUMemoryReclaimer$VendorPlugin;->self:Lcom/android/server/chimera/GPUMemoryReclaimer;

    .line 20
    const/4 p1, 0x1

    .line 21
    iput-boolean p1, p0, Lcom/android/server/chimera/GPUMemoryReclaimer$VendorPlugin;->mIsInitialized:Z

    .line 23
    return-void
.end method


# virtual methods
.method public final calculateReclaimed([J)J
    .locals 2

    .line 1
    const/4 p0, 0x2

    .line 2
    aget-wide v0, p1, p0

    .line 4
    const/4 p0, 0x3

    .line 5
    aget-wide p0, p1, p0

    .line 7
    sub-long/2addr v0, p0

    .line 8
    return-wide v0
.end method

.method public final calculateResident([J)J
    .locals 0

    .line 1
    const/4 p0, 0x3

    .line 2
    aget-wide p0, p1, p0

    .line 4
    return-wide p0
.end method

.method public final getMeminfoRaw(I)[J
    .locals 10

    .line 1
    const/4 v0, 0x3

    .line 2
    const/4 v1, 0x1

    .line 3
    const-string v2, "/sys/kernel/gpu/proc/"

    .line 5
    const-string v3, "/summary"

    .line 7
    invoke-static {p1, v2, v3}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 10
    move-result-object p1

    .line 11
    iget-object p0, p0, Lcom/android/server/chimera/GPUMemoryReclaimer$VendorPlugin;->self:Lcom/android/server/chimera/GPUMemoryReclaimer;

    .line 13
    iget-object p0, p0, Lcom/android/server/chimera/GPUMemoryReclaimer;->mUtils:Lcom/android/server/chimera/GPUMemoryReclaimer$Utils;

    .line 15
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    invoke-static {p1}, Lcom/android/server/chimera/GPUMemoryReclaimer$Utils;->readFileToString(Ljava/lang/String;)Ljava/lang/String;

    .line 21
    move-result-object p0

    .line 22
    const-string p1, "\\s+"

    .line 24
    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 27
    move-result-object p0

    .line 28
    aget-object p1, p0, v1

    .line 30
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 33
    move-result-wide v2

    .line 34
    aget-object p1, p0, v0

    .line 36
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 39
    move-result-wide v4

    .line 40
    const/4 p1, 0x5

    .line 41
    aget-object p1, p0, p1

    .line 43
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 46
    move-result-wide v6

    .line 47
    const/4 p1, 0x7

    .line 48
    aget-object p0, p0, p1

    .line 50
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 53
    move-result-wide p0

    .line 54
    const/4 v8, 0x4

    .line 55
    new-array v8, v8, [J

    .line 57
    const/4 v9, 0x0

    .line 58
    aput-wide v2, v8, v9

    .line 60
    aput-wide v4, v8, v1

    .line 62
    const/4 v1, 0x2

    .line 63
    aput-wide v6, v8, v1

    .line 65
    aput-wide p0, v8, v0

    .line 67
    return-object v8
.end method

.method public final getReclaimableTasks()Ljava/util/ArrayList;
    .locals 5

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    :try_start_0
    new-instance v1, Ljava/io/File;

    .line 8
    const-string v2, "/sys/kernel/gpu/proc"

    .line 10
    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 13
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 16
    move-result-object v1

    .line 17
    if-eqz v1, :cond_1

    .line 19
    const/4 v2, 0x0

    .line 20
    :goto_0
    array-length v3, v1

    .line 21
    if-ge v2, v3, :cond_1

    .line 23
    aget-object v3, v1, v2

    .line 25
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    .line 28
    move-result v4

    .line 29
    if-eqz v4, :cond_0

    .line 31
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 34
    move-result-object v3

    .line 35
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 38
    move-result v3

    .line 39
    new-instance v4, Lcom/android/server/chimera/GPUMemoryReclaimer$ReclaimableTask;

    .line 41
    invoke-direct {v4, v3, p0}, Lcom/android/server/chimera/GPUMemoryReclaimer$ReclaimableTask;-><init>(ILcom/android/server/chimera/GPUMemoryReclaimer$VendorPlugin;)V

    .line 44
    iget-boolean v3, v4, Lcom/android/server/chimera/GPUMemoryReclaimer$ReclaimableTask;->mIsSuccess:Z

    .line 46
    if-eqz v3, :cond_0

    .line 48
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    goto :goto_1

    .line 52
    :catch_0
    move-exception v1

    .line 53
    goto :goto_2

    .line 54
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 56
    goto :goto_0

    .line 57
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    .line 59
    const-string v3, "Cannot access /sys/kernel/gpu/proc : "

    .line 61
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 64
    invoke-virtual {v1}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    .line 67
    move-result-object v1

    .line 68
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    move-result-object v1

    .line 75
    iget-object p0, p0, Lcom/android/server/chimera/GPUMemoryReclaimer$SGPUPlugin;->TAG:Ljava/lang/String;

    .line 77
    invoke-static {p0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    :cond_1
    return-object v0
.end method

.method public final swapInImpl(I)I
    .locals 4

    .line 1
    const-string v0, ""

    .line 3
    const/4 v1, -0x1

    .line 4
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 6
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 12
    const-string p1, " 0"

    .line 14
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    move-result-object p1

    .line 21
    iget-object v0, p0, Lcom/android/server/chimera/GPUMemoryReclaimer$VendorPlugin;->self:Lcom/android/server/chimera/GPUMemoryReclaimer;

    .line 23
    iget-object v0, v0, Lcom/android/server/chimera/GPUMemoryReclaimer;->mUtils:Lcom/android/server/chimera/GPUMemoryReclaimer$Utils;

    .line 25
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    new-instance v0, Ljava/io/FileWriter;

    .line 30
    const-string v2, "/sys/kernel/gpu/sgpu_swap_ctrl"

    .line 32
    invoke-direct {v0, v2}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    .line 35
    new-instance v2, Ljava/io/BufferedWriter;

    .line 37
    const/16 v3, 0x800

    .line 39
    invoke-direct {v2, v0, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V

    .line 42
    invoke-virtual {v2, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 45
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->flush()V

    .line 48
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V

    .line 51
    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    const/4 p0, 0x0

    .line 55
    return p0

    .line 56
    :catch_0
    move-exception p1

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    .line 59
    const-string v2, "Failed to swap-in: "

    .line 61
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    .line 67
    move-result-object p1

    .line 68
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    move-result-object p1

    .line 75
    iget-object p0, p0, Lcom/android/server/chimera/GPUMemoryReclaimer$SGPUPlugin;->TAG:Ljava/lang/String;

    .line 77
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    :catch_1
    return v1
.end method

.method public final swapOutImpl(ILjava/lang/String;)I
    .locals 9

    .line 1
    const-string v0, ""

    .line 3
    const-string v1, "/sys/kernel/gpu/proc/"

    .line 5
    const-string v2, "Skip GMR BG for Skiplist package ("

    .line 7
    iget-object v3, p0, Lcom/android/server/chimera/GPUMemoryReclaimer$SGPUPlugin;->TAG:Ljava/lang/String;

    .line 9
    const/4 v4, -0x1

    .line 10
    if-eqz p2, :cond_0

    .line 12
    :try_start_0
    sget-object v5, Lcom/android/server/chimera/GPUMemoryReclaimer$SGPUPlugin;->mSkiplistPackages:[Ljava/lang/String;

    .line 14
    invoke-static {v5, p2}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 17
    move-result v5

    .line 18
    if-eqz v5, :cond_0

    .line 20
    new-instance p0, Ljava/lang/StringBuilder;

    .line 22
    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 25
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    const-string p1, ")"

    .line 30
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    move-result-object p0

    .line 37
    invoke-static {v3, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    return v4

    .line 41
    :catch_0
    move-exception p0

    .line 42
    goto/16 :goto_1

    .line 44
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    .line 46
    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 52
    const-string v1, "/swap"

    .line 54
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    move-result-object p2

    .line 61
    iget-object v1, p0, Lcom/android/server/chimera/GPUMemoryReclaimer$VendorPlugin;->self:Lcom/android/server/chimera/GPUMemoryReclaimer;

    .line 63
    iget-object v1, v1, Lcom/android/server/chimera/GPUMemoryReclaimer;->mUtils:Lcom/android/server/chimera/GPUMemoryReclaimer$Utils;

    .line 65
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 68
    invoke-static {p2}, Lcom/android/server/chimera/GPUMemoryReclaimer$Utils;->readFileToString(Ljava/lang/String;)Ljava/lang/String;

    .line 71
    move-result-object p2

    .line 72
    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 75
    move-result-wide v1

    .line 76
    iget-object p2, p0, Lcom/android/server/chimera/GPUMemoryReclaimer$VendorPlugin;->self:Lcom/android/server/chimera/GPUMemoryReclaimer;

    .line 78
    iget-object p2, p2, Lcom/android/server/chimera/GPUMemoryReclaimer;->mUtils:Lcom/android/server/chimera/GPUMemoryReclaimer$Utils;

    .line 80
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 83
    new-instance p2, Lcom/android/internal/util/MemInfoReader;

    .line 85
    invoke-direct {p2}, Lcom/android/internal/util/MemInfoReader;-><init>()V

    .line 88
    invoke-virtual {p2}, Lcom/android/internal/util/MemInfoReader;->readMemInfo()V

    .line 91
    invoke-virtual {p2}, Lcom/android/internal/util/MemInfoReader;->getSwapFreeSizeKb()J

    .line 94
    move-result-wide v5

    .line 95
    const-wide/16 v7, 0x400

    .line 97
    mul-long/2addr v5, v7

    .line 98
    invoke-static {}, Lcom/android/server/chimera/GPUMemoryReclaimer;->getMaxReclaimSize()J

    .line 101
    move-result-wide v7

    .line 102
    cmp-long p2, v1, v7

    .line 104
    if-lez p2, :cond_1

    .line 106
    move-wide v1, v7

    .line 107
    :cond_1
    cmp-long p2, v1, v5

    .line 109
    if-lez p2, :cond_2

    .line 111
    goto :goto_0

    .line 112
    :cond_2
    move-wide v5, v1

    .line 113
    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    .line 115
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 118
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 121
    const-string p1, " "

    .line 123
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    invoke-virtual {p2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 129
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 132
    move-result-object p1

    .line 133
    iget-object p0, p0, Lcom/android/server/chimera/GPUMemoryReclaimer$VendorPlugin;->self:Lcom/android/server/chimera/GPUMemoryReclaimer;

    .line 135
    iget-object p0, p0, Lcom/android/server/chimera/GPUMemoryReclaimer;->mUtils:Lcom/android/server/chimera/GPUMemoryReclaimer$Utils;

    .line 137
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 140
    new-instance p0, Ljava/io/FileWriter;

    .line 142
    const-string p2, "/sys/kernel/gpu/sgpu_swap_ctrl"

    .line 144
    invoke-direct {p0, p2}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    .line 147
    new-instance p2, Ljava/io/BufferedWriter;

    .line 149
    const/16 v0, 0x800

    .line 151
    invoke-direct {p2, p0, v0}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V

    .line 154
    invoke-virtual {p2, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 157
    invoke-virtual {p2}, Ljava/io/BufferedWriter;->flush()V

    .line 160
    invoke-virtual {p2}, Ljava/io/BufferedWriter;->close()V

    .line 163
    invoke-virtual {p0}, Ljava/io/FileWriter;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    const/4 p0, 0x0

    .line 167
    return p0

    .line 168
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 170
    const-string p2, "Failed to swap-out: "

    .line 172
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 175
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    .line 178
    move-result-object p0

    .line 179
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 185
    move-result-object p0

    .line 186
    invoke-static {v3, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    :catch_1
    return v4
.end method
