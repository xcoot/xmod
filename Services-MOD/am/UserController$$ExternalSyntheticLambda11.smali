.class public final synthetic Lcom/android/server/am/UserController$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/am/UserController;

.field public final synthetic f$1:Z

.field public final synthetic f$2:I

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/UserController;ZII)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda11;->f$0:Lcom/android/server/am/UserController;

    .line 6
    iput-boolean p2, p0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda11;->f$1:Z

    .line 8
    iput p3, p0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda11;->f$2:I

    .line 10
    iput p4, p0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda11;->f$3:I

    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda11;->f$0:Lcom/android/server/am/UserController;

    .line 3
    iget-boolean v1, p0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda11;->f$1:Z

    .line 5
    iget v2, p0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda11;->f$2:I

    .line 7
    iget p0, p0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda11;->f$3:I

    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    new-instance v3, Lcom/android/server/am/UserController$$ExternalSyntheticLambda17;

    .line 14
    const/4 v4, 0x0

    .line 15
    invoke-direct {v3, v2, p0, v4, v0}, Lcom/android/server/am/UserController$$ExternalSyntheticLambda17;-><init>(IIILjava/lang/Object;)V

    .line 18
    if-eqz v1, :cond_0

    .line 20
    iget-object p0, v0, Lcom/android/server/am/UserController;->mUiHandler:Landroid/os/Handler;

    .line 22
    new-instance v1, Lcom/android/server/am/UserController$$ExternalSyntheticLambda26;

    .line 24
    invoke-direct {v1, v0, v3}, Lcom/android/server/am/UserController$$ExternalSyntheticLambda26;-><init>(Lcom/android/server/am/UserController;Ljava/lang/Runnable;)V

    .line 27
    invoke-virtual {p0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    invoke-virtual {v3}, Lcom/android/server/am/UserController$$ExternalSyntheticLambda17;->run()V

    .line 34
    :goto_0
    return-void
.end method
