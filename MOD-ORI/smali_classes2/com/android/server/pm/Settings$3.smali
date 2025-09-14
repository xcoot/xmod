.class public final Lcom/android/server/pm/Settings$3;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic this$0:Lcom/android/server/pm/Settings;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/Settings;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/pm/Settings$3;->this$0:Lcom/android/server/pm/Settings;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 9

    .line 1
    check-cast p1, Ljava/lang/Integer;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/pm/Settings$3;->this$0:Lcom/android/server/pm/Settings;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/android/server/pm/Settings;->mRuntimePermissionsPersistence:Lcom/android/server/pm/Settings$RuntimePermissionPersistence;

    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    iget-object p0, p0, Lcom/android/server/pm/Settings$3;->this$0:Lcom/android/server/pm/Settings;

    .line 12
    .line 13
    iget-object v3, p0, Lcom/android/server/pm/Settings;->mPermissionDataProvider:Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;

    .line 14
    .line 15
    iget-object v4, p0, Lcom/android/server/pm/Settings;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    .line 16
    .line 17
    const/4 v8, 0x0

    .line 18
    iget-object v5, p0, Lcom/android/server/pm/Settings;->mSharedUsers:Lcom/android/server/utils/WatchedArrayMap;

    .line 19
    .line 20
    iget-object v6, p0, Lcom/android/server/pm/Settings;->mHandler:Landroid/os/Handler;

    .line 21
    .line 22
    iget-object v7, p0, Lcom/android/server/pm/Settings;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 23
    .line 24
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->writeStateForUser(ILcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;Lcom/android/server/utils/WatchedArrayMap;Lcom/android/server/utils/WatchedArrayMap;Landroid/os/Handler;Lcom/android/server/pm/PackageManagerTracedLock;Z)V

    .line 25
    .line 26
    .line 27
    return-void
.end method
