.class public final Lcom/android/server/cpu/CpuInfoReader$DynamicPolicyInfo;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final affectedCpuCores:Landroid/util/IntArray;

.field public final avgTimeInStateCpuFreqKHz:J

.field public final curCpuFreqKHz:J

.field public final maxCpuFreqKHz:J


# direct methods
.method public constructor <init>(JJJLandroid/util/IntArray;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-wide p1, p0, Lcom/android/server/cpu/CpuInfoReader$DynamicPolicyInfo;->curCpuFreqKHz:J

    .line 5
    .line 6
    iput-wide p3, p0, Lcom/android/server/cpu/CpuInfoReader$DynamicPolicyInfo;->maxCpuFreqKHz:J

    .line 7
    .line 8
    iput-wide p5, p0, Lcom/android/server/cpu/CpuInfoReader$DynamicPolicyInfo;->avgTimeInStateCpuFreqKHz:J

    .line 9
    .line 10
    iput-object p7, p0, Lcom/android/server/cpu/CpuInfoReader$DynamicPolicyInfo;->affectedCpuCores:Landroid/util/IntArray;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "DynamicPolicyInfo{curCpuFreqKHz = "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-wide v1, p0, Lcom/android/server/cpu/CpuInfoReader$DynamicPolicyInfo;->curCpuFreqKHz:J

    .line 9
    .line 10
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", maxCpuFreqKHz = "

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-wide v1, p0, Lcom/android/server/cpu/CpuInfoReader$DynamicPolicyInfo;->maxCpuFreqKHz:J

    .line 19
    .line 20
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", avgTimeInStateCpuFreqKHz = "

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-wide v1, p0, Lcom/android/server/cpu/CpuInfoReader$DynamicPolicyInfo;->avgTimeInStateCpuFreqKHz:J

    .line 29
    .line 30
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, ", affectedCpuCores = "

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget-object p0, p0, Lcom/android/server/cpu/CpuInfoReader$DynamicPolicyInfo;->affectedCpuCores:Landroid/util/IntArray;

    .line 39
    .line 40
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const/16 p0, 0x7d

    .line 44
    .line 45
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    return-object p0
.end method
