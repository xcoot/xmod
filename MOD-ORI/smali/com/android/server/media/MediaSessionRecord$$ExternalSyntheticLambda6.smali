.class public final synthetic Lcom/android/server/media/MediaSessionRecord$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/media/MediaSessionRecord$ControllerCallbackCall;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Landroid/os/Bundle;


# direct methods
.method public synthetic constructor <init>(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lcom/android/server/media/MediaSessionRecord$$ExternalSyntheticLambda6;->f$0:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p1, p0, Lcom/android/server/media/MediaSessionRecord$$ExternalSyntheticLambda6;->f$1:Landroid/os/Bundle;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final performOn(Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$$ExternalSyntheticLambda6;->f$1:Landroid/os/Bundle;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;->mCallback:Landroid/media/session/ISessionControllerCallback;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord$$ExternalSyntheticLambda6;->f$0:Ljava/lang/String;

    .line 6
    .line 7
    invoke-interface {p1, p0, v0}, Landroid/media/session/ISessionControllerCallback;->onEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
