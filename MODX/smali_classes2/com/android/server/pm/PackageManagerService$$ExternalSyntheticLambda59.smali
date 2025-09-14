.class public final synthetic Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda59;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/PackageManagerService;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$10:Landroid/os/Bundle;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Landroid/os/Bundle;

.field public final synthetic f$4:I

.field public final synthetic f$5:Ljava/lang/String;

.field public final synthetic f$6:Landroid/content/IIntentReceiver;

.field public final synthetic f$7:[I

.field public final synthetic f$8:[I

.field public final synthetic f$9:Landroid/util/SparseArray;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda59;->f$0:Lcom/android/server/pm/PackageManagerService;

    .line 5
    .line 6
    const-string p1, "com.samsung.android.intent.action.SET_APPCATEGORY"

    .line 7
    .line 8
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda59;->f$1:Ljava/lang/String;

    .line 9
    .line 10
    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda59;->f$2:Ljava/lang/String;

    .line 11
    .line 12
    iput-object p3, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda59;->f$3:Landroid/os/Bundle;

    .line 13
    .line 14
    const/4 p1, 0x0

    .line 15
    iput p1, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda59;->f$4:I

    .line 16
    .line 17
    const/4 p1, 0x0

    .line 18
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda59;->f$5:Ljava/lang/String;

    .line 19
    .line 20
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda59;->f$6:Landroid/content/IIntentReceiver;

    .line 21
    .line 22
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda59;->f$7:[I

    .line 23
    .line 24
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda59;->f$8:[I

    .line 25
    .line 26
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda59;->f$9:Landroid/util/SparseArray;

    .line 27
    .line 28
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda59;->f$10:Landroid/os/Bundle;

    .line 29
    .line 30
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda59;->f$0:Lcom/android/server/pm/PackageManagerService;

    .line 2
    .line 3
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda59;->f$1:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda59;->f$2:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda59;->f$3:Landroid/os/Bundle;

    .line 8
    .line 9
    iget v5, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda59;->f$4:I

    .line 10
    .line 11
    iget-object v6, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda59;->f$5:Ljava/lang/String;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda59;->f$6:Landroid/content/IIntentReceiver;

    .line 14
    .line 15
    iget-object v8, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda59;->f$7:[I

    .line 16
    .line 17
    iget-object v9, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda59;->f$8:[I

    .line 18
    .line 19
    iget-object v10, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda59;->f$9:Landroid/util/SparseArray;

    .line 20
    .line 21
    iget-object v12, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda59;->f$10:Landroid/os/Bundle;

    .line 22
    .line 23
    iget-object p0, v0, Lcom/android/server/pm/PackageManagerService;->mBroadcastHelper:Lcom/android/server/pm/BroadcastHelper;

    .line 24
    .line 25
    const/4 v11, 0x0

    .line 26
    move-object v7, v1

    .line 27
    check-cast v7, Lcom/android/server/pm/AsecInstallHelper$3;

    .line 28
    .line 29
    move-object v1, p0

    .line 30
    invoke-virtual/range {v1 .. v12}, Lcom/android/server/pm/BroadcastHelper;->sendPackageBroadcast(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Lcom/android/server/pm/AsecInstallHelper$3;[I[ILandroid/util/SparseArray;Ljava/util/function/BiFunction;Landroid/os/Bundle;)V

    .line 31
    .line 32
    .line 33
    return-void
.end method
