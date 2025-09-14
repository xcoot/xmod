.class public final synthetic Lcom/android/server/policy/DisplayFoldController$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/policy/DisplayFoldController;

.field public final synthetic f$1:Landroid/view/IDisplayFoldListener;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/policy/DisplayFoldController;Landroid/view/IDisplayFoldListener;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/policy/DisplayFoldController$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/policy/DisplayFoldController;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/policy/DisplayFoldController$$ExternalSyntheticLambda1;->f$1:Landroid/view/IDisplayFoldListener;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/policy/DisplayFoldController$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/policy/DisplayFoldController;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/policy/DisplayFoldController$$ExternalSyntheticLambda1;->f$1:Landroid/view/IDisplayFoldListener;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    :try_start_0
    iget v1, v0, Lcom/android/server/policy/DisplayFoldController;->mDisplayId:I

    .line 9
    .line 10
    iget-object v0, v0, Lcom/android/server/policy/DisplayFoldController;->mFolded:Ljava/lang/Boolean;

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    invoke-interface {p0, v1, v0}, Landroid/view/IDisplayFoldListener;->onDisplayFoldChanged(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    .line 18
    .line 19
    :catch_0
    return-void
.end method
