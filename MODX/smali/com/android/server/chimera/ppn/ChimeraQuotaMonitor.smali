.class public final Lcom/android/server/chimera/ppn/ChimeraQuotaMonitor;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final INSTANCE:Lcom/android/server/chimera/ppn/ChimeraQuotaMonitor;


# instance fields
.field public mLastNativeDRAMUsed:J

.field public mQuota:J

.field public mSystemRepository:Lcom/android/server/chimera/SystemRepository;

.field public mTaskExecuteCount:I

.field public final mTaskHistory:Lcom/android/internal/util/RingBuffer;

.field public mTimer:Ljava/util/Timer;


# direct methods
.method public static -$$Nest$maddTaskHistory(Lcom/android/server/chimera/ppn/ChimeraQuotaMonitor;Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 6
    const-string/jumbo v1, "yyyy-MM-dd HH:mm:ss"

    .line 9
    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 15
    move-result-wide v1

    .line 16
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    .line 23
    move-result-object v0

    .line 24
    iget-object p0, p0, Lcom/android/server/chimera/ppn/ChimeraQuotaMonitor;->mTaskHistory:Lcom/android/internal/util/RingBuffer;

    .line 26
    new-instance v1, Ljava/lang/StringBuilder;

    .line 28
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 31
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    const-string v0, ": "

    .line 36
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    move-result-object p1

    .line 46
    invoke-virtual {p0, p1}, Lcom/android/internal/util/RingBuffer;->append(Ljava/lang/Object;)V

    .line 49
    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/server/chimera/ppn/ChimeraQuotaMonitor;

    .line 3
    invoke-direct {v0}, Lcom/android/server/chimera/ppn/ChimeraQuotaMonitor;-><init>()V

    .line 6
    sput-object v0, Lcom/android/server/chimera/ppn/ChimeraQuotaMonitor;->INSTANCE:Lcom/android/server/chimera/ppn/ChimeraQuotaMonitor;

    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Lcom/android/internal/util/RingBuffer;

    .line 6
    const-class v1, Ljava/lang/String;

    .line 8
    const/16 v2, 0xa

    .line 10
    invoke-direct {v0, v1, v2}, Lcom/android/internal/util/RingBuffer;-><init>(Ljava/lang/Class;I)V

    .line 13
    iput-object v0, p0, Lcom/android/server/chimera/ppn/ChimeraQuotaMonitor;->mTaskHistory:Lcom/android/internal/util/RingBuffer;

    .line 15
    return-void
.end method
