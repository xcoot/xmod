.class public final Lcom/android/server/am/KillPolicyManager$ProcessSampler;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final ADJ_PRIORITY_BY_LABEL_INDEX:[I

.field public static final ALWAYS_RUNNING_ADJ_BY_LABEL_INDEX:[Z


# instance fields
.field public mIsUserTrialDevice:Z

.field public mTotalProcessInfos:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const/16 v0, 0x11

    .line 2
    .line 3
    new-array v1, v0, [I

    .line 4
    .line 5
    fill-array-data v1, :array_0

    .line 6
    .line 7
    .line 8
    sput-object v1, Lcom/android/server/am/KillPolicyManager$ProcessSampler;->ADJ_PRIORITY_BY_LABEL_INDEX:[I

    .line 9
    .line 10
    new-array v0, v0, [Z

    .line 11
    .line 12
    fill-array-data v0, :array_1

    .line 13
    .line 14
    .line 15
    sput-object v0, Lcom/android/server/am/KillPolicyManager$ProcessSampler;->ALWAYS_RUNNING_ADJ_BY_LABEL_INDEX:[Z

    .line 16
    .line 17
    return-void

    .line 18
    nop

    .line 19
    :array_0
    .array-data 4
        0x3
        0x3
        0x3
        0x3
        0x4
        0x0
        0x1
        0x1
        0x1
        0x5
        0x5
        0x2
        0x5
        0x4
        0x2
        0x6
        0x6
    .end array-data

    .line 20
    .line 21
    .line 22
    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    :array_1
    .array-data 1
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
    .end array-data
.end method


# virtual methods
.method public final sampleAdjPriority(IZ)Ljava/util/List;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p2, :cond_3

    .line 3
    .line 4
    iget-object p2, p0, Lcom/android/server/am/KillPolicyManager$ProcessSampler;->mTotalProcessInfos:Ljava/util/ArrayList;

    .line 5
    .line 6
    new-instance v1, Lcom/android/server/am/KillPolicyManager$ProcessSampler$$ExternalSyntheticLambda0;

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    invoke-direct {v1, v2}, Lcom/android/server/am/KillPolicyManager$ProcessSampler$$ExternalSyntheticLambda0;-><init>(I)V

    .line 10
    .line 11
    .line 12
    invoke-static {v1}, Ljava/util/Comparator;->comparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    .line 17
    .line 18
    .line 19
    move p2, v0

    .line 20
    :goto_0
    iget-object v1, p0, Lcom/android/server/am/KillPolicyManager$ProcessSampler;->mTotalProcessInfos:Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-ge p2, v1, :cond_2

    .line 27
    .line 28
    iget-object v1, p0, Lcom/android/server/am/KillPolicyManager$ProcessSampler;->mTotalProcessInfos:Ljava/util/ArrayList;

    .line 29
    .line 30
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    check-cast v1, Lcom/android/server/am/KillPolicyManager$SampleProcessInfo;

    .line 35
    .line 36
    iget v1, v1, Lcom/android/server/am/KillPolicyManager$SampleProcessInfo;->adjLabelIndex:I

    .line 37
    .line 38
    if-ltz v1, :cond_1

    .line 39
    .line 40
    const/16 v2, 0x11

    .line 41
    .line 42
    if-lt v1, v2, :cond_0

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_0
    sget-object v2, Lcom/android/server/am/KillPolicyManager$ProcessSampler;->ALWAYS_RUNNING_ADJ_BY_LABEL_INDEX:[Z

    .line 46
    .line 47
    aget-boolean v1, v2, v1

    .line 48
    .line 49
    goto :goto_2

    .line 50
    :cond_1
    :goto_1
    move v1, v0

    .line 51
    :goto_2
    if-eqz v1, :cond_2

    .line 52
    .line 53
    add-int/lit8 p2, p2, 0x1

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_2
    if-le p1, p2, :cond_4

    .line 57
    .line 58
    move p1, p2

    .line 59
    goto :goto_3

    .line 60
    :cond_3
    iget-object p2, p0, Lcom/android/server/am/KillPolicyManager$ProcessSampler;->mTotalProcessInfos:Ljava/util/ArrayList;

    .line 61
    .line 62
    new-instance v1, Lcom/android/server/am/KillPolicyManager$ProcessSampler$$ExternalSyntheticLambda0;

    .line 63
    .line 64
    const/4 v2, 0x1

    .line 65
    invoke-direct {v1, v2}, Lcom/android/server/am/KillPolicyManager$ProcessSampler$$ExternalSyntheticLambda0;-><init>(I)V

    .line 66
    .line 67
    .line 68
    invoke-static {v1}, Ljava/util/Comparator;->comparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    .line 73
    .line 74
    .line 75
    iget-object p2, p0, Lcom/android/server/am/KillPolicyManager$ProcessSampler;->mTotalProcessInfos:Ljava/util/ArrayList;

    .line 76
    .line 77
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 78
    .line 79
    .line 80
    move-result p2

    .line 81
    if-le p1, p2, :cond_4

    .line 82
    .line 83
    iget-object p1, p0, Lcom/android/server/am/KillPolicyManager$ProcessSampler;->mTotalProcessInfos:Ljava/util/ArrayList;

    .line 84
    .line 85
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 86
    .line 87
    .line 88
    move-result p1

    .line 89
    :cond_4
    :goto_3
    iget-object p0, p0, Lcom/android/server/am/KillPolicyManager$ProcessSampler;->mTotalProcessInfos:Ljava/util/ArrayList;

    .line 90
    .line 91
    invoke-virtual {p0, v0, p1}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    .line 92
    .line 93
    .line 94
    move-result-object p0

    .line 95
    return-object p0
.end method
