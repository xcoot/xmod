.class public final synthetic Lcom/android/server/am/AppProfiler$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/os/ProcessCpuTracker$FilterStats;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/am/AppProfiler$$ExternalSyntheticLambda4;->$r8$classId:I

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final needed(Lcom/android/internal/os/ProcessCpuTracker$Stats;)Z
    .locals 4

    .line 1
    iget p0, p0, Lcom/android/server/am/AppProfiler$$ExternalSyntheticLambda4;->$r8$classId:I

    .line 3
    packed-switch p0, :pswitch_data_0

    .line 6
    iget-wide v0, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->vsize:J

    .line 8
    const-wide/16 v2, 0x0

    .line 10
    cmp-long p0, v0, v2

    .line 12
    if-lez p0, :cond_0

    .line 14
    iget p0, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->uid:I

    .line 16
    const/16 p1, 0x2710

    .line 18
    if-ge p0, p1, :cond_0

    .line 20
    const/4 p0, 0x1

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 p0, 0x0

    .line 23
    :goto_0
    return p0

    .line 24
    :pswitch_0
    iget-wide v0, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->vsize:J

    .line 26
    const-wide/16 v2, 0x0

    .line 28
    cmp-long p0, v0, v2

    .line 30
    if-lez p0, :cond_1

    .line 32
    iget p0, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->uid:I

    .line 34
    const/16 p1, 0x2710

    .line 36
    if-ge p0, p1, :cond_1

    .line 38
    const/4 p0, 0x1

    .line 39
    goto :goto_1

    .line 40
    :cond_1
    const/4 p0, 0x0

    .line 41
    :goto_1
    return p0

    .line 42
    nop

    .line 43
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
