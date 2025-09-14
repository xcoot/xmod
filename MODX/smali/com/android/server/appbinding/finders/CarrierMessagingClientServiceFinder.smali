.class public final Lcom/android/server/appbinding/finders/CarrierMessagingClientServiceFinder;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mLastMessages:Landroid/util/SparseArray;

.field public final mListener:Ljava/util/function/BiConsumer;

.field public final mLock:Ljava/lang/Object;

.field public final mRoleHolderChangedListener:Lcom/android/server/appbinding/finders/CarrierMessagingClientServiceFinder$$ExternalSyntheticLambda0;

.field public final mRoleManager:Landroid/app/role/RoleManager;

.field public final mTargetPackages:Landroid/util/SparseArray;

.field public final mTargetServices:Landroid/util/SparseArray;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/appbinding/AppBindingService$$ExternalSyntheticLambda0;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/android/server/appbinding/finders/CarrierMessagingClientServiceFinder;->mLock:Ljava/lang/Object;

    .line 11
    new-instance v0, Landroid/util/SparseArray;

    .line 13
    const/4 v1, 0x4

    .line 14
    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    .line 17
    iput-object v0, p0, Lcom/android/server/appbinding/finders/CarrierMessagingClientServiceFinder;->mTargetPackages:Landroid/util/SparseArray;

    .line 19
    new-instance v0, Landroid/util/SparseArray;

    .line 21
    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    .line 24
    iput-object v0, p0, Lcom/android/server/appbinding/finders/CarrierMessagingClientServiceFinder;->mTargetServices:Landroid/util/SparseArray;

    .line 26
    new-instance v0, Landroid/util/SparseArray;

    .line 28
    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    .line 31
    iput-object v0, p0, Lcom/android/server/appbinding/finders/CarrierMessagingClientServiceFinder;->mLastMessages:Landroid/util/SparseArray;

    .line 33
    iput-object p1, p0, Lcom/android/server/appbinding/finders/CarrierMessagingClientServiceFinder;->mContext:Landroid/content/Context;

    .line 35
    iput-object p2, p0, Lcom/android/server/appbinding/finders/CarrierMessagingClientServiceFinder;->mListener:Ljava/util/function/BiConsumer;

    .line 37
    new-instance p2, Lcom/android/server/appbinding/finders/CarrierMessagingClientServiceFinder$$ExternalSyntheticLambda0;

    .line 39
    invoke-direct {p2, p0}, Lcom/android/server/appbinding/finders/CarrierMessagingClientServiceFinder$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/appbinding/finders/CarrierMessagingClientServiceFinder;)V

    .line 42
    iput-object p2, p0, Lcom/android/server/appbinding/finders/CarrierMessagingClientServiceFinder;->mRoleHolderChangedListener:Lcom/android/server/appbinding/finders/CarrierMessagingClientServiceFinder$$ExternalSyntheticLambda0;

    .line 44
    const-class p2, Landroid/app/role/RoleManager;

    .line 46
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 49
    move-result-object p1

    .line 50
    check-cast p1, Landroid/app/role/RoleManager;

    .line 52
    iput-object p1, p0, Lcom/android/server/appbinding/finders/CarrierMessagingClientServiceFinder;->mRoleManager:Landroid/app/role/RoleManager;

    .line 54
    return-void
.end method
