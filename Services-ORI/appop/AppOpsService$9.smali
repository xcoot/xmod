.class public final Lcom/android/server/appop/AppOpsService$9;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic this$0:Lcom/android/server/appop/AppOpsService;

.field public final synthetic val$candidates:Landroid/util/ArraySet;


# direct methods
.method public constructor <init>(Lcom/android/server/appop/AppOpsService;Landroid/util/ArraySet;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/appop/AppOpsService$9;->this$0:Lcom/android/server/appop/AppOpsService;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/appop/AppOpsService$9;->val$candidates:Landroid/util/ArraySet;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 8

    .line 1
    check-cast p1, Landroid/app/AppOpsManager$HistoricalOps;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/app/AppOpsManager$HistoricalOps;->getUidCount()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    move v2, v1

    .line 9
    :goto_0
    if-ge v2, v0, :cond_3

    .line 10
    .line 11
    invoke-virtual {p1, v2}, Landroid/app/AppOpsManager$HistoricalOps;->getUidOpsAt(I)Landroid/app/AppOpsManager$HistoricalUidOps;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    invoke-virtual {v3}, Landroid/app/AppOpsManager$HistoricalUidOps;->getPackageCount()I

    .line 16
    .line 17
    .line 18
    move-result v4

    .line 19
    move v5, v1

    .line 20
    :goto_1
    if-ge v5, v4, :cond_2

    .line 21
    .line 22
    invoke-virtual {v3, v5}, Landroid/app/AppOpsManager$HistoricalUidOps;->getPackageOpsAt(I)Landroid/app/AppOpsManager$HistoricalPackageOps;

    .line 23
    .line 24
    .line 25
    move-result-object v6

    .line 26
    invoke-virtual {v6}, Landroid/app/AppOpsManager$HistoricalPackageOps;->getPackageName()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v6

    .line 30
    iget-object v7, p0, Lcom/android/server/appop/AppOpsService$9;->val$candidates:Landroid/util/ArraySet;

    .line 31
    .line 32
    invoke-virtual {v7, v6}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v7

    .line 36
    if-nez v7, :cond_0

    .line 37
    .line 38
    goto :goto_2

    .line 39
    :cond_0
    invoke-virtual {v3, v5}, Landroid/app/AppOpsManager$HistoricalUidOps;->getPackageOpsAt(I)Landroid/app/AppOpsManager$HistoricalPackageOps;

    .line 40
    .line 41
    .line 42
    move-result-object v7

    .line 43
    invoke-virtual {v7}, Landroid/app/AppOpsManager$HistoricalPackageOps;->getOpCount()I

    .line 44
    .line 45
    .line 46
    move-result v7

    .line 47
    if-eqz v7, :cond_1

    .line 48
    .line 49
    iget-object v7, p0, Lcom/android/server/appop/AppOpsService$9;->val$candidates:Landroid/util/ArraySet;

    .line 50
    .line 51
    invoke-virtual {v7, v6}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    :cond_1
    :goto_2
    add-int/lit8 v5, v5, 0x1

    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_3
    monitor-enter p0

    .line 61
    :try_start_0
    iget-object p1, p0, Lcom/android/server/appop/AppOpsService$9;->this$0:Lcom/android/server/appop/AppOpsService;

    .line 62
    .line 63
    iget-object p1, p1, Lcom/android/server/appop/AppOpsService;->mRarelyUsedPackages:Landroid/util/ArraySet;

    .line 64
    .line 65
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    .line 66
    .line 67
    .line 68
    move-result p1

    .line 69
    :goto_3
    if-ge v1, p1, :cond_4

    .line 70
    .line 71
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$9;->val$candidates:Landroid/util/ArraySet;

    .line 72
    .line 73
    iget-object v2, p0, Lcom/android/server/appop/AppOpsService$9;->this$0:Lcom/android/server/appop/AppOpsService;

    .line 74
    .line 75
    iget-object v2, v2, Lcom/android/server/appop/AppOpsService;->mRarelyUsedPackages:Landroid/util/ArraySet;

    .line 76
    .line 77
    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v2

    .line 81
    check-cast v2, Ljava/lang/String;

    .line 82
    .line 83
    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    add-int/lit8 v1, v1, 0x1

    .line 87
    .line 88
    goto :goto_3

    .line 89
    :catchall_0
    move-exception p1

    .line 90
    goto :goto_4

    .line 91
    :cond_4
    iget-object p1, p0, Lcom/android/server/appop/AppOpsService$9;->this$0:Lcom/android/server/appop/AppOpsService;

    .line 92
    .line 93
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$9;->val$candidates:Landroid/util/ArraySet;

    .line 94
    .line 95
    iput-object v0, p1, Lcom/android/server/appop/AppOpsService;->mRarelyUsedPackages:Landroid/util/ArraySet;

    .line 96
    .line 97
    monitor-exit p0

    .line 98
    return-void

    .line 99
    :goto_4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    throw p1
.end method
