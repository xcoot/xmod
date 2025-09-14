.class public final synthetic Lcom/android/server/wm/DisplayHashController$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/DisplayHashController;

.field public final synthetic f$1:Landroid/view/displayhash/DisplayHash;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/DisplayHashController;Landroid/view/displayhash/DisplayHash;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/DisplayHashController$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/wm/DisplayHashController;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/wm/DisplayHashController$$ExternalSyntheticLambda2;->f$1:Landroid/view/displayhash/DisplayHash;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/DisplayHashController$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/wm/DisplayHashController;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/wm/DisplayHashController$$ExternalSyntheticLambda2;->f$1:Landroid/view/displayhash/DisplayHash;

    .line 4
    .line 5
    check-cast p1, Landroid/service/displayhash/IDisplayHashingService;

    .line 6
    .line 7
    check-cast p2, Landroid/os/RemoteCallback;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    :try_start_0
    iget-object v0, v0, Lcom/android/server/wm/DisplayHashController;->mSalt:[B

    .line 13
    .line 14
    invoke-interface {p1, v0, p0, p2}, Landroid/service/displayhash/IDisplayHashingService;->verifyDisplayHash([BLandroid/view/displayhash/DisplayHash;Landroid/os/RemoteCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :catch_0
    const-string p0, "WindowManager"

    .line 19
    .line 20
    const-string p1, "Failed to invoke verifyDisplayHash command"

    .line 21
    .line 22
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    :goto_0
    return-void
.end method
