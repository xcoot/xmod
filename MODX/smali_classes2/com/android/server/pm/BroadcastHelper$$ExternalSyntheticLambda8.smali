.class public final synthetic Lcom/android/server/pm/BroadcastHelper$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/BroadcastHelper;

.field public final synthetic f$1:Landroid/os/Bundle;

.field public final synthetic f$2:I

.field public final synthetic f$3:Ljava/util/function/Supplier;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/BroadcastHelper;Landroid/os/Bundle;ILjava/util/function/Supplier;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/pm/BroadcastHelper$$ExternalSyntheticLambda8;->f$0:Lcom/android/server/pm/BroadcastHelper;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/pm/BroadcastHelper$$ExternalSyntheticLambda8;->f$1:Landroid/os/Bundle;

    .line 7
    .line 8
    iput p3, p0, Lcom/android/server/pm/BroadcastHelper$$ExternalSyntheticLambda8;->f$2:I

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/server/pm/BroadcastHelper$$ExternalSyntheticLambda8;->f$3:Ljava/util/function/Supplier;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/BroadcastHelper$$ExternalSyntheticLambda8;->f$0:Lcom/android/server/pm/BroadcastHelper;

    .line 2
    .line 3
    iget-object v3, p0, Lcom/android/server/pm/BroadcastHelper$$ExternalSyntheticLambda8;->f$1:Landroid/os/Bundle;

    .line 4
    .line 5
    iget v1, p0, Lcom/android/server/pm/BroadcastHelper$$ExternalSyntheticLambda8;->f$2:I

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/server/pm/BroadcastHelper$$ExternalSyntheticLambda8;->f$3:Ljava/util/function/Supplier;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    filled-new-array {v1}, [I

    .line 13
    .line 14
    .line 15
    move-result-object v7

    .line 16
    new-instance v10, Lcom/android/server/pm/BroadcastHelper$$ExternalSyntheticLambda5;

    .line 17
    .line 18
    const/4 v1, 0x1

    .line 19
    invoke-direct {v10, p0, v1}, Lcom/android/server/pm/BroadcastHelper$$ExternalSyntheticLambda5;-><init>(Ljava/util/function/Supplier;I)V

    .line 20
    .line 21
    .line 22
    const/4 v8, 0x0

    .line 23
    const/4 v9, 0x0

    .line 24
    const-string v1, "android.intent.action.DISTRACTING_PACKAGES_CHANGED"

    .line 25
    .line 26
    const/4 v2, 0x0

    .line 27
    const/high16 v4, 0x40000000    # 2.0f

    .line 28
    .line 29
    const/4 v5, 0x0

    .line 30
    const/4 v6, 0x0

    .line 31
    const/4 v11, 0x0

    .line 32
    invoke-virtual/range {v0 .. v11}, Lcom/android/server/pm/BroadcastHelper;->sendPackageBroadcast(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Lcom/android/server/pm/AsecInstallHelper$3;[I[ILandroid/util/SparseArray;Ljava/util/function/BiFunction;Landroid/os/Bundle;)V

    .line 33
    .line 34
    .line 35
    return-void
.end method
