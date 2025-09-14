.class public final Lcom/android/server/companion/association/AssociationRequestsProcessor;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

.field public final mCompanionAssociationActivity:Landroid/content/ComponentName;

.field public final mContext:Landroid/content/Context;

.field public final mOnRequestConfirmationReceiver:Lcom/android/server/companion/association/AssociationRequestsProcessor$1;

.field public final mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/pm/PackageManagerInternal;Lcom/android/server/companion/association/AssociationStore;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Lcom/android/server/companion/association/AssociationRequestsProcessor$1;

    .line 6
    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    .line 9
    move-result-object v1

    .line 10
    invoke-direct {v0, p0, v1}, Lcom/android/server/companion/association/AssociationRequestsProcessor$1;-><init>(Lcom/android/server/companion/association/AssociationRequestsProcessor;Landroid/os/Handler;)V

    .line 13
    iput-object v0, p0, Lcom/android/server/companion/association/AssociationRequestsProcessor;->mOnRequestConfirmationReceiver:Lcom/android/server/companion/association/AssociationRequestsProcessor$1;

    .line 15
    iput-object p1, p0, Lcom/android/server/companion/association/AssociationRequestsProcessor;->mContext:Landroid/content/Context;

    .line 17
    iput-object p2, p0, Lcom/android/server/companion/association/AssociationRequestsProcessor;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 19
    iput-object p3, p0, Lcom/android/server/companion/association/AssociationRequestsProcessor;->mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

    .line 21
    const p2, 0x10402f7

    .line 24
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 27
    move-result-object p1

    .line 28
    const-string p2, ".CompanionAssociationActivity"

    .line 30
    invoke-static {p1, p2}, Landroid/content/ComponentName;->createRelative(Ljava/lang/String;Ljava/lang/String;)Landroid/content/ComponentName;

    .line 33
    move-result-object p1

    .line 34
    iput-object p1, p0, Lcom/android/server/companion/association/AssociationRequestsProcessor;->mCompanionAssociationActivity:Landroid/content/ComponentName;

    .line 36
    return-void
.end method

.method public static sendCallbackAndFinish(Landroid/companion/AssociationInfo;Landroid/companion/IAssociationRequestCallback;Landroid/os/ResultReceiver;)V
    .locals 1

    .line 1
    if-eqz p0, :cond_1

    .line 3
    if-eqz p1, :cond_0

    .line 5
    :try_start_0
    invoke-interface {p1, p0}, Landroid/companion/IAssociationRequestCallback;->onAssociationCreated(Landroid/companion/AssociationInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    :catch_0
    :cond_0
    if-eqz p2, :cond_3

    .line 10
    new-instance p1, Landroid/os/Bundle;

    .line 12
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 15
    const-string v0, "association"

    .line 17
    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 20
    const/4 p0, 0x0

    .line 21
    invoke-virtual {p2, p0, p1}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 24
    goto :goto_0

    .line 25
    :cond_1
    if-eqz p1, :cond_2

    .line 27
    :try_start_1
    const-string/jumbo p0, "internal_error"

    .line 30
    invoke-interface {p1, p0}, Landroid/companion/IAssociationRequestCallback;->onFailure(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 33
    :catch_1
    :cond_2
    if-eqz p2, :cond_3

    .line 35
    new-instance p0, Landroid/os/Bundle;

    .line 37
    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    .line 40
    const/4 p1, 0x3

    .line 41
    invoke-virtual {p2, p1, p0}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 44
    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method public final createAssociation(ILjava/lang/String;Landroid/net/MacAddress;Ljava/lang/CharSequence;Ljava/lang/String;Landroid/companion/AssociatedDevice;ZLandroid/companion/IAssociationRequestCallback;Landroid/os/ResultReceiver;)V
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 3
    iget-object v1, v0, Lcom/android/server/companion/association/AssociationRequestsProcessor;->mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

    .line 5
    iget-object v2, v1, Lcom/android/server/companion/association/AssociationStore;->mLock:Ljava/lang/Object;

    .line 7
    monitor-enter v2

    .line 8
    :try_start_0
    iget-object v3, v1, Lcom/android/server/companion/association/AssociationStore;->mLock:Ljava/lang/Object;

    .line 10
    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    :try_start_1
    iget v1, v1, Lcom/android/server/companion/association/AssociationStore;->mMaxId:I

    .line 13
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 14
    add-int/lit8 v5, v1, 0x1

    .line 16
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 17
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 20
    move-result-wide v17

    .line 21
    new-instance v1, Landroid/companion/AssociationInfo;

    .line 23
    move-object v4, v1

    .line 24
    const/4 v15, 0x0

    .line 25
    const/16 v16, 0x0

    .line 27
    const/4 v8, 0x0

    .line 28
    const/4 v14, 0x0

    .line 29
    const-wide v19, 0x7fffffffffffffffL

    .line 34
    const/16 v21, 0x0

    .line 36
    move/from16 v6, p1

    .line 38
    move-object/from16 v7, p2

    .line 40
    move-object/from16 v9, p3

    .line 42
    move-object/from16 v10, p4

    .line 44
    move-object/from16 v11, p5

    .line 46
    move-object/from16 v12, p6

    .line 48
    move/from16 v13, p7

    .line 50
    invoke-direct/range {v4 .. v21}, Landroid/companion/AssociationInfo;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/net/MacAddress;Ljava/lang/CharSequence;Ljava/lang/String;Landroid/companion/AssociatedDevice;ZZZZJJI)V

    .line 53
    iget-object v2, v0, Lcom/android/server/companion/association/AssociationRequestsProcessor;->mContext:Landroid/content/Context;

    .line 55
    new-instance v3, Lcom/android/server/companion/association/AssociationRequestsProcessor$$ExternalSyntheticLambda1;

    .line 57
    move-object/from16 v4, p8

    .line 59
    move-object/from16 v5, p9

    .line 61
    invoke-direct {v3, v0, v1, v4, v5}, Lcom/android/server/companion/association/AssociationRequestsProcessor$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/companion/association/AssociationRequestsProcessor;Landroid/companion/AssociationInfo;Landroid/companion/IAssociationRequestCallback;Landroid/os/ResultReceiver;)V

    .line 64
    invoke-static {v2, v1, v3}, Lcom/android/server/companion/utils/RolesUtils;->addRoleHolderForAssociation(Landroid/content/Context;Landroid/companion/AssociationInfo;Ljava/util/function/Consumer;)V

    .line 67
    return-void

    .line 68
    :catchall_0
    move-exception v0

    .line 69
    goto :goto_0

    .line 70
    :catchall_1
    move-exception v0

    .line 71
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 72
    :try_start_4
    throw v0

    .line 73
    :goto_0
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 74
    throw v0
.end method
