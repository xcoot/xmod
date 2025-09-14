.class public final Lcom/android/server/appop/AppOpsService$Op;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mDeviceAttributedOps:Landroid/util/ArrayMap;

.field public final op:I

.field public final packageName:Ljava/lang/String;

.field public final synthetic this$0:Lcom/android/server/appop/AppOpsService;

.field public final uid:I

.field public final uidState:Lcom/android/server/appop/AppOpsService$UidState;


# direct methods
.method public constructor <init>(Lcom/android/server/appop/AppOpsService;Lcom/android/server/appop/AppOpsService$UidState;Ljava/lang/String;II)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/appop/AppOpsService$Op;->this$0:Lcom/android/server/appop/AppOpsService;

    .line 5
    .line 6
    new-instance p1, Landroid/util/ArrayMap;

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    invoke-direct {p1, v0}, Landroid/util/ArrayMap;-><init>(I)V

    .line 10
    .line 11
    .line 12
    iput-object p1, p0, Lcom/android/server/appop/AppOpsService$Op;->mDeviceAttributedOps:Landroid/util/ArrayMap;

    .line 13
    .line 14
    iput p4, p0, Lcom/android/server/appop/AppOpsService$Op;->op:I

    .line 15
    .line 16
    iput p5, p0, Lcom/android/server/appop/AppOpsService$Op;->uid:I

    .line 17
    .line 18
    iput-object p2, p0, Lcom/android/server/appop/AppOpsService$Op;->uidState:Lcom/android/server/appop/AppOpsService$UidState;

    .line 19
    .line 20
    iput-object p3, p0, Lcom/android/server/appop/AppOpsService$Op;->packageName:Ljava/lang/String;

    .line 21
    .line 22
    new-instance p0, Landroid/util/ArrayMap;

    .line 23
    .line 24
    invoke-direct {p0}, Landroid/util/ArrayMap;-><init>()V

    .line 25
    .line 26
    .line 27
    const-string/jumbo p2, "default:0"

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, p2, p0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    return-void
.end method


# virtual methods
.method public final getOrCreateAttribution(Lcom/android/server/appop/AppOpsService$Op;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/appop/AttributedOp;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$Op;->mDeviceAttributedOps:Landroid/util/ArrayMap;

    .line 2
    .line 3
    invoke-virtual {v0, p3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/util/ArrayMap;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    new-instance v0, Landroid/util/ArrayMap;

    .line 12
    .line 13
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService$Op;->mDeviceAttributedOps:Landroid/util/ArrayMap;

    .line 17
    .line 18
    invoke-virtual {v1, p3, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    :cond_0
    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object p3

    .line 25
    check-cast p3, Lcom/android/server/appop/AttributedOp;

    .line 26
    .line 27
    if-nez p3, :cond_1

    .line 28
    .line 29
    new-instance p3, Lcom/android/server/appop/AttributedOp;

    .line 30
    .line 31
    iget-object p0, p0, Lcom/android/server/appop/AppOpsService$Op;->this$0:Lcom/android/server/appop/AppOpsService;

    .line 32
    .line 33
    invoke-direct {p3, p0, p2, p1}, Lcom/android/server/appop/AttributedOp;-><init>(Lcom/android/server/appop/AppOpsService;Ljava/lang/String;Lcom/android/server/appop/AppOpsService$Op;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, p2, p3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    :cond_1
    return-object p3
.end method

.method public final isRunning()Z
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    iget-object v2, p0, Lcom/android/server/appop/AppOpsService$Op;->mDeviceAttributedOps:Landroid/util/ArrayMap;

    .line 4
    .line 5
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    if-ge v1, v2, :cond_2

    .line 10
    .line 11
    iget-object v2, p0, Lcom/android/server/appop/AppOpsService$Op;->mDeviceAttributedOps:Landroid/util/ArrayMap;

    .line 12
    .line 13
    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    check-cast v2, Landroid/util/ArrayMap;

    .line 18
    .line 19
    move v3, v0

    .line 20
    :goto_1
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    .line 21
    .line 22
    .line 23
    move-result v4

    .line 24
    if-ge v3, v4, :cond_1

    .line 25
    .line 26
    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    check-cast v4, Lcom/android/server/appop/AttributedOp;

    .line 31
    .line 32
    invoke-virtual {v4}, Lcom/android/server/appop/AttributedOp;->isRunning()Z

    .line 33
    .line 34
    .line 35
    move-result v4

    .line 36
    if-eqz v4, :cond_0

    .line 37
    .line 38
    const/4 p0, 0x1

    .line 39
    return p0

    .line 40
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_2
    return v0
.end method

.method public final removeAttributionsWithNoTime()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$Op;->mDeviceAttributedOps:Landroid/util/ArrayMap;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    add-int/lit8 v0, v0, -0x1

    .line 8
    .line 9
    :goto_0
    if-ltz v0, :cond_5

    .line 10
    .line 11
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService$Op;->mDeviceAttributedOps:Landroid/util/ArrayMap;

    .line 12
    .line 13
    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Landroid/util/ArrayMap;

    .line 18
    .line 19
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    add-int/lit8 v2, v2, -0x1

    .line 24
    .line 25
    :goto_1
    if-ltz v2, :cond_3

    .line 26
    .line 27
    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    check-cast v3, Lcom/android/server/appop/AttributedOp;

    .line 32
    .line 33
    iget-object v4, v3, Lcom/android/server/appop/AttributedOp;->mAccessEvents:Landroid/util/LongSparseArray;

    .line 34
    .line 35
    if-eqz v4, :cond_0

    .line 36
    .line 37
    invoke-virtual {v4}, Landroid/util/LongSparseArray;->size()I

    .line 38
    .line 39
    .line 40
    move-result v4

    .line 41
    if-gtz v4, :cond_2

    .line 42
    .line 43
    :cond_0
    iget-object v3, v3, Lcom/android/server/appop/AttributedOp;->mRejectEvents:Landroid/util/LongSparseArray;

    .line 44
    .line 45
    if-eqz v3, :cond_1

    .line 46
    .line 47
    invoke-virtual {v3}, Landroid/util/LongSparseArray;->size()I

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    if-lez v3, :cond_1

    .line 52
    .line 53
    goto :goto_2

    .line 54
    :cond_1
    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    :cond_2
    :goto_2
    add-int/lit8 v2, v2, -0x1

    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_3
    iget-object v2, p0, Lcom/android/server/appop/AppOpsService$Op;->mDeviceAttributedOps:Landroid/util/ArrayMap;

    .line 61
    .line 62
    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    const-string/jumbo v3, "default:0"

    .line 67
    .line 68
    .line 69
    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    move-result v2

    .line 73
    if-nez v2, :cond_4

    .line 74
    .line 75
    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    .line 76
    .line 77
    .line 78
    move-result v1

    .line 79
    if-eqz v1, :cond_4

    .line 80
    .line 81
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService$Op;->mDeviceAttributedOps:Landroid/util/ArrayMap;

    .line 82
    .line 83
    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    :cond_4
    add-int/lit8 v0, v0, -0x1

    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_5
    return-void
.end method
