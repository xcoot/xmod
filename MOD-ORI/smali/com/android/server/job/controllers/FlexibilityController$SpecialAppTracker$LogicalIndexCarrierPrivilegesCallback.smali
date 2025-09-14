.class public final Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker$LogicalIndexCarrierPrivilegesCallback;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/telephony/TelephonyManager$CarrierPrivilegesCallback;


# instance fields
.field public final logicalIndex:I

.field public final synthetic this$1:Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;


# direct methods
.method public constructor <init>(Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker$LogicalIndexCarrierPrivilegesCallback;->this$1:Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;

    .line 5
    .line 6
    iput p2, p0, Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker$LogicalIndexCarrierPrivilegesCallback;->logicalIndex:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onCarrierPrivilegesChanged(Ljava/util/Set;Ljava/util/Set;)V
    .locals 4

    .line 1
    new-instance p2, Landroid/util/ArraySet;

    .line 2
    .line 3
    invoke-direct {p2}, Landroid/util/ArraySet;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker$LogicalIndexCarrierPrivilegesCallback;->this$1:Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;

    .line 7
    .line 8
    iget-object v0, v0, Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;->mSatLock:Ljava/lang/Object;

    .line 9
    .line 10
    monitor-enter v0

    .line 11
    :try_start_0
    iget-object v1, p0, Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker$LogicalIndexCarrierPrivilegesCallback;->this$1:Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;

    .line 12
    .line 13
    iget-object v1, v1, Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;->mCarrierPrivilegedApps:Landroid/util/SparseSetArray;

    .line 14
    .line 15
    iget v2, p0, Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker$LogicalIndexCarrierPrivilegesCallback;->logicalIndex:I

    .line 16
    .line 17
    invoke-virtual {v1, v2}, Landroid/util/SparseSetArray;->get(I)Landroid/util/ArraySet;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    invoke-virtual {p2, v1}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    .line 24
    .line 25
    .line 26
    iget-object v1, p0, Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker$LogicalIndexCarrierPrivilegesCallback;->this$1:Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;

    .line 27
    .line 28
    iget-object v1, v1, Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;->mCarrierPrivilegedApps:Landroid/util/SparseSetArray;

    .line 29
    .line 30
    iget v2, p0, Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker$LogicalIndexCarrierPrivilegesCallback;->logicalIndex:I

    .line 31
    .line 32
    invoke-virtual {v1, v2}, Landroid/util/SparseSetArray;->remove(I)V

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :catchall_0
    move-exception p0

    .line 37
    goto :goto_2

    .line 38
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    :cond_1
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    if-eqz v1, :cond_2

    .line 47
    .line 48
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    check-cast v1, Ljava/lang/String;

    .line 53
    .line 54
    iget-object v2, p0, Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker$LogicalIndexCarrierPrivilegesCallback;->this$1:Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;

    .line 55
    .line 56
    iget-object v2, v2, Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;->mCarrierPrivilegedApps:Landroid/util/SparseSetArray;

    .line 57
    .line 58
    iget v3, p0, Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker$LogicalIndexCarrierPrivilegesCallback;->logicalIndex:I

    .line 59
    .line 60
    invoke-virtual {v2, v3, v1}, Landroid/util/SparseSetArray;->add(ILjava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    invoke-virtual {p2, v1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result v2

    .line 67
    if-nez v2, :cond_1

    .line 68
    .line 69
    invoke-virtual {p2, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    iget-object p0, p0, Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker$LogicalIndexCarrierPrivilegesCallback;->this$1:Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;

    .line 75
    .line 76
    invoke-virtual {p0, p2}, Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;->updateSpecialAppSetUnlocked(Landroid/util/ArraySet;)V

    .line 77
    .line 78
    .line 79
    return-void

    .line 80
    :goto_2
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 81
    throw p0
.end method
