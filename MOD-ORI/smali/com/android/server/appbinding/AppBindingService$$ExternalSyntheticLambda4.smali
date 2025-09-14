.class public final synthetic Lcom/android/server/appbinding/AppBindingService$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/android/server/appbinding/AppBindingService$$ExternalSyntheticLambda4;->f$0:I

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget p0, p0, Lcom/android/server/appbinding/AppBindingService$$ExternalSyntheticLambda4;->f$0:I

    .line 2
    .line 3
    check-cast p1, Lcom/android/server/appbinding/finders/CarrierMessagingClientServiceFinder;

    .line 4
    .line 5
    iget-object v0, p1, Lcom/android/server/appbinding/finders/CarrierMessagingClientServiceFinder;->mLock:Ljava/lang/Object;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    iget-object v1, p1, Lcom/android/server/appbinding/finders/CarrierMessagingClientServiceFinder;->mTargetPackages:Landroid/util/SparseArray;

    .line 9
    .line 10
    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->delete(I)V

    .line 11
    .line 12
    .line 13
    iget-object v1, p1, Lcom/android/server/appbinding/finders/CarrierMessagingClientServiceFinder;->mTargetServices:Landroid/util/SparseArray;

    .line 14
    .line 15
    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->delete(I)V

    .line 16
    .line 17
    .line 18
    iget-object p1, p1, Lcom/android/server/appbinding/finders/CarrierMessagingClientServiceFinder;->mLastMessages:Landroid/util/SparseArray;

    .line 19
    .line 20
    invoke-virtual {p1, p0}, Landroid/util/SparseArray;->delete(I)V

    .line 21
    .line 22
    .line 23
    monitor-exit v0

    .line 24
    return-void

    .line 25
    :catchall_0
    move-exception p0

    .line 26
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    throw p0
.end method
