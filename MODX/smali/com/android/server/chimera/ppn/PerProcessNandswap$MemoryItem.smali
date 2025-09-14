.class public final Lcom/android/server/chimera/ppn/PerProcessNandswap$MemoryItem;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final label:Ljava/lang/String;

.field public final lastNandswapTimeDiff:J

.field public final ppnState:I

.field public subitems:Ljava/util/ArrayList;

.field public final swap:J

.field public final writeback:J


# direct methods
.method public constructor <init>(IJJJLjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p8, p0, Lcom/android/server/chimera/ppn/PerProcessNandswap$MemoryItem;->label:Ljava/lang/String;

    .line 6
    iput-wide p2, p0, Lcom/android/server/chimera/ppn/PerProcessNandswap$MemoryItem;->swap:J

    .line 8
    iput-wide p4, p0, Lcom/android/server/chimera/ppn/PerProcessNandswap$MemoryItem;->writeback:J

    .line 10
    iput p1, p0, Lcom/android/server/chimera/ppn/PerProcessNandswap$MemoryItem;->ppnState:I

    .line 12
    iput-wide p6, p0, Lcom/android/server/chimera/ppn/PerProcessNandswap$MemoryItem;->lastNandswapTimeDiff:J

    .line 14
    return-void
.end method
