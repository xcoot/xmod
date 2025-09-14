.class public final Lcom/android/server/utils/TimingsTraceAndSlog;
.super Landroid/util/TimingsTraceLog;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mTag:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    const-string v0, "SystemServerTiming"

    invoke-direct {p0, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;)V
    .locals 0

    .line 3
    invoke-direct {p0, p3, p1, p2}, Landroid/util/TimingsTraceLog;-><init>(Ljava/lang/String;J)V

    .line 4
    iput-object p3, p0, Lcom/android/server/utils/TimingsTraceAndSlog;->mTag:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/utils/TimingsTraceAndSlog;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1}, Landroid/util/TimingsTraceLog;-><init>(Landroid/util/TimingsTraceLog;)V

    .line 6
    iget-object p1, p1, Lcom/android/server/utils/TimingsTraceAndSlog;->mTag:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/server/utils/TimingsTraceAndSlog;->mTag:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    const-wide/32 v0, 0x80000

    .line 2
    invoke-direct {p0, v0, v1, p1}, Lcom/android/server/utils/TimingsTraceAndSlog;-><init>(JLjava/lang/String;)V

    return-void
.end method

.method public static newAsyncLog()Lcom/android/server/utils/TimingsTraceAndSlog;
    .locals 4

    .line 1
    new-instance v0, Lcom/android/server/utils/TimingsTraceAndSlog;

    .line 2
    .line 3
    const-string v1, "SystemServerTimingAsync"

    .line 4
    .line 5
    const-wide/32 v2, 0x80000

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v2, v3, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;-><init>(JLjava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "TimingsTraceAndSlog["

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/server/utils/TimingsTraceAndSlog;->mTag:Ljava/lang/String;

    .line 9
    .line 10
    const-string v1, "]"

    .line 11
    .line 12
    invoke-static {v0, p0, v1}, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    return-object p0
.end method

.method public final traceBegin(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/utils/TimingsTraceAndSlog;->mTag:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Landroid/util/TimingsTraceLog;->traceBegin(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method
