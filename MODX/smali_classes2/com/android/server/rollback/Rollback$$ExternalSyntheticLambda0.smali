.class public final synthetic Lcom/android/server/rollback/Rollback$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/rollback/Rollback;

.field public final synthetic f$1:Landroid/content/Context;

.field public final synthetic f$2:Landroid/content/IntentSender;

.field public final synthetic f$3:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/rollback/Rollback;Landroid/content/Context;Landroid/content/IntentSender;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/rollback/Rollback$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/rollback/Rollback;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/rollback/Rollback$$ExternalSyntheticLambda0;->f$1:Landroid/content/Context;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/rollback/Rollback$$ExternalSyntheticLambda0;->f$2:Landroid/content/IntentSender;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/server/rollback/Rollback$$ExternalSyntheticLambda0;->f$3:Ljava/util/List;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 7

    .line 1
    iget-object v6, p0, Lcom/android/server/rollback/Rollback$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/rollback/Rollback;

    .line 2
    .line 3
    iget-object v3, p0, Lcom/android/server/rollback/Rollback$$ExternalSyntheticLambda0;->f$1:Landroid/content/Context;

    .line 4
    .line 5
    iget-object v4, p0, Lcom/android/server/rollback/Rollback$$ExternalSyntheticLambda0;->f$2:Landroid/content/IntentSender;

    .line 6
    .line 7
    iget-object v5, p0, Lcom/android/server/rollback/Rollback$$ExternalSyntheticLambda0;->f$3:Ljava/util/List;

    .line 8
    .line 9
    move-object v2, p1

    .line 10
    check-cast v2, Landroid/content/Intent;

    .line 11
    .line 12
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    new-instance p0, Lcom/android/server/rollback/Rollback$$ExternalSyntheticLambda1;

    .line 16
    .line 17
    move-object v0, p0

    .line 18
    move-object v1, v6

    .line 19
    invoke-direct/range {v0 .. v5}, Lcom/android/server/rollback/Rollback$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/rollback/Rollback;Landroid/content/Intent;Landroid/content/Context;Landroid/content/IntentSender;Ljava/util/List;)V

    .line 20
    .line 21
    .line 22
    iget-object p1, v6, Lcom/android/server/rollback/Rollback;->mHandler:Landroid/os/Handler;

    .line 23
    .line 24
    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 25
    .line 26
    .line 27
    return-void
.end method
