.class public final Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field public adj:I

.field public lastNandswapTime:J

.field public pendingNandswapTime:J

.field public final pid:I

.field public ppnState:I

.field public final ppnStateLock:Ljava/lang/Object;

.field public procState:I

.field public final processName:Ljava/lang/String;

.field public final uid:I


# direct methods
.method public constructor <init>(ILjava/lang/String;II)V
    .locals 1

    const/4 v0, -0x1

    .line 1
    invoke-direct {p0, p2, p3, p4, v0}, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;-><init>(Ljava/lang/String;III)V

    .line 2
    iput p1, p0, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;->uid:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;III)V
    .locals 2

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 4
    iput-wide v0, p0, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;->lastNandswapTime:J

    .line 5
    iput-wide v0, p0, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;->pendingNandswapTime:J

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;->ppnState:I

    .line 7
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;->ppnStateLock:Ljava/lang/Object;

    .line 8
    iput-object p1, p0, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;->processName:Ljava/lang/String;

    .line 9
    iput p2, p0, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;->pid:I

    .line 10
    iput p3, p0, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;->adj:I

    .line 11
    iput p4, p0, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;->procState:I

    return-void
.end method


# virtual methods
.method public final compareTo(Ljava/lang/Object;)I
    .locals 2

    .line 1
    check-cast p1, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;

    .line 2
    .line 3
    iget-wide v0, p0, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;->pendingNandswapTime:J

    .line 4
    .line 5
    iget-wide p0, p1, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;->pendingNandswapTime:J

    .line 6
    .line 7
    invoke-static {v0, v1, p0, p1}, Ljava/lang/Long;->compare(JJ)I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0
.end method
