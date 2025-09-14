.class public final synthetic Lcom/android/server/pm/AppsFilterBase$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic f$0:Landroid/util/SparseArray;

.field public final synthetic f$1:[I

.field public final synthetic f$2:Lcom/android/internal/util/function/QuadFunction;


# direct methods
.method public synthetic constructor <init>(Landroid/util/SparseArray;[ILcom/android/server/pm/ComputerEngine$$ExternalSyntheticLambda6;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/pm/AppsFilterBase$$ExternalSyntheticLambda0;->f$0:Landroid/util/SparseArray;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/pm/AppsFilterBase$$ExternalSyntheticLambda0;->f$1:[I

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/pm/AppsFilterBase$$ExternalSyntheticLambda0;->f$2:Lcom/android/internal/util/function/QuadFunction;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final toString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/AppsFilterBase$$ExternalSyntheticLambda0;->f$0:Landroid/util/SparseArray;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/pm/AppsFilterBase$$ExternalSyntheticLambda0;->f$2:Lcom/android/internal/util/function/QuadFunction;

    .line 4
    .line 5
    check-cast p1, Ljava/lang/Integer;

    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    check-cast v2, Ljava/lang/String;

    .line 16
    .line 17
    if-nez v2, :cond_3

    .line 18
    .line 19
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    invoke-static {v3}, Landroid/os/UserHandle;->getAppId(I)I

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    iget-object p0, p0, Lcom/android/server/pm/AppsFilterBase$$ExternalSyntheticLambda0;->f$1:[I

    .line 32
    .line 33
    array-length v4, p0

    .line 34
    const/4 v5, 0x0

    .line 35
    const/4 v6, 0x0

    .line 36
    move v7, v5

    .line 37
    :goto_0
    if-nez v6, :cond_0

    .line 38
    .line 39
    if-ge v7, v4, :cond_0

    .line 40
    .line 41
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 42
    .line 43
    .line 44
    move-result-object v6

    .line 45
    aget v8, p0, v7

    .line 46
    .line 47
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 48
    .line 49
    .line 50
    move-result-object v8

    .line 51
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 52
    .line 53
    .line 54
    move-result-object v9

    .line 55
    sget-object v10, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 56
    .line 57
    invoke-interface {v1, v6, v8, v9, v10}, Lcom/android/internal/util/function/QuadFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v6

    .line 61
    check-cast v6, [Ljava/lang/String;

    .line 62
    .line 63
    add-int/lit8 v7, v7, 0x1

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_0
    if-nez v6, :cond_1

    .line 67
    .line 68
    new-instance p0, Ljava/lang/StringBuilder;

    .line 69
    .line 70
    const-string v1, "[app id "

    .line 71
    .line 72
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    const-string v1, " not installed]"

    .line 79
    .line 80
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p0

    .line 87
    :goto_1
    move-object v2, p0

    .line 88
    goto :goto_2

    .line 89
    :cond_1
    array-length p0, v6

    .line 90
    const/4 v1, 0x1

    .line 91
    if-ne p0, v1, :cond_2

    .line 92
    .line 93
    aget-object p0, v6, v5

    .line 94
    .line 95
    goto :goto_1

    .line 96
    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    .line 97
    .line 98
    const-string v1, "["

    .line 99
    .line 100
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    const-string v1, ","

    .line 104
    .line 105
    invoke-static {v1, v6}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    const-string v2, "]"

    .line 110
    .line 111
    invoke-static {p0, v1, v2}, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object p0

    .line 115
    goto :goto_1

    .line 116
    :goto_2
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 117
    .line 118
    .line 119
    move-result p0

    .line 120
    invoke-virtual {v0, p0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 121
    .line 122
    .line 123
    :cond_3
    return-object v2
.end method
