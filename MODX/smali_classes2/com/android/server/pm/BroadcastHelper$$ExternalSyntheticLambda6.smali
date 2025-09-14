.class public final synthetic Lcom/android/server/pm/BroadcastHelper$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/BroadcastHelper;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Landroid/os/Bundle;

.field public final synthetic f$3:I

.field public final synthetic f$4:Ljava/util/function/BiFunction;

.field public final synthetic f$5:Landroid/os/Bundle;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/BroadcastHelper;Ljava/lang/String;Landroid/os/Bundle;ILcom/android/server/pm/BroadcastHelper$$ExternalSyntheticLambda5;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/pm/BroadcastHelper$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/pm/BroadcastHelper;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/pm/BroadcastHelper$$ExternalSyntheticLambda6;->f$1:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/pm/BroadcastHelper$$ExternalSyntheticLambda6;->f$2:Landroid/os/Bundle;

    .line 9
    .line 10
    iput p4, p0, Lcom/android/server/pm/BroadcastHelper$$ExternalSyntheticLambda6;->f$3:I

    .line 11
    .line 12
    iput-object p5, p0, Lcom/android/server/pm/BroadcastHelper$$ExternalSyntheticLambda6;->f$4:Ljava/util/function/BiFunction;

    .line 13
    .line 14
    iput-object p6, p0, Lcom/android/server/pm/BroadcastHelper$$ExternalSyntheticLambda6;->f$5:Landroid/os/Bundle;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/BroadcastHelper$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/pm/BroadcastHelper;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/pm/BroadcastHelper$$ExternalSyntheticLambda6;->f$1:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v3, p0, Lcom/android/server/pm/BroadcastHelper$$ExternalSyntheticLambda6;->f$2:Landroid/os/Bundle;

    .line 6
    .line 7
    iget v2, p0, Lcom/android/server/pm/BroadcastHelper$$ExternalSyntheticLambda6;->f$3:I

    .line 8
    .line 9
    iget-object v10, p0, Lcom/android/server/pm/BroadcastHelper$$ExternalSyntheticLambda6;->f$4:Ljava/util/function/BiFunction;

    .line 10
    .line 11
    iget-object v11, p0, Lcom/android/server/pm/BroadcastHelper$$ExternalSyntheticLambda6;->f$5:Landroid/os/Bundle;

    .line 12
    .line 13
    filled-new-array {v2}, [I

    .line 14
    .line 15
    .line 16
    move-result-object v7

    .line 17
    const/4 v5, 0x0

    .line 18
    const/4 v6, 0x0

    .line 19
    const/4 v2, 0x0

    .line 20
    const/high16 v4, 0x50000000

    .line 21
    .line 22
    const/4 v8, 0x0

    .line 23
    const/4 v9, 0x0

    .line 24
    invoke-virtual/range {v0 .. v11}, Lcom/android/server/pm/BroadcastHelper;->sendPackageBroadcast(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Lcom/android/server/pm/AsecInstallHelper$3;[I[ILandroid/util/SparseArray;Ljava/util/function/BiFunction;Landroid/os/Bundle;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method
