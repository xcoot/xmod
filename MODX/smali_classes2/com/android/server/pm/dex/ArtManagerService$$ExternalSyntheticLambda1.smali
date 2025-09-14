.class public final synthetic Lcom/android/server/pm/dex/ArtManagerService$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/content/pm/dex/ISnapshotRuntimeProfileCallback;

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(ILandroid/content/pm/dex/ISnapshotRuntimeProfileCallback;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lcom/android/server/pm/dex/ArtManagerService$$ExternalSyntheticLambda1;->f$0:Landroid/content/pm/dex/ISnapshotRuntimeProfileCallback;

    .line 5
    .line 6
    iput p1, p0, Lcom/android/server/pm/dex/ArtManagerService$$ExternalSyntheticLambda1;->f$1:I

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/pm/dex/ArtManagerService$$ExternalSyntheticLambda1;->f$2:Ljava/lang/String;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/dex/ArtManagerService$$ExternalSyntheticLambda1;->f$0:Landroid/content/pm/dex/ISnapshotRuntimeProfileCallback;

    .line 2
    .line 3
    iget v1, p0, Lcom/android/server/pm/dex/ArtManagerService$$ExternalSyntheticLambda1;->f$1:I

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/pm/dex/ArtManagerService$$ExternalSyntheticLambda1;->f$2:Ljava/lang/String;

    .line 6
    .line 7
    :try_start_0
    invoke-interface {v0, v1}, Landroid/content/pm/dex/ISnapshotRuntimeProfileCallback;->onError(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :catch_0
    move-exception v0

    .line 12
    new-instance v1, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    const-string v2, "Failed to callback after profile snapshot for "

    .line 15
    .line 16
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    const-string v1, "ArtManagerService"

    .line 27
    .line 28
    invoke-static {v1, p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 29
    .line 30
    .line 31
    :goto_0
    return-void
.end method
