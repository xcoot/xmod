.class public final synthetic Lcom/android/server/am/KillPolicyManager$PsiFile$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;Landroid/util/SparseArray;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/am/KillPolicyManager$PsiFile$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/KillPolicyManager$PsiFile$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/server/am/KillPolicyManager$PsiFile$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/am/KillPolicyManager$PsiFile;)V
    .locals 1

    .line 2
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/am/KillPolicyManager$PsiFile$$ExternalSyntheticLambda0;->$r8$classId:I

    sget-object v0, Lcom/android/server/am/KillPolicyManager$PsiDataType;->AVG10:Lcom/android/server/am/KillPolicyManager$PsiDataType;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/KillPolicyManager$PsiFile$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    iput-object v0, p0, Lcom/android/server/am/KillPolicyManager$PsiFile$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 8

    .line 1
    iget v0, p0, Lcom/android/server/am/KillPolicyManager$PsiFile$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 3
    packed-switch v0, :pswitch_data_0

    .line 6
    iget-object v0, p0, Lcom/android/server/am/KillPolicyManager$PsiFile$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 8
    check-cast v0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;

    .line 10
    iget-object p0, p0, Lcom/android/server/am/KillPolicyManager$PsiFile$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 12
    check-cast p0, Landroid/util/SparseArray;

    .line 14
    check-cast p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;

    .line 16
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    iget-wide v1, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->vsize:J

    .line 21
    const-wide/16 v3, 0x0

    .line 23
    cmp-long v1, v1, v3

    .line 25
    if-lez v1, :cond_0

    .line 27
    iget v1, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    .line 29
    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->indexOfKey(I)I

    .line 32
    move-result p0

    .line 33
    if-gez p0, :cond_0

    .line 35
    iget p0, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    .line 37
    iget-object p1, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    .line 39
    const/4 v1, -0x1

    .line 40
    const/4 v2, 0x0

    .line 41
    invoke-virtual {v0, p0, v2, v1, p1}, Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;->getProcDumpMemInfoInternal(IIILjava/lang/String;)V

    .line 44
    :cond_0
    return-void

    .line 45
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/am/KillPolicyManager$PsiFile$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 47
    check-cast v0, Lcom/android/server/am/KillPolicyManager$PsiFile;

    .line 49
    iget-object p0, p0, Lcom/android/server/am/KillPolicyManager$PsiFile$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 51
    check-cast p0, Lcom/android/server/am/KillPolicyManager$PsiDataType;

    .line 53
    check-cast p1, Ljava/lang/String;

    .line 55
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 58
    const-string/jumbo v1, "some"

    .line 61
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 64
    move-result v1

    .line 65
    sget-object v2, Lcom/android/server/am/KillPolicyManager$PsiDataType;->TOTAL:Lcom/android/server/am/KillPolicyManager$PsiDataType;

    .line 67
    sget-object v3, Lcom/android/server/am/KillPolicyManager$PsiDataType;->AVG10:Lcom/android/server/am/KillPolicyManager$PsiDataType;

    .line 69
    const/4 v4, 0x4

    .line 70
    const-string/jumbo v5, "total"

    .line 73
    const/4 v6, 0x1

    .line 74
    const-string v7, "avg10"

    .line 76
    if-eqz v1, :cond_2

    .line 78
    if-ne p0, v3, :cond_1

    .line 80
    invoke-static {v6, p1, v7}, Lcom/android/server/am/KillPolicyManager$PsiFile;->getItem(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 83
    move-result-object p0

    .line 84
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 87
    move-result-wide p0

    .line 88
    iput-wide p0, v0, Lcom/android/server/am/KillPolicyManager$PsiFile;->mSomeAvg10:D

    .line 90
    goto :goto_0

    .line 91
    :cond_1
    if-ne p0, v2, :cond_4

    .line 93
    invoke-static {v4, p1, v5}, Lcom/android/server/am/KillPolicyManager$PsiFile;->getItem(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 96
    move-result-object p0

    .line 97
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 100
    goto :goto_0

    .line 101
    :cond_2
    const-string/jumbo v0, "full"

    .line 104
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 107
    move-result v0

    .line 108
    if-eqz v0, :cond_4

    .line 110
    if-ne p0, v3, :cond_3

    .line 112
    invoke-static {v6, p1, v7}, Lcom/android/server/am/KillPolicyManager$PsiFile;->getItem(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 115
    move-result-object p0

    .line 116
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 119
    goto :goto_0

    .line 120
    :cond_3
    if-ne p0, v2, :cond_4

    .line 122
    invoke-static {v4, p1, v5}, Lcom/android/server/am/KillPolicyManager$PsiFile;->getItem(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 125
    move-result-object p0

    .line 126
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 129
    :cond_4
    :goto_0
    return-void

    .line 130
    nop

    .line 131
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
