.class public final synthetic Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda48;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/PackageManagerService;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Landroid/os/Bundle;

.field public final synthetic f$3:[I

.field public final synthetic f$4:Landroid/util/SparseArray;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;Landroid/os/Bundle;[ILandroid/util/SparseArray;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda48;->f$0:Lcom/android/server/pm/PackageManagerService;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda48;->f$1:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda48;->f$2:Landroid/os/Bundle;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda48;->f$3:[I

    .line 11
    .line 12
    iput-object p5, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda48;->f$4:Landroid/util/SparseArray;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda48;->f$0:Lcom/android/server/pm/PackageManagerService;

    .line 2
    .line 3
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda48;->f$1:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda48;->f$2:Landroid/os/Bundle;

    .line 6
    .line 7
    iget-object v8, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda48;->f$3:[I

    .line 8
    .line 9
    iget-object v10, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda48;->f$4:Landroid/util/SparseArray;

    .line 10
    .line 11
    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService;->mBroadcastHelper:Lcom/android/server/pm/BroadcastHelper;

    .line 12
    .line 13
    const/4 v7, 0x0

    .line 14
    const/4 v9, 0x0

    .line 15
    const-string v2, "android.intent.action.PACKAGE_UNSTOPPED"

    .line 16
    .line 17
    const/high16 v5, 0x40000000    # 2.0f

    .line 18
    .line 19
    const/4 v6, 0x0

    .line 20
    const/4 v11, 0x0

    .line 21
    const/4 v12, 0x0

    .line 22
    invoke-virtual/range {v1 .. v12}, Lcom/android/server/pm/BroadcastHelper;->sendPackageBroadcast(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Lcom/android/server/pm/AsecInstallHelper$3;[I[ILandroid/util/SparseArray;Ljava/util/function/BiFunction;Landroid/os/Bundle;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method
